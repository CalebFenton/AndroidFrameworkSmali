.class public final synthetic Landroid/uwb/RangingSession$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/uwb/RangingSession;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/os/PersistableBundle;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/uwb/RangingSession;ILandroid/os/PersistableBundle;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda17;->f$0:Landroid/uwb/RangingSession;

    iput p2, p0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda17;->f$1:I

    iput-object p3, p0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda17;->f$2:Landroid/os/PersistableBundle;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda17;->f$0:Landroid/uwb/RangingSession;

    iget v1, p0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda17;->f$1:I

    iget-object v2, p0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda17;->f$2:Landroid/os/PersistableBundle;

    invoke-static {v0, v1, v2}, Landroid/uwb/RangingSession;->$r8$lambda$u4Gb2DdD8Y75tn8rpbC22Z9ZXFI(Landroid/uwb/RangingSession;ILandroid/os/PersistableBundle;)V

    return-void
.end method
