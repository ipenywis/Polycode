class "RenderTargetBinding"

RenderTargetBinding.MODE_IN = 0
RenderTargetBinding.MODE_OUT = 1
RenderTargetBinding.MODE_COLOR = 2
RenderTargetBinding.MODE_DEPTH = 3

function RenderTargetBinding:__getvar(name)
	if name == "id" then
		return Polycode.RenderTargetBinding_get_id(self.__ptr)
	elseif name == "name" then
		return Polycode.RenderTargetBinding_get_name(self.__ptr)
	elseif name == "mode" then
		return Polycode.RenderTargetBinding_get_mode(self.__ptr)
	elseif name == "buffer" then
		local retVal = Polycode.RenderTargetBinding_get_buffer(self.__ptr)
		if retVal == nil then return nil end
		local __c = _G["RenderBuffer"]("__skip_ptr__")
		__c.__ptr = retVal
		return __c
	end
end

function RenderTargetBinding:__setvar(name,value)
	if name == "id" then
		Polycode.RenderTargetBinding_set_id(self.__ptr, value)
		return true
	elseif name == "name" then
		Polycode.RenderTargetBinding_set_name(self.__ptr, value)
		return true
	elseif name == "mode" then
		Polycode.RenderTargetBinding_set_mode(self.__ptr, value)
		return true
	elseif name == "buffer" then
		Polycode.RenderTargetBinding_set_buffer(self.__ptr, value.__ptr)
		return true
	end
	return false
end
function RenderTargetBinding:__delete()
	if self then Polycode.delete_RenderTargetBinding(self.__ptr) end
end