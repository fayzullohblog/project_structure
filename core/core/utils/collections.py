def deep_update(base_dict,update_dict):

    for key, value in update_dict.items():
        
        if isinstance(value,dict):
            base_dict_value=update_dict.get(key)

            if isinstance(base_dict_value,dict):
                deep_update(base_dict_value,value)
            else:
                base_dict[key]=value
        
        else:
            base_dict[key]=value

    return base_dict