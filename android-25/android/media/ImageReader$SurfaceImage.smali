.class Landroid/media/ImageReader$SurfaceImage;
.super Landroid/media/Image;
.source "ImageReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ImageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceImage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ImageReader$SurfaceImage$SurfacePlane;
    }
.end annotation


# instance fields
.field private mFormat:I

.field private mIsDetached:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mNativeBuffer:J

.field private mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

.field private mTimestamp:J

.field final synthetic this$0:Landroid/media/ImageReader;


# direct methods
.method static synthetic -wrap0(Landroid/media/ImageReader$SurfaceImage;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/media/ImageReader$SurfaceImage;->clearSurfacePlanes()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/media/ImageReader$SurfaceImage;Z)V
    .locals 0
    .param p1, "detached"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/ImageReader$SurfaceImage;->setDetached(Z)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/media/ImageReader;I)V
    .locals 2
    .param p1, "this$0"    # Landroid/media/ImageReader;
    .param p2, "format"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 693
    iput-object p1, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    #@3
    invoke-direct {p0}, Landroid/media/Image;-><init>()V

    #@6
    .line 887
    iput v1, p0, Landroid/media/ImageReader$SurfaceImage;->mFormat:I

    #@8
    .line 889
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@a
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@d
    iput-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsDetached:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@f
    .line 694
    iput p2, p0, Landroid/media/ImageReader$SurfaceImage;->mFormat:I

    #@11
    .line 693
    return-void
.end method

.method private clearSurfacePlanes()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 805
    iget-boolean v1, p0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    #@3
    if-eqz v1, :cond_1

    #@5
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 806
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    #@c
    array-length v1, v1

    #@d
    if-ge v0, v1, :cond_1

    #@f
    .line 807
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    #@11
    aget-object v1, v1, v0

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 808
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    #@17
    aget-object v1, v1, v0

    #@19
    invoke-static {v1}, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->-wrap0(Landroid/media/ImageReader$SurfaceImage$SurfacePlane;)V

    #@1c
    .line 809
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    #@1e
    aput-object v2, v1, v0

    #@20
    .line 806
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 803
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private synchronized native declared-synchronized nativeCreatePlanes(II)[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;
.end method

.method private synchronized native declared-synchronized nativeGetFormat(I)I
.end method

.method private synchronized native declared-synchronized nativeGetHeight()I
.end method

.method private synchronized native declared-synchronized nativeGetWidth()I
.end method

.method private setDetached(Z)V
    .locals 1
    .param p1, "detached"    # Z

    #@0
    .prologue
    .line 799
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    #@3
    .line 800
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsDetached:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    #@8
    .line 798
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    #@0
    .prologue
    .line 699
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    #@2
    invoke-static {v0, p0}, Landroid/media/ImageReader;->-wrap0(Landroid/media/ImageReader;Landroid/media/Image;)V

    #@5
    .line 698
    return-void
.end method

.method protected final finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 774
    :try_start_0
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .line 776
    invoke-super {p0}, Landroid/media/Image;->finalize()V

    #@6
    .line 772
    return-void

    #@7
    .line 775
    :catchall_0
    move-exception v0

    #@8
    .line 776
    invoke-super {p0}, Landroid/media/Image;->finalize()V

    #@b
    .line 775
    throw v0
.end method

.method public getFormat()I
    .locals 2

    #@0
    .prologue
    .line 708
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    #@3
    .line 709
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    #@5
    invoke-virtual {v1}, Landroid/media/ImageReader;->getImageFormat()I

    #@8
    move-result v0

    #@9
    .line 711
    .local v0, "readerFormat":I
    const/16 v1, 0x22

    #@b
    if-ne v0, v1, :cond_0

    #@d
    .end local v0    # "readerFormat":I
    :goto_0
    iput v0, p0, Landroid/media/ImageReader$SurfaceImage;->mFormat:I

    #@f
    .line 713
    iget v1, p0, Landroid/media/ImageReader$SurfaceImage;->mFormat:I

    #@11
    return v1

    #@12
    .line 712
    .restart local v0    # "readerFormat":I
    :cond_0
    invoke-direct {p0, v0}, Landroid/media/ImageReader$SurfaceImage;->nativeGetFormat(I)I

    #@15
    move-result v0

    #@16
    goto :goto_0
.end method

.method public getHeight()I
    .locals 2

    #@0
    .prologue
    .line 734
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    #@3
    .line 736
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->getFormat()I

    #@6
    move-result v1

    #@7
    sparse-switch v1, :sswitch_data_0

    #@a
    .line 743
    invoke-direct {p0}, Landroid/media/ImageReader$SurfaceImage;->nativeGetHeight()I

    #@d
    move-result v0

    #@e
    .line 745
    .local v0, "height":I
    :goto_0
    return v0

    #@f
    .line 740
    .end local v0    # "height":I
    :sswitch_0
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    #@11
    invoke-virtual {v1}, Landroid/media/ImageReader;->getHeight()I

    #@14
    move-result v0

    #@15
    .restart local v0    # "height":I
    goto :goto_0

    #@16
    .line 736
    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_0
        0x100 -> :sswitch_0
        0x101 -> :sswitch_0
    .end sparse-switch
.end method

.method getNativeContext()J
    .locals 2

    #@0
    .prologue
    .line 794
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    #@3
    .line 795
    iget-wide v0, p0, Landroid/media/ImageReader$SurfaceImage;->mNativeBuffer:J

    #@5
    return-wide v0
.end method

.method getOwner()Landroid/media/ImageReader;
    .locals 1

    #@0
    .prologue
    .line 788
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    #@3
    .line 789
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    #@5
    return-object v0
.end method

.method bridge synthetic getOwner()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 787
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->getOwner()Landroid/media/ImageReader;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getPlanes()[Landroid/media/Image$Plane;
    .locals 2

    #@0
    .prologue
    .line 762
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    #@3
    .line 764
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 765
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    #@9
    invoke-static {v0}, Landroid/media/ImageReader;->-get5(Landroid/media/ImageReader;)I

    #@c
    move-result v0

    #@d
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    #@f
    invoke-static {v1}, Landroid/media/ImageReader;->-get1(Landroid/media/ImageReader;)I

    #@12
    move-result v1

    #@13
    invoke-direct {p0, v0, v1}, Landroid/media/ImageReader$SurfaceImage;->nativeCreatePlanes(II)[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    #@19
    .line 768
    :cond_0
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    #@1b
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, [Landroid/media/Image$Plane;

    #@21
    return-object v0
.end method

.method public getReader()Landroid/media/ImageReader;
    .locals 1

    #@0
    .prologue
    .line 703
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    #@2
    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    #@0
    .prologue
    .line 750
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    #@3
    .line 751
    iget-wide v0, p0, Landroid/media/ImageReader$SurfaceImage;->mTimestamp:J

    #@5
    return-wide v0
.end method

.method public getWidth()I
    .locals 2

    #@0
    .prologue
    .line 718
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    #@3
    .line 720
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->getFormat()I

    #@6
    move-result v1

    #@7
    sparse-switch v1, :sswitch_data_0

    #@a
    .line 727
    invoke-direct {p0}, Landroid/media/ImageReader$SurfaceImage;->nativeGetWidth()I

    #@d
    move-result v0

    #@e
    .line 729
    .local v0, "width":I
    :goto_0
    return v0

    #@f
    .line 724
    .end local v0    # "width":I
    :sswitch_0
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    #@11
    invoke-virtual {v1}, Landroid/media/ImageReader;->getWidth()I

    #@14
    move-result v0

    #@15
    .restart local v0    # "width":I
    goto :goto_0

    #@16
    .line 720
    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_0
        0x100 -> :sswitch_0
        0x101 -> :sswitch_0
    .end sparse-switch
.end method

.method isAttachable()Z
    .locals 1

    #@0
    .prologue
    .line 782
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    #@3
    .line 783
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsDetached:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public setTimestamp(J)V
    .locals 1
    .param p1, "timestampNs"    # J

    #@0
    .prologue
    .line 756
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    #@3
    .line 757
    iput-wide p1, p0, Landroid/media/ImageReader$SurfaceImage;->mTimestamp:J

    #@5
    .line 755
    return-void
.end method
