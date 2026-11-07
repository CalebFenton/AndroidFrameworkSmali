.class public interface abstract Landroid/view/TextureView$SurfaceTextureListener;
.super Ljava/lang/Object;
.source "TextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/TextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SurfaceTextureListener"
.end annotation


# virtual methods
.method public abstract whitelist onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
.end method

.method public abstract whitelist onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
.end method

.method public abstract whitelist onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
.end method

.method public abstract whitelist onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
.end method
