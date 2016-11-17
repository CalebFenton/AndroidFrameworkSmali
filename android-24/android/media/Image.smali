.class public abstract Landroid/media/Image;
.super Ljava/lang/Object;
.source "Image.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Image$Plane;
    }
.end annotation


# instance fields
.field private mCropRect:Landroid/graphics/Rect;

.field protected mIsImageValid:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/media/Image;->mIsImageValid:Z

    #@6
    .line 58
    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 221
    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    #@4
    .line 223
    iget-object v0, p0, Landroid/media/Image;->mCropRect:Landroid/graphics/Rect;

    #@6
    if-nez v0, :cond_0

    #@8
    .line 224
    new-instance v0, Landroid/graphics/Rect;

    #@a
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    #@d
    move-result v1

    #@e
    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    #@11
    move-result v2

    #@12
    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    #@15
    return-object v0

    #@16
    .line 226
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    #@18
    iget-object v1, p0, Landroid/media/Image;->mCropRect:Landroid/graphics/Rect;

    #@1a
    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@1d
    return-object v0
.end method

.method public abstract getFormat()I
.end method

.method public abstract getHeight()I
.end method

.method getNativeContext()J
    .locals 2

    #@0
    .prologue
    .line 327
    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    #@3
    .line 329
    const-wide/16 v0, 0x0

    #@5
    return-wide v0
.end method

.method getOwner()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 310
    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    #@3
    .line 312
    const/4 v0, 0x0

    #@4
    return-object v0
.end method

.method public abstract getPlanes()[Landroid/media/Image$Plane;
.end method

.method public abstract getTimestamp()J
.end method

.method public abstract getWidth()I
.end method

.method isAttachable()Z
    .locals 1

    #@0
    .prologue
    .line 289
    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    #@3
    .line 291
    const/4 v0, 0x0

    #@4
    return v0
.end method

.method public setCropRect(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "cropRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 237
    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    #@4
    .line 239
    if-eqz p1, :cond_0

    #@6
    .line 240
    new-instance v0, Landroid/graphics/Rect;

    #@8
    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@b
    .line 241
    .end local p1    # "cropRect":Landroid/graphics/Rect;
    .local v0, "cropRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    #@e
    move-result v1

    #@f
    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    #@12
    move-result v2

    #@13
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->intersect(IIII)Z

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_1

    #@19
    .line 242
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    #@1c
    move-object p1, v0

    #@1d
    .line 245
    .end local v0    # "cropRect":Landroid/graphics/Rect;
    .restart local p1    # "cropRect":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    iput-object p1, p0, Landroid/media/Image;->mCropRect:Landroid/graphics/Rect;

    #@1f
    .line 236
    return-void

    #@20
    .end local p1    # "cropRect":Landroid/graphics/Rect;
    .restart local v0    # "cropRect":Landroid/graphics/Rect;
    :cond_1
    move-object p1, v0

    #@21
    .end local v0    # "cropRect":Landroid/graphics/Rect;
    .restart local p1    # "cropRect":Landroid/graphics/Rect;
    goto :goto_0
.end method

.method public setTimestamp(J)V
    .locals 0
    .param p1, "timestamp"    # J

    #@0
    .prologue
    .line 208
    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    #@3
    .line 209
    return-void
.end method

.method protected throwISEIfImageIsInvalid()V
    .locals 2

    #@0
    .prologue
    .line 67
    iget-boolean v0, p0, Landroid/media/Image;->mIsImageValid:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 68
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Image is already closed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 66
    :cond_0
    return-void
.end method
