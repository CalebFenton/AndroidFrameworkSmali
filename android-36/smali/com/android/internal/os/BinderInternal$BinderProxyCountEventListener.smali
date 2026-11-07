.class public interface abstract Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListener;
.super Ljava/lang/Object;
.source "BinderInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BinderProxyCountEventListener"
.end annotation


# virtual methods
.method public abstract blacklist onLimitReached(I)V
.end method

.method public blacklist onWarningThresholdReached(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 246
    return-void
.end method
