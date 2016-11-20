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
.field private static final SKA_DBG:Z = true

.field private static final SKA_TAG:Ljava/lang/String; = "SipKeepAlive"


# instance fields
.field private mCallback:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;

.field private mInterval:I

.field private mPortChanged:Z

.field private mRPort:I

.field private mRunning:Z

.field final synthetic this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;


# direct methods
.method constructor <init>(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1525
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@3
    invoke-direct {p0}, Landroid/net/sip/SipSessionAdapter;-><init>()V

    #@6
    .line 1529
    iput-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mRunning:Z

    #@8
    .line 1532
    iput-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mPortChanged:Z

    #@a
    .line 1533
    iput v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mRPort:I

    #@c
    .line 1525
    return-void
.end method

.method private getRPortFromResponse(Ljavax/sip/message/Response;)I
    .locals 2
    .param p1, "response"    # Ljavax/sip/message/Response;

    #@0
    .prologue
    .line 1658
    const-string/jumbo v1, "Via"

    #@3
    .line 1657
    invoke-interface {p1, v1}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljavax/sip/header/ViaHeader;

    #@9
    .line 1659
    .local v0, "viaHeader":Ljavax/sip/header/ViaHeader;
    if-nez v0, :cond_0

    #@b
    const/4 v1, -0x1

    #@c
    :goto_0
    return v1

    #@d
    :cond_0
    invoke-interface {v0}, Ljavax/sip/header/ViaHeader;->getRPort()I

    #@10
    move-result v1

    #@11
    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1663
    const-string/jumbo v0, "SipKeepAlive"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 1662
    return-void
.end method

.method private parseOptionsResult(Ljava/util/EventObject;)Z
    .locals 7
    .param p1, "evt"    # Ljava/util/EventObject;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 1635
    const-string/jumbo v2, "OPTIONS"

    #@5
    invoke-static {v2, p1}, Lcom/android/server/sip/SipSessionGroup;->-wrap1(Ljava/lang/String;Ljava/util/EventObject;)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_3

    #@b
    move-object v0, p1

    #@c
    .line 1636
    check-cast v0, Ljavax/sip/ResponseEvent;

    #@e
    .line 1637
    .local v0, "event":Ljavax/sip/ResponseEvent;
    invoke-virtual {v0}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    #@11
    move-result-object v2

    #@12
    invoke-direct {p0, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->getRPortFromResponse(Ljavax/sip/message/Response;)I

    #@15
    move-result v1

    #@16
    .line 1638
    .local v1, "rPort":I
    const/4 v2, -0x1

    #@17
    if-eq v1, v2, :cond_2

    #@19
    .line 1639
    iget v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mRPort:I

    #@1b
    if-nez v2, :cond_0

    #@1d
    iput v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mRPort:I

    #@1f
    .line 1640
    :cond_0
    iget v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mRPort:I

    #@21
    if-eq v2, v1, :cond_1

    #@23
    .line 1641
    iput-boolean v6, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mPortChanged:Z

    #@25
    .line 1643
    const-string/jumbo v2, "rport is changed: %d <> %d"

    #@28
    .line 1642
    const/4 v3, 0x2

    #@29
    new-array v3, v3, [Ljava/lang/Object;

    #@2b
    .line 1643
    iget v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mRPort:I

    #@2d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@30
    move-result-object v4

    #@31
    aput-object v4, v3, v5

    #@33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@36
    move-result-object v4

    #@37
    aput-object v4, v3, v6

    #@39
    .line 1642
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    invoke-direct {p0, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->log(Ljava/lang/String;)V

    #@40
    .line 1644
    iput v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mRPort:I

    #@42
    .line 1651
    :goto_0
    return v6

    #@43
    .line 1646
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v3, "rport is the same: "

    #@4b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v2

    #@57
    invoke-direct {p0, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->log(Ljava/lang/String;)V

    #@5a
    goto :goto_0

    #@5b
    .line 1649
    :cond_2
    const-string/jumbo v2, "peer did not respond rport"

    #@5e
    invoke-direct {p0, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->log(Ljava/lang/String;)V

    #@61
    goto :goto_0

    #@62
    .line 1653
    .end local v0    # "event":Ljavax/sip/ResponseEvent;
    .end local v1    # "rPort":I
    :cond_3
    return v5
.end method

.method private sendKeepAlive()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 1622
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@2
    iget-object v1, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@4
    monitor-enter v1

    #@5
    .line 1623
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@7
    const/16 v2, 0x9

    #@9
    iput v2, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    #@b
    .line 1624
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@d
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@f
    iget-object v2, v2, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@11
    invoke-static {v2}, Lcom/android/server/sip/SipSessionGroup;->-get8(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    #@14
    move-result-object v2

    #@15
    .line 1625
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@17
    iget-object v3, v3, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@19
    invoke-static {v3}, Lcom/android/server/sip/SipSessionGroup;->-get5(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    #@1c
    move-result-object v3

    #@1d
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@1f
    iget-object v4, v4, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    #@21
    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@23
    invoke-virtual {v5}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->generateTag()Ljava/lang/String;

    #@26
    move-result-object v5

    #@27
    .line 1624
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/sip/SipHelper;->sendOptions(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/ClientTransaction;

    #@2a
    move-result-object v2

    #@2b
    iput-object v2, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    #@2d
    .line 1626
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@2f
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@31
    iget-object v2, v2, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    #@33
    invoke-interface {v2}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    #@36
    move-result-object v2

    #@37
    iput-object v2, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    #@39
    .line 1627
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@3b
    iget-object v0, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@3d
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@3f
    invoke-static {v0, v2}, Lcom/android/server/sip/SipSessionGroup;->-wrap9(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    #@42
    .line 1629
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@44
    const/4 v2, 0x5

    #@45
    invoke-static {v0, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->-wrap5(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@48
    monitor-exit v1

    #@49
    .line 1621
    return-void

    #@4a
    .line 1622
    :catchall_0
    move-exception v0

    #@4b
    monitor-exit v1

    #@4c
    throw v0
.end method


# virtual methods
.method public onError(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 1
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1576
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->stop()V

    #@3
    .line 1577
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mCallback:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    #@5
    invoke-interface {v0, p2, p3}, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;->onError(ILjava/lang/String;)V

    #@8
    .line 1575
    return-void
.end method

.method process(Ljava/util/EventObject;)Z
    .locals 2
    .param p1, "evt"    # Ljava/util/EventObject;

    #@0
    .prologue
    .line 1554
    iget-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mRunning:Z

    #@2
    if-eqz v0, :cond_1

    #@4
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@6
    iget v0, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    #@8
    const/16 v1, 0x9

    #@a
    if-ne v0, v1, :cond_1

    #@c
    .line 1555
    instance-of v0, p1, Ljavax/sip/ResponseEvent;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 1556
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->parseOptionsResult(Ljava/util/EventObject;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 1557
    iget-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mPortChanged:Z

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 1558
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@1c
    iget-object v0, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@1e
    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup;->resetExternalAddress()V

    #@21
    .line 1559
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->stop()V

    #@24
    .line 1564
    :goto_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mCallback:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    #@26
    iget-boolean v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mPortChanged:Z

    #@28
    invoke-interface {v0, v1}, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;->onResponse(Z)V

    #@2b
    .line 1565
    const/4 v0, 0x1

    #@2c
    return v0

    #@2d
    .line 1561
    :cond_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@2f
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->-wrap0(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    #@32
    .line 1562
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@34
    iget-object v0, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@36
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@38
    invoke-static {v0, v1}, Lcom/android/server/sip/SipSessionGroup;->-wrap12(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    #@3b
    goto :goto_0

    #@3c
    .line 1569
    :cond_1
    const/4 v0, 0x0

    #@3d
    return v0
.end method

.method public run()V
    .locals 5

    #@0
    .prologue
    .line 1584
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@2
    iget-object v2, v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@4
    monitor-enter v2

    #@5
    .line 1585
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    if-nez v1, :cond_0

    #@9
    monitor-exit v2

    #@a
    return-void

    #@b
    .line 1595
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->sendKeepAlive()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    :cond_1
    :goto_0
    monitor-exit v2

    #@f
    .line 1583
    return-void

    #@10
    .line 1596
    :catch_0
    move-exception v0

    #@11
    .line 1598
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@13
    iget-object v1, v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@15
    new-instance v3, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v4, "keepalive error: "

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    .line 1599
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@23
    iget-object v4, v4, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@25
    invoke-static {v4}, Lcom/android/server/sip/SipSessionGroup;->-get5(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    .line 1598
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    .line 1599
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@37
    iget-object v4, v4, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@39
    invoke-static {v4, v0}, Lcom/android/server/sip/SipSessionGroup;->-wrap8(Lcom/android/server/sip/SipSessionGroup;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@3c
    move-result-object v4

    #@3d
    .line 1598
    invoke-static {v1, v3, v4}, Lcom/android/server/sip/SipSessionGroup;->-wrap11(Lcom/android/server/sip/SipSessionGroup;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@40
    .line 1604
    iget-boolean v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mRunning:Z

    #@42
    if-eqz v1, :cond_1

    #@44
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@46
    invoke-static {v1, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->-wrap2(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@49
    goto :goto_0

    #@4a
    .line 1584
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    #@4b
    monitor-exit v2

    #@4c
    throw v1
.end method

.method start(ILcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V
    .locals 2
    .param p1, "interval"    # I
    .param p2, "callback"    # Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    #@0
    .prologue
    .line 1538
    iget-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mRunning:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    return-void

    #@5
    .line 1539
    :cond_0
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mRunning:Z

    #@8
    .line 1540
    iput p1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mInterval:I

    #@a
    .line 1541
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;

    #@c
    invoke-direct {v0, p2}, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;-><init>(Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V

    #@f
    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mCallback:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    #@11
    .line 1542
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@13
    iget-object v0, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@15
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->-get9(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipWakeupTimer;

    #@18
    move-result-object v0

    #@19
    mul-int/lit16 v1, p1, 0x3e8

    #@1b
    invoke-virtual {v0, v1, p0}, Lcom/android/server/sip/SipWakeupTimer;->set(ILjava/lang/Runnable;)V

    #@1e
    .line 1544
    new-instance v0, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v1, "start keepalive:"

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 1545
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@2c
    iget-object v1, v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@2e
    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->-get5(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    .line 1544
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->log(Ljava/lang/String;)V

    #@41
    .line 1549
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->run()V

    #@44
    .line 1537
    return-void
.end method

.method stop()V
    .locals 3

    #@0
    .prologue
    .line 1610
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@2
    iget-object v1, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@4
    monitor-enter v1

    #@5
    .line 1612
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "stop keepalive:"

    #@d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@13
    iget-object v2, v2, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@15
    invoke-static {v2}, Lcom/android/server/sip/SipSessionGroup;->-get5(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    .line 1613
    const-string/jumbo v2, ",RPort="

    #@24
    .line 1612
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    .line 1613
    iget v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mRPort:I

    #@2a
    .line 1612
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->log(Ljava/lang/String;)V

    #@35
    .line 1615
    const/4 v0, 0x0

    #@36
    iput-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mRunning:Z

    #@38
    .line 1616
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@3a
    iget-object v0, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@3c
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->-get9(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipWakeupTimer;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipWakeupTimer;->cancel(Ljava/lang/Runnable;)V

    #@43
    .line 1617
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@45
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->-wrap4(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@48
    monitor-exit v1

    #@49
    .line 1609
    return-void

    #@4a
    .line 1610
    :catchall_0
    move-exception v0

    #@4b
    monitor-exit v1

    #@4c
    throw v0
.end method
