.class public Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;
.super Lcom/android/internal/util/AsyncChannel;
.source "DcSwitchAsyncChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x44000

.field private static final CMD_TO_STRING_COUNT:I = 0xb

.field private static final DBG:Z = true

.field static final EVENT_DATA_ATTACHED:I = 0x44007

.field static final EVENT_DATA_DETACHED:I = 0x44008

.field static final EVENT_EMERGENCY_CALL_ENDED:I = 0x4400a

.field static final EVENT_EMERGENCY_CALL_STARTED:I = 0x44009

.field private static final LOG_TAG:Ljava/lang/String; = "DcSwitchAsyncChannel"

.field static final REQ_CONNECT:I = 0x44000

.field static final REQ_DISCONNECT_ALL:I = 0x44002

.field static final REQ_IS_IDLE_OR_DETACHING_STATE:I = 0x44005

.field static final REQ_IS_IDLE_STATE:I = 0x44003

.field static final REQ_RETRY_CONNECT:I = 0x44001

.field static final RSP_IS_IDLE_OR_DETACHING_STATE:I = 0x44006

.field static final RSP_IS_IDLE_STATE:I = 0x44004

.field private static final VDBG:Z

.field private static sCmdToString:[Ljava/lang/String;


# instance fields
.field private mDcSwitchState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

.field private tagId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 51
    const/16 v0, 0xb

    #@2
    new-array v0, v0, [Ljava/lang/String;

    #@4
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    #@6
    .line 53
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    #@8
    const-string/jumbo v1, "REQ_CONNECT"

    #@b
    const/4 v2, 0x0

    #@c
    aput-object v1, v0, v2

    #@e
    .line 54
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    #@10
    const-string/jumbo v1, "REQ_RETRY_CONNECT"

    #@13
    const/4 v2, 0x1

    #@14
    aput-object v1, v0, v2

    #@16
    .line 55
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    #@18
    const-string/jumbo v1, "REQ_DISCONNECT_ALL"

    #@1b
    const/4 v2, 0x2

    #@1c
    aput-object v1, v0, v2

    #@1e
    .line 56
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    #@20
    const-string/jumbo v1, "REQ_IS_IDLE_STATE"

    #@23
    const/4 v2, 0x3

    #@24
    aput-object v1, v0, v2

    #@26
    .line 57
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    #@28
    const-string/jumbo v1, "RSP_IS_IDLE_STATE"

    #@2b
    const/4 v2, 0x4

    #@2c
    aput-object v1, v0, v2

    #@2e
    .line 58
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    #@30
    const-string/jumbo v1, "REQ_IS_IDLE_OR_DETACHING_STATE"

    #@33
    const/4 v2, 0x5

    #@34
    aput-object v1, v0, v2

    #@36
    .line 59
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    #@38
    const-string/jumbo v1, "RSP_IS_IDLE_OR_DETACHING_STATE"

    #@3b
    const/4 v2, 0x6

    #@3c
    aput-object v1, v0, v2

    #@3e
    .line 60
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    #@40
    const-string/jumbo v1, "EVENT_DATA_ATTACHED"

    #@43
    const/4 v2, 0x7

    #@44
    aput-object v1, v0, v2

    #@46
    .line 61
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    #@48
    const-string/jumbo v1, "EVENT_DATA_DETACHED"

    #@4b
    const/16 v2, 0x8

    #@4d
    aput-object v1, v0, v2

    #@4f
    .line 62
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    #@51
    const-string/jumbo v1, "EVENT_EMERGENCY_CALL_STARTED"

    #@54
    const/16 v2, 0x9

    #@56
    aput-object v1, v0, v2

    #@58
    .line 63
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    #@5a
    const-string/jumbo v1, "EVENT_EMERGENCY_CALL_ENDED"

    #@5d
    const/16 v2, 0xa

    #@5f
    aput-object v1, v0, v2

    #@61
    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;I)V
    .locals 1
    .param p1, "dcSwitchState"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p2, "id"    # I

    #@0
    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    #@3
    .line 33
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->tagId:I

    #@6
    .line 104
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->mDcSwitchState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@8
    .line 105
    iput p2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->tagId:I

    #@a
    .line 103
    return-void
.end method

.method protected static cmdToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "cmd"    # I

    #@0
    .prologue
    const v1, 0x44000

    #@3
    .line 95
    sub-int/2addr p0, v1

    #@4
    .line 96
    if-ltz p0, :cond_0

    #@6
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    #@8
    array-length v0, v0

    #@9
    if-ge p0, v0, :cond_0

    #@b
    .line 97
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    #@d
    aget-object v0, v0, p0

    #@f
    return-object v0

    #@10
    .line 99
    :cond_0
    add-int v0, p0, v1

    #@12
    invoke-static {v0}, Lcom/android/internal/util/AsyncChannel;->cmdToString(I)Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 181
    const-string/jumbo v0, "DcSwitchAsyncChannel"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "[DcSwitchAsyncChannel-"

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->tagId:I

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    const-string/jumbo v2, "]: "

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 180
    return-void
.end method

.method private rspIsIdle(Landroid/os/Message;)Z
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 139
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@2
    const/4 v2, 0x1

    #@3
    if-ne v1, v2, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    .line 140
    .local v0, "retVal":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "rspIsIdle="

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->log(Ljava/lang/String;)V

    #@1d
    .line 141
    return v0

    #@1e
    .line 139
    .end local v0    # "retVal":Z
    :cond_0
    const/4 v0, 0x0

    #@1f
    .restart local v0    # "retVal":Z
    goto :goto_0
.end method


# virtual methods
.method public connect(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)I
    .locals 1
    .param p1, "apnRequest"    # Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    #@0
    .prologue
    .line 109
    const v0, 0x44000

    #@3
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sendMessage(ILjava/lang/Object;)V

    #@6
    .line 110
    const/4 v0, 0x1

    #@7
    return v0
.end method

.method public disconnectAll()I
    .locals 1

    #@0
    .prologue
    .line 118
    const v0, 0x44002

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sendMessage(I)V

    #@6
    .line 119
    const/4 v0, 0x1

    #@7
    return v0
.end method

.method public isIdleOrDetachingSync()Z
    .locals 3

    #@0
    .prologue
    .line 166
    const v1, 0x44005

    #@3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 167
    .local v0, "response":Landroid/os/Message;
    if-eqz v0, :cond_0

    #@9
    iget v1, v0, Landroid/os/Message;->what:I

    #@b
    const v2, 0x44006

    #@e
    if-ne v1, v2, :cond_0

    #@10
    .line 168
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->rspIsIdleOrDetaching(Landroid/os/Message;)Z

    #@13
    move-result v1

    #@14
    return v1

    #@15
    .line 170
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v2, "rspIsIdleOrDetaching error response="

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->log(Ljava/lang/String;)V

    #@2c
    .line 171
    const/4 v1, 0x0

    #@2d
    return v1
.end method

.method public isIdleSync()Z
    .locals 3

    #@0
    .prologue
    .line 145
    const v1, 0x44003

    #@3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 146
    .local v0, "response":Landroid/os/Message;
    if-eqz v0, :cond_0

    #@9
    iget v1, v0, Landroid/os/Message;->what:I

    #@b
    const v2, 0x44004

    #@e
    if-ne v1, v2, :cond_0

    #@10
    .line 147
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->rspIsIdle(Landroid/os/Message;)Z

    #@13
    move-result v1

    #@14
    return v1

    #@15
    .line 149
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v2, "rspIsIndle error response="

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->log(Ljava/lang/String;)V

    #@2c
    .line 150
    const/4 v1, 0x0

    #@2d
    return v1
.end method

.method public notifyDataAttached()V
    .locals 1

    #@0
    .prologue
    .line 123
    const v0, 0x44007

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sendMessage(I)V

    #@6
    .line 122
    return-void
.end method

.method public notifyDataDetached()V
    .locals 1

    #@0
    .prologue
    .line 127
    const v0, 0x44008

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sendMessage(I)V

    #@6
    .line 126
    return-void
.end method

.method public notifyEmergencyCallToggled(I)V
    .locals 1
    .param p1, "start"    # I

    #@0
    .prologue
    .line 131
    if-eqz p1, :cond_0

    #@2
    .line 132
    const v0, 0x44009

    #@5
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sendMessage(I)V

    #@8
    .line 130
    :goto_0
    return-void

    #@9
    .line 134
    :cond_0
    const v0, 0x4400a

    #@c
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sendMessage(I)V

    #@f
    goto :goto_0
.end method

.method public reqIsIdleOrDetaching()V
    .locals 1

    #@0
    .prologue
    .line 155
    const v0, 0x44005

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sendMessage(I)V

    #@6
    .line 156
    const-string/jumbo v0, "reqIsIdleOrDetaching"

    #@9
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->log(Ljava/lang/String;)V

    #@c
    .line 154
    return-void
.end method

.method public retryConnect()V
    .locals 1

    #@0
    .prologue
    .line 114
    const v0, 0x44001

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sendMessage(I)V

    #@6
    .line 113
    return-void
.end method

.method public rspIsIdleOrDetaching(Landroid/os/Message;)Z
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 160
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@2
    const/4 v2, 0x1

    #@3
    if-ne v1, v2, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    .line 161
    .local v0, "retVal":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "rspIsIdleOrDetaching="

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->log(Ljava/lang/String;)V

    #@1d
    .line 162
    return v0

    #@1e
    .line 160
    .end local v0    # "retVal":Z
    :cond_0
    const/4 v0, 0x0

    #@1f
    .restart local v0    # "retVal":Z
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->mDcSwitchState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
