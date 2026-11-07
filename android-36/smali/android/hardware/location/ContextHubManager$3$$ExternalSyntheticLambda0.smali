.class public final synthetic Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/location/ContextHubClientCallback;

.field public final synthetic blacklist f$1:Landroid/hardware/location/ContextHubClient;

.field public final synthetic blacklist f$2:J

.field public final synthetic blacklist f$3:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;JI)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/location/ContextHubClientCallback;

    iput-object p2, p0, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/location/ContextHubClient;

    iput-wide p3, p0, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda0;->f$2:J

    iput p5, p0, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/location/ContextHubClientCallback;

    iget-object v1, p0, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/location/ContextHubClient;

    iget-wide v2, p0, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda0;->f$2:J

    iget v4, p0, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda0;->f$3:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/hardware/location/ContextHubManager$3;->lambda$onClientAuthorizationChanged$7(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;JI)V

    return-void
.end method
