.class Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
.super Ljava/lang/Object;
.source "CaptureCollector.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/CaptureCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mCompleted:Z

.field private mFailedJpeg:Z

.field private mFailedPreview:Z

.field private mHasStarted:Z

.field private final mLegacy:Landroid/hardware/camera2/legacy/LegacyRequest;

.field private mPreviewCompleted:Z

.field private mReceivedFlags:I

.field private final mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

.field private mTimestamp:J

.field public final needsJpeg:Z

.field public final needsPreview:Z

.field final synthetic this$0:Landroid/hardware/camera2/legacy/CaptureCollector;


# direct methods
.method static synthetic -get0(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)Landroid/hardware/camera2/legacy/RequestHolder;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    #@2
    return-wide v0
.end method

.method public constructor <init>(Landroid/hardware/camera2/legacy/CaptureCollector;Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/legacy/LegacyRequest;)V
    .locals 3
    .param p1, "this$0"    # Landroid/hardware/camera2/legacy/CaptureCollector;
    .param p2, "request"    # Landroid/hardware/camera2/legacy/RequestHolder;
    .param p3, "legacyHolder"    # Landroid/hardware/camera2/legacy/LegacyRequest;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 63
    iput-object p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->this$0:Landroid/hardware/camera2/legacy/CaptureCollector;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 55
    const-wide/16 v0, 0x0

    #@8
    iput-wide v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    #@a
    .line 56
    iput v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    #@c
    .line 57
    iput-boolean v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mHasStarted:Z

    #@e
    .line 58
    iput-boolean v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mFailedJpeg:Z

    #@10
    .line 59
    iput-boolean v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mFailedPreview:Z

    #@12
    .line 60
    iput-boolean v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mCompleted:Z

    #@14
    .line 61
    iput-boolean v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mPreviewCompleted:Z

    #@16
    .line 64
    iput-object p2, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    #@18
    .line 65
    iput-object p3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mLegacy:Landroid/hardware/camera2/legacy/LegacyRequest;

    #@1a
    .line 66
    invoke-virtual {p2}, Landroid/hardware/camera2/legacy/RequestHolder;->hasJpegTargets()Z

    #@1d
    move-result v0

    #@1e
    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsJpeg:Z

    #@20
    .line 67
    invoke-virtual {p2}, Landroid/hardware/camera2/legacy/RequestHolder;->hasPreviewTargets()Z

    #@23
    move-result v0

    #@24
    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsPreview:Z

    #@26
    .line 63
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)I
    .locals 4
    .param p1, "captureHolder"    # Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    #@0
    .prologue
    .line 252
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    #@2
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHolder;->getFrameNumber()J

    #@5
    move-result-wide v0

    #@6
    iget-object v2, p1, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    #@8
    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/RequestHolder;->getFrameNumber()J

    #@b
    move-result-wide v2

    #@c
    cmp-long v0, v0, v2

    #@e
    if-lez v0, :cond_0

    #@10
    const/4 v0, 0x1

    #@11
    :goto_0
    return v0

    #@12
    .line 253
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    #@14
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHolder;->getFrameNumber()J

    #@17
    move-result-wide v0

    #@18
    iget-object v2, p1, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    #@1a
    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/RequestHolder;->getFrameNumber()J

    #@1d
    move-result-wide v2

    #@1e
    cmp-long v0, v0, v2

    #@20
    if-nez v0, :cond_1

    #@22
    const/4 v0, 0x0

    #@23
    goto :goto_0

    #@24
    .line 254
    :cond_1
    const/4 v0, -0x1

    #@25
    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "captureHolder"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 251
    check-cast p1, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    #@2
    .end local p1    # "captureHolder":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->compareTo(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 260
    instance-of v1, p1, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    #@3
    if-eqz v1, :cond_0

    #@5
    nop

    #@6
    nop

    #@7
    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->compareTo(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)I

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public isCompleted()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 79
    iget-boolean v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsJpeg:Z

    #@3
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isJpegCompleted()Z

    #@6
    move-result v2

    #@7
    if-ne v1, v2, :cond_0

    #@9
    iget-boolean v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsPreview:Z

    #@b
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isPreviewCompleted()Z

    #@e
    move-result v2

    #@f
    if-ne v1, v2, :cond_0

    #@11
    const/4 v0, 0x1

    #@12
    :cond_0
    return v0
.end method

.method public isJpegCompleted()Z
    .locals 2

    #@0
    .prologue
    .line 75
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    #@2
    and-int/lit8 v0, v0, 0x3

    #@4
    const/4 v1, 0x3

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public isPreviewCompleted()Z
    .locals 2

    #@0
    .prologue
    .line 71
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    #@2
    and-int/lit8 v0, v0, 0xc

    #@4
    const/16 v1, 0xc

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public setJpegFailed()V
    .locals 1

    #@0
    .prologue
    .line 178
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsJpeg:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isJpegCompleted()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 179
    :cond_0
    return-void

    #@b
    .line 181
    :cond_1
    const/4 v0, 0x1

    #@c
    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mFailedJpeg:Z

    #@e
    .line 183
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    #@10
    or-int/lit8 v0, v0, 0x1

    #@12
    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    #@14
    .line 184
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    #@16
    or-int/lit8 v0, v0, 0x2

    #@18
    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    #@1a
    .line 185
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->tryComplete()V

    #@1d
    .line 174
    return-void
.end method

.method public setJpegProduced()V
    .locals 2

    #@0
    .prologue
    .line 161
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsJpeg:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 162
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 163
    const-string/jumbo v1, "setJpegProduced called for capture with no jpeg targets."

    #@9
    .line 162
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 165
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isCompleted()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 166
    new-instance v0, Ljava/lang/IllegalStateException;

    #@15
    .line 167
    const-string/jumbo v1, "setJpegProduced called on already completed request."

    #@18
    .line 166
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 170
    :cond_1
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    #@1e
    or-int/lit8 v0, v0, 0x1

    #@20
    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    #@22
    .line 171
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->tryComplete()V

    #@25
    .line 157
    return-void
.end method

.method public setJpegTimestamp(J)V
    .locals 5
    .param p1, "timestamp"    # J

    #@0
    .prologue
    .line 133
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsJpeg:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 134
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 135
    const-string/jumbo v1, "setJpegTimestamp called for capture with no jpeg targets."

    #@9
    .line 134
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 137
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isCompleted()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 138
    new-instance v0, Ljava/lang/IllegalStateException;

    #@15
    .line 139
    const-string/jumbo v1, "setJpegTimestamp called on already completed request."

    #@18
    .line 138
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 142
    :cond_1
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    #@1e
    or-int/lit8 v0, v0, 0x2

    #@20
    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    #@22
    .line 144
    iget-wide v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    #@24
    const-wide/16 v2, 0x0

    #@26
    cmp-long v0, v0, v2

    #@28
    if-nez v0, :cond_2

    #@2a
    .line 145
    iput-wide p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    #@2c
    .line 148
    :cond_2
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mHasStarted:Z

    #@2e
    if-nez v0, :cond_3

    #@30
    .line 149
    const/4 v0, 0x1

    #@31
    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mHasStarted:Z

    #@33
    .line 150
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->this$0:Landroid/hardware/camera2/legacy/CaptureCollector;

    #@35
    invoke-static {v0}, Landroid/hardware/camera2/legacy/CaptureCollector;->-get0(Landroid/hardware/camera2/legacy/CaptureCollector;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@38
    move-result-object v0

    #@39
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    #@3b
    iget-wide v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    #@3d
    .line 151
    const/4 v4, -0x1

    #@3e
    .line 150
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureStart(Landroid/hardware/camera2/legacy/RequestHolder;JI)Z

    #@41
    .line 154
    :cond_3
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->tryComplete()V

    #@44
    .line 129
    return-void
.end method

.method public setPreviewFailed()V
    .locals 1

    #@0
    .prologue
    .line 239
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsPreview:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isPreviewCompleted()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 240
    :cond_0
    return-void

    #@b
    .line 242
    :cond_1
    const/4 v0, 0x1

    #@c
    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mFailedPreview:Z

    #@e
    .line 244
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    #@10
    or-int/lit8 v0, v0, 0x4

    #@12
    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    #@14
    .line 245
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    #@16
    or-int/lit8 v0, v0, 0x8

    #@18
    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    #@1a
    .line 246
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->tryComplete()V

    #@1d
    .line 235
    return-void
.end method

.method public setPreviewProduced()V
    .locals 2

    #@0
    .prologue
    .line 222
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsPreview:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 223
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 224
    const-string/jumbo v1, "setPreviewProduced called for capture with no preview targets."

    #@9
    .line 223
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 226
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isCompleted()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 227
    new-instance v0, Ljava/lang/IllegalStateException;

    #@15
    .line 228
    const-string/jumbo v1, "setPreviewProduced called on already completed request."

    #@18
    .line 227
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 231
    :cond_1
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    #@1e
    or-int/lit8 v0, v0, 0x4

    #@20
    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    #@22
    .line 232
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->tryComplete()V

    #@25
    .line 218
    return-void
.end method

.method public setPreviewTimestamp(J)V
    .locals 5
    .param p1, "timestamp"    # J

    #@0
    .prologue
    .line 192
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsPreview:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 193
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 194
    const-string/jumbo v1, "setPreviewTimestamp called for capture with no preview targets."

    #@9
    .line 193
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 196
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isCompleted()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 197
    new-instance v0, Ljava/lang/IllegalStateException;

    #@15
    .line 198
    const-string/jumbo v1, "setPreviewTimestamp called on already completed request."

    #@18
    .line 197
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 201
    :cond_1
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    #@1e
    or-int/lit8 v0, v0, 0x8

    #@20
    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    #@22
    .line 203
    iget-wide v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    #@24
    const-wide/16 v2, 0x0

    #@26
    cmp-long v0, v0, v2

    #@28
    if-nez v0, :cond_2

    #@2a
    .line 204
    iput-wide p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    #@2c
    .line 207
    :cond_2
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsJpeg:Z

    #@2e
    if-nez v0, :cond_3

    #@30
    .line 208
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mHasStarted:Z

    #@32
    if-nez v0, :cond_3

    #@34
    .line 209
    const/4 v0, 0x1

    #@35
    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mHasStarted:Z

    #@37
    .line 210
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->this$0:Landroid/hardware/camera2/legacy/CaptureCollector;

    #@39
    invoke-static {v0}, Landroid/hardware/camera2/legacy/CaptureCollector;->-get0(Landroid/hardware/camera2/legacy/CaptureCollector;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@3c
    move-result-object v0

    #@3d
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    #@3f
    iget-wide v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    #@41
    .line 211
    const/4 v4, -0x1

    #@42
    .line 210
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureStart(Landroid/hardware/camera2/legacy/RequestHolder;JI)Z

    #@45
    .line 215
    :cond_3
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->tryComplete()V

    #@48
    .line 188
    return-void
.end method

.method public tryComplete()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 83
    iget-boolean v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mPreviewCompleted:Z

    #@3
    if-nez v3, :cond_0

    #@5
    iget-boolean v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsPreview:Z

    #@7
    if-eqz v3, :cond_0

    #@9
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isPreviewCompleted()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 84
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->this$0:Landroid/hardware/camera2/legacy/CaptureCollector;

    #@11
    invoke-static {v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->-wrap0(Landroid/hardware/camera2/legacy/CaptureCollector;)V

    #@14
    .line 85
    iput-boolean v8, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mPreviewCompleted:Z

    #@16
    .line 88
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isCompleted()Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_1

    #@1c
    iget-boolean v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mCompleted:Z

    #@1e
    if-eqz v3, :cond_2

    #@20
    .line 82
    :cond_1
    :goto_0
    return-void

    #@21
    .line 89
    :cond_2
    iget-boolean v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mFailedPreview:Z

    #@23
    if-nez v3, :cond_3

    #@25
    iget-boolean v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mFailedJpeg:Z

    #@27
    if-eqz v3, :cond_4

    #@29
    .line 90
    :cond_3
    iget-boolean v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mHasStarted:Z

    #@2b
    if-nez v3, :cond_5

    #@2d
    .line 92
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    #@2f
    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/RequestHolder;->failRequest()V

    #@32
    .line 93
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->this$0:Landroid/hardware/camera2/legacy/CaptureCollector;

    #@34
    invoke-static {v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->-get0(Landroid/hardware/camera2/legacy/CaptureCollector;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@37
    move-result-object v3

    #@38
    iget-object v4, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    #@3a
    iget-wide v6, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    #@3c
    .line 94
    const/4 v5, 0x3

    #@3d
    .line 93
    invoke-virtual {v3, v4, v6, v7, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureStart(Landroid/hardware/camera2/legacy/RequestHolder;JI)Z

    #@40
    .line 124
    :cond_4
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->this$0:Landroid/hardware/camera2/legacy/CaptureCollector;

    #@42
    invoke-static {v3, p0}, Landroid/hardware/camera2/legacy/CaptureCollector;->-wrap1(Landroid/hardware/camera2/legacy/CaptureCollector;Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)V

    #@45
    .line 125
    iput-boolean v8, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mCompleted:Z

    #@47
    goto :goto_0

    #@48
    .line 98
    :cond_5
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    #@4a
    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/RequestHolder;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    #@4d
    move-result-object v3

    #@4e
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    #@51
    move-result-object v3

    #@52
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@55
    move-result-object v2

    #@56
    .local v2, "targetSurface$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@59
    move-result v3

    #@5a
    if-eqz v3, :cond_4

    #@5c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5f
    move-result-object v1

    #@60
    check-cast v1, Landroid/view/Surface;

    #@62
    .line 100
    .local v1, "targetSurface":Landroid/view/Surface;
    :try_start_0
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    #@64
    invoke-virtual {v3, v1}, Landroid/hardware/camera2/legacy/RequestHolder;->jpegType(Landroid/view/Surface;)Z

    #@67
    move-result v3

    #@68
    if-eqz v3, :cond_7

    #@6a
    .line 101
    iget-boolean v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mFailedJpeg:Z

    #@6c
    if-eqz v3, :cond_6

    #@6e
    .line 102
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->this$0:Landroid/hardware/camera2/legacy/CaptureCollector;

    #@70
    invoke-static {v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->-get0(Landroid/hardware/camera2/legacy/CaptureCollector;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@73
    move-result-object v3

    #@74
    iget-object v4, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    #@76
    .line 103
    const/4 v5, 0x0

    #@77
    .line 104
    const/4 v6, 0x5

    #@78
    .line 102
    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureResult(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;ILjava/lang/Object;)Z
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    #@7b
    goto :goto_1

    #@7c
    .line 118
    :catch_0
    move-exception v0

    #@7d
    .line 119
    .local v0, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    const-string/jumbo v3, "CaptureCollector"

    #@80
    new-instance v4, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    const-string/jumbo v5, "Unexpected exception when querying Surface: "

    #@88
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v4

    #@8c
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v4

    #@90
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v4

    #@94
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@97
    goto :goto_1

    #@98
    .line 110
    .end local v0    # "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    :cond_7
    :try_start_1
    iget-boolean v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mFailedPreview:Z

    #@9a
    if-eqz v3, :cond_6

    #@9c
    .line 111
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->this$0:Landroid/hardware/camera2/legacy/CaptureCollector;

    #@9e
    invoke-static {v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->-get0(Landroid/hardware/camera2/legacy/CaptureCollector;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@a1
    move-result-object v3

    #@a2
    iget-object v4, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    #@a4
    .line 112
    const/4 v5, 0x0

    #@a5
    .line 113
    const/4 v6, 0x5

    #@a6
    .line 111
    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureResult(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;ILjava/lang/Object;)Z
    :try_end_1
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_1 .. :try_end_1} :catch_0

    #@a9
    goto :goto_1
.end method
