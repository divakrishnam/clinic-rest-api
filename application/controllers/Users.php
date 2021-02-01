<?php

require APPPATH . 'libraries/REST_Controller.php';

class Users extends REST_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }

    public function index_get($id = 0)
    {
        if (!empty($id)) {
            $data = $this->db->get_where("clinic_user", ['user_id' => $id])->row_array();
            if ($data) {
                $this->response($data, 200);
            } else {
                $this->response([
                    'status' => false,
                    'message' => 'No user were found.'
                ], 404);
            }
        } else {
            $data = $this->db->get("clinic_user")->result();
            if ($data != []) {
                $this->response($data, 200);
            } else {
                $this->response([
                    'status' => false,
                    'message' => 'No users were found.'
                ], 404);
            }
        }
    }

    public function index_post()
    {
        $input = $this->input->post();
        $response = $this->db->insert('clinic_user', $input);
        if ($response) {
            $this->response([
                'status' => true,
                'message' => 'User created successfully.'
            ], 200);
        } else {
            $this->response([
                'status' => false,
                'message' => 'User create failed.'
            ], 400);
        }
    }

    public function index_put($id)
    {
        $input = $this->put();
        $response = $this->db->update('clinic_user', $input, array('user_id' => $id));
        if ($response) {
            $this->response([
                'status' => true,
                'message' => 'User updated successfully.'
            ], 200);
        } else {
            $this->response([
                'status' => false,
                'message' => 'User update failed.'
            ], 400);
        }
    }

    public function index_delete($id)
    {
        $response = $this->db->delete('clinic_user', array('user_id' => $id));
        if ($response) {
            $this->response([
                'status' => true,
                'message' => 'User deleted successfully.'
            ], 200);
        } else {
            $this->response([
                'status' => false,
                'message' => 'User delete failed.'
            ], 400);
        }
    }
}
