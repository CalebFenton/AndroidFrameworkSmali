.class public final synthetic Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/location/ContextHubClientCallback;

.field public final synthetic blacklist f$1:Landroid/hardware/location/ContextHubClient;

.field public final synthetic blacklist f$2:J


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;J)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda7;->f$0:Landroid/hardware/location/ContextHubClientCallback;

    iput-object p2, p0, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda7;->f$1:Landroid/hardware/location/ContextHubClient;

    iput-wide p3, p0, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda7;->f$2:J

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda7;->f$0:Landroid/hardware/location/ContextHubClientCallback;

    iget-object v1, p0, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda7;->f$1:Landroid/hardware/location/ContextHubClient;

    iget-wide v2, p0, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda7;->f$2:J

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/location/ContextHubManager$3;->lambda$onNanoAppEnabled$5(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;J)V

    return-void
.end method
