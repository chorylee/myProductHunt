import { connect } from 'react-redux';
import ProductDetail from './product_detail';
import { requestProduct } from '../../actions/product_actions';
//
// const mapStateToProps = ({ products }) => ({
//   products: products.byId[products.byId.id]
// });

const mapDispatchToProps = dispatch => ({
  requestProduct: (id) => dispatch(requestProduct(id))
});

export default connect(
  null,
  mapDispatchToProps
)(ProductDetail);
