.class abstract Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$LocalRequestQueuer;
.super Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ExceptionHandler;
.source "IkeSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "LocalRequestQueuer"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1794
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$LocalRequestQueuer;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ExceptionHandler;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$LocalRequestQueuer;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V

    return-void
.end method

.method private blacklist enqueueLocalRequestSynchronously(Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;)V
    .registers 5
    .param p1, "request"    # Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;

    .line 1877
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$LocalRequestQueuer;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$LocalRequestQueuer;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget v2, p1, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;->procedureType:I

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 1878
    return-void
.end method


# virtual methods
.method protected blacklist buildIkeDeleteReq(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .registers 6
    .param p1, "ikeSaRecord"    # Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 1882
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;

    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;

    invoke-direct {v1}, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1884
    .local v0, "payloads":[Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$LocalRequestQueuer;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    .line 1888
    invoke-virtual {p1}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getLocalRequestMessageId()I

    move-result v3

    .line 1884
    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->buildEncryptedInformationalMessage(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;[Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;ZI)Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v1

    return-object v1
.end method

.method protected blacklist handleFiredAlarm(Landroid/os/Message;)V
    .registers 6
    .param p1, "message"    # Landroid/os/Message;

    .line 1845
    iget v0, p1, Landroid/os/Message;->arg2:I

    sparse-switch v0, :sswitch_data_5e

    .line 1868
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$LocalRequestQueuer;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid alarm action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logWtf(Ljava/lang/String;)V

    .line 1870
    return-void

    .line 1860
    :sswitch_20
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "BUNDLE_KEY_IKE_REMOTE_SPI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1861
    .local v0, "remoteIkeSpi":J
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$LocalRequestQueuer;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmLocalRequestFactory(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestFactory;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 1862
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestFactory;->getIkeLocalRequest(IJ)Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$IkeLocalRequest;

    move-result-object v2

    .line 1861
    invoke-direct {p0, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$LocalRequestQueuer;->enqueueLocalRequestSynchronously(Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;)V

    .line 1866
    return-void

    .line 1847
    .end local v0    # "remoteIkeSpi":J
    :sswitch_3a
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$LocalRequestQueuer;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->fireKeepAlive()V

    .line 1848
    return-void

    .line 1851
    :sswitch_44
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "BUNDLE_KEY_CHILD_REMOTE_SPI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1852
    .local v0, "remoteChildSpi":I
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$LocalRequestQueuer;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmLocalRequestFactory(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestFactory;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 1853
    invoke-virtual {v1, v2, v0}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestFactory;->getChildLocalRequest(II)Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;

    move-result-object v1

    .line 1852
    invoke-direct {p0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$LocalRequestQueuer;->enqueueLocalRequestSynchronously(Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;)V

    .line 1855
    return-void

    :sswitch_data_5e
    .sparse-switch
        0x2 -> :sswitch_44
        0x3 -> :sswitch_44
        0x13c -> :sswitch_3a
        0x192 -> :sswitch_20
        0x193 -> :sswitch_20
        0x195 -> :sswitch_20
    .end sparse-switch
.end method

.method protected blacklist handleLocalRequest(ILcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;)V
    .registers 6
    .param p1, "requestVal"    # I
    .param p2, "req"    # Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;

    .line 1802
    sparse-switch p1, :sswitch_data_34

    .line 1827
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown local request passed to handleLocalRequest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$LocalRequestQueuer;->cleanUpAndQuit(Ljava/lang/RuntimeException;)V

    .line 1831
    return-void

    .line 1809
    :sswitch_e
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$LocalRequestQueuer;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmScheduler(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;->addRequest(Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;)V

    .line 1810
    return-void

    .line 1817
    :sswitch_18
    move-object v0, p2

    check-cast v0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;

    .line 1818
    .local v0, "childReq":Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;
    iget v1, v0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;->procedureType:I

    if-eq v1, p1, :cond_29

    .line 1819
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ChildLocalRequest procedure type was invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$LocalRequestQueuer;->cleanUpAndQuit(Ljava/lang/RuntimeException;)V

    .line 1823
    :cond_29
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$LocalRequestQueuer;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmScheduler(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;->addRequest(Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;)V

    .line 1824
    return-void

    nop

    :sswitch_data_34
    .sparse-switch
        0x1 -> :sswitch_18
        0x2 -> :sswitch_18
        0x3 -> :sswitch_18
        0x4 -> :sswitch_18
        0x5 -> :sswitch_18
        0x192 -> :sswitch_e
        0x193 -> :sswitch_e
        0x194 -> :sswitch_e
        0x195 -> :sswitch_e
        0x196 -> :sswitch_e
        0x197 -> :sswitch_e
    .end sparse-switch
.end method

.method protected blacklist isLocalRequest(I)Z
    .registers 3
    .param p1, "msgWhat"    # I

    .line 1835
    const/16 v0, 0x190

    if-lt p1, v0, :cond_8

    const/16 v0, 0x1f4

    if-lt p1, v0, :cond_e

    :cond_8
    if-ltz p1, :cond_10

    const/16 v0, 0x64

    if-ge p1, v0, :cond_10

    .line 1839
    :cond_e
    const/4 v0, 0x1

    return v0

    .line 1841
    :cond_10
    const/4 v0, 0x0

    return v0
.end method
