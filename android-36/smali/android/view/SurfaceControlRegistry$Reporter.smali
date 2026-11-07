.class public interface abstract Landroid/view/SurfaceControlRegistry$Reporter;
.super Ljava/lang/Object;
.source "SurfaceControlRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControlRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Reporter"
.end annotation


# virtual methods
.method public abstract blacklist onMaxLayersExceeded(Ljava/util/WeakHashMap;ILjava/io/PrintWriter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/WeakHashMap<",
            "Landroid/view/SurfaceControl;",
            "Ljava/lang/Long;",
            ">;I",
            "Ljava/io/PrintWriter;",
            ")V"
        }
    .end annotation
.end method
