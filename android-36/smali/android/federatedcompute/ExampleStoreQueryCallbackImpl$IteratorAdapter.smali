.class public Landroid/federatedcompute/ExampleStoreQueryCallbackImpl$IteratorAdapter;
.super Landroid/federatedcompute/aidl/IExampleStoreIterator$Stub;
.source "ExampleStoreQueryCallbackImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/federatedcompute/ExampleStoreQueryCallbackImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IteratorAdapter"
.end annotation


# instance fields
.field private blacklist mClosed:Z

.field private final blacklist mIterator:Landroid/federatedcompute/ExampleStoreIterator;

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>(Landroid/federatedcompute/ExampleStoreIterator;)V
    .registers 3
    .param p1, "iterator"    # Landroid/federatedcompute/ExampleStoreIterator;

    .line 79
    invoke-direct {p0}, Landroid/federatedcompute/aidl/IExampleStoreIterator$Stub;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/federatedcompute/ExampleStoreQueryCallbackImpl$IteratorAdapter;->mLock:Ljava/lang/Object;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/federatedcompute/ExampleStoreQueryCallbackImpl$IteratorAdapter;->mClosed:Z

    .line 80
    iput-object p1, p0, Landroid/federatedcompute/ExampleStoreQueryCallbackImpl$IteratorAdapter;->mIterator:Landroid/federatedcompute/ExampleStoreIterator;

    .line 81
    return-void
.end method


# virtual methods
.method public blacklist close()V
    .registers 4

    .line 99
    iget-object v0, p0, Landroid/federatedcompute/ExampleStoreQueryCallbackImpl$IteratorAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_3
    iget-boolean v1, p0, Landroid/federatedcompute/ExampleStoreQueryCallbackImpl$IteratorAdapter;->mClosed:Z

    if-eqz v1, :cond_10

    .line 101
    const-string v1, "ExampleStoreQueryCallbackImpl"

    const-string v2, "IExampleStoreIterator.close called more than once"

    invoke-static {v1, v2}, Lcom/android/federatedcompute/internal/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    monitor-exit v0

    return-void

    .line 104
    :cond_10
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/federatedcompute/ExampleStoreQueryCallbackImpl$IteratorAdapter;->mClosed:Z

    .line 105
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_1a

    .line 106
    iget-object v0, p0, Landroid/federatedcompute/ExampleStoreQueryCallbackImpl$IteratorAdapter;->mIterator:Landroid/federatedcompute/ExampleStoreIterator;

    invoke-interface {v0}, Landroid/federatedcompute/ExampleStoreIterator;->close()V

    .line 107
    return-void

    .line 105
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public blacklist next(Landroid/federatedcompute/aidl/IExampleStoreIteratorCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/federatedcompute/aidl/IExampleStoreIteratorCallback;

    .line 85
    const-string v0, "callback must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Landroid/federatedcompute/ExampleStoreQueryCallbackImpl$IteratorAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_8
    iget-boolean v1, p0, Landroid/federatedcompute/ExampleStoreQueryCallbackImpl$IteratorAdapter;->mClosed:Z

    if-eqz v1, :cond_15

    .line 88
    const-string v1, "ExampleStoreQueryCallbackImpl"

    const-string v2, "IExampleStoreIterator.next called after close"

    invoke-static {v1, v2}, Lcom/android/federatedcompute/internal/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    monitor-exit v0

    return-void

    .line 91
    :cond_15
    new-instance v1, Landroid/federatedcompute/ExampleStoreQueryCallbackImpl$IteratorCallbackAdapter;

    invoke-direct {v1, p1, p0}, Landroid/federatedcompute/ExampleStoreQueryCallbackImpl$IteratorCallbackAdapter;-><init>(Landroid/federatedcompute/aidl/IExampleStoreIteratorCallback;Landroid/federatedcompute/ExampleStoreQueryCallbackImpl$IteratorAdapter;)V

    .line 93
    .local v1, "callbackAdapter":Landroid/federatedcompute/ExampleStoreQueryCallbackImpl$IteratorCallbackAdapter;
    iget-object v2, p0, Landroid/federatedcompute/ExampleStoreQueryCallbackImpl$IteratorAdapter;->mIterator:Landroid/federatedcompute/ExampleStoreIterator;

    invoke-interface {v2, v1}, Landroid/federatedcompute/ExampleStoreIterator;->next(Landroid/federatedcompute/ExampleStoreIterator$IteratorCallback;)V

    .line 94
    .end local v1    # "callbackAdapter":Landroid/federatedcompute/ExampleStoreQueryCallbackImpl$IteratorCallbackAdapter;
    monitor-exit v0

    .line 95
    return-void

    .line 94
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_21

    throw v1
.end method
