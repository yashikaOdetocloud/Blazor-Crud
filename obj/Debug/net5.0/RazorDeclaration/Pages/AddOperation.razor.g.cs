// <auto-generated/>
#pragma warning disable 1591
#pragma warning disable 0414
#pragma warning disable 0649
#pragma warning disable 0169

namespace CrudAssignment.Pages
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Components;
#nullable restore
#line 1 "E:\BlazorServerCodingAssignment\CrudAssignment\_Imports.razor"
using System.Net.Http;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "E:\BlazorServerCodingAssignment\CrudAssignment\_Imports.razor"
using Microsoft.AspNetCore.Authorization;

#line default
#line hidden
#nullable disable
#nullable restore
#line 3 "E:\BlazorServerCodingAssignment\CrudAssignment\_Imports.razor"
using Microsoft.AspNetCore.Components.Authorization;

#line default
#line hidden
#nullable disable
#nullable restore
#line 4 "E:\BlazorServerCodingAssignment\CrudAssignment\_Imports.razor"
using Microsoft.AspNetCore.Components.Forms;

#line default
#line hidden
#nullable disable
#nullable restore
#line 5 "E:\BlazorServerCodingAssignment\CrudAssignment\_Imports.razor"
using Microsoft.AspNetCore.Components.Routing;

#line default
#line hidden
#nullable disable
#nullable restore
#line 6 "E:\BlazorServerCodingAssignment\CrudAssignment\_Imports.razor"
using Microsoft.AspNetCore.Components.Web;

#line default
#line hidden
#nullable disable
#nullable restore
#line 7 "E:\BlazorServerCodingAssignment\CrudAssignment\_Imports.razor"
using Microsoft.AspNetCore.Components.Web.Virtualization;

#line default
#line hidden
#nullable disable
#nullable restore
#line 8 "E:\BlazorServerCodingAssignment\CrudAssignment\_Imports.razor"
using Microsoft.JSInterop;

#line default
#line hidden
#nullable disable
#nullable restore
#line 9 "E:\BlazorServerCodingAssignment\CrudAssignment\_Imports.razor"
using CrudAssignment;

#line default
#line hidden
#nullable disable
#nullable restore
#line 10 "E:\BlazorServerCodingAssignment\CrudAssignment\_Imports.razor"
using CrudAssignment.Shared;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "E:\BlazorServerCodingAssignment\CrudAssignment\Pages\AddOperation.razor"
using CrudAssignment.Data;

#line default
#line hidden
#nullable disable
    [Microsoft.AspNetCore.Components.RouteAttribute("/AddOperation")]
    public partial class AddOperation : Microsoft.AspNetCore.Components.ComponentBase
    {
        #pragma warning disable 1998
        protected override void BuildRenderTree(Microsoft.AspNetCore.Components.Rendering.RenderTreeBuilder __builder)
        {
        }
        #pragma warning restore 1998
#nullable restore
#line 51 "E:\BlazorServerCodingAssignment\CrudAssignment\Pages\AddOperation.razor"
       
    
    public List<Device> devicesL = new List<Device>();
    protected override async Task OnInitializedAsync()
    {
        devicesL = await deviceService.GetAllDeviceAsync();
    }

    Operation obj = new Operation();
    protected async void Create()
    {
        await operationService.InsertOperationAsync(obj);
        NavigationManager.NavigateTo("Operations");
        Console.WriteLine(devicesL);
    }
    void Cancel()
    {
        NavigationManager.NavigateTo("Operations");
    }

#line default
#line hidden
#nullable disable
        [global::Microsoft.AspNetCore.Components.InjectAttribute] private NavigationManager NavigationManager { get; set; }
        [global::Microsoft.AspNetCore.Components.InjectAttribute] private DeviceService deviceService { get; set; }
        [global::Microsoft.AspNetCore.Components.InjectAttribute] private OperationService operationService { get; set; }
    }
}
#pragma warning restore 1591