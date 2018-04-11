rpc:call('antidote@192.168.50.2', inter_dc_manager, start_bg_processes, [stable]),
rpc:call('antidote@192.168.50.3', inter_dc_manager, start_bg_processes, [stable]),
{ok, Desc1} = rpc:call('antidote@192.168.50.2', inter_dc_manager, get_descriptor, []),
{ok, Desc2} = rpc:call('antidote@192.168.50.3', inter_dc_manager, get_descriptor, []),
Descriptors = [Desc1, Desc2],
rpc:call('antidote@192.168.50.2', inter_dc_manager, observe_dcs_sync, [Descriptors]),
rpc:call('antidote@192.168.50.3', inter_dc_manager, observe_dcs_sync, [Descriptors]).
