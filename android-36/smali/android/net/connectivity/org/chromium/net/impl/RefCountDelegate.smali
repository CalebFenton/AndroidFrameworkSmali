.class public final Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;
.super Ljava/lang/Object;
.source "RefCountDelegate.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private final blacklist mCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final blacklist mDelegate:Ljava/lang/Runnable;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 13
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "delegate"    # Ljava/lang/Runnable;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;->mDelegate:Ljava/lang/Runnable;

    .line 19
    return-void
.end method


# virtual methods
.method public blacklist decrement()V
    .registers 3

    .line 27
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 28
    .local v0, "updated_count":I
    nop

    .line 29
    if-nez v0, :cond_e

    .line 30
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;->mDelegate:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 32
    :cond_e
    return-void
.end method

.method public blacklist increment()V
    .registers 2

    .line 22
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 23
    .local v0, "updated_count":I
    nop

    .line 24
    return-void
.end method
