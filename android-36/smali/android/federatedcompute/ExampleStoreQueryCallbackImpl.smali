.class public Landroid/federatedcompute/ExampleStoreQueryCallbackImpl;
.super Ljava/lang/Object;
.source "ExampleStoreQueryCallbackImpl.java"

# interfaces
.implements Landroid/federatedcompute/ExampleStoreService$QueryCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/federatedcompute/ExampleStoreQueryCallbackImpl$IteratorAdapter;,
        Landroid/federatedcompute/ExampleStoreQueryCallbackImpl$IteratorCallbackAdapter;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ExampleStoreQueryCallbackImpl"


# instance fields
.field private final blacklist mExampleStoreQueryCallback:Landroid/federatedcompute/aidl/IExampleStoreCallback;


# direct methods
.method public constructor blacklist <init>(Landroid/federatedcompute/aidl/IExampleStoreCallback;)V
    .registers 2
    .param p1, "exampleStoreQueryCallback"    # Landroid/federatedcompute/aidl/IExampleStoreCallback;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroid/federatedcompute/ExampleStoreQueryCallbackImpl;->mExampleStoreQueryCallback:Landroid/federatedcompute/aidl/IExampleStoreCallback;

    .line 44
    return-void
.end method


# virtual methods
.method public blacklist onStartQueryFailure(I)V
    .registers 5
    .param p1, "errorCode"    # I

    .line 61
    :try_start_0
    iget-object v0, p0, Landroid/federatedcompute/ExampleStoreQueryCallbackImpl;->mExampleStoreQueryCallback:Landroid/federatedcompute/aidl/IExampleStoreCallback;

    invoke-interface {v0, p1}, Landroid/federatedcompute/aidl/IExampleStoreCallback;->onStartQueryFailure(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 64
    goto :goto_e

    .line 62
    :catch_6
    move-exception v0

    .line 63
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ExampleStoreQueryCallbackImpl"

    const-string v2, "onIteratorNextFailure AIDL call failed, closing iterator"

    invoke-static {v1, v0, v2}, Lcom/android/federatedcompute/internal/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 65
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public blacklist onStartQuerySuccess(Landroid/federatedcompute/ExampleStoreIterator;)V
    .registers 6
    .param p1, "iterator"    # Landroid/federatedcompute/ExampleStoreIterator;

    .line 48
    const-string v0, "iterator must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v0, Landroid/federatedcompute/ExampleStoreQueryCallbackImpl$IteratorAdapter;

    invoke-direct {v0, p1}, Landroid/federatedcompute/ExampleStoreQueryCallbackImpl$IteratorAdapter;-><init>(Landroid/federatedcompute/ExampleStoreIterator;)V

    .line 51
    .local v0, "iteratorAdapter":Landroid/federatedcompute/ExampleStoreQueryCallbackImpl$IteratorAdapter;
    :try_start_a
    iget-object v1, p0, Landroid/federatedcompute/ExampleStoreQueryCallbackImpl;->mExampleStoreQueryCallback:Landroid/federatedcompute/aidl/IExampleStoreCallback;

    invoke-interface {v1, v0}, Landroid/federatedcompute/aidl/IExampleStoreCallback;->onStartQuerySuccess(Landroid/federatedcompute/aidl/IExampleStoreIterator;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 55
    goto :goto_1b

    .line 52
    :catch_10
    move-exception v1

    .line 53
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ExampleStoreQueryCallbackImpl"

    const-string v3, "onIteratorNextSuccess AIDL call failed, closing iterator"

    invoke-static {v2, v1, v3}, Lcom/android/federatedcompute/internal/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 54
    invoke-virtual {v0}, Landroid/federatedcompute/ExampleStoreQueryCallbackImpl$IteratorAdapter;->close()V

    .line 56
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1b
    return-void
.end method
