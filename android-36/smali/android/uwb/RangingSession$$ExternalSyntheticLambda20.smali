.class public final synthetic Landroid/uwb/RangingSession$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/uwb/RangingSession;

.field public final synthetic blacklist f$1:Landroid/os/PersistableBundle;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/uwb/RangingSession;Landroid/os/PersistableBundle;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda20;->f$0:Landroid/uwb/RangingSession;

    iput-object p2, p0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda20;->f$1:Landroid/os/PersistableBundle;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda20;->f$0:Landroid/uwb/RangingSession;

    iget-object v1, p0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda20;->f$1:Landroid/os/PersistableBundle;

    invoke-static {v0, v1}, Landroid/uwb/RangingSession;->$r8$lambda$P-8Mn09mOBx3G1JHvkmSRf0qpS8(Landroid/uwb/RangingSession;Landroid/os/PersistableBundle;)V

    return-void
.end method
