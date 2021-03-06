include("init.jl")

open("testconfig.json", "w") do f

    write(f, """{
	"name": "EV_Controller",
	"loglevel": 5,
	"coreType": "zmq",
	"timeDelta": 1.0,

	"endpoints":[
	{
		"name": "EV_Controller/EV6",
		"type": "genmessage",
		"global": true

	},
	{
		"name": "EV_Controller/EV5",
		"type": "genmessage",
		"global": true
	},
	{
		"name": "EV_Controller/EV4",
		"type": "genmessage",
		"global": true
	},
	{
		"name": "EV_Controller/EV3",
		"type": "genmessage",
		"global": true
	},
	{
		"name": "EV_Controller/EV2",
		"type": "genmessage",
		"global": true
	},
	{
		"name": "EV_Controller/EV1",
		"type": "genmessage",
		"global": true
	}
	],
	"filters":
	[
	{
	"name":"filterEV6",  //filters can have names (optional)
	"target":"EV_Controller/EV6",  //this is a key field specifying the target endpoint
	//"inputType":"genmessage",  //can trigger some warnings if there is mismatches for custom filters only used if operation is "custom"
	//"outputType":"genmessage",  //this could be useful if the filter actually translates the data and can be used to automatically order filters
	"mode":"source",  //source is the default but can be "source","destination","clone","cloning"
	"operation":"delay", //currently valid operations are "delay","clone","cloning","timedelay","randomdelay","randomdrop","reroute","redirect","custom"
	"properties":  //additional properties for filters are specified in a property array or object if there is just a single one
	{
		"name":"delay",  //A delay filter just has a single property
		"value":600	//times default to seconds though units can also be specified "200 ms" or similar
	}
	},
	{
	"name":"filterEV5",  //filters can have names (optional)
	"target":"EV_Controller/EV5",  //this is a key field specifying the target endpoint
	//"inputType":"genmessage",  //can trigger some warnings if there is mismatches for custom filters only used if operation is "custom"
	//"outputType":"genmessage",  //this could be useful if the filter actually translates the data and can be used to automatically order filters
	"mode":"source",  //source is the default but can be "source","destination","clone","cloning"
	"operation":"delay", //currently valid operations are "delay","clone","cloning","timedelay","randomdelay","randomdrop","reroute","redirect","custom"
	"properties":  //additional properties for filters are specified in a property array or object if there is just a single one
	{
		"name":"delay",  //A delay filter just has a single property
		"value":600	//times default to seconds though units can also be specified "200 ms" or similar
	}
	},
	{
	"name":"filterEV4",  //filters can have names (optional)
	"target":"EV_Controller/EV4",  //this is a key field specifying the target endpoint
	//"inputType":"genmessage",  //can trigger some warnings if there is mismatches for custom filters only used if operation is "custom"
	//"outputType":"genmessage",  //this could be useful if the filter actually translates the data and can be used to automatically order filters
	"mode":"source",  //source is the default but can be "source","destination","clone","cloning"
	"operation":"delay", //currently valid operations are "delay","clone","cloning","timedelay","randomdelay","randomdrop","reroute","redirect","custom"
	"properties":  //additional properties for filters are specified in a property array or object if there is just a single one
	{
		"name":"delay",  //A delay filter just has a single property
		"value":600	//times default to seconds though units can also be specified "200 ms" or similar
	}
	},
	{
	"name":"filterEV3",  //filters can have names (optional)
	"target":"EV_Controller/EV3",  //this is a key field specifying the target endpoint
	//"inputType":"genmessage",  //can trigger some warnings if there is mismatches for custom filters only used if operation is "custom"
	//"outputType":"genmessage",  //this could be useful if the filter actually translates the data and can be used to automatically order filters
	"mode":"source",  //source is the default but can be "source","destination","clone","cloning"
	"operation":"delay", //currently valid operations are "delay","clone","cloning","timedelay","randomdelay","randomdrop","reroute","redirect","custom"
	"properties":  //additional properties for filters are specified in a property array or object if there is just a single one
	{
		"name":"delay",  //A delay filter just has a single property
		"value":600	//times default to seconds though units can also be specified "200 ms" or similar
	}
	},
	{
	"name":"filterEV2",  //filters can have names (optional)
	"target":"EV_Controller/EV2",  //this is a key field specifying the target endpoint
	//"inputType":"genmessage",  //can trigger some warnings if there is mismatches for custom filters only used if operation is "custom"
	//"outputType":"genmessage",  //this could be useful if the filter actually translates the data and can be used to automatically order filters
	"mode":"source",  //source is the default but can be "source","destination","clone","cloning"
	"operation":"delay", //currently valid operations are "delay","clone","cloning","timedelay","randomdelay","randomdrop","reroute","redirect","custom"
	"properties":  //additional properties for filters are specified in a property array or object if there is just a single one
	{
		"name":"delay",  //A delay filter just has a single property
		"value":600	//times default to seconds though units can also be specified "200 ms" or similar
	}
	},
	{
	"name":"filterEV1",  //filters can have names (optional)
	"target":"EV_Controller/EV1",  //this is a key field specifying the target endpoint
	//"inputType":"genmessage",  //can trigger some warnings if there is mismatches for custom filters only used if operation is "custom"
	//"outputType":"genmessage",  //this could be useful if the filter actually translates the data and can be used to automatically order filters
	"mode":"source",  //source is the default but can be "source","destination","clone","cloning"
	"operation":"delay", //currently valid operations are "delay","clone","cloning","timedelay","randomdelay","randomdrop","reroute","redirect","custom"
	"properties":  //additional properties for filters are specified in a property array or object if there is just a single one
	{
		"name":"delay",  //A delay filter just has a single property
		"value":600	//times default to seconds though units can also be specified "200 ms" or similar
	}
	}
	],
	"subscriptions":[
	{
		"key": "IEEE_123_feeder_0/totalLoad",
		"type": "complex",
		"required": true
	},  {
		"key": "IEEE_123_feeder_0/charge_EV6",
		"type": "complex",
		"required": true
	},	{
		"key": "IEEE_123_feeder_0/charge_EV5",
		"type": "complex",
		"required": true
	},	{
		"key": "IEEE_123_feeder_0/charge_EV4",
		"type": "complex",
		"required": true
	},  {
		"key": "IEEE_123_feeder_0/charge_EV3",
		"type": "complex",
		"required": true
	},  {
		"key": "IEEE_123_feeder_0/charge_EV2",
		"type": "complex",
		"required": true
	},  {
		"key": "IEEE_123_feeder_0/charge_EV1",
		"type": "complex",
		"required": true
	}]
}
""")

end

@testset "Combination Federate" begin

    broker = createBroker();

    cfed = h.helicsCreateCombinationFederateFromConfig("testconfig.json");

    @test h.helicsFederateIsValid(cfed)

    @test h.helicsFederateGetEndpointCount(cfed) == 6
    @test h.helicsFederateGetFilterCount(cfed) == 6
    @test h.helicsFederateGetInputCount(cfed) == 7

    ept = h.helicsFederateGetEndpointByIndex(cfed, 0);

    @test h.helicsEndpointGetName(ept) == "EV_Controller/EV6"

    filt = h.helicsFederateGetFilterByIndex(cfed, 3)

    @test h.helicsFilterGetName(filt) == "EV_Controller/filterEV3"

    f = h.helicsFederateGetFilter(cfed, "EV_Controller/filterEV3")
    @test h.helicsFilterGetName(f) == "EV_Controller/filterEV3"

    ipt = h.helicsFederateGetInputByIndex(cfed, 4)
    @test h.helicsSubscriptionGetKey(ipt) == "IEEE_123_feeder_0/charge_EV3"

    h.helicsFederateDestroy(cfed)
    h.helicsBrokerDestroy(broker)

    rm("testconfig.json")

end

