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
    .line 246
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
    .line 247
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
    .line 248
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
    .line 245
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
    .line 254
    instance-of v1, p1, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    #@3
    if-eqz v1, :cond_0

    #@5
    check-cast p1, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

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
    .line 172
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
    .line 173
    :cond_0
    return-void

    #@b
    .line 175
    :cond_1
    const/4 v0, 0x1

    #@c
    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mFailedJpeg:Z

    #@e
    .line 177
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    #@10
    or-int/lit8 v0, v0, 0x1

    #@12
    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    #@14
    .line 178
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    #@16
    or-int/lit8 v0, v0, 0x2

    #@18
    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    #@1a
    .line 179
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->tryComplete()V

    #@1d
    .line 168
    return-void
.end method

.method public setJpegProduced()V
    .locals 2

    #@0
    .prologue
    .line 155
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsJpeg:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 156
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 157
    const-string/jumbo v1, "setJpegProduced called for capture with no jpeg targets."

    #@9
    .line 156
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 159
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isCompleted()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 160
    new-instance v0, Ljava/lang/IllegalStateException;

    #@15
    .line 161
    const-string/jumbo v1, "setJpegProduced called on already completed request."

    #@18
    .line 160
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 164
    :cond_1
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    #@1e
    or-int/lit8 v0, v0, 0x1

    #@20
    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    #@22
    .line 165
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->tryComplete()V

    #@25
    .line 151
    return-void
.end method

.method public setJpegTimestamp(J)V
    .locals 5
    .param p1, "timestamp"    # J

    #@0
    .prologue
    .line 127
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsJpeg:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 128
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 129
    const-string/jumbo v1, "setJpegTimestamp called for capture with no jpeg targets."

    #@9
    .line 128
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 131
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isCompleted()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 132
    new-instance v0, Ljava/lang/IllegalStateException;

    #@15
    .line 133
    const-string/jumbo v1, "setJpegTimestamp called on already completed request."

    #@18
    .line 132
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 136
    :cond_1
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    #@1e
    or-int/lit8 v0, v0, 0x2

    #@20
    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    #@22
    .line 138
    iget-wide v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    #@24
    const-wide/16 v2, 0x0

    #@26
    cmp-long v0, v0, v2

    #@28
    if-nez v0, :cond_2

    #@2a
    .line 139
    iput-wide p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    #@2c
    .line 142
    :cond_2
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mHasStarted:Z

    #@2e
    if-nez v0, :cond_3

    #@30
    .line 143
    const/4 v0, 0x1

    #@31
    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mHasStarted:Z

    #@33
    .line 144
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
    .line 145
    const/4 v4, -0x1

    #@3e
    .line 144
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureStart(Landroid/hardware/camera2/legacy/RequestHolder;JI)Z

    #@41
    .line 148
    :cond_3
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->tryComplete()V

    #@44
    .line 123
    return-void
.end method

.method public setPreviewFailed()V
    .locals 1

    #@0
    .prologue
    .line 233
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
    .line 234
    :cond_0
    return-void

    #@b
    .line 236
    :cond_1
    const/4 v0, 0x1

    #@c
    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mFailedPreview:Z

    #@e
    .line 238
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    #@10
    or-int/lit8 v0, v0, 0x4

    #@12
    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    #@14
    .line 239
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    #@16
    or-int/lit8 v0, v0, 0x8

    #@18
    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    #@1a
    .line 240
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->tryComplete()V

    #@1d
    .line 229
    return-void
.end method

.method public setPreviewProduced()V
    .locals 2

    #@0
    .prologue
    .line 216
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsPreview:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 217
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 218
    const-string/jumbo v1, "setPreviewProduced called for capture with no preview targets."

    #@9
    .line 217
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 220
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isCompleted()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 221
    new-instance v0, Ljava/lang/IllegalStateException;

    #@15
    .line 222
    const-string/jumbo v1, "setPreviewProduced called on already completed request."

    #@18
    .line 221
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 225
    :cond_1
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    #@1e
    or-int/lit8 v0, v0, 0x4

    #@20
    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    #@22
    .line 226
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->tryComplete()V

    #@25
    .line 212
    return-void
.end method

.method public setPreviewTimestamp(J)V
    .locals 5
    .param p1, "timestamp"    # J

    #@0
    .prologue
    .line 186
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsPreview:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 187
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 188
    const-string/jumbo v1, "setPreviewTimestamp called for capture with no preview targets."

    #@9
    .line 187
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 190
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isCompleted()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 191
    new-instance v0, Ljava/lang/IllegalStateException;

    #@15
    .line 192
    const-string/jumbo v1, "setPreviewTimestamp called on already completed request."

    #@18
    .line 191
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 195
    :cond_1
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    #@1e
    or-int/lit8 v0, v0, 0x8

    #@20
    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    #@22
    .line 197
    iget-wide v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    #@24
    const-wide/16 v2, 0x0

    #@26
    cmp-long v0, v0, v2

    #@28
    if-nez v0, :cond_2

    #@2a
    .line 198
    iput-wide p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    #@2c
    .line 201
    :cond_2
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsJpeg:Z

    #@2e
    if-nez v0, :cond_3

    #@30
    .line 202
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mHasStarted:Z

    #@32
    if-nez v0, :cond_3

    #@34
    .line 203
    const/4 v0, 0x1

    #@35
    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mHasStarted:Z

    #@37
    .line 204
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
    .line 205
    const/4 v4, -0x1

    #@42
    .line 204
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureStart(Landroid/hardware/camera2/legacy/RequestHolder;JI)Z

    #@45
    .line 209
    :cond_3
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->tryComplete()V

    #@48
    .line 182
    return-void
.end method

.method public tryComplete()V
    .locals 7

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x5

    #@2
    const/4 v6, 0x1

    #@3
    .line 83
    iget-boolean v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mPreviewCompleted:Z

    #@5
    if-nez v1, :cond_0

    #@7
    iget-boolean v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsPreview:Z

    #@9
    if-eqz v1, :cond_0

    #@b
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isPreviewCompleted()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 84
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->this$0:Landroid/hardware/camera2/legacy/CaptureCollector;

    #@13
    invoke-static {v1}, Landroid/hardware/camera2/legacy/CaptureCollector;->-wrap0(Landroid/hardware/camera2/legacy/CaptureCollector;)V

    #@16
    .line 85
    iput-boolean v6, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mPreviewCompleted:Z

    #@18
    .line 88
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isCompleted()Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_1

    #@1e
    iget-boolean v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mCompleted:Z

    #@20
    if-eqz v1, :cond_2

    #@22
    .line 82
    :cond_1
    :goto_0
    return-void

    #@23
    .line 89
    :cond_2
    iget-boolean v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mFailedPreview:Z

    #@25
    if-nez v1, :cond_3

    #@27
    iget-boolean v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mFailedJpeg:Z

    #@29
    if-eqz v1, :cond_4

    #@2b
    .line 90
    :cond_3
    iget-boolean v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mHasStarted:Z

    #@2d
    if-nez v1, :cond_5

    #@2f
    .line 92
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    #@31
    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/RequestHolder;->failRequest()V

    #@34
    .line 93
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->this$0:Landroid/hardware/camera2/legacy/CaptureCollector;

    #@36
    invoke-static {v1}, Landroid/hardware/camera2/legacy/CaptureCollector;->-get0(Landroid/hardware/camera2/legacy/CaptureCollector;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@39
    move-result-object v1

    #@3a
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    #@3c
    iget-wide v4, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    #@3e
    .line 94
    const/4 v3, 0x3

    #@3f
    .line 93
    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureStart(Landroid/hardware/camera2/legacy/RequestHolder;JI)Z

    #@42
    .line 118
    :cond_4
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->this$0:Landroid/hardware/camera2/legacy/CaptureCollector;

    #@44
    invoke-static {v1, p0}, Landroid/hardware/camera2/legacy/CaptureCollector;->-wrap1(Landroid/hardware/camera2/legacy/CaptureCollector;Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)V

    #@47
    .line 119
    iput-boolean v6, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mCompleted:Z

    #@49
    goto :goto_0

    #@4a
    .line 98
    :cond_5
    iget-boolean v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mFailedPreview:Z

    #@4c
    if-eqz v1, :cond_6

    #@4e
    .line 99
    const-string/jumbo v1, "CaptureCollector"

    #@51
    new-instance v2, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v3, "Preview buffers dropped for request: "

    #@59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v2

    #@5d
    .line 100
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    #@5f
    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/RequestHolder;->getRequestId()I

    #@62
    move-result v3

    #@63
    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@66
    move-result-object v2

    #@67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v2

    #@6b
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6e
    .line 101
    const/4 v0, 0x0

    #@6f
    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    #@71
    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/RequestHolder;->numPreviewTargets()I

    #@74
    move-result v1

    #@75
    if-ge v0, v1, :cond_6

    #@77
    .line 102
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->this$0:Landroid/hardware/camera2/legacy/CaptureCollector;

    #@79
    invoke-static {v1}, Landroid/hardware/camera2/legacy/CaptureCollector;->-get0(Landroid/hardware/camera2/legacy/CaptureCollector;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@7c
    move-result-object v1

    #@7d
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    #@7f
    invoke-virtual {v1, v2, v5, v4}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureResult(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;I)Z

    #@82
    .line 101
    add-int/lit8 v0, v0, 0x1

    #@84
    goto :goto_1

    #@85
    .line 107
    .end local v0    # "i":I
    :cond_6
    iget-boolean v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mFailedJpeg:Z

    #@87
    if-eqz v1, :cond_4

    #@89
    .line 108
    const-string/jumbo v1, "CaptureCollector"

    #@8c
    new-instance v2, Ljava/lang/StringBuilder;

    #@8e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@91
    const-string/jumbo v3, "Jpeg buffers dropped for request: "

    #@94
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v2

    #@98
    .line 109
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    #@9a
    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/RequestHolder;->getRequestId()I

    #@9d
    move-result v3

    #@9e
    .line 108
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v2

    #@a2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v2

    #@a6
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@a9
    .line 110
    const/4 v0, 0x0

    #@aa
    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    #@ac
    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/RequestHolder;->numJpegTargets()I

    #@af
    move-result v1

    #@b0
    if-ge v0, v1, :cond_4

    #@b2
    .line 111
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->this$0:Landroid/hardware/camera2/legacy/CaptureCollector;

    #@b4
    invoke-static {v1}, Landroid/hardware/camera2/legacy/CaptureCollector;->-get0(Landroid/hardware/camera2/legacy/CaptureCollector;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@b7
    move-result-object v1

    #@b8
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    #@ba
    invoke-virtual {v1, v2, v5, v4}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureResult(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;I)Z

    #@bd
    .line 110
    add-int/lit8 v0, v0, 0x1

    #@bf
    goto :goto_2
.end method
