.class Landroid/graphics/Bitmap$BitmapFinalizer;
.super Ljava/lang/Object;
.source "Bitmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapFinalizer"
.end annotation


# instance fields
.field private mNativeAllocationByteCount:I

.field private mNativeBitmap:J


# direct methods
.method static synthetic -get0(Landroid/graphics/Bitmap$BitmapFinalizer;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J

    #@2
    return-wide v0
.end method

.method constructor <init>(J)V
    .locals 1
    .param p1, "nativeBitmap"    # J

    #@0
    .prologue
    .line 1645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1646
    iput-wide p1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J

    #@5
    .line 1645
    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 6

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 1662
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    .line 1666
    invoke-virtual {p0, v2}, Landroid/graphics/Bitmap$BitmapFinalizer;->setNativeAllocationByteCount(I)V

    #@9
    .line 1667
    iget-wide v2, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J

    #@b
    invoke-static {v2, v3}, Landroid/graphics/Bitmap;->-wrap1(J)V

    #@e
    .line 1668
    :goto_0
    iput-wide v4, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J

    #@10
    .line 1660
    return-void

    #@11
    .line 1663
    :catch_0
    move-exception v0

    #@12
    .line 1666
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, v2}, Landroid/graphics/Bitmap$BitmapFinalizer;->setNativeAllocationByteCount(I)V

    #@15
    .line 1667
    iget-wide v2, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J

    #@17
    invoke-static {v2, v3}, Landroid/graphics/Bitmap;->-wrap1(J)V

    #@1a
    goto :goto_0

    #@1b
    .line 1665
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    #@1c
    .line 1666
    invoke-virtual {p0, v2}, Landroid/graphics/Bitmap$BitmapFinalizer;->setNativeAllocationByteCount(I)V

    #@1f
    .line 1667
    iget-wide v2, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J

    #@21
    invoke-static {v2, v3}, Landroid/graphics/Bitmap;->-wrap1(J)V

    #@24
    .line 1668
    iput-wide v4, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J

    #@26
    .line 1665
    throw v1
.end method

.method public setNativeAllocationByteCount(I)V
    .locals 2
    .param p1, "nativeByteCount"    # I

    #@0
    .prologue
    .line 1650
    iget v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeAllocationByteCount:I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1651
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@7
    move-result-object v0

    #@8
    iget v1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeAllocationByteCount:I

    #@a
    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    #@d
    .line 1653
    :cond_0
    iput p1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeAllocationByteCount:I

    #@f
    .line 1654
    iget v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeAllocationByteCount:I

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 1655
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@16
    move-result-object v0

    #@17
    iget v1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeAllocationByteCount:I

    #@19
    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    #@1c
    .line 1649
    :cond_1
    return-void
.end method
