import React from 'react';
import ProductListItem from '../product/product_list_item';
import UserProfileIndexContainer from './user_profile_index_container';


class UserProfileIndex extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.requestUserProducts(this.props.userId);
  }

  // render () {
    // const { users } = this.props;
    // let userProducts = (<UserProfileIndexContainer products={users.products}
    //    userId={users.id}/>);

//
//     return (
//
//       { userProducts }
//     );
//   }
// }
}


export default UserProfileIndex;
