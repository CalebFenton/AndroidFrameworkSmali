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
.method static synthetic -wrap0(Landroid/media/ImageReader$SurfaceImage;II)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "idx"    # I
    .param p2, "readerFormat"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/media/ImageReader$SurfaceImage;->nativeImageGetBuffer(II)Ljava/nio/ByteBuffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/media/ImageReader$SurfaceImage;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/media/ImageReader$SurfaceImage;->clearSurfacePlanes()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/media/ImageReader$SurfaceImage;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/media/ImageReader$SurfaceImage;->createSurfacePlanes()V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Landroid/media/ImageReader$SurfaceImage;Z)V
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
    .line 654
    iput-object p1, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    #@3
    invoke-direct {p0}, Landroid/media/Image;-><init>()V

    #@6
    .line 843
    iput v1, p0, Landroid/media/ImageReader$SurfaceImage;->mFormat:I

    #@8
    .line 845
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@a
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@d
    iput-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsDetached:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@f
    .line 655
    iput p2, p0, Landroid/media/ImageReader$SurfaceImage;->mFormat:I

    #@11
    .line 654
    return-void
.end method

.method private clearSurfacePlanes()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 761
    iget-boolean v1, p0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 762
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    #@8
    array-length v1, v1

    #@9
    if-ge v0, v1, :cond_1

    #@b
    .line 763
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    #@d
    aget-object v1, v1, v0

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 764
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    #@13
    aget-object v1, v1, v0

    #@15
    invoke-static {v1}, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->-wrap0(Landroid/media/ImageReader$SurfaceImage$SurfacePlane;)V

    #@18
    .line 765
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    #@1a
    aput-object v2, v1, v0

    #@1c
    .line 762
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 760
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private createSurfacePlanes()V
    .locals 3

    #@0
    .prologue
    .line 772
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    #@2
    invoke-static {v1}, Landroid/media/ImageReader;->-get3(Landroid/media/ImageReader;)I

    #@5
    move-result v1

    #@6
    new-array v1, v1, [Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    #@8
    iput-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    #@a
    .line 773
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    #@d
    invoke-static {v1}, Landroid/media/ImageReader;->-get3(Landroid/media/ImageReader;)I

    #@10
    move-result v1

    #@11
    if-ge v0, v1, :cond_0

    #@13
    .line 774
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    #@15
    iget-object v2, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    #@17
    invoke-static {v2}, Landroid/media/ImageReader;->-get0(Landroid/media/ImageReader;)I

    #@1a
    move-result v2

    #@1b
    invoke-direct {p0, v0, v2}, Landroid/media/ImageReader$SurfaceImage;->nativeCreatePlane(II)Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    #@1e
    move-result-object v2

    #@1f
    aput-object v2, v1, v0

    #@21
    .line 773
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 771
    :cond_0
    return-void
.end method

.method private synchronized native declared-synchronized nativeCreatePlane(II)Landroid/media/ImageReader$SurfaceImage$SurfacePlane;
.end method

.method private synchronized native declared-synchronized nativeGetFormat(I)I
.end method

.method private synchronized native declared-synchronized nativeGetHeight(I)I
.end method

.method private synchronized native declared-synchronized nativeGetWidth(I)I
.end method

.method private synchronized native declared-synchronized nativeImageGetBuffer(II)Ljava/nio/ByteBuffer;
.end method

.method private setDetached(Z)V
    .locals 1
    .param p1, "detached"    # Z

    #@0
    .prologue
    .line 756
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    #@3
    .line 757
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsDetached:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    #@8
    .line 755
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    #@0
    .prologue
    .line 660
    iget-boolean v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 661
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    #@6
    invoke-static {v0, p0}, Landroid/media/ImageReader;->-wrap0(Landroid/media/ImageReader;Landroid/media/Image;)V

    #@9
    .line 659
    :cond_0
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
    .line 731
    :try_start_0
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .line 733
    invoke-super {p0}, Landroid/media/Image;->finalize()V

    #@6
    .line 729
    return-void

    #@7
    .line 732
    :catchall_0
    move-exception v0

    #@8
    .line 733
    invoke-super {p0}, Landroid/media/Image;->finalize()V

    #@b
    .line 732
    throw v0
.end method

.method public getFormat()I
    .locals 2

    #@0
    .prologue
    .line 671
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    #@3
    .line 672
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    #@5
    invoke-virtual {v1}, Landroid/media/ImageReader;->getImageFormat()I

    #@8
    move-result v0

    #@9
    .line 674
    .local v0, "readerFormat":I
    const/16 v1, 0x22

    #@b
    if-ne v0, v1, :cond_0

    #@d
    .end local v0    # "readerFormat":I
    :goto_0
    iput v0, p0, Landroid/media/ImageReader$SurfaceImage;->mFormat:I

    #@f
    .line 676
    iget v1, p0, Landroid/media/ImageReader$SurfaceImage;->mFormat:I

    #@11
    return v1

    #@12
    .line 675
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
    .line 696
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    #@3
    .line 698
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->getFormat()I

    #@6
    move-result v1

    #@7
    packed-switch v1, :pswitch_data_0

    #@a
    .line 704
    iget v1, p0, Landroid/media/ImageReader$SurfaceImage;->mFormat:I

    #@c
    invoke-direct {p0, v1}, Landroid/media/ImageReader$SurfaceImage;->nativeGetHeight(I)I

    #@f
    move-result v0

    #@10
    .line 706
    .local v0, "height":I
    :goto_0
    return v0

    #@11
    .line 701
    .end local v0    # "height":I
    :pswitch_0
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    #@13
    invoke-virtual {v1}, Landroid/media/ImageReader;->getHeight()I

    #@16
    move-result v0

    #@17
    .restart local v0    # "height":I
    goto :goto_0

    #@18
    .line 698
    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method getNativeContext()J
    .locals 2

    #@0
    .prologue
    .line 751
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    #@3
    .line 752
    iget-wide v0, p0, Landroid/media/ImageReader$SurfaceImage;->mNativeBuffer:J

    #@5
    return-wide v0
.end method

.method getOwner()Landroid/media/ImageReader;
    .locals 1

    #@0
    .prologue
    .line 745
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    #@3
    .line 746
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    #@5
    return-object v0
.end method

.method bridge synthetic getOwner()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 744
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->getOwner()Landroid/media/ImageReader;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getPlanes()[Landroid/media/Image$Plane;
    .locals 1

    #@0
    .prologue
    .line 723
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    #@3
    .line 725
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    #@5
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, [Landroid/media/Image$Plane;

    #@b
    return-object v0
.end method

.method public getReader()Landroid/media/ImageReader;
    .locals 1

    #@0
    .prologue
    .line 666
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    #@2
    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    #@0
    .prologue
    .line 711
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    #@3
    .line 712
    iget-wide v0, p0, Landroid/media/ImageReader$SurfaceImage;->mTimestamp:J

    #@5
    return-wide v0
.end method

.method public getWidth()I
    .locals 2

    #@0
    .prologue
    .line 681
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    #@3
    .line 683
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->getFormat()I

    #@6
    move-result v1

    #@7
    packed-switch v1, :pswitch_data_0

    #@a
    .line 689
    iget v1, p0, Landroid/media/ImageReader$SurfaceImage;->mFormat:I

    #@c
    invoke-direct {p0, v1}, Landroid/media/ImageReader$SurfaceImage;->nativeGetWidth(I)I

    #@f
    move-result v0

    #@10
    .line 691
    .local v0, "width":I
    :goto_0
    return v0

    #@11
    .line 686
    .end local v0    # "width":I
    :pswitch_0
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    #@13
    invoke-virtual {v1}, Landroid/media/ImageReader;->getWidth()I

    #@16
    move-result v0

    #@17
    .restart local v0    # "width":I
    goto :goto_0

    #@18
    .line 683
    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method isAttachable()Z
    .locals 1

    #@0
    .prologue
    .line 739
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    #@3
    .line 740
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
    .line 717
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    #@3
    .line 718
    iput-wide p1, p0, Landroid/media/ImageReader$SurfaceImage;->mTimestamp:J

    #@5
    .line 716
    return-void
.end method
