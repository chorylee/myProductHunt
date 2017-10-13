import React from 'react';
import { withRouter } from 'react-router-dom';
import { Link } from 'react-router-dom';
import UserEditForm from './user_edit_form';
import ProductListItem from '../product/product_list_item';
import UserProfileIndexContainer from './user_profile_index_container';

class UserProfile extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      isEditing: false,

      user: {}};
      this.updateUserState = this.updateUserState.bind(this);
      this.toggleEdit = this.toggleEdit.bind(this);
      this.saveUser = this.saveUser.bind(this);
  }

  updateUserState(event) {
    const field = event.target.name;
    const user = this.state.user;
    user.id = this.props.userId;
    user[field] = event.target.value;
    return this.setState({user: user});
  }

  componentDidMount() {
    if (!this.props.user) {
      this.props.requestSingleUser(this.props.userId);

    }
  }



  saveUser(event) {
   event.preventDefault();
   this.props.requestUpdateUser(this.state.user)
   .then(this.setState({isEditing: false}));
 }

  componentWillReceiveProps(nextProps) {
    if (this.props.match.params.userId !== nextProps.match.params.userId)
     {
      this.props.requestSingleUser(nextProps.match.params.userId);
    }
  }

  toggleEdit() {
   this.setState({isEditing: !this.state.isEditing});
 }



  render() {
    const { user, loggedIn, currentUserId, products } = this.props;
    if (!user) return null;

    if (this.state.isEditing) {
      return (
      <div className="editProfilePage">
        <div className="editProfileForm">
          <h2>Settings</h2>
          <div className="editFormCont">
            <div className="editProfileTitle">
              <h1 className='editUserTitle'>My Details</h1>
            </div>
            <UserEditForm user={user}
              onSave={this.saveUser}
              onChange={this.updateUserState}/>
          </div>
        </div>
      </div>
    );
  }

  let orderedProducts = "";
  orderedProducts = user.hunted_ids.map(id => {
    // console.log('user profile product', product);
    return (
      <ProductListItem
        key={id}
        products={products.byId[id]}
        requestUpvote={this.props.requestUpvote}
        currentUserId={this.props.currentUserId}
        upvotedByUser={this.props.upvotedByUser}
        className="userProfileIndexItem"/>
      );
    });

    const editOption =
          loggedIn && user.id === currentUserId ?
          <div className="editUserinfo">
            <button className="edit-form-button" onClick={this.toggleEdit}>EDIT</button>
          </div>
          : <div></div>;

    return (
      <div className="userProfileCont">
        <section className="user-detail">
          <div className="user-show-info">
            <figure>
              <img className="userProfileImage"
                   src={user.image_url}
                   alt={user.username} />
            </figure>
            <ul>
              <li className="user-show-name">@{user.username}</li>
            </ul>
          </div>
          <div className="user-show-info">
          {editOption}
        </div>
        </section>
        <div className="userProfileProdHeader"> {orderedProducts.length} hunted</div>
        <section className="userProfileProducts">
          { orderedProducts }
        </section>

      </div>
    );
  }
}

export default withRouter(UserProfile);
