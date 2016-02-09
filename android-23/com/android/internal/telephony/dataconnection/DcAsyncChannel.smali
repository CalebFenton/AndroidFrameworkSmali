.class public Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
.super Lcom/android/internal/util/AsyncChannel;
.source "DcAsyncChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;
    }
.end annotation


# static fields
.field public static final BASE:I = 0x41000

.field private static final CMD_TO_STRING_COUNT:I = 0xe

.field private static final DBG:Z = false

.field public static final REQ_GET_APNSETTING:I = 0x41004

.field public static final REQ_GET_CID:I = 0x41002

.field public static final REQ_GET_LINK_PROPERTIES:I = 0x41006

.field public static final REQ_GET_NETWORK_CAPABILITIES:I = 0x4100a

.field public static final REQ_IS_INACTIVE:I = 0x41000

.field public static final REQ_RESET:I = 0x4100c

.field public static final REQ_SET_LINK_PROPERTIES_HTTP_PROXY:I = 0x41008

.field public static final RSP_GET_APNSETTING:I = 0x41005

.field public static final RSP_GET_CID:I = 0x41003

.field public static final RSP_GET_LINK_PROPERTIES:I = 0x41007

.field public static final RSP_GET_NETWORK_CAPABILITIES:I = 0x4100b

.field public static final RSP_IS_INACTIVE:I = 0x41001

.field public static final RSP_RESET:I = 0x4100d

.field public static final RSP_SET_LINK_PROPERTIES_HTTP_PROXY:I = 0x41009

.field private static sCmdToString:[Ljava/lang/String;


# instance fields
.field private mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

.field private mDcThreadId:J

.field private mLogTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 63
    const/16 v0, 0xe

    #@2
    new-array v0, v0, [Ljava/lang/String;

    #@4
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    #@6
    .line 65
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    #@8
    const-string/jumbo v1, "REQ_IS_INACTIVE"

    #@b
    const/4 v2, 0x0

    #@c
    aput-object v1, v0, v2

    #@e
    .line 66
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    #@10
    const-string/jumbo v1, "RSP_IS_INACTIVE"

    #@13
    const/4 v2, 0x1

    #@14
    aput-object v1, v0, v2

    #@16
    .line 67
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    #@18
    const-string/jumbo v1, "REQ_GET_CID"

    #@1b
    const/4 v2, 0x2

    #@1c
    aput-object v1, v0, v2

    #@1e
    .line 68
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    #@20
    const-string/jumbo v1, "RSP_GET_CID"

    #@23
    const/4 v2, 0x3

    #@24
    aput-object v1, v0, v2

    #@26
    .line 69
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    #@28
    const-string/jumbo v1, "REQ_GET_APNSETTING"

    #@2b
    const/4 v2, 0x4

    #@2c
    aput-object v1, v0, v2

    #@2e
    .line 70
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    #@30
    const-string/jumbo v1, "RSP_GET_APNSETTING"

    #@33
    const/4 v2, 0x5

    #@34
    aput-object v1, v0, v2

    #@36
    .line 71
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    #@38
    const-string/jumbo v1, "REQ_GET_LINK_PROPERTIES"

    #@3b
    const/4 v2, 0x6

    #@3c
    aput-object v1, v0, v2

    #@3e
    .line 72
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    #@40
    const-string/jumbo v1, "RSP_GET_LINK_PROPERTIES"

    #@43
    const/4 v2, 0x7

    #@44
    aput-object v1, v0, v2

    #@46
    .line 73
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    #@48
    .line 74
    const-string/jumbo v1, "REQ_SET_LINK_PROPERTIES_HTTP_PROXY"

    #@4b
    .line 73
    const/16 v2, 0x8

    #@4d
    aput-object v1, v0, v2

    #@4f
    .line 75
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    #@51
    .line 76
    const-string/jumbo v1, "RSP_SET_LINK_PROPERTIES_HTTP_PROXY"

    #@54
    .line 75
    const/16 v2, 0x9

    #@56
    aput-object v1, v0, v2

    #@58
    .line 77
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    #@5a
    const-string/jumbo v1, "REQ_GET_NETWORK_CAPABILITIES"

    #@5d
    const/16 v2, 0xa

    #@5f
    aput-object v1, v0, v2

    #@61
    .line 78
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    #@63
    const-string/jumbo v1, "RSP_GET_NETWORK_CAPABILITIES"

    #@66
    const/16 v2, 0xb

    #@68
    aput-object v1, v0, v2

    #@6a
    .line 79
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    #@6c
    const-string/jumbo v1, "REQ_RESET"

    #@6f
    const/16 v2, 0xc

    #@71
    aput-object v1, v0, v2

    #@73
    .line 80
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    #@75
    const-string/jumbo v1, "RSP_RESET"

    #@78
    const/16 v2, 0xd

    #@7a
    aput-object v1, v0, v2

    #@7c
    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V
    .locals 2
    .param p1, "dc"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p2, "logTag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    #@3
    .line 114
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@5
    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@7
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    #@16
    move-result-wide v0

    #@17
    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDcThreadId:J

    #@19
    .line 116
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mLogTag:Ljava/lang/String;

    #@1b
    .line 113
    return-void
.end method

.method protected static cmdToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "cmd"    # I

    #@0
    .prologue
    const v1, 0x41000

    #@3
    .line 85
    sub-int/2addr p0, v1

    #@4
    .line 86
    if-ltz p0, :cond_0

    #@6
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    #@8
    array-length v0, v0

    #@9
    if-ge p0, v0, :cond_0

    #@b
    .line 87
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    #@d
    aget-object v0, v0, p0

    #@f
    return-object v0

    #@10
    .line 89
    :cond_0
    add-int v0, p0, v1

    #@12
    invoke-static {v0}, Lcom/android/internal/util/AsyncChannel;->cmdToString(I)Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method

.method private isCallerOnDifferentThread()Z
    .locals 6

    #@0
    .prologue
    .line 423
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    #@7
    move-result-wide v0

    #@8
    .line 424
    .local v0, "curThreadId":J
    iget-wide v4, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDcThreadId:J

    #@a
    cmp-long v3, v4, v0

    #@c
    if-eqz v3, :cond_0

    #@e
    const/4 v2, 0x1

    #@f
    .line 426
    .local v2, "value":Z
    :goto_0
    return v2

    #@10
    .line 424
    .end local v2    # "value":Z
    :cond_0
    const/4 v2, 0x0

    #@11
    .restart local v2    # "value":Z
    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mLogTag:Ljava/lang/String;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "DataConnectionAc "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 429
    return-void
.end method


# virtual methods
.method public bringUp(Lcom/android/internal/telephony/dataconnection/ApnContext;IIIZLandroid/os/Message;)V
    .locals 7
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "initialMaxRetry"    # I
    .param p3, "profileId"    # I
    .param p4, "rilRadioTechnology"    # I
    .param p5, "retryWhenSSChange"    # Z
    .param p6, "onCompletedMsg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 377
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    move-object v6, p6

    #@8
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;-><init>(Lcom/android/internal/telephony/dataconnection/ApnContext;IIIZLandroid/os/Message;)V

    #@b
    .line 376
    const/high16 v1, 0x40000

    #@d
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessage(ILjava/lang/Object;)V

    #@10
    .line 371
    return-void
.end method

.method public getApnSettingSync()Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 4

    #@0
    .prologue
    .line 227
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->isCallerOnDifferentThread()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_1

    #@6
    .line 228
    const v2, 0x41004

    #@9
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    #@c
    move-result-object v0

    #@d
    .line 229
    .local v0, "response":Landroid/os/Message;
    if-eqz v0, :cond_0

    #@f
    iget v2, v0, Landroid/os/Message;->what:I

    #@11
    const v3, 0x41005

    #@14
    if-ne v2, v3, :cond_0

    #@16
    .line 230
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->rspApnSetting(Landroid/os/Message;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@19
    move-result-object v1

    #@1a
    .line 238
    .end local v0    # "response":Landroid/os/Message;
    :goto_0
    return-object v1

    #@1b
    .line 232
    .restart local v0    # "response":Landroid/os/Message;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v3, "getApnSetting error response="

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->log(Ljava/lang/String;)V

    #@32
    .line 233
    const/4 v1, 0x0

    #@33
    .local v1, "value":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    goto :goto_0

    #@34
    .line 236
    .end local v0    # "response":Landroid/os/Message;
    .end local v1    # "value":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@36
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@39
    move-result-object v1

    #@3a
    .local v1, "value":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    goto :goto_0
.end method

.method public getCidSync()I
    .locals 4

    #@0
    .prologue
    .line 185
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->isCallerOnDifferentThread()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_1

    #@6
    .line 186
    const v2, 0x41002

    #@9
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    #@c
    move-result-object v0

    #@d
    .line 187
    .local v0, "response":Landroid/os/Message;
    if-eqz v0, :cond_0

    #@f
    iget v2, v0, Landroid/os/Message;->what:I

    #@11
    const v3, 0x41003

    #@14
    if-ne v2, v3, :cond_0

    #@16
    .line 188
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->rspCid(Landroid/os/Message;)I

    #@19
    move-result v1

    #@1a
    .line 196
    .end local v0    # "response":Landroid/os/Message;
    .local v1, "value":I
    :goto_0
    return v1

    #@1b
    .line 190
    .end local v1    # "value":I
    .restart local v0    # "response":Landroid/os/Message;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v3, "rspCid error response="

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->log(Ljava/lang/String;)V

    #@32
    .line 191
    const/4 v1, -0x1

    #@33
    .restart local v1    # "value":I
    goto :goto_0

    #@34
    .line 194
    .end local v0    # "response":Landroid/os/Message;
    .end local v1    # "value":I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@36
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getCid()I

    #@39
    move-result v1

    #@3a
    .restart local v1    # "value":I
    goto :goto_0
.end method

.method public getDataConnectionIdSync()I
    .locals 1

    #@0
    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getDataConnectionId()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getLinkPropertiesSync()Landroid/net/LinkProperties;
    .locals 4

    #@0
    .prologue
    .line 269
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->isCallerOnDifferentThread()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_1

    #@6
    .line 270
    const v2, 0x41006

    #@9
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    #@c
    move-result-object v0

    #@d
    .line 271
    .local v0, "response":Landroid/os/Message;
    if-eqz v0, :cond_0

    #@f
    iget v2, v0, Landroid/os/Message;->what:I

    #@11
    const v3, 0x41007

    #@14
    if-ne v2, v3, :cond_0

    #@16
    .line 272
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->rspLinkProperties(Landroid/os/Message;)Landroid/net/LinkProperties;

    #@19
    move-result-object v1

    #@1a
    .line 280
    .end local v0    # "response":Landroid/os/Message;
    :goto_0
    return-object v1

    #@1b
    .line 274
    .restart local v0    # "response":Landroid/os/Message;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v3, "getLinkProperties error response="

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->log(Ljava/lang/String;)V

    #@32
    .line 275
    const/4 v1, 0x0

    #@33
    .local v1, "value":Landroid/net/LinkProperties;
    goto :goto_0

    #@34
    .line 278
    .end local v0    # "response":Landroid/os/Message;
    .end local v1    # "value":Landroid/net/LinkProperties;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@36
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getCopyLinkProperties()Landroid/net/LinkProperties;

    #@39
    move-result-object v1

    #@3a
    .local v1, "value":Landroid/net/LinkProperties;
    goto :goto_0
.end method

.method public getNetworkCapabilitiesSync()Landroid/net/NetworkCapabilities;
    .locals 4

    #@0
    .prologue
    .line 337
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->isCallerOnDifferentThread()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_1

    #@6
    .line 338
    const v2, 0x4100a

    #@9
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    #@c
    move-result-object v0

    #@d
    .line 339
    .local v0, "response":Landroid/os/Message;
    if-eqz v0, :cond_0

    #@f
    iget v2, v0, Landroid/os/Message;->what:I

    #@11
    const v3, 0x4100b

    #@14
    if-ne v2, v3, :cond_0

    #@16
    .line 340
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->rspNetworkCapabilities(Landroid/os/Message;)Landroid/net/NetworkCapabilities;

    #@19
    move-result-object v1

    #@1a
    .line 347
    .end local v0    # "response":Landroid/os/Message;
    :goto_0
    return-object v1

    #@1b
    .line 342
    .restart local v0    # "response":Landroid/os/Message;
    :cond_0
    const/4 v1, 0x0

    #@1c
    .local v1, "value":Landroid/net/NetworkCapabilities;
    goto :goto_0

    #@1d
    .line 345
    .end local v0    # "response":Landroid/os/Message;
    .end local v1    # "value":Landroid/net/NetworkCapabilities;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1f
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getCopyNetworkCapabilities()Landroid/net/NetworkCapabilities;

    #@22
    move-result-object v1

    #@23
    .local v1, "value":Landroid/net/NetworkCapabilities;
    goto :goto_0
.end method

.method public getPcscfAddr()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPcscfAddr:[Ljava/lang/String;

    #@4
    return-object v0
.end method

.method public isInactiveSync()Z
    .locals 4

    #@0
    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->isCallerOnDifferentThread()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_1

    #@6
    .line 146
    const v2, 0x41000

    #@9
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    #@c
    move-result-object v0

    #@d
    .line 147
    .local v0, "response":Landroid/os/Message;
    if-eqz v0, :cond_0

    #@f
    iget v2, v0, Landroid/os/Message;->what:I

    #@11
    const v3, 0x41001

    #@14
    if-ne v2, v3, :cond_0

    #@16
    .line 148
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->rspIsInactive(Landroid/os/Message;)Z

    #@19
    move-result v1

    #@1a
    .line 156
    .end local v0    # "response":Landroid/os/Message;
    :goto_0
    return v1

    #@1b
    .line 150
    .restart local v0    # "response":Landroid/os/Message;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v3, "rspIsInactive error response="

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->log(Ljava/lang/String;)V

    #@32
    .line 151
    const/4 v1, 0x0

    #@33
    .local v1, "value":Z
    goto :goto_0

    #@34
    .line 154
    .end local v0    # "response":Landroid/os/Message;
    .end local v1    # "value":Z
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@36
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getIsInactive()Z

    #@39
    move-result v1

    #@3a
    .local v1, "value":Z
    goto :goto_0
.end method

.method public reqApnSetting()V
    .locals 1

    #@0
    .prologue
    .line 204
    const v0, 0x41004

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessage(I)V

    #@6
    .line 203
    return-void
.end method

.method public reqCid()V
    .locals 1

    #@0
    .prologue
    .line 164
    const v0, 0x41002

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessage(I)V

    #@6
    .line 163
    return-void
.end method

.method public reqIsInactive()V
    .locals 1

    #@0
    .prologue
    .line 124
    const v0, 0x41000

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessage(I)V

    #@6
    .line 123
    return-void
.end method

.method public reqLinkProperties()V
    .locals 1

    #@0
    .prologue
    .line 246
    const v0, 0x41006

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessage(I)V

    #@6
    .line 245
    return-void
.end method

.method public reqNetworkCapabilities()V
    .locals 1

    #@0
    .prologue
    .line 314
    const v0, 0x4100a

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessage(I)V

    #@6
    .line 313
    return-void
.end method

.method public reqReset()V
    .locals 1

    #@0
    .prologue
    .line 354
    const v0, 0x4100c

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessage(I)V

    #@6
    .line 353
    return-void
.end method

.method public reqSetLinkPropertiesHttpProxy(Landroid/net/ProxyInfo;)V
    .locals 1
    .param p1, "proxy"    # Landroid/net/ProxyInfo;

    #@0
    .prologue
    .line 288
    const v0, 0x41008

    #@3
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessage(ILjava/lang/Object;)V

    #@6
    .line 287
    return-void
.end method

.method public rspApnSetting(Landroid/os/Message;)Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 215
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@4
    .line 217
    .local v0, "retVal":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    return-object v0
.end method

.method public rspCid(Landroid/os/Message;)I
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 175
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@2
    .line 177
    .local v0, "retVal":I
    return v0
.end method

.method public rspIsInactive(Landroid/os/Message;)Z
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 134
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@2
    const/4 v2, 0x1

    #@3
    if-ne v1, v2, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    .line 136
    .local v0, "retVal":Z
    :goto_0
    return v0

    #@7
    .line 134
    .end local v0    # "retVal":Z
    :cond_0
    const/4 v0, 0x0

    #@8
    .restart local v0    # "retVal":Z
    goto :goto_0
.end method

.method public rspLinkProperties(Landroid/os/Message;)Landroid/net/LinkProperties;
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 257
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2
    check-cast v0, Landroid/net/LinkProperties;

    #@4
    .line 259
    .local v0, "retVal":Landroid/net/LinkProperties;
    return-object v0
.end method

.method public rspNetworkCapabilities(Landroid/os/Message;)Landroid/net/NetworkCapabilities;
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 325
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2
    check-cast v0, Landroid/net/NetworkCapabilities;

    #@4
    .line 327
    .local v0, "retVal":Landroid/net/NetworkCapabilities;
    return-object v0
.end method

.method public setLinkPropertiesHttpProxySync(Landroid/net/ProxyInfo;)V
    .locals 3
    .param p1, "proxy"    # Landroid/net/ProxyInfo;

    #@0
    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->isCallerOnDifferentThread()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 298
    const v1, 0x41008

    #@9
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    #@c
    move-result-object v0

    #@d
    .line 299
    .local v0, "response":Landroid/os/Message;
    if-eqz v0, :cond_0

    #@f
    iget v1, v0, Landroid/os/Message;->what:I

    #@11
    const v2, 0x41009

    #@14
    if-ne v1, v2, :cond_0

    #@16
    .line 295
    .end local v0    # "response":Landroid/os/Message;
    :goto_0
    return-void

    #@17
    .line 302
    .restart local v0    # "response":Landroid/os/Message;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, "setLinkPropertiesHttpPoxy error response="

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->log(Ljava/lang/String;)V

    #@2e
    goto :goto_0

    #@2f
    .line 305
    .end local v0    # "response":Landroid/os/Message;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@31
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setLinkPropertiesHttpProxy(Landroid/net/ProxyInfo;)V

    #@34
    goto :goto_0
.end method

.method public tearDown(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "onCompletedMsg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 393
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    #@2
    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;-><init>(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Landroid/os/Message;)V

    #@5
    .line 392
    const v1, 0x40004

    #@8
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessage(ILjava/lang/Object;)V

    #@b
    .line 387
    return-void
.end method

.method public tearDownAll(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "onCompletedMsg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 406
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;-><init>(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Landroid/os/Message;)V

    #@6
    .line 405
    const v1, 0x40006

    #@9
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessage(ILjava/lang/Object;)V

    #@c
    .line 403
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
