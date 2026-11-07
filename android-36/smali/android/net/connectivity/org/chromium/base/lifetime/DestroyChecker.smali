.class public Landroid/net/connectivity/org/chromium/base/lifetime/DestroyChecker;
.super Ljava/lang/Object;
.source "DestroyChecker.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/base/lifetime/Destroyable;


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist mIsDestroyed:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 23
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist checkNotDestroyed()V
    .registers 1

    .line 39
    nop

    .line 40
    return-void
.end method

.method public blacklist destroy()V
    .registers 2

    .line 28
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/lifetime/DestroyChecker;->checkNotDestroyed()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/lifetime/DestroyChecker;->mIsDestroyed:Z

    .line 30
    return-void
.end method

.method public blacklist isDestroyed()Z
    .registers 2

    .line 34
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/lifetime/DestroyChecker;->mIsDestroyed:Z

    return v0
.end method
