.class public final synthetic Landroid/uwb/RangingSession$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/uwb/RangingSession;

.field public final synthetic blacklist f$1:Landroid/uwb/UwbAddress;

.field public final synthetic blacklist f$2:Landroid/os/PersistableBundle;

.field public final synthetic blacklist f$3:[B


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/uwb/RangingSession;Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;[B)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda5;->f$0:Landroid/uwb/RangingSession;

    iput-object p2, p0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda5;->f$1:Landroid/uwb/UwbAddress;

    iput-object p3, p0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda5;->f$2:Landroid/os/PersistableBundle;

    iput-object p4, p0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda5;->f$3:[B

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda5;->f$0:Landroid/uwb/RangingSession;

    iget-object v1, p0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda5;->f$1:Landroid/uwb/UwbAddress;

    iget-object v2, p0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda5;->f$2:Landroid/os/PersistableBundle;

    iget-object v3, p0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda5;->f$3:[B

    invoke-static {v0, v1, v2, v3}, Landroid/uwb/RangingSession;->$r8$lambda$sZAyDDX9aaaaflMC1SaJQeE925g(Landroid/uwb/RangingSession;Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;[B)V

    return-void
.end method
