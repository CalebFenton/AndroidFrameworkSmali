.class public final synthetic Landroid/uwb/RangingSession$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/uwb/RangingSession;

.field public final synthetic blacklist f$1:Landroid/uwb/UwbAddress;

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:Landroid/os/PersistableBundle;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/uwb/RangingSession;Landroid/uwb/UwbAddress;ILandroid/os/PersistableBundle;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda13;->f$0:Landroid/uwb/RangingSession;

    iput-object p2, p0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda13;->f$1:Landroid/uwb/UwbAddress;

    iput p3, p0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda13;->f$2:I

    iput-object p4, p0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda13;->f$3:Landroid/os/PersistableBundle;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda13;->f$0:Landroid/uwb/RangingSession;

    iget-object v1, p0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda13;->f$1:Landroid/uwb/UwbAddress;

    iget v2, p0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda13;->f$2:I

    iget-object v3, p0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda13;->f$3:Landroid/os/PersistableBundle;

    invoke-static {v0, v1, v2, v3}, Landroid/uwb/RangingSession;->$r8$lambda$NzbyhcySOCQpfzRmoNsm0TTH3MA(Landroid/uwb/RangingSession;Landroid/uwb/UwbAddress;ILandroid/os/PersistableBundle;)V

    return-void
.end method
