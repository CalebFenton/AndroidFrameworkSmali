.class public final synthetic Landroid/hardware/location/ContextHubManager$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/location/ContextHubManager$2;

.field public final synthetic blacklist f$1:[Landroid/hardware/contexthub/HubEndpointInfo;

.field public final synthetic blacklist f$2:Ljava/lang/String;

.field public final synthetic blacklist f$3:Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;

.field public final synthetic blacklist f$4:I

.field public final synthetic blacklist f$5:Landroid/hardware/location/IContextHubService;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/location/ContextHubManager$2;[Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;ILandroid/hardware/location/IContextHubService;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/location/ContextHubManager$2$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/location/ContextHubManager$2;

    iput-object p2, p0, Landroid/hardware/location/ContextHubManager$2$$ExternalSyntheticLambda0;->f$1:[Landroid/hardware/contexthub/HubEndpointInfo;

    iput-object p3, p0, Landroid/hardware/location/ContextHubManager$2$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Landroid/hardware/location/ContextHubManager$2$$ExternalSyntheticLambda0;->f$3:Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;

    iput p5, p0, Landroid/hardware/location/ContextHubManager$2$$ExternalSyntheticLambda0;->f$4:I

    iput-object p6, p0, Landroid/hardware/location/ContextHubManager$2$$ExternalSyntheticLambda0;->f$5:Landroid/hardware/location/IContextHubService;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 7

    .line 0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$2$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/location/ContextHubManager$2;

    iget-object v1, p0, Landroid/hardware/location/ContextHubManager$2$$ExternalSyntheticLambda0;->f$1:[Landroid/hardware/contexthub/HubEndpointInfo;

    iget-object v2, p0, Landroid/hardware/location/ContextHubManager$2$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/location/ContextHubManager$2$$ExternalSyntheticLambda0;->f$3:Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;

    iget v4, p0, Landroid/hardware/location/ContextHubManager$2$$ExternalSyntheticLambda0;->f$4:I

    iget-object v5, p0, Landroid/hardware/location/ContextHubManager$2$$ExternalSyntheticLambda0;->f$5:Landroid/hardware/location/IContextHubService;

    invoke-static/range {v0 .. v5}, Landroid/hardware/location/ContextHubManager$2;->$r8$lambda$dFDB5Akr_0QyNLei7kH6PYUaVP8(Landroid/hardware/location/ContextHubManager$2;[Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;ILandroid/hardware/location/IContextHubService;)V

    return-void
.end method
