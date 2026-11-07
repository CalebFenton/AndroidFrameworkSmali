.class public final synthetic Landroid/hardware/location/ContextHubManager$2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/location/ContextHubManager$2;

.field public final synthetic blacklist f$1:[Landroid/hardware/contexthub/HubEndpointInfo;

.field public final synthetic blacklist f$2:Ljava/lang/String;

.field public final synthetic blacklist f$3:Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;

.field public final synthetic blacklist f$4:Landroid/hardware/location/IContextHubService;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/location/ContextHubManager$2;[Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;Landroid/hardware/location/IContextHubService;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/location/ContextHubManager$2$$ExternalSyntheticLambda1;->f$0:Landroid/hardware/location/ContextHubManager$2;

    iput-object p2, p0, Landroid/hardware/location/ContextHubManager$2$$ExternalSyntheticLambda1;->f$1:[Landroid/hardware/contexthub/HubEndpointInfo;

    iput-object p3, p0, Landroid/hardware/location/ContextHubManager$2$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput-object p4, p0, Landroid/hardware/location/ContextHubManager$2$$ExternalSyntheticLambda1;->f$3:Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;

    iput-object p5, p0, Landroid/hardware/location/ContextHubManager$2$$ExternalSyntheticLambda1;->f$4:Landroid/hardware/location/IContextHubService;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$2$$ExternalSyntheticLambda1;->f$0:Landroid/hardware/location/ContextHubManager$2;

    iget-object v1, p0, Landroid/hardware/location/ContextHubManager$2$$ExternalSyntheticLambda1;->f$1:[Landroid/hardware/contexthub/HubEndpointInfo;

    iget-object v2, p0, Landroid/hardware/location/ContextHubManager$2$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/location/ContextHubManager$2$$ExternalSyntheticLambda1;->f$3:Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;

    iget-object v4, p0, Landroid/hardware/location/ContextHubManager$2$$ExternalSyntheticLambda1;->f$4:Landroid/hardware/location/IContextHubService;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/hardware/location/ContextHubManager$2;->$r8$lambda$GzupSqFIFQSMQggN3e_AmpQUGws(Landroid/hardware/location/ContextHubManager$2;[Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;Landroid/hardware/location/IContextHubService;)V

    return-void
.end method
