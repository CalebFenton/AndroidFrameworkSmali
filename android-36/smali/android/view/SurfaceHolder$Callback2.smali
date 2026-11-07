.class public interface abstract Landroid/view/SurfaceHolder$Callback2;
.super Ljava/lang/Object;
.source "SurfaceHolder.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback2"
.end annotation


# virtual methods
.method public abstract whitelist surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
.end method

.method public whitelist surfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "drawingFinished"    # Ljava/lang/Runnable;

    .line 148
    invoke-interface {p0, p1}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 149
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 150
    return-void
.end method
