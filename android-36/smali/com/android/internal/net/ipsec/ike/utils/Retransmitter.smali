.class public abstract Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;
.super Ljava/lang/Object;
.source "Retransmitter.java"


# static fields
.field static final blacklist STATE_RETRANSMISSION_ALLOWED:I = 0x1

.field static final blacklist STATE_RETRANSMISSION_FINISHED:I = 0x3

.field static final blacklist STATE_RETRANSMISSION_SUSPENDED:I = 0x2


# instance fields
.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mRetransmissionTimeouts:[I

.field private blacklist mRetransmitCount:I

.field private final blacklist mRetransmitMsg:Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

.field private blacklist mRetransmitterState:I


# direct methods
.method public constructor blacklist <init>(Landroid/os/Handler;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;[I)V
    .registers 5
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "msg"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .param p3, "retransmissionTimeouts"    # [I

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->mRetransmitCount:I

    .line 61
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->mHandler:Landroid/os/Handler;

    .line 62
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->mRetransmitMsg:Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    .line 63
    iput-object p3, p0, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->mRetransmissionTimeouts:[I

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->mRetransmitterState:I

    .line 65
    return-void
.end method


# virtual methods
.method public blacklist getMessage()Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->mRetransmitMsg:Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    return-object v0
.end method

.method protected abstract blacklist handleRetransmissionFailure()V
.end method

.method public blacklist restartRetransmitting()V
    .registers 3

    .line 137
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->mRetransmitterState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    .line 138
    return-void

    .line 142
    :cond_6
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->mRetransmitterState:I

    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->mRetransmitCount:I

    .line 148
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->retransmit()V

    .line 149
    return-void
.end method

.method public blacklist retransmit()V
    .registers 6

    .line 74
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->mRetransmitMsg:Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    if-nez v0, :cond_5

    .line 75
    return-void

    .line 79
    :cond_5
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->mRetransmitterState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    .line 80
    return-void

    .line 84
    :cond_b
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->mRetransmitCount:I

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->mRetransmissionTimeouts:[I

    array-length v1, v1

    if-lt v0, v1, :cond_16

    .line 85
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->handleRetransmissionFailure()V

    .line 86
    return-void

    .line 89
    :cond_16
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->send()V

    .line 91
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->mRetransmissionTimeouts:[I

    iget v1, p0, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->mRetransmitCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->mRetransmitCount:I

    aget v0, v0, v1

    int-to-long v0, v0

    .line 92
    .local v0, "timeout":J
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x134

    invoke-virtual {v3, v4, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 93
    return-void
.end method

.method protected abstract blacklist send()V
.end method

.method public blacklist stopRetransmitting()V
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x134

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 105
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->mRetransmitterState:I

    .line 106
    return-void
.end method

.method public blacklist suspendRetransmitting()V
    .registers 3

    .line 116
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->mRetransmitterState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    .line 117
    return-void

    .line 121
    :cond_6
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x134

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 124
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->mRetransmitterState:I

    .line 125
    return-void
.end method
