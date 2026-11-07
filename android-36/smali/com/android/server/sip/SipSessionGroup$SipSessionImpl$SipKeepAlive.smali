.class Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;
.super Landroid/net/sip/SipSessionAdapter;
.source "SipSessionGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SipKeepAlive"
.end annotation


# static fields
.field private static final blacklist SKA_DBG:Z = true

.field private static final blacklist SKA_TAG:Ljava/lang/String; = "SipKeepAlive"


# instance fields
.field private blacklist mCallback:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;

.field private blacklist mInterval:I

.field private blacklist mPortChanged:Z

.field private blacklist mRPort:I

.field private blacklist mRunning:Z

.field final synthetic blacklist this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;


# direct methods
.method constructor blacklist <init>(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1525
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-direct {p0}, Landroid/net/sip/SipSessionAdapter;-><init>()V

    .line 1529
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mRunning:Z

    .line 1532
    iput-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mPortChanged:Z

    .line 1533
    iput v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mRPort:I

    return-void
.end method

.method private blacklist getRPortFromResponse(Ljavax/sip/message/Response;)I
    .registers 4
    .param p1, "response"    # Ljavax/sip/message/Response;

    .line 1657
    const-string v0, "Via"

    invoke-interface {p1, v0}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax/sip/header/ViaHeader;

    .line 1659
    .local v0, "viaHeader":Ljavax/sip/header/ViaHeader;
    if-nez v0, :cond_c

    const/4 v1, -0x1

    goto :goto_10

    :cond_c
    invoke-interface {v0}, Ljavax/sip/header/ViaHeader;->getRPort()I

    move-result v1

    :goto_10
    return v1
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 1663
    const-string v0, "SipKeepAlive"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    return-void
.end method

.method private blacklist parseOptionsResult(Ljava/util/EventObject;)Z
    .registers 7
    .param p1, "evt"    # Ljava/util/EventObject;

    .line 1635
    const-string v0, "OPTIONS"

    invoke-static {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$smexpectResponse(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 1636
    move-object v0, p1

    check-cast v0, Ljavax/sip/ResponseEvent;

    .line 1637
    .local v0, "event":Ljavax/sip/ResponseEvent;
    invoke-virtual {v0}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->getRPortFromResponse(Ljavax/sip/message/Response;)I

    move-result v1

    .line 1638
    .local v1, "rPort":I
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v1, v2, :cond_54

    .line 1639
    iget v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mRPort:I

    if-nez v2, :cond_1d

    iput v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mRPort:I

    .line 1640
    :cond_1d
    iget v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mRPort:I

    if-eq v2, v1, :cond_3d

    .line 1641
    iput-boolean v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mPortChanged:Z

    .line 1642
    iget v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mRPort:I

    .line 1643
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 1642
    const-string v4, "rport is changed: %d <> %d"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->log(Ljava/lang/String;)V

    .line 1644
    iput v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mRPort:I

    goto :goto_59

    .line 1646
    :cond_3d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rport is the same: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->log(Ljava/lang/String;)V

    goto :goto_59

    .line 1649
    :cond_54
    const-string v2, "peer did not respond rport"

    invoke-direct {p0, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->log(Ljava/lang/String;)V

    .line 1651
    :goto_59
    return v3

    .line 1653
    .end local v0    # "event":Ljavax/sip/ResponseEvent;
    .end local v1    # "rPort":I
    :cond_5a
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist sendKeepAlive()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 1622
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v0, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    monitor-enter v0

    .line 1623
    :try_start_5
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/16 v2, 0x9

    iput v2, v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1624
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v2, v2, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v2}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmSipHelper(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v3, v3, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v3}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmLocalProfile(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v4, v4, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 1625
    invoke-virtual {v5}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->generateTag()Ljava/lang/String;

    move-result-object v5

    .line 1624
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/sip/SipHelper;->sendOptions(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/ClientTransaction;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    .line 1626
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v2, v2, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    invoke-interface {v2}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 1627
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v1, v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-static {v1, v2}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$maddSipSession(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    .line 1629
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->-$$Nest$mstartSessionTimer(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;I)V

    .line 1631
    monitor-exit v0

    .line 1632
    return-void

    .line 1631
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_5 .. :try_end_4c} :catchall_4a

    throw v1
.end method


# virtual methods
.method public blacklist onError(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .registers 5
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 1576
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->stop()V

    .line 1577
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mCallback:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    invoke-interface {v0, p2, p3}, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;->onError(ILjava/lang/String;)V

    .line 1578
    return-void
.end method

.method blacklist process(Ljava/util/EventObject;)Z
    .registers 4
    .param p1, "evt"    # Ljava/util/EventObject;

    .line 1554
    iget-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mRunning:Z

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget v0, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_3c

    .line 1555
    instance-of v0, p1, Ljavax/sip/ResponseEvent;

    if-eqz v0, :cond_3c

    .line 1556
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->parseOptionsResult(Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1557
    iget-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mPortChanged:Z

    if-eqz v0, :cond_25

    .line 1558
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v0, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup;->resetExternalAddress()V

    .line 1559
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->stop()V

    goto :goto_33

    .line 1561
    :cond_25
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->-$$Nest$mcancelSessionTimer(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    .line 1562
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v0, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-static {v0, v1}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$mremoveSipSession(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    .line 1564
    :goto_33
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mCallback:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    iget-boolean v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mPortChanged:Z

    invoke-interface {v0, v1}, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;->onResponse(Z)V

    .line 1565
    const/4 v0, 0x1

    return v0

    .line 1569
    :cond_3c
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api run()V
    .registers 6

    .line 1584
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v0, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    monitor-enter v0

    .line 1585
    :try_start_5
    iget-boolean v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mRunning:Z

    if-nez v1, :cond_b

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_49

    return-void

    .line 1595
    :cond_b
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->sendKeepAlive()V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_f

    .line 1605
    goto :goto_47

    .line 1596
    :catchall_f
    move-exception v1

    .line 1598
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_10
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v2, v2, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keepalive error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v4, v4, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v4}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmLocalProfile(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v4

    .line 1599
    invoke-virtual {v4}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v4, v4, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v4, v1}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$mgetRootCause(Lcom/android/server/sip/SipSessionGroup;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    .line 1598
    invoke-static {v2, v3, v4}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$mloge(Lcom/android/server/sip/SipSessionGroup;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1604
    iget-boolean v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mRunning:Z

    if-eqz v2, :cond_47

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-static {v2, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->-$$Nest$monError(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/lang/Throwable;)V

    .line 1606
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_47
    :goto_47
    monitor-exit v0

    .line 1607
    return-void

    .line 1606
    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_10 .. :try_end_4b} :catchall_49

    throw v1
.end method

.method blacklist start(ILcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V
    .registers 5
    .param p1, "interval"    # I
    .param p2, "callback"    # Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    .line 1538
    iget-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mRunning:Z

    if-eqz v0, :cond_5

    return-void

    .line 1539
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mRunning:Z

    .line 1540
    iput p1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mInterval:I

    .line 1541
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;

    invoke-direct {v0, p2}, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;-><init>(Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mCallback:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    .line 1542
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v0, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmWakeupTimer(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v0

    mul-int/lit16 v1, p1, 0x3e8

    invoke-virtual {v0, v1, p0}, Lcom/android/server/sip/SipWakeupTimer;->set(ILjava/lang/Runnable;)V

    .line 1544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start keepalive:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v1, v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmLocalProfile(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v1

    .line 1545
    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1544
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->log(Ljava/lang/String;)V

    .line 1549
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->run()V

    .line 1550
    return-void
.end method

.method blacklist stop()V
    .registers 4

    .line 1610
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v0, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    monitor-enter v0

    .line 1612
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop keepalive:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v2, v2, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v2}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmLocalProfile(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",RPort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mRPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->log(Ljava/lang/String;)V

    .line 1615
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mRunning:Z

    .line 1616
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v1, v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmWakeupTimer(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/sip/SipWakeupTimer;->cancel(Ljava/lang/Runnable;)V

    .line 1617
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->-$$Nest$mreset(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    .line 1618
    monitor-exit v0

    .line 1619
    return-void

    .line 1618
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_5 .. :try_end_4a} :catchall_48

    throw v1
.end method
