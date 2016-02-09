.class public final Landroid/hardware/camera2/legacy/RequestHolder$Builder;
.super Ljava/lang/Object;
.source "RequestHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/RequestHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mJpegSurfaceIds:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mNumJpegTargets:I

.field private final mNumPreviewTargets:I

.field private final mRepeating:Z

.field private final mRequest:Landroid/hardware/camera2/CaptureRequest;

.field private final mRequestId:I

.field private final mSubsequenceId:I


# direct methods
.method public constructor <init>(IILandroid/hardware/camera2/CaptureRequest;ZLjava/util/Collection;)V
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "subsequenceId"    # I
    .param p3, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p4, "repeating"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/hardware/camera2/CaptureRequest;",
            "Z",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 69
    .local p5, "jpegSurfaceIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 71
    const-string/jumbo v0, "request must not be null"

    #@6
    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 72
    iput p1, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mRequestId:I

    #@b
    .line 73
    iput p2, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mSubsequenceId:I

    #@d
    .line 74
    iput-object p3, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    #@f
    .line 75
    iput-boolean p4, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mRepeating:Z

    #@11
    .line 76
    iput-object p5, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mJpegSurfaceIds:Ljava/util/Collection;

    #@13
    .line 77
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    #@15
    invoke-direct {p0, v0}, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->numJpegTargets(Landroid/hardware/camera2/CaptureRequest;)I

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mNumJpegTargets:I

    #@1b
    .line 78
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    #@1d
    invoke-direct {p0, v0}, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->numPreviewTargets(Landroid/hardware/camera2/CaptureRequest;)I

    #@20
    move-result v0

    #@21
    iput v0, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mNumPreviewTargets:I

    #@23
    .line 70
    return-void
.end method

.method private jpegType(Landroid/view/Surface;)Z
    .locals 1
    .param p1, "s"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mJpegSurfaceIds:Ljava/util/Collection;

    #@2
    invoke-static {p1, v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->containsSurfaceId(Landroid/view/Surface;Ljava/util/Collection;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private numJpegTargets(Landroid/hardware/camera2/CaptureRequest;)I
    .locals 6
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;

    #@0
    .prologue
    .line 114
    const/4 v0, 0x0

    #@1
    .line 115
    .local v0, "count":I
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    #@4
    move-result-object v4

    #@5
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v3

    #@9
    .local v3, "s$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_1

    #@f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Landroid/view/Surface;

    #@15
    .line 117
    .local v2, "s":Landroid/view/Surface;
    :try_start_0
    invoke-direct {p0, v2}, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->jpegType(Landroid/view/Surface;)Z
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    move-result v4

    #@19
    if-eqz v4, :cond_0

    #@1b
    .line 118
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 120
    :catch_0
    move-exception v1

    #@1f
    .line 121
    .local v1, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    const-string/jumbo v4, "RequestHolder"

    #@22
    const-string/jumbo v5, "Surface abandoned, skipping..."

    #@25
    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@28
    goto :goto_0

    #@29
    .line 124
    .end local v1    # "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    .end local v2    # "s":Landroid/view/Surface;
    :cond_1
    return v0
.end method

.method private numPreviewTargets(Landroid/hardware/camera2/CaptureRequest;)I
    .locals 6
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;

    #@0
    .prologue
    .line 131
    const/4 v0, 0x0

    #@1
    .line 132
    .local v0, "count":I
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    #@4
    move-result-object v4

    #@5
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v3

    #@9
    .local v3, "s$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_1

    #@f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Landroid/view/Surface;

    #@15
    .line 134
    .local v2, "s":Landroid/view/Surface;
    :try_start_0
    invoke-direct {p0, v2}, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->previewType(Landroid/view/Surface;)Z
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    move-result v4

    #@19
    if-eqz v4, :cond_0

    #@1b
    .line 135
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 137
    :catch_0
    move-exception v1

    #@1f
    .line 138
    .local v1, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    const-string/jumbo v4, "RequestHolder"

    #@22
    const-string/jumbo v5, "Surface abandoned, skipping..."

    #@25
    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@28
    goto :goto_0

    #@29
    .line 141
    .end local v1    # "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    .end local v2    # "s":Landroid/view/Surface;
    :cond_1
    return v0
.end method

.method private previewType(Landroid/view/Surface;)Z
    .locals 1
    .param p1, "s"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    #@0
    .prologue
    .line 107
    invoke-direct {p0, p1}, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->jpegType(Landroid/view/Surface;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x1

    #@9
    goto :goto_0
.end method


# virtual methods
.method public build(J)Landroid/hardware/camera2/legacy/RequestHolder;
    .locals 11
    .param p1, "frameNumber"    # J

    #@0
    .prologue
    .line 152
    new-instance v1, Landroid/hardware/camera2/legacy/RequestHolder;

    #@2
    iget v2, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mRequestId:I

    #@4
    iget v3, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mSubsequenceId:I

    #@6
    iget-object v4, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    #@8
    iget-boolean v5, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mRepeating:Z

    #@a
    .line 153
    iget v8, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mNumJpegTargets:I

    #@c
    iget v9, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mNumPreviewTargets:I

    #@e
    .line 152
    const/4 v10, 0x0

    #@f
    move-wide v6, p1

    #@10
    invoke-direct/range {v1 .. v10}, Landroid/hardware/camera2/legacy/RequestHolder;-><init>(IILandroid/hardware/camera2/CaptureRequest;ZJIILandroid/hardware/camera2/legacy/RequestHolder;)V

    #@13
    return-object v1
.end method
