.class public Landroid/hardware/camera2/legacy/BurstHolder;
.super Ljava/lang/Object;
.source "BurstHolder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BurstHolder"


# instance fields
.field private final mRepeating:Z

.field private final mRequestBuilders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/camera2/legacy/RequestHolder$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestId:I


# direct methods
.method public constructor <init>(IZ[Landroid/hardware/camera2/CaptureRequest;Ljava/util/Collection;)V
    .locals 9
    .param p1, "requestId"    # I
    .param p2, "repeating"    # Z
    .param p3, "requests"    # [Landroid/hardware/camera2/CaptureRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ[",
            "Landroid/hardware/camera2/CaptureRequest;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 41
    .local p4, "jpegSurfaceIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/hardware/camera2/legacy/BurstHolder;->mRequestBuilders:Ljava/util/ArrayList;

    #@a
    .line 44
    const/4 v2, 0x0

    #@b
    .line 45
    .local v2, "i":I
    const/4 v0, 0x0

    #@c
    array-length v7, p3

    #@d
    move v6, v0

    #@e
    :goto_0
    if-ge v6, v7, :cond_0

    #@10
    aget-object v3, p3, v6

    #@12
    .line 46
    .local v3, "r":Landroid/hardware/camera2/CaptureRequest;
    iget-object v8, p0, Landroid/hardware/camera2/legacy/BurstHolder;->mRequestBuilders:Ljava/util/ArrayList;

    #@14
    new-instance v0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;

    #@16
    move v1, p1

    #@17
    move v4, p2

    #@18
    move-object v5, p4

    #@19
    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/legacy/RequestHolder$Builder;-><init>(IILandroid/hardware/camera2/CaptureRequest;ZLjava/util/Collection;)V

    #@1c
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1f
    .line 48
    add-int/lit8 v2, v2, 0x1

    #@21
    .line 45
    add-int/lit8 v0, v6, 0x1

    #@23
    move v6, v0

    #@24
    goto :goto_0

    #@25
    .line 50
    .end local v3    # "r":Landroid/hardware/camera2/CaptureRequest;
    :cond_0
    iput-boolean p2, p0, Landroid/hardware/camera2/legacy/BurstHolder;->mRepeating:Z

    #@27
    .line 51
    iput p1, p0, Landroid/hardware/camera2/legacy/BurstHolder;->mRequestId:I

    #@29
    .line 42
    return-void
.end method


# virtual methods
.method public getNumberOfRequests()I
    .locals 1

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Landroid/hardware/camera2/legacy/BurstHolder;->mRequestBuilders:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getRequestId()I
    .locals 1

    #@0
    .prologue
    .line 58
    iget v0, p0, Landroid/hardware/camera2/legacy/BurstHolder;->mRequestId:I

    #@2
    return v0
.end method

.method public isRepeating()Z
    .locals 1

    #@0
    .prologue
    .line 65
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/BurstHolder;->mRepeating:Z

    #@2
    return v0
.end method

.method public produceRequestHolders(J)Ljava/util/List;
    .locals 7
    .param p1, "frameNumber"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/legacy/RequestHolder;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 82
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 83
    .local v2, "holders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/legacy/RequestHolder;>;"
    const/4 v3, 0x0

    #@6
    .line 84
    .local v3, "i":I
    iget-object v4, p0, Landroid/hardware/camera2/legacy/BurstHolder;->mRequestBuilders:Ljava/util/ArrayList;

    #@8
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v1

    #@c
    .local v1, "b$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_0

    #@12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;

    #@18
    .line 85
    .local v0, "b":Landroid/hardware/camera2/legacy/RequestHolder$Builder;
    int-to-long v4, v3

    #@19
    add-long/2addr v4, p1

    #@1a
    invoke-virtual {v0, v4, v5}, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->build(J)Landroid/hardware/camera2/legacy/RequestHolder;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@21
    .line 86
    add-int/lit8 v3, v3, 0x1

    #@23
    goto :goto_0

    #@24
    .line 88
    .end local v0    # "b":Landroid/hardware/camera2/legacy/RequestHolder$Builder;
    :cond_0
    return-object v2
.end method
