.class public final synthetic Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/location/ContextHubClientCallback;

.field public final synthetic blacklist f$1:Landroid/hardware/location/ContextHubClient;

.field public final synthetic blacklist f$2:Landroid/hardware/location/NanoAppMessage;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;Landroid/hardware/location/NanoAppMessage;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda6;->f$0:Landroid/hardware/location/ContextHubClientCallback;

    iput-object p2, p0, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda6;->f$1:Landroid/hardware/location/ContextHubClient;

    iput-object p3, p0, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda6;->f$2:Landroid/hardware/location/NanoAppMessage;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda6;->f$0:Landroid/hardware/location/ContextHubClientCallback;

    iget-object v1, p0, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda6;->f$1:Landroid/hardware/location/ContextHubClient;

    iget-object v2, p0, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda6;->f$2:Landroid/hardware/location/NanoAppMessage;

    invoke-static {v0, v1, v2}, Landroid/hardware/location/ContextHubManager$3;->lambda$onMessageFromNanoApp$0(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;Landroid/hardware/location/NanoAppMessage;)V

    return-void
.end method
