.class public final Landroid/media/MediaFormat$QpOffsetRect;
.super Ljava/lang/Object;
.source "MediaFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QpOffsetRect"
.end annotation


# instance fields
.field private blacklist mContour:Landroid/graphics/Rect;

.field private blacklist mQpOffset:I


# direct methods
.method public constructor whitelist <init>(Landroid/graphics/Rect;I)V
    .registers 3
    .param p1, "contour"    # Landroid/graphics/Rect;
    .param p2, "qpOffset"    # I

    .line 1840
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1841
    iput-object p1, p0, Landroid/media/MediaFormat$QpOffsetRect;->mContour:Landroid/graphics/Rect;

    .line 1842
    iput p2, p0, Landroid/media/MediaFormat$QpOffsetRect;->mQpOffset:I

    .line 1843
    return-void
.end method

.method public static whitelist flattenToString(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaFormat$QpOffsetRect;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1872
    .local p0, "qpOffsetRects":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaFormat$QpOffsetRect;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1873
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaFormat$QpOffsetRect;

    .line 1874
    .local v2, "qpOffsetRect":Landroid/media/MediaFormat$QpOffsetRect;
    invoke-virtual {v2}, Landroid/media/MediaFormat$QpOffsetRect;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1875
    .end local v2    # "qpOffsetRect":Landroid/media/MediaFormat$QpOffsetRect;
    goto :goto_9

    .line 1876
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public whitelist flattenToString()Ljava/lang/String;
    .registers 6

    .line 1862
    iget-object v0, p0, Landroid/media/MediaFormat$QpOffsetRect;->mContour:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaFormat$QpOffsetRect;->mContour:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaFormat$QpOffsetRect;->mContour:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 1863
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaFormat$QpOffsetRect;->mContour:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/media/MediaFormat$QpOffsetRect;->mQpOffset:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 1862
    const-string v1, "%d,%d-%d,%d=%d;"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist set(Landroid/graphics/Rect;I)V
    .registers 3
    .param p1, "contour"    # Landroid/graphics/Rect;
    .param p2, "qpOffset"    # I

    .line 1852
    iput-object p1, p0, Landroid/media/MediaFormat$QpOffsetRect;->mContour:Landroid/graphics/Rect;

    .line 1853
    iput p2, p0, Landroid/media/MediaFormat$QpOffsetRect;->mQpOffset:I

    .line 1854
    return-void
.end method
