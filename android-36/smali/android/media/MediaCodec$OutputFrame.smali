.class public final Landroid/media/MediaCodec$OutputFrame;
.super Ljava/lang/Object;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutputFrame"
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

.field private final blacklist mChangedKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFlags:I

.field private blacklist mFormat:Landroid/media/MediaFormat;

.field private blacklist mHardwareBuffer:Landroid/hardware/HardwareBuffer;

.field private final blacklist mIndex:I

.field private final blacklist mKeySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

.field private blacklist mLoaded:Z

.field private blacklist mPresentationTimeUs:J


# direct methods
.method constructor blacklist <init>(I)V
    .registers 5
    .param p1, "index"    # I

    .line 4933
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5052
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    .line 5053
    iput-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    .line 5054
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/media/MediaCodec$OutputFrame;->mPresentationTimeUs:J

    .line 5055
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/MediaCodec$OutputFrame;->mFlags:I

    .line 5056
    iput-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mFormat:Landroid/media/MediaFormat;

    .line 5057
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mBufferInfos:Ljava/util/ArrayDeque;

    .line 5058
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mChangedKeys:Ljava/util/ArrayList;

    .line 5059
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mKeySet:Ljava/util/Set;

    .line 5060
    iput-boolean v1, p0, Landroid/media/MediaCodec$OutputFrame;->mAccessible:Z

    .line 5061
    iput-boolean v1, p0, Landroid/media/MediaCodec$OutputFrame;->mLoaded:Z

    .line 4934
    iput p1, p0, Landroid/media/MediaCodec$OutputFrame;->mIndex:I

    .line 4935
    return-void
.end method


# virtual methods
.method blacklist clear()V
    .registers 2

    .line 5013
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    .line 5014
    iput-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    .line 5015
    iput-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mFormat:Landroid/media/MediaFormat;

    .line 5016
    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mBufferInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 5017
    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mChangedKeys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5018
    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mKeySet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 5019
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaCodec$OutputFrame;->mLoaded:Z

    .line 5020
    return-void
.end method

.method public whitelist getBufferInfos()Ljava/util/ArrayDeque;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayDeque<",
            "Landroid/media/MediaCodec$BufferInfo;",
            ">;"
        }
    .end annotation

    .line 4982
    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mBufferInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4984
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    move-object v1, v0

    .line 4985
    .local v1, "bufferInfo":Landroid/media/MediaCodec$BufferInfo;
    iget-wide v4, p0, Landroid/media/MediaCodec$OutputFrame;->mPresentationTimeUs:J

    iget v6, p0, Landroid/media/MediaCodec$OutputFrame;->mFlags:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 4986
    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mBufferInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 4988
    .end local v1    # "bufferInfo":Landroid/media/MediaCodec$BufferInfo;
    :cond_1c
    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mBufferInfos:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method public whitelist getChangedKeys()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5006
    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mKeySet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mChangedKeys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 5007
    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mKeySet:Ljava/util/Set;

    iget-object v1, p0, Landroid/media/MediaCodec$OutputFrame;->mChangedKeys:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 5009
    :cond_17
    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mKeySet:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFlags()I
    .registers 2

    .line 4972
    iget v0, p0, Landroid/media/MediaCodec$OutputFrame;->mFlags:I

    return v0
.end method

.method public whitelist getFormat()Landroid/media/MediaFormat;
    .registers 2

    .line 4996
    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public whitelist getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .registers 3

    .line 4955
    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    if-nez v0, :cond_7

    .line 4958
    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    return-object v0

    .line 4956
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This output frame is not graphic"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getLinearBlock()Landroid/media/MediaCodec$LinearBlock;
    .registers 3

    .line 4943
    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    if-nez v0, :cond_7

    .line 4946
    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    return-object v0

    .line 4944
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This output frame is not linear"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getPresentationTimeUs()J
    .registers 3

    .line 4965
    iget-wide v0, p0, Landroid/media/MediaCodec$OutputFrame;->mPresentationTimeUs:J

    return-wide v0
.end method

.method blacklist isAccessible()Z
    .registers 2

    .line 5023
    iget-boolean v0, p0, Landroid/media/MediaCodec$OutputFrame;->mAccessible:Z

    return v0
.end method

.method blacklist isLoaded()Z
    .registers 2

    .line 5044
    iget-boolean v0, p0, Landroid/media/MediaCodec$OutputFrame;->mLoaded:Z

    return v0
.end method

.method blacklist setAccessible(Z)V
    .registers 2
    .param p1, "accessible"    # Z

    .line 5027
    iput-boolean p1, p0, Landroid/media/MediaCodec$OutputFrame;->mAccessible:Z

    .line 5028
    return-void
.end method

.method blacklist setBufferInfo(Landroid/media/MediaCodec$BufferInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/media/MediaCodec$BufferInfo;

    .line 5033
    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mBufferInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 5034
    iget-wide v0, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v0, p0, Landroid/media/MediaCodec$OutputFrame;->mPresentationTimeUs:J

    .line 5035
    iget v0, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iput v0, p0, Landroid/media/MediaCodec$OutputFrame;->mFlags:I

    .line 5036
    return-void
.end method

.method blacklist setBufferInfos(Ljava/util/ArrayDeque;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayDeque<",
            "Landroid/media/MediaCodec$BufferInfo;",
            ">;)V"
        }
    .end annotation

    .line 5039
    .local p1, "infos":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/media/MediaCodec$BufferInfo;>;"
    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mBufferInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 5040
    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mBufferInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 5041
    return-void
.end method

.method blacklist setLoaded(Z)V
    .registers 2
    .param p1, "loaded"    # Z

    .line 5048
    iput-boolean p1, p0, Landroid/media/MediaCodec$OutputFrame;->mLoaded:Z

    .line 5049
    return-void
.end method
