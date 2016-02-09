.class public final Landroid/hardware/camera2/CaptureRequest$Builder;
.super Ljava/lang/Object;
.source "CaptureRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CaptureRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mRequest:Landroid/hardware/camera2/CaptureRequest;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZI)V
    .locals 2
    .param p1, "template"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p2, "reprocess"    # Z
    .param p3, "reprocessableSessionId"    # I

    #@0
    .prologue
    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 526
    new-instance v0, Landroid/hardware/camera2/CaptureRequest;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, p1, p2, p3, v1}, Landroid/hardware/camera2/CaptureRequest;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILandroid/hardware/camera2/CaptureRequest;)V

    #@9
    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    #@b
    .line 525
    return-void
.end method


# virtual methods
.method public addTarget(Landroid/view/Surface;)V
    .locals 1
    .param p1, "outputTarget"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 541
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    #@2
    invoke-static {v0}, Landroid/hardware/camera2/CaptureRequest;->-get1(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/HashSet;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@9
    .line 540
    return-void
.end method

.method public build()Landroid/hardware/camera2/CaptureRequest;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 623
    new-instance v0, Landroid/hardware/camera2/CaptureRequest;

    #@3
    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    #@5
    invoke-direct {v0, v1, v2, v2}, Landroid/hardware/camera2/CaptureRequest;-><init>(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest;)V

    #@8
    return-object v0
.end method

.method public get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<TT;>;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 578
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    #@2
    invoke-static {v0}, Landroid/hardware/camera2/CaptureRequest;->-get0(Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 630
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    #@2
    invoke-static {v0}, Landroid/hardware/camera2/CaptureRequest;->-get0(Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isEmpty()Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public removeTarget(Landroid/view/Surface;)V
    .locals 1
    .param p1, "outputTarget"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 552
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    #@2
    invoke-static {v0}, Landroid/hardware/camera2/CaptureRequest;->-get1(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/HashSet;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@9
    .line 551
    return-void
.end method

.method public set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<TT;>;TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 564
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    #@2
    invoke-static {v0}, Landroid/hardware/camera2/CaptureRequest;->-get0(Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    #@9
    .line 563
    return-void
.end method

.method public setPartOfCHSRequestList(Z)V
    .locals 1
    .param p1, "partOfCHSList"    # Z

    #@0
    .prologue
    .line 606
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    #@2
    invoke-static {v0, p1}, Landroid/hardware/camera2/CaptureRequest;->-set0(Landroid/hardware/camera2/CaptureRequest;Z)Z

    #@5
    .line 605
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 593
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    #@2
    invoke-static {v0, p1}, Landroid/hardware/camera2/CaptureRequest;->-set1(Landroid/hardware/camera2/CaptureRequest;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 592
    return-void
.end method
