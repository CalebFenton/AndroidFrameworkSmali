.class public interface abstract Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;
.super Ljava/lang/Object;
.source "BinderCallHeavyHitterWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderCallHeavyHitterWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BinderCallHeavyHitterListener"
.end annotation


# virtual methods
.method public abstract blacklist onHeavyHit(Ljava/util/List;IFJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;",
            ">;IFJ)V"
        }
    .end annotation
.end method
