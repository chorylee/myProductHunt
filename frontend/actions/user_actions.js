import * as APIUtil from '../util/user_api_util';

export const RECEIVE_USER = "RECEIVE_USER";
export const RECEIVE_USER_ERRORS = "RECEIVE_USER_ERRORS";

export const receiveUser = user => ({
  type: RECEIVE_USER,
  user
});

export const receiveUserErrors = errors => ({
  type: RECEIVE_USER_ERRORS,
  errors
});

export const requestSingleUser = id => dispatch => {
  return APIUtil.getUser(id)
    .then( user => { dispatch(receiveUser(user));
        },
     errors => dispatch(receiveUserErrors(errors))
   );
};

export const requestUpdateUser = user => dispatch => {
  return APIUtil.updateUser(user)
    .then( usr => {
            dispatch(receiveUser(usr));
       },
     errors => dispatch(receiveUserErrors(errors))
  );
};