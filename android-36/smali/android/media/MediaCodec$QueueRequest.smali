.class public final Landroid/media/MediaCodec$QueueRequest;
.super Ljava/lang/Object;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "QueueRequest"
.end annotation


# instance fields
.field private blacklist mAccessible:Z

.field private final blacklist mBufferInfos:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/media/MediaCodec$BufferInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCodec:Landroid/media/MediaCodec;

.field private final blacklist mCryptoInfos:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/media/MediaCodec$CryptoInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFlags:I

.field private blacklist mHardwareBuffer:Landroid/hardware/HardwareBuffer;

.field private final blacklist mIndex:I

.field private blacklist mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

.field private blacklist mOffset:I

.field private blacklist mPresentationTimeUs:J

.field private blacklist mSize:I

.field private final blacklist mTuningKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTuningValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Landroid/media/MediaCodec;Landroid/media/MediaCodec;I)V
    .registers 8
    .param p1, "this$0"    # Landroid/media/MediaCodec;
    .param p2, "codec"    # Landroid/media/MediaCodec;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 3797
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4165
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    .line 4166
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/MediaCodec$QueueRequest;->mOffset:I

    .line 4167
    iput v1, p0, Landroid/media/MediaCodec$QueueRequest;->mSize:I

    .line 4168
    iput-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    .line 4169
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/media/MediaCodec$QueueRequest;->mPresentationTimeUs:J

    .line 4170
    iput v1, p0, Landroid/media/MediaCodec$QueueRequest;->mFlags:I

    .line 4171
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mBufferInfos:Ljava/util/ArrayDeque;

    .line 4172
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mCryptoInfos:Ljava/util/ArrayDeque;

    .line 4173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mTuningKeys:Ljava/util/ArrayList;

    .line 4174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mTuningValues:Ljava/util/ArrayList;

    .line 4176
    iput-boolean v1, p0, Landroid/media/MediaCodec$QueueRequest;->mAccessible:Z

    .line 3798
    iput-object p2, p0, Landroid/media/MediaCodec$QueueRequest;->mCodec:Landroid/media/MediaCodec;

    .line 3799
    iput p3, p0, Landroid/media/MediaCodec$QueueRequest;->mIndex:I

    .line 3800
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/MediaCodec;Landroid/media/MediaCodec;ILandroid/media/MediaCodec-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaCodec$QueueRequest;-><init>(Landroid/media/MediaCodec;Landroid/media/MediaCodec;I)V

    return-void
.end method


# virtual methods
.method blacklist clear()Landroid/media/MediaCodec$QueueRequest;
    .registers 5

    .line 4141
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    .line 4142
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/MediaCodec$QueueRequest;->mOffset:I

    .line 4143
    iput v1, p0, Landroid/media/MediaCodec$QueueRequest;->mSize:I

    .line 4144
    iput-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    .line 4145
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/media/MediaCodec$QueueRequest;->mPresentationTimeUs:J

    .line 4146
    iput v1, p0, Landroid/media/MediaCodec$QueueRequest;->mFlags:I

    .line 4147
    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mBufferInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 4148
    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mCryptoInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 4149
    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mTuningKeys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4150
    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mTuningValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4151
    return-object p0
.end method

.method blacklist isAccessible()Z
    .registers 2

    .line 4155
    iget-boolean v0, p0, Landroid/media/MediaCodec$QueueRequest;->mAccessible:Z

    return v0
.end method

.method public whitelist queue()V
    .registers 12

    .line 4108
    const-string v0, "MediaCodec::queueRequest-queue#java"

    const-wide/16 v1, 0x200

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4109
    invoke-virtual {p0}, Landroid/media/MediaCodec$QueueRequest;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 4112
    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    if-nez v0, :cond_1e

    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    if-eqz v0, :cond_16

    goto :goto_1e

    .line 4113
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No block is set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4115
    :cond_1e
    :goto_1e
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/MediaCodec$QueueRequest;->setAccessible(Z)Landroid/media/MediaCodec$QueueRequest;

    .line 4116
    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mBufferInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 4117
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 4118
    .local v0, "info":Landroid/media/MediaCodec$BufferInfo;
    iget v3, p0, Landroid/media/MediaCodec$QueueRequest;->mSize:I

    iput v3, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 4119
    iget v3, p0, Landroid/media/MediaCodec$QueueRequest;->mOffset:I

    iput v3, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 4120
    iget-wide v3, p0, Landroid/media/MediaCodec$QueueRequest;->mPresentationTimeUs:J

    iput-wide v3, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 4121
    iget v3, p0, Landroid/media/MediaCodec$QueueRequest;->mFlags:I

    iput v3, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 4122
    iget-object v3, p0, Landroid/media/MediaCodec$QueueRequest;->mBufferInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v3, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 4124
    .end local v0    # "info":Landroid/media/MediaCodec$BufferInfo;
    :cond_44
    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    if-eqz v0, :cond_6d

    .line 4126
    iget-object v3, p0, Landroid/media/MediaCodec$QueueRequest;->mCodec:Landroid/media/MediaCodec;

    iget v4, p0, Landroid/media/MediaCodec$QueueRequest;->mIndex:I

    iget-object v5, p0, Landroid/media/MediaCodec$QueueRequest;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    .line 4128
    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mCryptoInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_58

    const/4 v0, 0x0

    goto :goto_5e

    :cond_58
    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mCryptoInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->toArray()[Ljava/lang/Object;

    move-result-object v0

    :goto_5e
    move-object v6, v0

    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mBufferInfos:Ljava/util/ArrayDeque;

    .line 4129
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->toArray()[Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, Landroid/media/MediaCodec$QueueRequest;->mTuningKeys:Ljava/util/ArrayList;

    iget-object v9, p0, Landroid/media/MediaCodec$QueueRequest;->mTuningValues:Ljava/util/ArrayList;

    .line 4126
    invoke-static/range {v3 .. v9}, Landroid/media/MediaCodec;->-$$Nest$mnative_queueLinearBlock(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$LinearBlock;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_82

    .line 4131
    :cond_6d
    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    if-eqz v0, :cond_82

    .line 4132
    iget-object v3, p0, Landroid/media/MediaCodec$QueueRequest;->mCodec:Landroid/media/MediaCodec;

    iget v4, p0, Landroid/media/MediaCodec$QueueRequest;->mIndex:I

    iget-object v5, p0, Landroid/media/MediaCodec$QueueRequest;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    iget-wide v6, p0, Landroid/media/MediaCodec$QueueRequest;->mPresentationTimeUs:J

    iget v8, p0, Landroid/media/MediaCodec$QueueRequest;->mFlags:I

    iget-object v9, p0, Landroid/media/MediaCodec$QueueRequest;->mTuningKeys:Ljava/util/ArrayList;

    iget-object v10, p0, Landroid/media/MediaCodec$QueueRequest;->mTuningValues:Ljava/util/ArrayList;

    invoke-static/range {v3 .. v10}, Landroid/media/MediaCodec;->-$$Nest$mnative_queueHardwareBuffer(Landroid/media/MediaCodec;ILandroid/hardware/HardwareBuffer;JILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 4136
    :cond_82
    :goto_82
    invoke-virtual {p0}, Landroid/media/MediaCodec$QueueRequest;->clear()Landroid/media/MediaCodec$QueueRequest;

    .line 4137
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 4138
    return-void

    .line 4110
    :cond_89
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The request is stale"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist setAccessible(Z)Landroid/media/MediaCodec$QueueRequest;
    .registers 2
    .param p1, "accessible"    # Z

    .line 4159
    iput-boolean p1, p0, Landroid/media/MediaCodec$QueueRequest;->mAccessible:Z

    .line 4160
    return-object p0
.end method

.method public whitelist setByteBufferParameter(Ljava/lang/String;Ljava/nio/ByteBuffer;)Landroid/media/MediaCodec$QueueRequest;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/nio/ByteBuffer;

    .line 4075
    invoke-virtual {p0}, Landroid/media/MediaCodec$QueueRequest;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4078
    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mTuningKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4079
    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mTuningValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4080
    return-object p0

    .line 4076
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The request is stale"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setEncryptedLinearBlock(Landroid/media/MediaCodec$LinearBlock;IILandroid/media/MediaCodec$CryptoInfo;)Landroid/media/MediaCodec$QueueRequest;
    .registers 7
    .param p1, "block"    # Landroid/media/MediaCodec$LinearBlock;
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "cryptoInfo"    # Landroid/media/MediaCodec$CryptoInfo;

    .line 3883
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3884
    invoke-virtual {p0}, Landroid/media/MediaCodec$QueueRequest;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 3887
    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    if-nez v0, :cond_22

    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    if-nez v0, :cond_22

    .line 3890
    iput-object p1, p0, Landroid/media/MediaCodec$QueueRequest;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    .line 3891
    iput p2, p0, Landroid/media/MediaCodec$QueueRequest;->mOffset:I

    .line 3892
    iput p3, p0, Landroid/media/MediaCodec$QueueRequest;->mSize:I

    .line 3893
    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mCryptoInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 3894
    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mCryptoInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 3895
    return-object p0

    .line 3888
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set block twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3885
    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The request is stale"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setFlags(I)Landroid/media/MediaCodec$QueueRequest;
    .registers 4
    .param p1, "flags"    # I

    .line 3992
    invoke-virtual {p0}, Landroid/media/MediaCodec$QueueRequest;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3995
    iput p1, p0, Landroid/media/MediaCodec$QueueRequest;->mFlags:I

    .line 3996
    return-object p0

    .line 3993
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The request is stale"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setFloatParameter(Ljava/lang/String;F)Landroid/media/MediaCodec$QueueRequest;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 4054
    invoke-virtual {p0}, Landroid/media/MediaCodec$QueueRequest;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 4057
    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mTuningKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4058
    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mTuningValues:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4059
    return-object p0

    .line 4055
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The request is stale"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/media/MediaCodec$QueueRequest;
    .registers 4
    .param p1, "buffer"    # Landroid/hardware/HardwareBuffer;

    .line 3953
    invoke-virtual {p0}, Landroid/media/MediaCodec$QueueRequest;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3956
    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    if-nez v0, :cond_11

    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    if-nez v0, :cond_11

    .line 3959
    iput-object p1, p0, Landroid/media/MediaCodec$QueueRequest;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    .line 3960
    return-object p0

    .line 3957
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set block twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3954
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The request is stale"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setIntegerParameter(Ljava/lang/String;I)Landroid/media/MediaCodec$QueueRequest;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 4012
    invoke-virtual {p0}, Landroid/media/MediaCodec$QueueRequest;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 4015
    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mTuningKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4016
    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mTuningValues:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4017
    return-object p0

    .line 4013
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The request is stale"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setLinearBlock(Landroid/media/MediaCodec$LinearBlock;II)Landroid/media/MediaCodec$QueueRequest;
    .registers 6
    .param p1, "block"    # Landroid/media/MediaCodec$LinearBlock;
    .param p2, "offset"    # I
    .param p3, "size"    # I

    .line 3820
    invoke-virtual {p0}, Landroid/media/MediaCodec$QueueRequest;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3823
    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    if-nez v0, :cond_1a

    .line 3826
    iput-object p1, p0, Landroid/media/MediaCodec$QueueRequest;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    .line 3827
    iput p2, p0, Landroid/media/MediaCodec$QueueRequest;->mOffset:I

    .line 3828
    iput p3, p0, Landroid/media/MediaCodec$QueueRequest;->mSize:I

    .line 3829
    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mCryptoInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 3830
    return-object p0

    .line 3824
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set block twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3821
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The request is stale"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setLongParameter(Ljava/lang/String;J)Landroid/media/MediaCodec$QueueRequest;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 4033
    invoke-virtual {p0}, Landroid/media/MediaCodec$QueueRequest;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 4036
    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mTuningKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4037
    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mTuningValues:Ljava/util/ArrayList;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4038
    return-object p0

    .line 4034
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The request is stale"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setMultiFrameEncryptedLinearBlock(Landroid/media/MediaCodec$LinearBlock;Ljava/util/ArrayDeque;Ljava/util/ArrayDeque;)Landroid/media/MediaCodec$QueueRequest;
    .registers 6
    .param p1, "block"    # Landroid/media/MediaCodec$LinearBlock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaCodec$LinearBlock;",
            "Ljava/util/ArrayDeque<",
            "Landroid/media/MediaCodec$BufferInfo;",
            ">;",
            "Ljava/util/ArrayDeque<",
            "Landroid/media/MediaCodec$CryptoInfo;",
            ">;)",
            "Landroid/media/MediaCodec$QueueRequest;"
        }
    .end annotation

    .line 3920
    .local p2, "bufferInfos":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/media/MediaCodec$BufferInfo;>;"
    .local p3, "cryptoInfos":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/media/MediaCodec$CryptoInfo;>;"
    invoke-virtual {p0}, Landroid/media/MediaCodec$QueueRequest;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 3923
    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    if-nez v0, :cond_25

    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    if-nez v0, :cond_25

    .line 3926
    iput-object p1, p0, Landroid/media/MediaCodec$QueueRequest;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    .line 3927
    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mBufferInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 3928
    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mBufferInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p2}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 3929
    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mCryptoInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 3930
    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mCryptoInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p3}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 3931
    return-object p0

    .line 3924
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set block twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3921
    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The request is stale"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setMultiFrameLinearBlock(Landroid/media/MediaCodec$LinearBlock;Ljava/util/ArrayDeque;)Landroid/media/MediaCodec$QueueRequest;
    .registers 5
    .param p1, "block"    # Landroid/media/MediaCodec$LinearBlock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaCodec$LinearBlock;",
            "Ljava/util/ArrayDeque<",
            "Landroid/media/MediaCodec$BufferInfo;",
            ">;)",
            "Landroid/media/MediaCodec$QueueRequest;"
        }
    .end annotation

    .line 3850
    .local p2, "infos":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/media/MediaCodec$BufferInfo;>;"
    invoke-virtual {p0}, Landroid/media/MediaCodec$QueueRequest;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 3853
    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    if-nez v0, :cond_20

    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    if-nez v0, :cond_20

    .line 3856
    iput-object p1, p0, Landroid/media/MediaCodec$QueueRequest;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    .line 3857
    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mBufferInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 3858
    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mBufferInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p2}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 3859
    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mCryptoInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 3860
    return-object p0

    .line 3854
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set block twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3851
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The request is stale"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPresentationTimeUs(J)Landroid/media/MediaCodec$QueueRequest;
    .registers 5
    .param p1, "presentationTimeUs"    # J

    .line 3975
    invoke-virtual {p0}, Landroid/media/MediaCodec$QueueRequest;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3978
    iput-wide p1, p0, Landroid/media/MediaCodec$QueueRequest;->mPresentationTimeUs:J

    .line 3979
    return-object p0

    .line 3976
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The request is stale"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setStringParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaCodec$QueueRequest;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 4096
    invoke-virtual {p0}, Landroid/media/MediaCodec$QueueRequest;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4099
    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mTuningKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4100
    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mTuningValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4101
    return-object p0

    .line 4097
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The request is stale"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
