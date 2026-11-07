.class public interface abstract Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;
.super Ljava/lang/Object;
.source "LockPatternChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCheckCallback"
.end annotation


# virtual methods
.method public blacklist onCancelled()V
    .registers 1

    .line 35
    return-void
.end method

.method public abstract blacklist onChecked(ZI)V
.end method

.method public blacklist onEarlyMatched()V
    .registers 1

    .line 21
    return-void
.end method
