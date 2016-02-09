.class Lcom/android/internal/telephony/sip/SipPhone$SipCall;
.super Lcom/android/internal/telephony/sip/SipCallBase;
.source "SipPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/sip/SipPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SipCall"
.end annotation


# static fields
.field private static final SC_DBG:Z = true

.field private static final SC_TAG:Ljava/lang/String; = "SipCall"

.field private static final SC_VDBG:Z


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/sip/SipPhone;


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)Landroid/net/rtp/AudioGroup;
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getAudioGroup()Landroid/net/rtp/AudioGroup;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/sip/SipPhone$SipCall;Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)V
    .locals 0
    .param p1, "conn"    # Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->add(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)V

    #@3
    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/sip/SipPhone;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/sip/SipPhone;

    #@0
    .prologue
    .line 431
    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #@2
    invoke-direct {p0}, Lcom/android/internal/telephony/sip/SipCallBase;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/sip/SipPhone;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/android/internal/telephony/sip/SipPhone;)V

    #@3
    return-void
.end method

.method private add(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)V
    .locals 2
    .param p1, "conn"    # Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@0
    .prologue
    .line 629
    const-string/jumbo v1, "add:"

    #@3
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V

    #@6
    .line 630
    invoke-virtual {p1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getCall()Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    #@9
    move-result-object v0

    #@a
    .line 631
    .local v0, "call":Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    if-ne v0, p0, :cond_0

    #@c
    return-void

    #@d
    .line 632
    :cond_0
    if-eqz v0, :cond_1

    #@f
    iget-object v1, v0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@14
    .line 634
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@19
    .line 635
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->changeOwner(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V

    #@1c
    .line 628
    return-void
.end method

.method private convertDtmf(C)I
    .locals 4
    .param p1, "c"    # C

    #@0
    .prologue
    .line 649
    add-int/lit8 v0, p1, -0x30

    #@2
    .line 650
    .local v0, "code":I
    if-ltz v0, :cond_0

    #@4
    const/16 v1, 0x9

    #@6
    if-le v0, v1, :cond_1

    #@8
    .line 651
    :cond_0
    sparse-switch p1, :sswitch_data_0

    #@b
    .line 659
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@d
    .line 660
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "invalid DTMF char: "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    .line 659
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v1

    #@25
    .line 652
    :sswitch_0
    const/16 v1, 0xa

    #@27
    return v1

    #@28
    .line 653
    :sswitch_1
    const/16 v1, 0xb

    #@2a
    return v1

    #@2b
    .line 654
    :sswitch_2
    const/16 v1, 0xc

    #@2d
    return v1

    #@2e
    .line 655
    :sswitch_3
    const/16 v1, 0xd

    #@30
    return v1

    #@31
    .line 656
    :sswitch_4
    const/16 v1, 0xe

    #@33
    return v1

    #@34
    .line 657
    :sswitch_5
    const/16 v1, 0xf

    #@36
    return v1

    #@37
    .line 663
    :cond_1
    return v0

    #@38
    .line 651
    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_1
        0x2a -> :sswitch_0
        0x41 -> :sswitch_2
        0x42 -> :sswitch_3
        0x43 -> :sswitch_4
        0x44 -> :sswitch_5
    .end sparse-switch
.end method

.method private getAudioGroup()Landroid/net/rtp/AudioGroup;
    .locals 2

    #@0
    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    return-object v0

    #@a
    .line 715
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    #@c
    const/4 v1, 0x0

    #@d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@13
    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getAudioGroup()Landroid/net/rtp/AudioGroup;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method private isSpeakerOn()Z
    .locals 3

    #@0
    .prologue
    .line 551
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #@2
    invoke-static {v1}, Lcom/android/internal/telephony/sip/SipPhone;->-get0(Lcom/android/internal/telephony/sip/SipPhone;)Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    const-string/jumbo v2, "audio"

    #@9
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Landroid/media/AudioManager;

    #@f
    invoke-virtual {v1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    #@12
    move-result v1

    #@13
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@16
    move-result-object v0

    #@17
    .line 554
    .local v0, "ret":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@1a
    move-result v1

    #@1b
    return v1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 719
    const-string/jumbo v0, "SipCall"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 718
    return-void
.end method

.method private takeOver(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V
    .locals 3
    .param p1, "that"    # Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    #@0
    .prologue
    .line 453
    const-string/jumbo v2, "takeOver"

    #@3
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V

    #@6
    .line 454
    iget-object v2, p1, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    #@8
    iput-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    #@a
    .line 455
    iget-object v2, p1, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@c
    iput-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@e
    .line 456
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    #@10
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v1

    #@14
    .local v1, "c$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Lcom/android/internal/telephony/Connection;

    #@20
    .line 457
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    check-cast v0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@22
    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->changeOwner(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V

    #@25
    goto :goto_0

    #@26
    .line 452
    :cond_0
    return-void
.end method


# virtual methods
.method acceptCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 540
    const-string/jumbo v0, "acceptCall: accepting"

    #@3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V

    #@6
    .line 541
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #@8
    invoke-static {v0}, Lcom/android/internal/telephony/sip/SipPhone;->-get3(Lcom/android/internal/telephony/sip/SipPhone;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    #@b
    move-result-object v0

    #@c
    if-eq p0, v0, :cond_0

    #@e
    .line 542
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    #@10
    const-string/jumbo v1, "acceptCall() in a non-ringing call"

    #@13
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 544
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@1c
    move-result v0

    #@1d
    const/4 v1, 0x1

    #@1e
    if-eq v0, v1, :cond_1

    #@20
    .line 545
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    #@22
    const-string/jumbo v1, "acceptCall() in a conf call"

    #@25
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 547
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    #@2b
    const/4 v1, 0x0

    #@2c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2f
    move-result-object v0

    #@30
    check-cast v0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@32
    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->acceptCall()V

    #@35
    .line 539
    return-void
.end method

.method dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 8
    .param p1, "originalNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 476
    new-instance v5, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v6, "dial: num="

    #@8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v5

    #@c
    const-string/jumbo v6, "xxx"

    #@f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v5

    #@13
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v5

    #@17
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V

    #@1a
    .line 478
    move-object v2, p1

    #@1b
    .line 479
    .local v2, "calleeSipUri":Ljava/lang/String;
    const-string/jumbo v5, "@"

    #@1e
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@21
    move-result v5

    #@22
    if-nez v5, :cond_0

    #@24
    .line 480
    new-instance v5, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    iget-object v6, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #@2b
    invoke-static {v6}, Lcom/android/internal/telephony/sip/SipPhone;->-get2(Lcom/android/internal/telephony/sip/SipPhone;)Landroid/net/sip/SipProfile;

    #@2e
    move-result-object v6

    #@2f
    invoke-virtual {v6}, Landroid/net/sip/SipProfile;->getUserName()Ljava/lang/String;

    #@32
    move-result-object v6

    #@33
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v5

    #@37
    const-string/jumbo v6, "@"

    #@3a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v5

    #@3e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v5

    #@42
    invoke-static {v5}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    #@45
    move-result-object v4

    #@46
    .line 481
    .local v4, "replaceStr":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #@48
    invoke-static {v5}, Lcom/android/internal/telephony/sip/SipPhone;->-get2(Lcom/android/internal/telephony/sip/SipPhone;)Landroid/net/sip/SipProfile;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v5}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    #@4f
    move-result-object v5

    #@50
    .line 482
    new-instance v6, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v6

    #@59
    const-string/jumbo v7, "@"

    #@5c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v6

    #@60
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v6

    #@64
    .line 481
    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@67
    move-result-object v2

    #@68
    .line 486
    .end local v4    # "replaceStr":Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v5, Landroid/net/sip/SipProfile$Builder;

    #@6a
    invoke-direct {v5, v2}, Landroid/net/sip/SipProfile$Builder;-><init>(Ljava/lang/String;)V

    #@6d
    invoke-virtual {v5}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;

    #@70
    move-result-object v1

    #@71
    .line 487
    .local v1, "callee":Landroid/net/sip/SipProfile;
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@73
    iget-object v5, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #@75
    invoke-direct {v0, v5, p0, v1, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$SipCall;Landroid/net/sip/SipProfile;Ljava/lang/String;)V

    #@78
    .line 489
    .local v0, "c":Lcom/android/internal/telephony/sip/SipPhone$SipConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->dial()V

    #@7b
    .line 490
    iget-object v5, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    #@7d
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@80
    .line 491
    sget-object v5, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    #@82
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setState(Lcom/android/internal/telephony/Call$State;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@85
    .line 492
    return-object v0

    #@86
    .line 493
    .end local v0    # "c":Lcom/android/internal/telephony/sip/SipPhone$SipConnection;
    .end local v1    # "callee":Landroid/net/sip/SipProfile;
    :catch_0
    move-exception v3

    #@87
    .line 494
    .local v3, "e":Ljava/text/ParseException;
    new-instance v5, Landroid/net/sip/SipException;

    #@89
    const-string/jumbo v6, "dial"

    #@8c
    invoke-direct {v5, v6, v3}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@8f
    throw v5
.end method

.method public getConnections()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 469
    const-class v0, Lcom/android/internal/telephony/sip/SipPhone;

    #@2
    monitor-enter v0

    #@3
    .line 471
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 469
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method getMute()Z
    .locals 3

    #@0
    .prologue
    .line 603
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 604
    const/4 v0, 0x0

    #@9
    .line 606
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "getMute: ret="

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V

    #@20
    .line 607
    return v0

    #@21
    .line 605
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    #@23
    const/4 v2, 0x0

    #@24
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v1

    #@28
    check-cast v1, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@2a
    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getMute()Z

    #@2d
    move-result v0

    #@2e
    .local v0, "ret":Z
    goto :goto_0
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    #@0
    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #@2
    return-object v0
.end method

.method public hangup()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 500
    const-class v5, Lcom/android/internal/telephony/sip/SipPhone;

    #@2
    monitor-enter v5

    #@3
    .line 501
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@5
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_1

    #@b
    .line 502
    new-instance v4, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v6, "hangup: call "

    #@13
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@1a
    move-result-object v6

    #@1b
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    .line 503
    const-string/jumbo v6, ": "

    #@22
    .line 502
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    .line 503
    const-string/jumbo v6, " on phone "

    #@2d
    .line 502
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    .line 503
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getPhone()Lcom/android/internal/telephony/Phone;

    #@34
    move-result-object v6

    #@35
    .line 502
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v4

    #@3d
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V

    #@40
    .line 504
    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    #@42
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setState(Lcom/android/internal/telephony/Call$State;)V

    #@45
    .line 505
    const/4 v3, 0x0

    #@46
    .line 506
    .local v3, "excp":Lcom/android/internal/telephony/CallStateException;
    iget-object v4, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    #@48
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4b
    move-result-object v1

    #@4c
    .end local v3    # "excp":Lcom/android/internal/telephony/CallStateException;
    .local v1, "c$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@4f
    move-result v4

    #@50
    if-eqz v4, :cond_0

    #@52
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@55
    move-result-object v0

    #@56
    check-cast v0, Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@58
    .line 508
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->hangup()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5b
    goto :goto_0

    #@5c
    .line 509
    :catch_0
    move-exception v2

    #@5d
    .line 510
    .local v2, "e":Lcom/android/internal/telephony/CallStateException;
    move-object v3, v2

    #@5e
    .local v3, "excp":Lcom/android/internal/telephony/CallStateException;
    goto :goto_0

    #@5f
    .line 513
    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    .end local v2    # "e":Lcom/android/internal/telephony/CallStateException;
    .end local v3    # "excp":Lcom/android/internal/telephony/CallStateException;
    :cond_0
    if-eqz v3, :cond_2

    #@61
    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@62
    .line 500
    .end local v1    # "c$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    #@63
    monitor-exit v5

    #@64
    throw v4

    #@65
    .line 515
    :cond_1
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v6, "hangup: dead call "

    #@6d
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v4

    #@71
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@74
    move-result-object v6

    #@75
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v4

    #@79
    .line 516
    const-string/jumbo v6, ": "

    #@7c
    .line 515
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v4

    #@80
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v4

    #@84
    .line 516
    const-string/jumbo v6, " on phone "

    #@87
    .line 515
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v4

    #@8b
    .line 516
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getPhone()Lcom/android/internal/telephony/Phone;

    #@8e
    move-result-object v6

    #@8f
    .line 515
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v4

    #@93
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v4

    #@97
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@9a
    :cond_2
    monitor-exit v5

    #@9b
    .line 499
    return-void
.end method

.method hold()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 579
    const-string/jumbo v2, "hold:"

    #@3
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V

    #@6
    .line 580
    sget-object v2, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@8
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setState(Lcom/android/internal/telephony/Call$State;)V

    #@b
    .line 581
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    #@d
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    .local v1, "c$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_0

    #@17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Lcom/android/internal/telephony/Connection;

    #@1d
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    check-cast v0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@1f
    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->hold()V

    #@22
    goto :goto_0

    #@23
    .line 582
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setAudioGroupMode()V

    #@26
    .line 578
    return-void
.end method

.method initIncomingCall(Landroid/net/sip/SipAudioCall;Z)Lcom/android/internal/telephony/sip/SipPhone$SipConnection;
    .locals 4
    .param p1, "sipAudioCall"    # Landroid/net/sip/SipAudioCall;
    .param p2, "makeCallWait"    # Z

    #@0
    .prologue
    .line 522
    invoke-virtual {p1}, Landroid/net/sip/SipAudioCall;->getPeerProfile()Landroid/net/sip/SipProfile;

    #@3
    move-result-object v1

    #@4
    .line 523
    .local v1, "callee":Landroid/net/sip/SipProfile;
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@6
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #@8
    invoke-direct {v0, v3, p0, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$SipCall;Landroid/net/sip/SipProfile;)V

    #@b
    .line 524
    .local v0, "c":Lcom/android/internal/telephony/sip/SipPhone$SipConnection;
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 526
    if-eqz p2, :cond_0

    #@12
    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    #@14
    .line 527
    .local v2, "newState":Lcom/android/internal/telephony/Call$State;
    :goto_0
    invoke-virtual {v0, p1, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->initIncomingCall(Landroid/net/sip/SipAudioCall;Lcom/android/internal/telephony/Call$State;)V

    #@17
    .line 529
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setState(Lcom/android/internal/telephony/Call$State;)V

    #@1a
    .line 530
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #@1c
    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/sip/SipPhone;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V

    #@1f
    .line 531
    return-object v0

    #@20
    .line 526
    .end local v2    # "newState":Lcom/android/internal/telephony/Call$State;
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    #@22
    .restart local v2    # "newState":Lcom/android/internal/telephony/Call$State;
    goto :goto_0
.end method

.method merge(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V
    .locals 8
    .param p1, "that"    # Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 611
    const-string/jumbo v4, "merge:"

    #@3
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V

    #@6
    .line 612
    invoke-direct {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getAudioGroup()Landroid/net/rtp/AudioGroup;

    #@9
    move-result-object v0

    #@a
    .line 616
    .local v0, "audioGroup":Landroid/net/rtp/AudioGroup;
    iget-object v4, p1, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    #@c
    .line 617
    iget-object v5, p1, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@11
    move-result v5

    #@12
    new-array v5, v5, [Lcom/android/internal/telephony/Connection;

    #@14
    .line 616
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    check-cast v2, [Lcom/android/internal/telephony/Connection;

    #@1a
    .line 618
    .local v2, "cc":[Lcom/android/internal/telephony/Connection;
    const/4 v4, 0x0

    #@1b
    array-length v5, v2

    #@1c
    :goto_0
    if-ge v4, v5, :cond_1

    #@1e
    aget-object v1, v2, v4

    #@20
    .local v1, "c":Lcom/android/internal/telephony/Connection;
    move-object v3, v1

    #@21
    .line 619
    check-cast v3, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@23
    .line 620
    .local v3, "conn":Lcom/android/internal/telephony/sip/SipPhone$SipConnection;
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->add(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)V

    #@26
    .line 621
    invoke-virtual {v3}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getState()Lcom/android/internal/telephony/Call$State;

    #@29
    move-result-object v6

    #@2a
    sget-object v7, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@2c
    if-ne v6, v7, :cond_0

    #@2e
    .line 622
    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->unhold(Landroid/net/rtp/AudioGroup;)V

    #@31
    .line 618
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@33
    goto :goto_0

    #@34
    .line 625
    .end local v1    # "c":Lcom/android/internal/telephony/Connection;
    .end local v3    # "conn":Lcom/android/internal/telephony/sip/SipPhone$SipConnection;
    :cond_1
    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@36
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setState(Lcom/android/internal/telephony/Call$State;)V

    #@39
    .line 610
    return-void
.end method

.method onConnectionEnded(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)V
    .locals 5
    .param p1, "conn"    # Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@0
    .prologue
    .line 695
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v4, "onConnectionEnded: conn="

    #@8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V

    #@17
    .line 696
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@19
    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@1b
    if-eq v3, v4, :cond_2

    #@1d
    .line 697
    const/4 v0, 0x1

    #@1e
    .line 698
    .local v0, "allConnectionsDisconnected":Z
    new-instance v3, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v4, "---check connections: "

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    .line 699
    iget-object v4, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@2f
    move-result v4

    #@30
    .line 698
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V

    #@3b
    .line 700
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    #@3d
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@40
    move-result-object v2

    #@41
    .local v2, "c$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@44
    move-result v3

    #@45
    if-eqz v3, :cond_1

    #@47
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4a
    move-result-object v1

    #@4b
    check-cast v1, Lcom/android/internal/telephony/Connection;

    #@4d
    .line 701
    .local v1, "c":Lcom/android/internal/telephony/Connection;
    new-instance v3, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v4, "   state="

    #@55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v3

    #@59
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    #@5c
    move-result-object v4

    #@5d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v3

    #@61
    const-string/jumbo v4, ": "

    #@64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v3

    #@68
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v3

    #@6c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v3

    #@70
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V

    #@73
    .line 703
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    #@76
    move-result-object v3

    #@77
    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@79
    if-eq v3, v4, :cond_0

    #@7b
    .line 704
    const/4 v0, 0x0

    #@7c
    .line 708
    .end local v1    # "c":Lcom/android/internal/telephony/Connection;
    :cond_1
    if-eqz v0, :cond_2

    #@7e
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@80
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setState(Lcom/android/internal/telephony/Call$State;)V

    #@83
    .line 710
    .end local v0    # "allConnectionsDisconnected":Z
    .end local v2    # "c$iterator":Ljava/util/Iterator;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #@85
    invoke-static {v3, p1}, Lcom/android/internal/telephony/sip/SipPhone;->-wrap2(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/Connection;)V

    #@88
    .line 693
    return-void
.end method

.method onConnectionStateChanged(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)V
    .locals 2
    .param p1, "conn"    # Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@0
    .prologue
    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "onConnectionStateChanged: conn="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V

    #@17
    .line 688
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@19
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@1b
    if-eq v0, v1, :cond_0

    #@1d
    .line 689
    invoke-virtual {p1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getState()Lcom/android/internal/telephony/Call$State;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setState(Lcom/android/internal/telephony/Call$State;)V

    #@24
    .line 685
    :cond_0
    return-void
.end method

.method rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 535
    const-string/jumbo v0, "rejectCall:"

    #@3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V

    #@6
    .line 536
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->hangup()V

    #@9
    .line 534
    return-void
.end method

.method reset()V
    .locals 1

    #@0
    .prologue
    .line 437
    const-string/jumbo v0, "reset"

    #@3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V

    #@6
    .line 438
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@b
    .line 439
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@d
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setState(Lcom/android/internal/telephony/Call$State;)V

    #@10
    .line 436
    return-void
.end method

.method sendDtmf(C)V
    .locals 3
    .param p1, "c"    # C

    #@0
    .prologue
    .line 639
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "sendDtmf: c="

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V

    #@17
    .line 640
    invoke-direct {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getAudioGroup()Landroid/net/rtp/AudioGroup;

    #@1a
    move-result-object v0

    #@1b
    .line 641
    .local v0, "audioGroup":Landroid/net/rtp/AudioGroup;
    if-nez v0, :cond_0

    #@1d
    .line 642
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v2, "sendDtmf: audioGroup == null, ignore c="

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V

    #@34
    .line 643
    return-void

    #@35
    .line 645
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->convertDtmf(C)I

    #@38
    move-result v1

    #@39
    invoke-virtual {v0, v1}, Landroid/net/rtp/AudioGroup;->sendDtmf(I)V

    #@3c
    .line 638
    return-void
.end method

.method setAudioGroupMode()V
    .locals 7

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 558
    invoke-direct {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getAudioGroup()Landroid/net/rtp/AudioGroup;

    #@6
    move-result-object v0

    #@7
    .line 559
    .local v0, "audioGroup":Landroid/net/rtp/AudioGroup;
    if-nez v0, :cond_0

    #@9
    .line 560
    const-string/jumbo v2, "setAudioGroupMode: audioGroup == null ignore"

    #@c
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V

    #@f
    .line 561
    return-void

    #@10
    .line 563
    :cond_0
    invoke-virtual {v0}, Landroid/net/rtp/AudioGroup;->getMode()I

    #@13
    move-result v1

    #@14
    .line 564
    .local v1, "mode":I
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@16
    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@18
    if-ne v2, v3, :cond_1

    #@1a
    .line 565
    invoke-virtual {v0, v5}, Landroid/net/rtp/AudioGroup;->setMode(I)V

    #@1d
    .line 574
    :goto_0
    const-string/jumbo v2, "setAudioGroupMode change: %d --> %d"

    #@20
    .line 573
    new-array v3, v4, [Ljava/lang/Object;

    #@22
    .line 574
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25
    move-result-object v4

    #@26
    aput-object v4, v3, v5

    #@28
    .line 575
    invoke-virtual {v0}, Landroid/net/rtp/AudioGroup;->getMode()I

    #@2b
    move-result v4

    #@2c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2f
    move-result-object v4

    #@30
    aput-object v4, v3, v6

    #@32
    .line 573
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V

    #@39
    .line 557
    return-void

    #@3a
    .line 566
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getMute()Z

    #@3d
    move-result v2

    #@3e
    if-eqz v2, :cond_2

    #@40
    .line 567
    invoke-virtual {v0, v6}, Landroid/net/rtp/AudioGroup;->setMode(I)V

    #@43
    goto :goto_0

    #@44
    .line 568
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->isSpeakerOn()Z

    #@47
    move-result v2

    #@48
    if-eqz v2, :cond_3

    #@4a
    .line 569
    const/4 v2, 0x3

    #@4b
    invoke-virtual {v0, v2}, Landroid/net/rtp/AudioGroup;->setMode(I)V

    #@4e
    goto :goto_0

    #@4f
    .line 571
    :cond_3
    invoke-virtual {v0, v4}, Landroid/net/rtp/AudioGroup;->setMode(I)V

    #@52
    goto :goto_0
.end method

.method setMute(Z)V
    .locals 4
    .param p1, "muted"    # Z

    #@0
    .prologue
    .line 596
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "setMute: muted="

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V

    #@17
    .line 597
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    #@19
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object v1

    #@1d
    .local v1, "c$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_0

    #@23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Lcom/android/internal/telephony/Connection;

    #@29
    .line 598
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    check-cast v0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@2b
    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->setMute(Z)V

    #@2e
    goto :goto_0

    #@2f
    .line 595
    :cond_0
    return-void
.end method

.method protected setState(Lcom/android/internal/telephony/Call$State;)V
    .locals 2
    .param p1, "newState"    # Lcom/android/internal/telephony/Call$State;

    #@0
    .prologue
    .line 668
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@2
    if-eq v0, p1, :cond_1

    #@4
    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v1, "setState: cur state"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    .line 670
    const-string/jumbo v1, " --> "

    #@19
    .line 669
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    .line 670
    const-string/jumbo v1, ": "

    #@24
    .line 669
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 670
    const-string/jumbo v1, ": on phone "

    #@2f
    .line 669
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 671
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getPhone()Lcom/android/internal/telephony/Phone;

    #@36
    move-result-object v1

    #@37
    .line 669
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    .line 671
    const-string/jumbo v1, " "

    #@3e
    .line 669
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v0

    #@42
    .line 671
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    #@44
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@47
    move-result v1

    #@48
    .line 669
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v0

    #@50
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V

    #@53
    .line 673
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    #@55
    if-ne p1, v0, :cond_2

    #@57
    .line 674
    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@59
    .line 675
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #@5b
    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone;->startRingbackTone()V

    #@5e
    .line 679
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@60
    .line 680
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #@62
    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone;->updatePhoneState()V

    #@65
    .line 681
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #@67
    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone;->notifyPreciseCallStateChanged()V

    #@6a
    .line 667
    :cond_1
    return-void

    #@6b
    .line 676
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@6d
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    #@6f
    if-ne v0, v1, :cond_0

    #@71
    .line 677
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #@73
    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone;->stopRingbackTone()V

    #@76
    goto :goto_0
.end method

.method switchWith(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V
    .locals 3
    .param p1, "that"    # Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    #@0
    .prologue
    .line 443
    const-string/jumbo v1, "switchWith"

    #@3
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V

    #@6
    .line 444
    const-class v2, Lcom/android/internal/telephony/sip/SipPhone;

    #@8
    monitor-enter v2

    #@9
    .line 445
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    #@b
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #@d
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/android/internal/telephony/sip/SipPhone;)V

    #@10
    .line 446
    .local v0, "tmp":Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->takeOver(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V

    #@13
    .line 447
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->takeOver(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V

    #@16
    .line 448
    invoke-direct {p1, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->takeOver(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v2

    #@1a
    .line 442
    return-void

    #@1b
    .line 444
    .end local v0    # "tmp":Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    :catchall_0
    move-exception v1

    #@1c
    monitor-exit v2

    #@1d
    throw v1
.end method

.method unhold()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 586
    const-string/jumbo v3, "unhold:"

    #@3
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V

    #@6
    .line 587
    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@8
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setState(Lcom/android/internal/telephony/Call$State;)V

    #@b
    .line 588
    new-instance v0, Landroid/net/rtp/AudioGroup;

    #@d
    invoke-direct {v0}, Landroid/net/rtp/AudioGroup;-><init>()V

    #@10
    .line 589
    .local v0, "audioGroup":Landroid/net/rtp/AudioGroup;
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    #@12
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v2

    #@16
    .local v2, "c$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_0

    #@1c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Lcom/android/internal/telephony/Connection;

    #@22
    .line 590
    .local v1, "c":Lcom/android/internal/telephony/Connection;
    check-cast v1, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@24
    .end local v1    # "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->unhold(Landroid/net/rtp/AudioGroup;)V

    #@27
    goto :goto_0

    #@28
    .line 592
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setAudioGroupMode()V

    #@2b
    .line 585
    return-void
.end method
