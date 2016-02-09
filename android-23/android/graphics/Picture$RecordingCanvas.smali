.class Landroid/graphics/Picture$RecordingCanvas;
.super Landroid/graphics/Canvas;
.source "Picture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Picture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecordingCanvas"
.end annotation


# instance fields
.field private final mPicture:Landroid/graphics/Picture;


# direct methods
.method public constructor <init>(Landroid/graphics/Picture;J)V
    .locals 0
    .param p1, "pict"    # Landroid/graphics/Picture;
    .param p2, "nativeCanvas"    # J

    #@0
    .prologue
    .line 193
    invoke-direct {p0, p2, p3}, Landroid/graphics/Canvas;-><init>(J)V

    #@3
    .line 194
    iput-object p1, p0, Landroid/graphics/Picture$RecordingCanvas;->mPicture:Landroid/graphics/Picture;

    #@5
    .line 192
    return-void
.end method


# virtual methods
.method public drawPicture(Landroid/graphics/Picture;)V
    .locals 2
    .param p1, "picture"    # Landroid/graphics/Picture;

    #@0
    .prologue
    .line 204
    iget-object v0, p0, Landroid/graphics/Picture$RecordingCanvas;->mPicture:Landroid/graphics/Picture;

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 205
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "Cannot draw a picture into its recording canvas"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 207
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    #@10
    .line 203
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 199
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "Cannot call setBitmap on a picture canvas"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method
