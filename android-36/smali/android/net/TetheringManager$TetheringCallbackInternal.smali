.class Landroid/net/TetheringManager$TetheringCallbackInternal;
.super Landroid/net/ITetheringEventCallback$Stub;
.source "TetheringManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/TetheringManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TetheringCallbackInternal"
.end annotation


# instance fields
.field private volatile blacklist mError:I

.field private final blacklist mTetheringMgrRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/net/TetheringManager;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mWaitForCallback:Landroid/os/ConditionVariable;


# direct methods
.method constructor blacklist <init>(Landroid/net/TetheringManager;)V
    .registers 3
    .param p1, "tm"    # Landroid/net/TetheringManager;

    .line 620
    invoke-direct {p0}, Landroid/net/ITetheringEventCallback$Stub;-><init>()V

    .line 608
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/TetheringManager$TetheringCallbackInternal;->mError:I

    .line 609
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Landroid/net/TetheringManager$TetheringCallbackInternal;->mWaitForCallback:Landroid/os/ConditionVariable;

    .line 621
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/net/TetheringManager$TetheringCallbackInternal;->mTetheringMgrRef:Ljava/lang/ref/WeakReference;

    .line 622
    return-void
.end method


# virtual methods
.method public blacklist onCallbackStarted(Landroid/net/TetheringCallbackStartedParcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/net/TetheringCallbackStartedParcel;

    .line 626
    iget-object v0, p0, Landroid/net/TetheringManager$TetheringCallbackInternal;->mTetheringMgrRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/TetheringManager;

    .line 627
    .local v0, "tetheringMgr":Landroid/net/TetheringManager;
    if-eqz v0, :cond_19

    .line 628
    iget-object v1, p1, Landroid/net/TetheringCallbackStartedParcel;->config:Landroid/net/TetheringConfigurationParcel;

    invoke-static {v0, v1}, Landroid/net/TetheringManager;->-$$Nest$fputmTetheringConfiguration(Landroid/net/TetheringManager;Landroid/net/TetheringConfigurationParcel;)V

    .line 629
    iget-object v1, p1, Landroid/net/TetheringCallbackStartedParcel;->states:Landroid/net/TetherStatesParcel;

    invoke-static {v0, v1}, Landroid/net/TetheringManager;->-$$Nest$fputmTetherStatesParcel(Landroid/net/TetheringManager;Landroid/net/TetherStatesParcel;)V

    .line 630
    iget-object v1, p0, Landroid/net/TetheringManager$TetheringCallbackInternal;->mWaitForCallback:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 632
    :cond_19
    return-void
.end method

.method public blacklist onCallbackStopped(I)V
    .registers 4
    .param p1, "errorCode"    # I

    .line 636
    iget-object v0, p0, Landroid/net/TetheringManager$TetheringCallbackInternal;->mTetheringMgrRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/TetheringManager;

    .line 637
    .local v0, "tetheringMgr":Landroid/net/TetheringManager;
    if-eqz v0, :cond_11

    .line 638
    iput p1, p0, Landroid/net/TetheringManager$TetheringCallbackInternal;->mError:I

    .line 639
    iget-object v1, p0, Landroid/net/TetheringManager$TetheringCallbackInternal;->mWaitForCallback:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 641
    :cond_11
    return-void
.end method

.method public blacklist onConfigurationChanged(Landroid/net/TetheringConfigurationParcel;)V
    .registers 3
    .param p1, "config"    # Landroid/net/TetheringConfigurationParcel;

    .line 651
    iget-object v0, p0, Landroid/net/TetheringManager$TetheringCallbackInternal;->mTetheringMgrRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/TetheringManager;

    .line 652
    .local v0, "tetheringMgr":Landroid/net/TetheringManager;
    if-eqz v0, :cond_d

    invoke-static {v0, p1}, Landroid/net/TetheringManager;->-$$Nest$fputmTetheringConfiguration(Landroid/net/TetheringManager;Landroid/net/TetheringConfigurationParcel;)V

    .line 653
    :cond_d
    return-void
.end method

.method public blacklist onOffloadStatusChanged(I)V
    .registers 2
    .param p1, "status"    # I

    .line 665
    return-void
.end method

.method public blacklist onSupportedTetheringTypes(J)V
    .registers 3
    .param p1, "supportedBitmap"    # J

    .line 644
    return-void
.end method

.method public blacklist onTetherClientsChanged(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/TetheredClient;",
            ">;)V"
        }
    .end annotation

    .line 662
    .local p1, "clients":Ljava/util/List;, "Ljava/util/List<Landroid/net/TetheredClient;>;"
    return-void
.end method

.method public blacklist onTetherStatesChanged(Landroid/net/TetherStatesParcel;)V
    .registers 3
    .param p1, "states"    # Landroid/net/TetherStatesParcel;

    .line 657
    iget-object v0, p0, Landroid/net/TetheringManager$TetheringCallbackInternal;->mTetheringMgrRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/TetheringManager;

    .line 658
    .local v0, "tetheringMgr":Landroid/net/TetheringManager;
    if-eqz v0, :cond_d

    invoke-static {v0, p1}, Landroid/net/TetheringManager;->-$$Nest$fputmTetherStatesParcel(Landroid/net/TetheringManager;Landroid/net/TetherStatesParcel;)V

    .line 659
    :cond_d
    return-void
.end method

.method public blacklist onUpstreamChanged(Landroid/net/Network;)V
    .registers 2
    .param p1, "network"    # Landroid/net/Network;

    .line 647
    return-void
.end method

.method public blacklist waitForStarted()V
    .registers 4

    .line 668
    iget-object v0, p0, Landroid/net/TetheringManager$TetheringCallbackInternal;->mWaitForCallback:Landroid/os/ConditionVariable;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    .line 669
    iget v0, p0, Landroid/net/TetheringManager$TetheringCallbackInternal;->mError:I

    invoke-static {v0}, Landroid/net/TetheringManager;->-$$Nest$smthrowIfPermissionFailure(I)V

    .line 670
    return-void
.end method
