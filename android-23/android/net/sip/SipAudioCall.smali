.class public Landroid/net/sip/SipAudioCall;
.super Ljava/lang/Object;
.source "SipAudioCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/sip/SipAudioCall$Listener;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DONT_RELEASE_SOCKET:Z = false

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final RELEASE_SOCKET:Z = true

.field private static final SESSION_TIMEOUT:I = 0x5

.field private static final TRANSFER_TIMEOUT:I = 0xf


# instance fields
.field private mAudioGroup:Landroid/net/rtp/AudioGroup;

.field private mAudioStream:Landroid/net/rtp/AudioStream;

.field private mContext:Landroid/content/Context;

.field private mErrorCode:I

.field private mErrorMessage:Ljava/lang/String;

.field private mHold:Z

.field private mInCall:Z

.field private mListener:Landroid/net/sip/SipAudioCall$Listener;

.field private mLocalProfile:Landroid/net/sip/SipProfile;

.field private mMuted:Z

.field private mPeerSd:Ljava/lang/String;

.field private mSessionId:J

.field private mSipSession:Landroid/net/sip/SipSession;

.field private mTransferringSession:Landroid/net/sip/SipSession;

.field private mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private mWm:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0(Landroid/net/sip/SipAudioCall;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/net/sip/SipAudioCall;->mErrorCode:I

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/net/sip/SipAudioCall;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/net/sip/SipAudioCall;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mInCall:Z

    #@2
    return v0
.end method

.method static synthetic -get3(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipAudioCall$Listener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mListener:Landroid/net/sip/SipAudioCall$Listener;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/net/sip/SipAudioCall;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipSession;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipSession;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mTransferringSession:Landroid/net/sip/SipSession;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/net/sip/SipAudioCall;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/net/sip/SipAudioCall;->mErrorCode:I

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/sip/SipAudioCall;->mErrorMessage:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set3(Landroid/net/sip/SipAudioCall;Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/sip/SipAudioCall;->mTransferringSession:Landroid/net/sip/SipSession;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)Landroid/net/sip/SimpleSessionDescription;
    .locals 1
    .param p1, "offerSd"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/sip/SipAudioCall;->createAnswer(Ljava/lang/String;)Landroid/net/sip/SimpleSessionDescription;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SimpleSessionDescription;
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->createOffer()Landroid/net/sip/SimpleSessionDescription;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(Landroid/net/sip/SipAudioCall;Z)V
    .locals 0
    .param p1, "closeRtp"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/sip/SipAudioCall;->close(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Landroid/net/sip/SipAudioCall;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/net/sip/SipAudioCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Landroid/net/sip/SipAudioCall;ILjava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/net/sip/SipAudioCall;->onError(ILjava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Landroid/net/sip/SipAudioCall;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->transferToNewSession()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 57
    const-class v0, Landroid/net/sip/SipAudioCall;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Landroid/net/sip/SipAudioCall;->LOG_TAG:Ljava/lang/String;

    #@8
    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/sip/SipProfile;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "localProfile"    # Landroid/net/sip/SipProfile;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@7
    move-result-wide v0

    #@8
    iput-wide v0, p0, Landroid/net/sip/SipAudioCall;->mSessionId:J

    #@a
    .line 185
    iput-boolean v2, p0, Landroid/net/sip/SipAudioCall;->mInCall:Z

    #@c
    .line 186
    iput-boolean v2, p0, Landroid/net/sip/SipAudioCall;->mMuted:Z

    #@e
    .line 187
    iput-boolean v2, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    #@10
    .line 192
    iput v2, p0, Landroid/net/sip/SipAudioCall;->mErrorCode:I

    #@12
    .line 201
    iput-object p1, p0, Landroid/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    #@14
    .line 202
    iput-object p2, p0, Landroid/net/sip/SipAudioCall;->mLocalProfile:Landroid/net/sip/SipProfile;

    #@16
    .line 203
    const-string/jumbo v0, "wifi"

    #@19
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Landroid/net/wifi/WifiManager;

    #@1f
    iput-object v0, p0, Landroid/net/sip/SipAudioCall;->mWm:Landroid/net/wifi/WifiManager;

    #@21
    .line 200
    return-void
.end method

.method private declared-synchronized close(Z)V
    .locals 2
    .param p1, "closeRtp"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 292
    if-eqz p1, :cond_0

    #@3
    const/4 v0, 0x1

    #@4
    :try_start_0
    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->stopCall(Z)V

    #@7
    .line 294
    :cond_0
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mInCall:Z

    #@a
    .line 295
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    #@d
    .line 296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@10
    move-result-wide v0

    #@11
    iput-wide v0, p0, Landroid/net/sip/SipAudioCall;->mSessionId:J

    #@13
    .line 297
    const/4 v0, 0x0

    #@14
    iput v0, p0, Landroid/net/sip/SipAudioCall;->mErrorCode:I

    #@16
    .line 298
    const/4 v0, 0x0

    #@17
    iput-object v0, p0, Landroid/net/sip/SipAudioCall;->mErrorMessage:Ljava/lang/String;

    #@19
    .line 300
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 301
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    #@1f
    const/4 v1, 0x0

    #@20
    invoke-virtual {v0, v1}, Landroid/net/sip/SipSession;->setListener(Landroid/net/sip/SipSession$Listener;)V

    #@23
    .line 302
    const/4 v0, 0x0

    #@24
    iput-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    :cond_1
    monitor-exit p0

    #@27
    .line 291
    return-void

    #@28
    :catchall_0
    move-exception v0

    #@29
    monitor-exit p0

    #@2a
    throw v0
.end method

.method private createAnswer(Ljava/lang/String;)Landroid/net/sip/SimpleSessionDescription;
    .locals 18
    .param p1, "offerSd"    # Ljava/lang/String;

    #@0
    .prologue
    .line 750
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v10

    #@4
    if-eqz v10, :cond_0

    #@6
    invoke-direct/range {p0 .. p0}, Landroid/net/sip/SipAudioCall;->createOffer()Landroid/net/sip/SimpleSessionDescription;

    #@9
    move-result-object v10

    #@a
    return-object v10

    #@b
    .line 752
    :cond_0
    new-instance v6, Landroid/net/sip/SimpleSessionDescription;

    #@d
    move-object/from16 v0, p1

    #@f
    invoke-direct {v6, v0}, Landroid/net/sip/SimpleSessionDescription;-><init>(Ljava/lang/String;)V

    #@12
    .line 754
    .local v6, "offer":Landroid/net/sip/SimpleSessionDescription;
    new-instance v2, Landroid/net/sip/SimpleSessionDescription;

    #@14
    move-object/from16 v0, p0

    #@16
    iget-wide v10, v0, Landroid/net/sip/SipAudioCall;->mSessionId:J

    #@18
    invoke-direct/range {p0 .. p0}, Landroid/net/sip/SipAudioCall;->getLocalIp()Ljava/lang/String;

    #@1b
    move-result-object v12

    #@1c
    invoke-direct {v2, v10, v11, v12}, Landroid/net/sip/SimpleSessionDescription;-><init>(JLjava/lang/String;)V

    #@1f
    .line 755
    .local v2, "answer":Landroid/net/sip/SimpleSessionDescription;
    const/4 v3, 0x0

    #@20
    .line 756
    .local v3, "codec":Landroid/net/rtp/AudioCodec;
    invoke-virtual {v6}, Landroid/net/sip/SimpleSessionDescription;->getMedia()[Landroid/net/sip/SimpleSessionDescription$Media;

    #@23
    move-result-object v12

    #@24
    const/4 v10, 0x0

    #@25
    array-length v13, v12

    #@26
    move v11, v10

    #@27
    .end local v3    # "codec":Landroid/net/rtp/AudioCodec;
    :goto_0
    if-ge v11, v13, :cond_a

    #@29
    aget-object v5, v12, v11

    #@2b
    .line 757
    .local v5, "media":Landroid/net/sip/SimpleSessionDescription$Media;
    if-nez v3, :cond_9

    #@2d
    invoke-virtual {v5}, Landroid/net/sip/SimpleSessionDescription$Media;->getPort()I

    #@30
    move-result v10

    #@31
    if-lez v10, :cond_9

    #@33
    .line 758
    const-string/jumbo v10, "audio"

    #@36
    invoke-virtual {v5}, Landroid/net/sip/SimpleSessionDescription$Media;->getType()Ljava/lang/String;

    #@39
    move-result-object v14

    #@3a
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result v10

    #@3e
    .line 757
    if-eqz v10, :cond_9

    #@40
    .line 759
    const-string/jumbo v10, "RTP/AVP"

    #@43
    invoke-virtual {v5}, Landroid/net/sip/SimpleSessionDescription$Media;->getProtocol()Ljava/lang/String;

    #@46
    move-result-object v14

    #@47
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v10

    #@4b
    .line 757
    if-eqz v10, :cond_9

    #@4d
    .line 761
    invoke-virtual {v5}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpPayloadTypes()[I

    #@50
    move-result-object v14

    #@51
    const/4 v10, 0x0

    #@52
    array-length v15, v14

    #@53
    :goto_1
    if-ge v10, v15, :cond_1

    #@55
    aget v9, v14, v10

    #@57
    .line 762
    .local v9, "type":I
    invoke-virtual {v5, v9}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpmap(I)Ljava/lang/String;

    #@5a
    move-result-object v16

    #@5b
    .line 763
    invoke-virtual {v5, v9}, Landroid/net/sip/SimpleSessionDescription$Media;->getFmtp(I)Ljava/lang/String;

    #@5e
    move-result-object v17

    #@5f
    .line 762
    move-object/from16 v0, v16

    #@61
    move-object/from16 v1, v17

    #@63
    invoke-static {v9, v0, v1}, Landroid/net/rtp/AudioCodec;->getCodec(ILjava/lang/String;Ljava/lang/String;)Landroid/net/rtp/AudioCodec;

    #@66
    move-result-object v3

    #@67
    .line 764
    .local v3, "codec":Landroid/net/rtp/AudioCodec;
    if-eqz v3, :cond_3

    #@69
    .line 768
    .end local v3    # "codec":Landroid/net/rtp/AudioCodec;
    .end local v9    # "type":I
    :cond_1
    if-eqz v3, :cond_9

    #@6b
    .line 770
    const-string/jumbo v10, "audio"

    #@6e
    move-object/from16 v0, p0

    #@70
    iget-object v14, v0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    #@72
    invoke-virtual {v14}, Landroid/net/rtp/AudioStream;->getLocalPort()I

    #@75
    move-result v14

    #@76
    const-string/jumbo v15, "RTP/AVP"

    #@79
    const/16 v16, 0x1

    #@7b
    .line 769
    move/from16 v0, v16

    #@7d
    invoke-virtual {v2, v10, v14, v0, v15}, Landroid/net/sip/SimpleSessionDescription;->newMedia(Ljava/lang/String;IILjava/lang/String;)Landroid/net/sip/SimpleSessionDescription$Media;

    #@80
    move-result-object v7

    #@81
    .line 771
    .local v7, "reply":Landroid/net/sip/SimpleSessionDescription$Media;
    iget v10, v3, Landroid/net/rtp/AudioCodec;->type:I

    #@83
    iget-object v14, v3, Landroid/net/rtp/AudioCodec;->rtpmap:Ljava/lang/String;

    #@85
    iget-object v15, v3, Landroid/net/rtp/AudioCodec;->fmtp:Ljava/lang/String;

    #@87
    invoke-virtual {v7, v10, v14, v15}, Landroid/net/sip/SimpleSessionDescription$Media;->setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V

    #@8a
    .line 774
    invoke-virtual {v5}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpPayloadTypes()[I

    #@8d
    move-result-object v14

    #@8e
    const/4 v10, 0x0

    #@8f
    array-length v15, v14

    #@90
    :goto_2
    if-ge v10, v15, :cond_4

    #@92
    aget v9, v14, v10

    #@94
    .line 775
    .restart local v9    # "type":I
    invoke-virtual {v5, v9}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpmap(I)Ljava/lang/String;

    #@97
    move-result-object v8

    #@98
    .line 776
    .local v8, "rtpmap":Ljava/lang/String;
    iget v0, v3, Landroid/net/rtp/AudioCodec;->type:I

    #@9a
    move/from16 v16, v0

    #@9c
    move/from16 v0, v16

    #@9e
    if-eq v9, v0, :cond_2

    #@a0
    if-eqz v8, :cond_2

    #@a2
    .line 777
    const-string/jumbo v16, "telephone-event"

    #@a5
    move-object/from16 v0, v16

    #@a7
    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@aa
    move-result v16

    #@ab
    .line 776
    if-eqz v16, :cond_2

    #@ad
    .line 779
    invoke-virtual {v5, v9}, Landroid/net/sip/SimpleSessionDescription$Media;->getFmtp(I)Ljava/lang/String;

    #@b0
    move-result-object v16

    #@b1
    .line 778
    move-object/from16 v0, v16

    #@b3
    invoke-virtual {v7, v9, v8, v0}, Landroid/net/sip/SimpleSessionDescription$Media;->setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V

    #@b6
    .line 774
    :cond_2
    add-int/lit8 v10, v10, 0x1

    #@b8
    goto :goto_2

    #@b9
    .line 761
    .end local v7    # "reply":Landroid/net/sip/SimpleSessionDescription$Media;
    .end local v8    # "rtpmap":Ljava/lang/String;
    .restart local v3    # "codec":Landroid/net/rtp/AudioCodec;
    :cond_3
    add-int/lit8 v10, v10, 0x1

    #@bb
    goto :goto_1

    #@bc
    .line 784
    .end local v3    # "codec":Landroid/net/rtp/AudioCodec;
    .end local v9    # "type":I
    .restart local v7    # "reply":Landroid/net/sip/SimpleSessionDescription$Media;
    :cond_4
    const-string/jumbo v10, "recvonly"

    #@bf
    invoke-virtual {v5, v10}, Landroid/net/sip/SimpleSessionDescription$Media;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@c2
    move-result-object v10

    #@c3
    if-eqz v10, :cond_6

    #@c5
    .line 785
    const-string/jumbo v10, "sendonly"

    #@c8
    const-string/jumbo v14, ""

    #@cb
    invoke-virtual {v2, v10, v14}, Landroid/net/sip/SimpleSessionDescription;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    #@ce
    .line 756
    :cond_5
    :goto_3
    add-int/lit8 v10, v11, 0x1

    #@d0
    move v11, v10

    #@d1
    goto/16 :goto_0

    #@d3
    .line 786
    :cond_6
    const-string/jumbo v10, "sendonly"

    #@d6
    invoke-virtual {v5, v10}, Landroid/net/sip/SimpleSessionDescription$Media;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@d9
    move-result-object v10

    #@da
    if-eqz v10, :cond_7

    #@dc
    .line 787
    const-string/jumbo v10, "recvonly"

    #@df
    const-string/jumbo v14, ""

    #@e2
    invoke-virtual {v2, v10, v14}, Landroid/net/sip/SimpleSessionDescription;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    #@e5
    goto :goto_3

    #@e6
    .line 788
    :cond_7
    const-string/jumbo v10, "recvonly"

    #@e9
    invoke-virtual {v6, v10}, Landroid/net/sip/SimpleSessionDescription;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@ec
    move-result-object v10

    #@ed
    if-eqz v10, :cond_8

    #@ef
    .line 789
    const-string/jumbo v10, "sendonly"

    #@f2
    const-string/jumbo v14, ""

    #@f5
    invoke-virtual {v2, v10, v14}, Landroid/net/sip/SimpleSessionDescription;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    #@f8
    goto :goto_3

    #@f9
    .line 790
    :cond_8
    const-string/jumbo v10, "sendonly"

    #@fc
    invoke-virtual {v6, v10}, Landroid/net/sip/SimpleSessionDescription;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@ff
    move-result-object v10

    #@100
    if-eqz v10, :cond_5

    #@102
    .line 791
    const-string/jumbo v10, "recvonly"

    #@105
    const-string/jumbo v14, ""

    #@108
    invoke-virtual {v2, v10, v14}, Landroid/net/sip/SimpleSessionDescription;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    #@10b
    goto :goto_3

    #@10c
    .line 798
    .end local v7    # "reply":Landroid/net/sip/SimpleSessionDescription$Media;
    :cond_9
    invoke-virtual {v5}, Landroid/net/sip/SimpleSessionDescription$Media;->getType()Ljava/lang/String;

    #@10f
    move-result-object v10

    #@110
    invoke-virtual {v5}, Landroid/net/sip/SimpleSessionDescription$Media;->getProtocol()Ljava/lang/String;

    #@113
    move-result-object v14

    #@114
    const/4 v15, 0x0

    #@115
    const/16 v16, 0x1

    #@117
    .line 797
    move/from16 v0, v16

    #@119
    invoke-virtual {v2, v10, v15, v0, v14}, Landroid/net/sip/SimpleSessionDescription;->newMedia(Ljava/lang/String;IILjava/lang/String;)Landroid/net/sip/SimpleSessionDescription$Media;

    #@11c
    move-result-object v7

    #@11d
    .line 799
    .restart local v7    # "reply":Landroid/net/sip/SimpleSessionDescription$Media;
    invoke-virtual {v5}, Landroid/net/sip/SimpleSessionDescription$Media;->getFormats()[Ljava/lang/String;

    #@120
    move-result-object v14

    #@121
    const/4 v10, 0x0

    #@122
    array-length v15, v14

    #@123
    :goto_4
    if-ge v10, v15, :cond_5

    #@125
    aget-object v4, v14, v10

    #@127
    .line 800
    .local v4, "format":Ljava/lang/String;
    const/16 v16, 0x0

    #@129
    move-object/from16 v0, v16

    #@12b
    invoke-virtual {v7, v4, v0}, Landroid/net/sip/SimpleSessionDescription$Media;->setFormat(Ljava/lang/String;Ljava/lang/String;)V

    #@12e
    .line 799
    add-int/lit8 v10, v10, 0x1

    #@130
    goto :goto_4

    #@131
    .line 803
    .end local v4    # "format":Ljava/lang/String;
    .end local v5    # "media":Landroid/net/sip/SimpleSessionDescription$Media;
    .end local v7    # "reply":Landroid/net/sip/SimpleSessionDescription$Media;
    :cond_a
    if-nez v3, :cond_b

    #@133
    .line 804
    const-string/jumbo v10, "createAnswer: no suitable codes"

    #@136
    move-object/from16 v0, p0

    #@138
    invoke-direct {v0, v10}, Landroid/net/sip/SipAudioCall;->loge(Ljava/lang/String;)V

    #@13b
    .line 805
    new-instance v10, Ljava/lang/IllegalStateException;

    #@13d
    const-string/jumbo v11, "Reject SDP: no suitable codecs"

    #@140
    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@143
    throw v10

    #@144
    .line 807
    :cond_b
    new-instance v10, Ljava/lang/StringBuilder;

    #@146
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@149
    const-string/jumbo v11, "createAnswer: answer="

    #@14c
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v10

    #@150
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@153
    move-result-object v10

    #@154
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@157
    move-result-object v10

    #@158
    move-object/from16 v0, p0

    #@15a
    invoke-direct {v0, v10}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    #@15d
    .line 808
    return-object v2
.end method

.method private createContinueOffer()Landroid/net/sip/SimpleSessionDescription;
    .locals 8

    #@0
    .prologue
    .line 819
    const-string/jumbo v4, "createContinueOffer"

    #@3
    invoke-direct {p0, v4}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    #@6
    .line 821
    new-instance v3, Landroid/net/sip/SimpleSessionDescription;

    #@8
    iget-wide v4, p0, Landroid/net/sip/SipAudioCall;->mSessionId:J

    #@a
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->getLocalIp()Ljava/lang/String;

    #@d
    move-result-object v6

    #@e
    invoke-direct {v3, v4, v5, v6}, Landroid/net/sip/SimpleSessionDescription;-><init>(JLjava/lang/String;)V

    #@11
    .line 823
    .local v3, "offer":Landroid/net/sip/SimpleSessionDescription;
    const-string/jumbo v4, "audio"

    #@14
    iget-object v5, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    #@16
    invoke-virtual {v5}, Landroid/net/rtp/AudioStream;->getLocalPort()I

    #@19
    move-result v5

    #@1a
    const-string/jumbo v6, "RTP/AVP"

    #@1d
    const/4 v7, 0x1

    #@1e
    .line 822
    invoke-virtual {v3, v4, v5, v7, v6}, Landroid/net/sip/SimpleSessionDescription;->newMedia(Ljava/lang/String;IILjava/lang/String;)Landroid/net/sip/SimpleSessionDescription$Media;

    #@21
    move-result-object v2

    #@22
    .line 824
    .local v2, "media":Landroid/net/sip/SimpleSessionDescription$Media;
    iget-object v4, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    #@24
    invoke-virtual {v4}, Landroid/net/rtp/AudioStream;->getCodec()Landroid/net/rtp/AudioCodec;

    #@27
    move-result-object v0

    #@28
    .line 825
    .local v0, "codec":Landroid/net/rtp/AudioCodec;
    iget v4, v0, Landroid/net/rtp/AudioCodec;->type:I

    #@2a
    iget-object v5, v0, Landroid/net/rtp/AudioCodec;->rtpmap:Ljava/lang/String;

    #@2c
    iget-object v6, v0, Landroid/net/rtp/AudioCodec;->fmtp:Ljava/lang/String;

    #@2e
    invoke-virtual {v2, v4, v5, v6}, Landroid/net/sip/SimpleSessionDescription$Media;->setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V

    #@31
    .line 826
    iget-object v4, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    #@33
    invoke-virtual {v4}, Landroid/net/rtp/AudioStream;->getDtmfType()I

    #@36
    move-result v1

    #@37
    .line 827
    .local v1, "dtmfType":I
    const/4 v4, -0x1

    #@38
    if-eq v1, v4, :cond_0

    #@3a
    .line 828
    const-string/jumbo v4, "telephone-event/8000"

    #@3d
    const-string/jumbo v5, "0-15"

    #@40
    invoke-virtual {v2, v1, v4, v5}, Landroid/net/sip/SimpleSessionDescription$Media;->setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V

    #@43
    .line 830
    :cond_0
    return-object v3
.end method

.method private createHoldOffer()Landroid/net/sip/SimpleSessionDescription;
    .locals 3

    #@0
    .prologue
    .line 812
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->createContinueOffer()Landroid/net/sip/SimpleSessionDescription;

    #@3
    move-result-object v0

    #@4
    .line 813
    .local v0, "offer":Landroid/net/sip/SimpleSessionDescription;
    const-string/jumbo v1, "sendonly"

    #@7
    const-string/jumbo v2, ""

    #@a
    invoke-virtual {v0, v1, v2}, Landroid/net/sip/SimpleSessionDescription;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 814
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "createHoldOffer: offer="

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {p0, v1}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    #@24
    .line 815
    return-object v0
.end method

.method private createListener()Landroid/net/sip/SipSession$Listener;
    .locals 1

    #@0
    .prologue
    .line 376
    new-instance v0, Landroid/net/sip/SipAudioCall$1;

    #@2
    invoke-direct {v0, p0}, Landroid/net/sip/SipAudioCall$1;-><init>(Landroid/net/sip/SipAudioCall;)V

    #@5
    return-object v0
.end method

.method private createOffer()Landroid/net/sip/SimpleSessionDescription;
    .locals 10

    #@0
    .prologue
    .line 737
    new-instance v3, Landroid/net/sip/SimpleSessionDescription;

    #@2
    iget-wide v4, p0, Landroid/net/sip/SipAudioCall;->mSessionId:J

    #@4
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->getLocalIp()Ljava/lang/String;

    #@7
    move-result-object v6

    #@8
    invoke-direct {v3, v4, v5, v6}, Landroid/net/sip/SimpleSessionDescription;-><init>(JLjava/lang/String;)V

    #@b
    .line 738
    .local v3, "offer":Landroid/net/sip/SimpleSessionDescription;
    invoke-static {}, Landroid/net/rtp/AudioCodec;->getCodecs()[Landroid/net/rtp/AudioCodec;

    #@e
    move-result-object v1

    #@f
    .line 740
    .local v1, "codecs":[Landroid/net/rtp/AudioCodec;
    const-string/jumbo v4, "audio"

    #@12
    iget-object v5, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    #@14
    invoke-virtual {v5}, Landroid/net/rtp/AudioStream;->getLocalPort()I

    #@17
    move-result v5

    #@18
    const-string/jumbo v6, "RTP/AVP"

    #@1b
    const/4 v7, 0x1

    #@1c
    .line 739
    invoke-virtual {v3, v4, v5, v7, v6}, Landroid/net/sip/SimpleSessionDescription;->newMedia(Ljava/lang/String;IILjava/lang/String;)Landroid/net/sip/SimpleSessionDescription$Media;

    #@1f
    move-result-object v2

    #@20
    .line 741
    .local v2, "media":Landroid/net/sip/SimpleSessionDescription$Media;
    invoke-static {}, Landroid/net/rtp/AudioCodec;->getCodecs()[Landroid/net/rtp/AudioCodec;

    #@23
    move-result-object v5

    #@24
    const/4 v4, 0x0

    #@25
    array-length v6, v5

    #@26
    :goto_0
    if-ge v4, v6, :cond_0

    #@28
    aget-object v0, v5, v4

    #@2a
    .line 742
    .local v0, "codec":Landroid/net/rtp/AudioCodec;
    iget v7, v0, Landroid/net/rtp/AudioCodec;->type:I

    #@2c
    iget-object v8, v0, Landroid/net/rtp/AudioCodec;->rtpmap:Ljava/lang/String;

    #@2e
    iget-object v9, v0, Landroid/net/rtp/AudioCodec;->fmtp:Ljava/lang/String;

    #@30
    invoke-virtual {v2, v7, v8, v9}, Landroid/net/sip/SimpleSessionDescription$Media;->setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V

    #@33
    .line 741
    add-int/lit8 v4, v4, 0x1

    #@35
    goto :goto_0

    #@36
    .line 744
    .end local v0    # "codec":Landroid/net/rtp/AudioCodec;
    :cond_0
    const-string/jumbo v4, "telephone-event/8000"

    #@39
    const-string/jumbo v5, "0-15"

    #@3c
    const/16 v6, 0x7f

    #@3e
    invoke-virtual {v2, v6, v4, v5}, Landroid/net/sip/SimpleSessionDescription$Media;->setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V

    #@41
    .line 745
    new-instance v4, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v5, "createOffer: offer="

    #@49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v4

    #@4d
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v4

    #@51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v4

    #@55
    invoke-direct {p0, v4}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    #@58
    .line 746
    return-object v3
.end method

.method private getLocalIp()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1121
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    #@2
    invoke-virtual {v0}, Landroid/net/sip/SipSession;->getLocalIp()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method private grabWifiHighPerfLock()V
    .locals 3

    #@0
    .prologue
    .line 834
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 835
    const-string/jumbo v0, "grabWifiHighPerfLock:"

    #@7
    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    #@a
    .line 837
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    #@c
    const-string/jumbo v1, "wifi"

    #@f
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    .line 836
    check-cast v0, Landroid/net/wifi/WifiManager;

    #@15
    .line 838
    sget-object v1, Landroid/net/sip/SipAudioCall;->LOG_TAG:Ljava/lang/String;

    #@17
    const/4 v2, 0x3

    #@18
    .line 836
    invoke-virtual {v0, v2, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Landroid/net/sip/SipAudioCall;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    #@1e
    .line 839
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    #@20
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    #@23
    .line 833
    :cond_0
    return-void
.end method

.method private isSpeakerOn()Z
    .locals 2

    #@0
    .prologue
    .line 890
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "audio"

    #@5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/media/AudioManager;

    #@b
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method private isWifiOn()Z
    .locals 1

    #@0
    .prologue
    .line 852
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mWm:Landroid/net/wifi/WifiManager;

    #@2
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    if-nez v0, :cond_0

    #@c
    const/4 v0, 0x0

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x1

    #@f
    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1133
    sget-object v0, Landroid/net/sip/SipAudioCall;->LOG_TAG:Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5
    .line 1132
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1137
    sget-object v0, Landroid/net/sip/SipAudioCall;->LOG_TAG:Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5
    .line 1136
    return-void
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 1141
    sget-object v0, Landroid/net/sip/SipAudioCall;->LOG_TAG:Ljava/lang/String;

    #@2
    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5
    .line 1140
    return-void
.end method

.method private onError(ILjava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 559
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "onError: "

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    .line 560
    invoke-static {p1}, Landroid/net/sip/SipErrorCode;->toString(I)Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    .line 559
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    .line 560
    const-string/jumbo v3, ": "

    #@17
    .line 559
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-direct {p0, v2}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    #@26
    .line 561
    iput p1, p0, Landroid/net/sip/SipAudioCall;->mErrorCode:I

    #@28
    .line 562
    iput-object p2, p0, Landroid/net/sip/SipAudioCall;->mErrorMessage:Ljava/lang/String;

    #@2a
    .line 563
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mListener:Landroid/net/sip/SipAudioCall$Listener;

    #@2c
    .line 564
    .local v0, "listener":Landroid/net/sip/SipAudioCall$Listener;
    if-eqz v0, :cond_0

    #@2e
    .line 566
    :try_start_0
    invoke-virtual {v0, p0, p1, p2}, Landroid/net/sip/SipAudioCall$Listener;->onError(Landroid/net/sip/SipAudioCall;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@31
    .line 571
    :cond_0
    :goto_0
    monitor-enter p0

    #@32
    .line 572
    const/16 v2, -0xa

    #@34
    if-eq p1, v2, :cond_1

    #@36
    .line 573
    :try_start_1
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->isInCall()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@39
    move-result v2

    #@3a
    if-eqz v2, :cond_1

    #@3c
    :goto_1
    monitor-exit p0

    #@3d
    .line 558
    return-void

    #@3e
    .line 567
    :catch_0
    move-exception v1

    #@3f
    .line 568
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "onError():"

    #@42
    invoke-direct {p0, v2, v1}, Landroid/net/sip/SipAudioCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@45
    goto :goto_0

    #@46
    .line 574
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_1
    const/4 v2, 0x1

    #@47
    :try_start_2
    invoke-direct {p0, v2}, Landroid/net/sip/SipAudioCall;->close(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4a
    goto :goto_1

    #@4b
    .line 571
    :catchall_0
    move-exception v2

    #@4c
    monitor-exit p0

    #@4d
    throw v2
.end method

.method private releaseWifiHighPerfLock()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 844
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 845
    const-string/jumbo v0, "releaseWifiHighPerfLock:"

    #@8
    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    #@b
    .line 846
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    #@d
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    #@10
    .line 847
    iput-object v1, p0, Landroid/net/sip/SipAudioCall;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    #@12
    .line 843
    :cond_0
    return-void
.end method

.method private setAudioGroupMode()V
    .locals 3

    #@0
    .prologue
    .line 1092
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->getAudioGroup()Landroid/net/rtp/AudioGroup;

    #@3
    move-result-object v0

    #@4
    .line 1093
    .local v0, "audioGroup":Landroid/net/rtp/AudioGroup;
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "setAudioGroupMode: audioGroup="

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-direct {p0, v1}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    #@1b
    .line 1094
    if-eqz v0, :cond_0

    #@1d
    .line 1095
    iget-boolean v1, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    #@1f
    if-eqz v1, :cond_1

    #@21
    .line 1096
    const/4 v1, 0x0

    #@22
    invoke-virtual {v0, v1}, Landroid/net/rtp/AudioGroup;->setMode(I)V

    #@25
    .line 1091
    :cond_0
    :goto_0
    return-void

    #@26
    .line 1097
    :cond_1
    iget-boolean v1, p0, Landroid/net/sip/SipAudioCall;->mMuted:Z

    #@28
    if-eqz v1, :cond_2

    #@2a
    .line 1098
    const/4 v1, 0x1

    #@2b
    invoke-virtual {v0, v1}, Landroid/net/rtp/AudioGroup;->setMode(I)V

    #@2e
    goto :goto_0

    #@2f
    .line 1099
    :cond_2
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->isSpeakerOn()Z

    #@32
    move-result v1

    #@33
    if-eqz v1, :cond_3

    #@35
    .line 1100
    const/4 v1, 0x3

    #@36
    invoke-virtual {v0, v1}, Landroid/net/rtp/AudioGroup;->setMode(I)V

    #@39
    goto :goto_0

    #@3a
    .line 1102
    :cond_3
    const/4 v1, 0x2

    #@3b
    invoke-virtual {v0, v1}, Landroid/net/rtp/AudioGroup;->setMode(I)V

    #@3e
    goto :goto_0
.end method

.method private declared-synchronized startAudioInternal()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1008
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v10, "startAudioInternal: mPeerSd="

    #@9
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v9

    #@d
    move-object/from16 v0, p0

    #@f
    iget-object v10, v0, Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    #@11
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v9

    #@15
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v9

    #@19
    move-object/from16 v0, p0

    #@1b
    invoke-direct {v0, v9}, Landroid/net/sip/SipAudioCall;->loge(Ljava/lang/String;)V

    #@1e
    .line 1009
    move-object/from16 v0, p0

    #@20
    iget-object v9, v0, Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    #@22
    if-nez v9, :cond_0

    #@24
    .line 1010
    new-instance v9, Ljava/lang/IllegalStateException;

    #@26
    const-string/jumbo v10, "mPeerSd = null"

    #@29
    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    :catchall_0
    move-exception v9

    #@2e
    monitor-exit p0

    #@2f
    throw v9

    #@30
    .line 1013
    :cond_0
    const/4 v9, 0x0

    #@31
    :try_start_1
    move-object/from16 v0, p0

    #@33
    invoke-direct {v0, v9}, Landroid/net/sip/SipAudioCall;->stopCall(Z)V

    #@36
    .line 1014
    const/4 v9, 0x1

    #@37
    move-object/from16 v0, p0

    #@39
    iput-boolean v9, v0, Landroid/net/sip/SipAudioCall;->mInCall:Z

    #@3b
    .line 1018
    new-instance v5, Landroid/net/sip/SimpleSessionDescription;

    #@3d
    move-object/from16 v0, p0

    #@3f
    iget-object v9, v0, Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    #@41
    invoke-direct {v5, v9}, Landroid/net/sip/SimpleSessionDescription;-><init>(Ljava/lang/String;)V

    #@44
    .line 1019
    .local v5, "offer":Landroid/net/sip/SimpleSessionDescription;
    move-object/from16 v0, p0

    #@46
    iget-object v7, v0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    #@48
    .line 1020
    .local v7, "stream":Landroid/net/rtp/AudioStream;
    const/4 v3, 0x0

    #@49
    .line 1021
    .local v3, "codec":Landroid/net/rtp/AudioCodec;
    invoke-virtual {v5}, Landroid/net/sip/SimpleSessionDescription;->getMedia()[Landroid/net/sip/SimpleSessionDescription$Media;

    #@4c
    move-result-object v11

    #@4d
    const/4 v9, 0x0

    #@4e
    array-length v12, v11

    #@4f
    move v10, v9

    #@50
    .end local v3    # "codec":Landroid/net/rtp/AudioCodec;
    :goto_0
    if-ge v10, v12, :cond_6

    #@52
    aget-object v4, v11, v10

    #@54
    .line 1022
    .local v4, "media":Landroid/net/sip/SimpleSessionDescription$Media;
    if-nez v3, :cond_c

    #@56
    invoke-virtual {v4}, Landroid/net/sip/SimpleSessionDescription$Media;->getPort()I

    #@59
    move-result v9

    #@5a
    if-lez v9, :cond_c

    #@5c
    .line 1023
    const-string/jumbo v9, "audio"

    #@5f
    invoke-virtual {v4}, Landroid/net/sip/SimpleSessionDescription$Media;->getType()Ljava/lang/String;

    #@62
    move-result-object v13

    #@63
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@66
    move-result v9

    #@67
    .line 1022
    if-eqz v9, :cond_c

    #@69
    .line 1024
    const-string/jumbo v9, "RTP/AVP"

    #@6c
    invoke-virtual {v4}, Landroid/net/sip/SimpleSessionDescription$Media;->getProtocol()Ljava/lang/String;

    #@6f
    move-result-object v13

    #@70
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@73
    move-result v9

    #@74
    .line 1022
    if-eqz v9, :cond_c

    #@76
    .line 1026
    invoke-virtual {v4}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpPayloadTypes()[I

    #@79
    move-result-object v13

    #@7a
    const/4 v9, 0x0

    #@7b
    array-length v14, v13

    #@7c
    :goto_1
    if-ge v9, v14, :cond_1

    #@7e
    aget v8, v13, v9

    #@80
    .line 1028
    .local v8, "type":I
    invoke-virtual {v4, v8}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpmap(I)Ljava/lang/String;

    #@83
    move-result-object v15

    #@84
    invoke-virtual {v4, v8}, Landroid/net/sip/SimpleSessionDescription$Media;->getFmtp(I)Ljava/lang/String;

    #@87
    move-result-object v16

    #@88
    .line 1027
    move-object/from16 v0, v16

    #@8a
    invoke-static {v8, v15, v0}, Landroid/net/rtp/AudioCodec;->getCodec(ILjava/lang/String;Ljava/lang/String;)Landroid/net/rtp/AudioCodec;

    #@8d
    move-result-object v3

    #@8e
    .line 1029
    .local v3, "codec":Landroid/net/rtp/AudioCodec;
    if-eqz v3, :cond_4

    #@90
    .line 1034
    .end local v3    # "codec":Landroid/net/rtp/AudioCodec;
    .end local v8    # "type":I
    :cond_1
    if-eqz v3, :cond_c

    #@92
    .line 1036
    invoke-virtual {v4}, Landroid/net/sip/SimpleSessionDescription$Media;->getAddress()Ljava/lang/String;

    #@95
    move-result-object v1

    #@96
    .line 1037
    .local v1, "address":Ljava/lang/String;
    if-nez v1, :cond_2

    #@98
    .line 1038
    invoke-virtual {v5}, Landroid/net/sip/SimpleSessionDescription;->getAddress()Ljava/lang/String;

    #@9b
    move-result-object v1

    #@9c
    .line 1040
    :cond_2
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    #@9f
    move-result-object v9

    #@a0
    .line 1041
    invoke-virtual {v4}, Landroid/net/sip/SimpleSessionDescription$Media;->getPort()I

    #@a3
    move-result v10

    #@a4
    .line 1040
    invoke-virtual {v7, v9, v10}, Landroid/net/rtp/AudioStream;->associate(Ljava/net/InetAddress;I)V

    #@a7
    .line 1043
    const/4 v9, -0x1

    #@a8
    invoke-virtual {v7, v9}, Landroid/net/rtp/AudioStream;->setDtmfType(I)V

    #@ab
    .line 1044
    invoke-virtual {v7, v3}, Landroid/net/rtp/AudioStream;->setCodec(Landroid/net/rtp/AudioCodec;)V

    #@ae
    .line 1046
    invoke-virtual {v4}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpPayloadTypes()[I

    #@b1
    move-result-object v10

    #@b2
    const/4 v9, 0x0

    #@b3
    array-length v11, v10

    #@b4
    :goto_2
    if-ge v9, v11, :cond_5

    #@b6
    aget v8, v10, v9

    #@b8
    .line 1047
    .restart local v8    # "type":I
    invoke-virtual {v4, v8}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpmap(I)Ljava/lang/String;

    #@bb
    move-result-object v6

    #@bc
    .line 1048
    .local v6, "rtpmap":Ljava/lang/String;
    iget v12, v3, Landroid/net/rtp/AudioCodec;->type:I

    #@be
    if-eq v8, v12, :cond_3

    #@c0
    if-eqz v6, :cond_3

    #@c2
    .line 1049
    const-string/jumbo v12, "telephone-event"

    #@c5
    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@c8
    move-result v12

    #@c9
    .line 1048
    if-eqz v12, :cond_3

    #@cb
    .line 1050
    invoke-virtual {v7, v8}, Landroid/net/rtp/AudioStream;->setDtmfType(I)V

    #@ce
    .line 1046
    :cond_3
    add-int/lit8 v9, v9, 0x1

    #@d0
    goto :goto_2

    #@d1
    .line 1026
    .end local v1    # "address":Ljava/lang/String;
    .end local v6    # "rtpmap":Ljava/lang/String;
    .restart local v3    # "codec":Landroid/net/rtp/AudioCodec;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    #@d3
    goto :goto_1

    #@d4
    .line 1055
    .end local v3    # "codec":Landroid/net/rtp/AudioCodec;
    .end local v8    # "type":I
    .restart local v1    # "address":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    #@d6
    iget-boolean v9, v0, Landroid/net/sip/SipAudioCall;->mHold:Z

    #@d8
    if-eqz v9, :cond_7

    #@da
    .line 1056
    const/4 v9, 0x0

    #@db
    invoke-virtual {v7, v9}, Landroid/net/rtp/AudioStream;->setMode(I)V

    #@de
    .line 1072
    .end local v1    # "address":Ljava/lang/String;
    .end local v4    # "media":Landroid/net/sip/SimpleSessionDescription$Media;
    :cond_6
    :goto_3
    if-nez v3, :cond_d

    #@e0
    .line 1073
    new-instance v9, Ljava/lang/IllegalStateException;

    #@e2
    const-string/jumbo v10, "Reject SDP: no suitable codecs"

    #@e5
    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e8
    throw v9

    #@e9
    .line 1057
    .restart local v1    # "address":Ljava/lang/String;
    .restart local v4    # "media":Landroid/net/sip/SimpleSessionDescription$Media;
    :cond_7
    const-string/jumbo v9, "recvonly"

    #@ec
    invoke-virtual {v4, v9}, Landroid/net/sip/SimpleSessionDescription$Media;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@ef
    move-result-object v9

    #@f0
    if-eqz v9, :cond_8

    #@f2
    .line 1058
    const/4 v9, 0x1

    #@f3
    invoke-virtual {v7, v9}, Landroid/net/rtp/AudioStream;->setMode(I)V

    #@f6
    goto :goto_3

    #@f7
    .line 1059
    :cond_8
    const-string/jumbo v9, "sendonly"

    #@fa
    invoke-virtual {v4, v9}, Landroid/net/sip/SimpleSessionDescription$Media;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@fd
    move-result-object v9

    #@fe
    if-eqz v9, :cond_9

    #@100
    .line 1060
    const/4 v9, 0x2

    #@101
    invoke-virtual {v7, v9}, Landroid/net/rtp/AudioStream;->setMode(I)V

    #@104
    goto :goto_3

    #@105
    .line 1061
    :cond_9
    const-string/jumbo v9, "recvonly"

    #@108
    invoke-virtual {v5, v9}, Landroid/net/sip/SimpleSessionDescription;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@10b
    move-result-object v9

    #@10c
    if-eqz v9, :cond_a

    #@10e
    .line 1062
    const/4 v9, 0x1

    #@10f
    invoke-virtual {v7, v9}, Landroid/net/rtp/AudioStream;->setMode(I)V

    #@112
    goto :goto_3

    #@113
    .line 1063
    :cond_a
    const-string/jumbo v9, "sendonly"

    #@116
    invoke-virtual {v5, v9}, Landroid/net/sip/SimpleSessionDescription;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@119
    move-result-object v9

    #@11a
    if-eqz v9, :cond_b

    #@11c
    .line 1064
    const/4 v9, 0x2

    #@11d
    invoke-virtual {v7, v9}, Landroid/net/rtp/AudioStream;->setMode(I)V

    #@120
    goto :goto_3

    #@121
    .line 1066
    :cond_b
    const/4 v9, 0x0

    #@122
    invoke-virtual {v7, v9}, Landroid/net/rtp/AudioStream;->setMode(I)V

    #@125
    goto :goto_3

    #@126
    .line 1021
    .end local v1    # "address":Ljava/lang/String;
    :cond_c
    add-int/lit8 v9, v10, 0x1

    #@128
    move v10, v9

    #@129
    goto/16 :goto_0

    #@12b
    .line 1076
    .end local v4    # "media":Landroid/net/sip/SimpleSessionDescription$Media;
    :cond_d
    invoke-direct/range {p0 .. p0}, Landroid/net/sip/SipAudioCall;->isWifiOn()Z

    #@12e
    move-result v9

    #@12f
    if-eqz v9, :cond_e

    #@131
    invoke-direct/range {p0 .. p0}, Landroid/net/sip/SipAudioCall;->grabWifiHighPerfLock()V

    #@134
    .line 1079
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/net/sip/SipAudioCall;->getAudioGroup()Landroid/net/rtp/AudioGroup;

    #@137
    move-result-object v2

    #@138
    .line 1080
    .local v2, "audioGroup":Landroid/net/rtp/AudioGroup;
    move-object/from16 v0, p0

    #@13a
    iget-boolean v9, v0, Landroid/net/sip/SipAudioCall;->mHold:Z

    #@13c
    if-eqz v9, :cond_f

    #@13e
    .line 1087
    :goto_4
    invoke-direct/range {p0 .. p0}, Landroid/net/sip/SipAudioCall;->setAudioGroupMode()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@141
    monitor-exit p0

    #@142
    .line 1007
    return-void

    #@143
    .line 1084
    :cond_f
    if-nez v2, :cond_10

    #@145
    :try_start_2
    new-instance v2, Landroid/net/rtp/AudioGroup;

    #@147
    .end local v2    # "audioGroup":Landroid/net/rtp/AudioGroup;
    invoke-direct {v2}, Landroid/net/rtp/AudioGroup;-><init>()V

    #@14a
    .line 1085
    .restart local v2    # "audioGroup":Landroid/net/rtp/AudioGroup;
    :cond_10
    invoke-virtual {v7, v2}, Landroid/net/rtp/AudioStream;->join(Landroid/net/rtp/AudioGroup;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@14d
    goto :goto_4
.end method

.method private stopCall(Z)V
    .locals 3
    .param p1, "releaseSocket"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1108
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v1, "stopCall: releaseSocket="

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    #@18
    .line 1109
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->releaseWifiHighPerfLock()V

    #@1b
    .line 1110
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    #@1d
    if-eqz v0, :cond_0

    #@1f
    .line 1111
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    #@21
    invoke-virtual {v0, v2}, Landroid/net/rtp/AudioStream;->join(Landroid/net/rtp/AudioGroup;)V

    #@24
    .line 1113
    if-eqz p1, :cond_0

    #@26
    .line 1114
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    #@28
    invoke-virtual {v0}, Landroid/net/rtp/AudioStream;->release()V

    #@2b
    .line 1115
    iput-object v2, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    #@2d
    .line 1107
    :cond_0
    return-void
.end method

.method private throwSipException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 1125
    instance-of v0, p1, Landroid/net/sip/SipException;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1126
    check-cast p1, Landroid/net/sip/SipException;

    #@6
    .end local p1    # "throwable":Ljava/lang/Throwable;
    throw p1

    #@7
    .line 1128
    .restart local p1    # "throwable":Ljava/lang/Throwable;
    :cond_0
    new-instance v0, Landroid/net/sip/SipException;

    #@9
    const-string/jumbo v1, ""

    #@c
    invoke-direct {v0, v1, p1}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@f
    throw v0
.end method

.method private declared-synchronized transferToNewSession()V
    .locals 4

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 355
    :try_start_0
    iget-object v2, p0, Landroid/net/sip/SipAudioCall;->mTransferringSession:Landroid/net/sip/SipSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-nez v2, :cond_0

    #@5
    monitor-exit p0

    #@6
    return-void

    #@7
    .line 356
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    #@9
    .line 357
    .local v0, "origin":Landroid/net/sip/SipSession;
    iget-object v2, p0, Landroid/net/sip/SipAudioCall;->mTransferringSession:Landroid/net/sip/SipSession;

    #@b
    iput-object v2, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    #@d
    .line 358
    const/4 v2, 0x0

    #@e
    iput-object v2, p0, Landroid/net/sip/SipAudioCall;->mTransferringSession:Landroid/net/sip/SipSession;

    #@10
    .line 361
    iget-object v2, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    #@12
    if-eqz v2, :cond_2

    #@14
    .line 362
    iget-object v2, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    #@16
    const/4 v3, 0x0

    #@17
    invoke-virtual {v2, v3}, Landroid/net/rtp/AudioStream;->join(Landroid/net/rtp/AudioGroup;)V

    #@1a
    .line 371
    :goto_0
    if-eqz v0, :cond_1

    #@1c
    invoke-virtual {v0}, Landroid/net/sip/SipSession;->endCall()V

    #@1f
    .line 372
    :cond_1
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->startAudio()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    monitor-exit p0

    #@23
    .line 354
    return-void

    #@24
    .line 365
    :cond_2
    :try_start_2
    new-instance v2, Landroid/net/rtp/AudioStream;

    #@26
    .line 366
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->getLocalIp()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    .line 365
    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    #@2d
    move-result-object v3

    #@2e
    invoke-direct {v2, v3}, Landroid/net/rtp/AudioStream;-><init>(Ljava/net/InetAddress;)V

    #@31
    iput-object v2, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@33
    goto :goto_0

    #@34
    .line 367
    :catch_0
    move-exception v1

    #@35
    .line 368
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_3
    const-string/jumbo v2, "transferToNewSession():"

    #@38
    invoke-direct {p0, v2, v1}, Landroid/net/sip/SipAudioCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3b
    goto :goto_0

    #@3c
    .end local v0    # "origin":Landroid/net/sip/SipSession;
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    #@3d
    monitor-exit p0

    #@3e
    throw v2
.end method


# virtual methods
.method public answerCall(I)V
    .locals 3
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 697
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "answerCall: mSipSession"

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    iget-object v2, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, " timeout="

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {p0, v1}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    #@24
    .line 698
    monitor-enter p0

    #@25
    .line 699
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    #@27
    if-nez v1, :cond_0

    #@29
    .line 700
    new-instance v1, Landroid/net/sip/SipException;

    #@2b
    const-string/jumbo v2, "No call to answer"

    #@2e
    invoke-direct {v1, v2}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    #@31
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    .line 698
    :catchall_0
    move-exception v1

    #@33
    monitor-exit p0

    #@34
    throw v1

    #@35
    .line 703
    :cond_0
    :try_start_1
    new-instance v1, Landroid/net/rtp/AudioStream;

    #@37
    .line 704
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->getLocalIp()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    .line 703
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    #@3e
    move-result-object v2

    #@3f
    invoke-direct {v1, v2}, Landroid/net/rtp/AudioStream;-><init>(Ljava/net/InetAddress;)V

    #@42
    iput-object v1, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    #@44
    .line 705
    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    #@46
    iget-object v2, p0, Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    #@48
    invoke-direct {p0, v2}, Landroid/net/sip/SipAudioCall;->createAnswer(Ljava/lang/String;)Landroid/net/sip/SimpleSessionDescription;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v2}, Landroid/net/sip/SimpleSessionDescription;->encode()Ljava/lang/String;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v1, v2, p1}, Landroid/net/sip/SipSession;->answerCall(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@53
    monitor-exit p0

    #@54
    .line 696
    return-void

    #@55
    .line 706
    :catch_0
    move-exception v0

    #@56
    .line 707
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v1, "answerCall:"

    #@59
    invoke-direct {p0, v1, v0}, Landroid/net/sip/SipAudioCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@5c
    .line 708
    new-instance v1, Landroid/net/sip/SipException;

    #@5e
    const-string/jumbo v2, "answerCall()"

    #@61
    invoke-direct {v1, v2, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@64
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public attachCall(Landroid/net/sip/SipSession;Ljava/lang/String;)V
    .locals 3
    .param p1, "session"    # Landroid/net/sip/SipSession;
    .param p2, "sessionDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 590
    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v1}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 591
    new-instance v1, Landroid/net/sip/SipException;

    #@a
    const-string/jumbo v2, "VOIP API is not supported"

    #@d
    invoke-direct {v1, v2}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 594
    :cond_0
    monitor-enter p0

    #@12
    .line 595
    :try_start_0
    iput-object p1, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    #@14
    .line 596
    iput-object p2, p0, Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    #@16
    .line 597
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v2, "attachCall(): "

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    iget-object v2, p0, Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-direct {p0, v1}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 599
    :try_start_1
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->createListener()Landroid/net/sip/SipSession$Listener;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {p1, v1}, Landroid/net/sip/SipSession;->setListener(Landroid/net/sip/SipSession$Listener;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    :goto_0
    monitor-exit p0

    #@37
    .line 589
    return-void

    #@38
    .line 600
    :catch_0
    move-exception v0

    #@39
    .line 601
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v1, "attachCall()"

    #@3c
    invoke-direct {p0, v1, v0}, Landroid/net/sip/SipAudioCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3f
    .line 602
    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->throwSipException(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@42
    goto :goto_0

    #@43
    .line 594
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    #@44
    monitor-exit p0

    #@45
    throw v1
.end method

.method public close()V
    .locals 1

    #@0
    .prologue
    .line 288
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->close(Z)V

    #@4
    .line 287
    return-void
.end method

.method public continueCall(I)V
    .locals 2
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "continueCall: mSipSession"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " timeout="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    #@24
    .line 727
    monitor-enter p0

    #@25
    .line 728
    :try_start_0
    iget-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mHold:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    if-nez v0, :cond_0

    #@29
    monitor-exit p0

    #@2a
    return-void

    #@2b
    .line 729
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    #@2d
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->createContinueOffer()Landroid/net/sip/SimpleSessionDescription;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Landroid/net/sip/SimpleSessionDescription;->encode()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v0, v1, p1}, Landroid/net/sip/SipSession;->changeCall(Ljava/lang/String;I)V

    #@38
    .line 730
    const/4 v0, 0x0

    #@39
    iput-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    #@3b
    .line 731
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->setAudioGroupMode()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    monitor-exit p0

    #@3f
    .line 725
    return-void

    #@40
    .line 727
    :catchall_0
    move-exception v0

    #@41
    monitor-exit p0

    #@42
    throw v0
.end method

.method public endCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "endCall: mSipSession"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    #@19
    .line 650
    monitor-enter p0

    #@1a
    .line 651
    const/4 v0, 0x1

    #@1b
    :try_start_0
    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->stopCall(Z)V

    #@1e
    .line 652
    const/4 v0, 0x0

    #@1f
    iput-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mInCall:Z

    #@21
    .line 655
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    #@23
    if-eqz v0, :cond_0

    #@25
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    #@27
    invoke-virtual {v0}, Landroid/net/sip/SipSession;->endCall()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    :cond_0
    monitor-exit p0

    #@2b
    .line 648
    return-void

    #@2c
    .line 650
    :catchall_0
    move-exception v0

    #@2d
    monitor-exit p0

    #@2e
    throw v0
.end method

.method public getAudioGroup()Landroid/net/rtp/AudioGroup;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 961
    monitor-enter p0

    #@2
    .line 962
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mAudioGroup:Landroid/net/rtp/AudioGroup;

    #@4
    if-eqz v1, :cond_0

    #@6
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioGroup:Landroid/net/rtp/AudioGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit p0

    #@9
    return-object v0

    #@a
    .line 963
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c
    if-nez v1, :cond_1

    #@e
    :goto_0
    monitor-exit p0

    #@f
    return-object v0

    #@10
    :cond_1
    :try_start_2
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    #@12
    invoke-virtual {v0}, Landroid/net/rtp/AudioStream;->getGroup()Landroid/net/rtp/AudioGroup;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@15
    move-result-object v0

    #@16
    goto :goto_0

    #@17
    .line 961
    :catchall_0
    move-exception v0

    #@18
    monitor-exit p0

    #@19
    throw v0
.end method

.method public getAudioStream()Landroid/net/rtp/AudioStream;
    .locals 1

    #@0
    .prologue
    .line 941
    monitor-enter p0

    #@1
    .line 942
    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    .line 941
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public getLocalProfile()Landroid/net/sip/SipProfile;
    .locals 1

    #@0
    .prologue
    .line 312
    monitor-enter p0

    #@1
    .line 313
    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mLocalProfile:Landroid/net/sip/SipProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    .line 312
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public getPeerProfile()Landroid/net/sip/SipProfile;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 323
    monitor-enter p0

    #@2
    .line 324
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    if-nez v1, :cond_0

    #@6
    :goto_0
    monitor-exit p0

    #@7
    return-object v0

    #@8
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    #@a
    invoke-virtual {v0}, Landroid/net/sip/SipSession;->getPeerProfile()Landroid/net/sip/SipProfile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d
    move-result-object v0

    #@e
    goto :goto_0

    #@f
    .line 323
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method public getSipSession()Landroid/net/sip/SipSession;
    .locals 1

    #@0
    .prologue
    .line 349
    monitor-enter p0

    #@1
    .line 350
    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    .line 349
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public getState()I
    .locals 1

    #@0
    .prologue
    .line 335
    monitor-enter p0

    #@1
    .line 336
    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-nez v0, :cond_0

    #@5
    const/4 v0, 0x0

    #@6
    monitor-exit p0

    #@7
    return v0

    #@8
    .line 337
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    #@a
    invoke-virtual {v0}, Landroid/net/sip/SipSession;->getState()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d
    move-result v0

    #@e
    monitor-exit p0

    #@f
    return v0

    #@10
    .line 335
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method public holdCall(I)V
    .locals 2
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "holdCall: mSipSession"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " timeout="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    #@24
    .line 673
    monitor-enter p0

    #@25
    .line 674
    :try_start_0
    iget-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mHold:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    if-eqz v0, :cond_0

    #@29
    monitor-exit p0

    #@2a
    return-void

    #@2b
    .line 675
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    #@2d
    if-nez v0, :cond_1

    #@2f
    .line 676
    const-string/jumbo v0, "holdCall:"

    #@32
    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->loge(Ljava/lang/String;)V

    #@35
    .line 677
    new-instance v0, Landroid/net/sip/SipException;

    #@37
    const-string/jumbo v1, "Not in a call to hold call"

    #@3a
    invoke-direct {v0, v1}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    .line 673
    :catchall_0
    move-exception v0

    #@3f
    monitor-exit p0

    #@40
    throw v0

    #@41
    .line 679
    :cond_1
    :try_start_2
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    #@43
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->createHoldOffer()Landroid/net/sip/SimpleSessionDescription;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v1}, Landroid/net/sip/SimpleSessionDescription;->encode()Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v0, v1, p1}, Landroid/net/sip/SipSession;->changeCall(Ljava/lang/String;I)V

    #@4e
    .line 680
    const/4 v0, 0x1

    #@4f
    iput-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    #@51
    .line 681
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->setAudioGroupMode()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@54
    monitor-exit p0

    #@55
    .line 671
    return-void
.end method

.method public isInCall()Z
    .locals 1

    #@0
    .prologue
    .line 268
    monitor-enter p0

    #@1
    .line 269
    :try_start_0
    iget-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mInCall:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    .line 268
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public isMuted()Z
    .locals 1

    #@0
    .prologue
    .line 869
    monitor-enter p0

    #@1
    .line 870
    :try_start_0
    iget-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mMuted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    .line 869
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public isOnHold()Z
    .locals 1

    #@0
    .prologue
    .line 279
    monitor-enter p0

    #@1
    .line 280
    :try_start_0
    iget-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mHold:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    .line 279
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public makeCall(Landroid/net/sip/SipProfile;Landroid/net/sip/SipSession;I)V
    .locals 3
    .param p1, "peerProfile"    # Landroid/net/sip/SipProfile;
    .param p2, "sipSession"    # Landroid/net/sip/SipSession;
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 624
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "makeCall: "

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    const-string/jumbo v2, " session="

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    const-string/jumbo v2, " timeout="

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-direct {p0, v1}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    #@2d
    .line 625
    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    #@2f
    invoke-static {v1}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    #@32
    move-result v1

    #@33
    if-nez v1, :cond_0

    #@35
    .line 626
    new-instance v1, Landroid/net/sip/SipException;

    #@37
    const-string/jumbo v2, "VOIP API is not supported"

    #@3a
    invoke-direct {v1, v2}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v1

    #@3e
    .line 629
    :cond_0
    monitor-enter p0

    #@3f
    .line 630
    :try_start_0
    iput-object p2, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    .line 632
    :try_start_1
    new-instance v1, Landroid/net/rtp/AudioStream;

    #@43
    .line 633
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->getLocalIp()Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    .line 632
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    #@4a
    move-result-object v2

    #@4b
    invoke-direct {v1, v2}, Landroid/net/rtp/AudioStream;-><init>(Ljava/net/InetAddress;)V

    #@4e
    iput-object v1, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    #@50
    .line 634
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->createListener()Landroid/net/sip/SipSession$Listener;

    #@53
    move-result-object v1

    #@54
    invoke-virtual {p2, v1}, Landroid/net/sip/SipSession;->setListener(Landroid/net/sip/SipSession$Listener;)V

    #@57
    .line 635
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->createOffer()Landroid/net/sip/SimpleSessionDescription;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v1}, Landroid/net/sip/SimpleSessionDescription;->encode()Ljava/lang/String;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {p2, p1, v1, p3}, Landroid/net/sip/SipSession;->makeCall(Landroid/net/sip/SipProfile;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@62
    monitor-exit p0

    #@63
    .line 623
    return-void

    #@64
    .line 637
    :catch_0
    move-exception v0

    #@65
    .line 638
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v1, "makeCall:"

    #@68
    invoke-direct {p0, v1, v0}, Landroid/net/sip/SipAudioCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@6b
    .line 639
    new-instance v1, Landroid/net/sip/SipException;

    #@6d
    const-string/jumbo v2, "makeCall()"

    #@70
    invoke-direct {v1, v2, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@73
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@74
    .line 629
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    #@75
    monitor-exit p0

    #@76
    throw v1
.end method

.method public sendDtmf(I)V
    .locals 1
    .param p1, "code"    # I

    #@0
    .prologue
    .line 904
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/net/sip/SipAudioCall;->sendDtmf(ILandroid/os/Message;)V

    #@4
    .line 903
    return-void
.end method

.method public sendDtmf(ILandroid/os/Message;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 918
    monitor-enter p0

    #@1
    .line 919
    :try_start_0
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->getAudioGroup()Landroid/net/rtp/AudioGroup;

    #@4
    move-result-object v0

    #@5
    .line 920
    .local v0, "audioGroup":Landroid/net/rtp/AudioGroup;
    if-eqz v0, :cond_0

    #@7
    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 921
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->getState()I

    #@e
    move-result v1

    #@f
    const/16 v2, 0x8

    #@11
    if-ne v2, v1, :cond_0

    #@13
    .line 922
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v2, "sendDtmf: code="

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    const-string/jumbo v2, " result="

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    invoke-direct {p0, v1}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    #@35
    .line 923
    invoke-virtual {v0, p1}, Landroid/net/rtp/AudioGroup;->sendDtmf(I)V

    #@38
    .line 925
    :cond_0
    if-eqz p2, :cond_1

    #@3a
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    :cond_1
    monitor-exit p0

    #@3e
    .line 917
    return-void

    #@3f
    .line 918
    .end local v0    # "audioGroup":Landroid/net/rtp/AudioGroup;
    :catchall_0
    move-exception v1

    #@40
    monitor-exit p0

    #@41
    throw v1
.end method

.method public setAudioGroup(Landroid/net/rtp/AudioGroup;)V
    .locals 2
    .param p1, "group"    # Landroid/net/rtp/AudioGroup;

    #@0
    .prologue
    .line 980
    monitor-enter p0

    #@1
    .line 981
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v1, "setAudioGroup: group="

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    #@18
    .line 982
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    #@1a
    if-eqz v0, :cond_0

    #@1c
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    #@1e
    invoke-virtual {v0}, Landroid/net/rtp/AudioStream;->getGroup()Landroid/net/rtp/AudioGroup;

    #@21
    move-result-object v0

    #@22
    if-eqz v0, :cond_0

    #@24
    .line 983
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    #@26
    invoke-virtual {v0, p1}, Landroid/net/rtp/AudioStream;->join(Landroid/net/rtp/AudioGroup;)V

    #@29
    .line 985
    :cond_0
    iput-object p1, p0, Landroid/net/sip/SipAudioCall;->mAudioGroup:Landroid/net/rtp/AudioGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    monitor-exit p0

    #@2c
    .line 979
    return-void

    #@2d
    .line 980
    :catchall_0
    move-exception v0

    #@2e
    monitor-exit p0

    #@2f
    throw v0
.end method

.method public setListener(Landroid/net/sip/SipAudioCall$Listener;)V
    .locals 1
    .param p1, "listener"    # Landroid/net/sip/SipAudioCall$Listener;

    #@0
    .prologue
    .line 214
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/net/sip/SipAudioCall;->setListener(Landroid/net/sip/SipAudioCall$Listener;Z)V

    #@4
    .line 213
    return-void
.end method

.method public setListener(Landroid/net/sip/SipAudioCall$Listener;Z)V
    .locals 4
    .param p1, "listener"    # Landroid/net/sip/SipAudioCall$Listener;
    .param p2, "callbackImmediately"    # Z

    #@0
    .prologue
    .line 228
    iput-object p1, p0, Landroid/net/sip/SipAudioCall;->mListener:Landroid/net/sip/SipAudioCall$Listener;

    #@2
    .line 230
    if-eqz p1, :cond_0

    #@4
    if-eqz p2, :cond_0

    #@6
    .line 232
    :try_start_0
    iget v2, p0, Landroid/net/sip/SipAudioCall;->mErrorCode:I

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 233
    iget v2, p0, Landroid/net/sip/SipAudioCall;->mErrorCode:I

    #@c
    iget-object v3, p0, Landroid/net/sip/SipAudioCall;->mErrorMessage:Ljava/lang/String;

    #@e
    invoke-virtual {p1, p0, v2, v3}, Landroid/net/sip/SipAudioCall$Listener;->onError(Landroid/net/sip/SipAudioCall;ILjava/lang/String;)V

    #@11
    .line 227
    :cond_0
    :goto_0
    return-void

    #@12
    .line 234
    :cond_1
    iget-boolean v2, p0, Landroid/net/sip/SipAudioCall;->mInCall:Z

    #@14
    if-eqz v2, :cond_3

    #@16
    .line 235
    iget-boolean v2, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    #@18
    if-eqz v2, :cond_2

    #@1a
    .line 236
    invoke-virtual {p1, p0}, Landroid/net/sip/SipAudioCall$Listener;->onCallHeld(Landroid/net/sip/SipAudioCall;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    goto :goto_0

    #@1e
    .line 257
    :catch_0
    move-exception v1

    #@1f
    .line 258
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "setListener()"

    #@22
    invoke-direct {p0, v2, v1}, Landroid/net/sip/SipAudioCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@25
    goto :goto_0

    #@26
    .line 238
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    invoke-virtual {p1, p0}, Landroid/net/sip/SipAudioCall$Listener;->onCallEstablished(Landroid/net/sip/SipAudioCall;)V

    #@29
    goto :goto_0

    #@2a
    .line 241
    :cond_3
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->getState()I

    #@2d
    move-result v0

    #@2e
    .line 242
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    #@31
    :pswitch_0
    goto :goto_0

    #@32
    .line 244
    :pswitch_1
    invoke-virtual {p1, p0}, Landroid/net/sip/SipAudioCall$Listener;->onReadyToCall(Landroid/net/sip/SipAudioCall;)V

    #@35
    goto :goto_0

    #@36
    .line 247
    :pswitch_2
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->getPeerProfile()Landroid/net/sip/SipProfile;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {p1, p0, v2}, Landroid/net/sip/SipAudioCall$Listener;->onRinging(Landroid/net/sip/SipAudioCall;Landroid/net/sip/SipProfile;)V

    #@3d
    goto :goto_0

    #@3e
    .line 250
    :pswitch_3
    invoke-virtual {p1, p0}, Landroid/net/sip/SipAudioCall$Listener;->onCalling(Landroid/net/sip/SipAudioCall;)V

    #@41
    goto :goto_0

    #@42
    .line 253
    :pswitch_4
    invoke-virtual {p1, p0}, Landroid/net/sip/SipAudioCall$Listener;->onRingingBack(Landroid/net/sip/SipAudioCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@45
    goto :goto_0

    #@46
    .line 242
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setSpeakerMode(Z)V
    .locals 2
    .param p1, "speakerMode"    # Z

    #@0
    .prologue
    .line 882
    monitor-enter p0

    #@1
    .line 883
    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v1, "audio"

    #@6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/media/AudioManager;

    #@c
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    #@f
    .line 885
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->setAudioGroupMode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit p0

    #@13
    .line 881
    return-void

    #@14
    .line 882
    :catchall_0
    move-exception v0

    #@15
    monitor-exit p0

    #@16
    throw v0
.end method

.method public startAudio()V
    .locals 4

    #@0
    .prologue
    .line 999
    :try_start_0
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->startAudioInternal()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 997
    :goto_0
    return-void

    #@4
    .line 1002
    :catch_0
    move-exception v0

    #@5
    .line 1003
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    const/4 v3, -0x4

    #@a
    invoke-direct {p0, v3, v2}, Landroid/net/sip/SipAudioCall;->onError(ILjava/lang/String;)V

    #@d
    goto :goto_0

    #@e
    .line 1000
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    #@f
    .line 1001
    .local v1, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    const/4 v3, -0x7

    #@14
    invoke-direct {p0, v3, v2}, Landroid/net/sip/SipAudioCall;->onError(ILjava/lang/String;)V

    #@17
    goto :goto_0
.end method

.method public toggleMute()V
    .locals 1

    #@0
    .prologue
    .line 857
    monitor-enter p0

    #@1
    .line 858
    :try_start_0
    iget-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mMuted:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    const/4 v0, 0x0

    #@6
    :goto_0
    iput-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mMuted:Z

    #@8
    .line 859
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->setAudioGroupMode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit p0

    #@c
    .line 856
    return-void

    #@d
    .line 858
    :cond_0
    const/4 v0, 0x1

    #@e
    goto :goto_0

    #@f
    .line 857
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method
