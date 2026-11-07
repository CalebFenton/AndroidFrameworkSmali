.class public interface abstract Landroid/view/SurfaceControl$OnJankDataListener;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnJankDataListener"
.end annotation


# virtual methods
.method public abstract whitelist onJankDataAvailable(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/SurfaceControl$JankData;",
            ">;)V"
        }
    .end annotation
.end method
