import { connect } from 'react-redux';
import { requestComments,
         requestCreateComment } from '../../actions/comment_actions';
import CommentSection from './comment_section';

const mapStateToProps = (state) => ({
  comments: state.comments.byId,
  currentUserId: state.session.currentUser
                  ? state.session.currentUser.id
                  : null,
  errors: state.comments.errors,
  currentUserImg: state.session.currentUser
                  ? state.session.currentUser.image_url
                  : "https://res.cloudinary.com/dbyoymbpd/image/upload/v1503434829/original_msduei.jpg"
});

const mapDispatchToProps = dispatch => ({
  requestComments: (productId) => dispatch(requestComments(productId)),
  requestCreateComment: (comment) => dispatch(requestCreateComment(comment)),
});


const CommentSectionContainer = connect(
  mapStateToProps,
  mapDispatchToProps
)(CommentSection);

export default CommentSectionContainer;
