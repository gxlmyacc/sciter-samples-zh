module Submits.AeroTabs;

import sciter.definitions.sciter_value;


class SubmitAeroTabs
{
	void Setup()
	{
		const json_value c_field_tip = json_value("tip");
		const json_value c_field_icon = json_value("icon");
		json_value tabinfo;
		assert(!c_field_tip.is_undefined() && !c_field_icon.is_undefined() && tabinfo.is_undefined());

		auto fAddTab = delegate(wstring tip, wstring icon, ref json_value section)
		{
			json_value json_tip = tip;
			json_value json_icon = icon;

			tabinfo.clear();
			tabinfo.set_item(c_field_tip, json_tip);
			tabinfo.set_item(c_field_icon, json_icon);
			section.append(tabinfo);
		};

		json_value tabs_section_general;
		fAddTab( "Map Info", "scroll.png", tabs_section_general );
		fAddTab( "Log output", "log4.png", tabs_section_general );
		fAddTab( "Log output", "log4.png", tabs_section_general );
		json_value tabs_section_script;
		fAddTab( "BuildCompile", "build.png", tabs_section_script );
		fAddTab( "Compile output", "log3.png", tabs_section_script );
		fAddTab( "Find/Replace", "search.png", tabs_section_script );

		json_value tabs_sections_data;
		tabs_sections_data.append(tabs_section_general);
		tabs_sections_data.append(tabs_section_script);

		//import WindowBrowser;
		//WindowBrowser.g_host.call_function("Extern_PosCreateData", [tabs_sections_data]);
	}
}