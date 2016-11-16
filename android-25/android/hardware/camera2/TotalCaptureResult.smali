.class public final Landroid/hardware/camera2/TotalCaptureResult;
.super Landroid/hardware/camera2/CaptureResult;
.source "TotalCaptureResult.java"


# instance fields
.field private final mPartialResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionId:I


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/impl/CameraMetadataNative;I)V
    .locals 1
    .param p1, "results"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p2, "sequenceId"    # I

    #@0
    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CaptureResult;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;I)V

    #@3
    .line 84
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/hardware/camera2/TotalCaptureResult;->mPartialResults:Ljava/util/List;

    #@a
    .line 85
    const/4 v0, -0x1

    #@b
    iput v0, p0, Landroid/hardware/camera2/TotalCaptureResult;->mSessionId:I

    #@d
    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureResultExtras;Ljava/util/List;I)V
    .locals 1
    .param p1, "results"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p2, "parent"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "extras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;
    .param p5, "sessionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            "Landroid/hardware/camera2/CaptureRequest;",
            "Landroid/hardware/camera2/impl/CaptureResultExtras;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 64
    .local p4, "partials":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/CaptureResult;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureResultExtras;)V

    #@3
    .line 66
    if-nez p4, :cond_0

    #@5
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Landroid/hardware/camera2/TotalCaptureResult;->mPartialResults:Ljava/util/List;

    #@c
    .line 72
    :goto_0
    iput p5, p0, Landroid/hardware/camera2/TotalCaptureResult;->mSessionId:I

    #@e
    .line 63
    return-void

    #@f
    .line 69
    :cond_0
    iput-object p4, p0, Landroid/hardware/camera2/TotalCaptureResult;->mPartialResults:Ljava/util/List;

    #@11
    goto :goto_0
.end method


# virtual methods
.method public getPartialResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Landroid/hardware/camera2/TotalCaptureResult;->mPartialResults:Ljava/util/List;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSessionId()I
    .locals 1

    #@0
    .prologue
    .line 112
    iget v0, p0, Landroid/hardware/camera2/TotalCaptureResult;->mSessionId:I

    #@2
    return v0
.end method
