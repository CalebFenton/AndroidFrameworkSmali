.class public final Landroid/federatedcompute/ExampleStoreQueryCallbackImpl$IteratorCallbackAdapter;
.super Ljava/lang/Object;
.source "ExampleStoreQueryCallbackImpl.java"

# interfaces
.implements Landroid/federatedcompute/ExampleStoreIterator$IteratorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/federatedcompute/ExampleStoreQueryCallbackImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IteratorCallbackAdapter"
.end annotation


# instance fields
.field private final blacklist mExampleStoreIteratorCallback:Landroid/federatedcompute/aidl/IExampleStoreIteratorCallback;

.field private final blacklist mIteratorAdapter:Landroid/federatedcompute/ExampleStoreQueryCallbackImpl$IteratorAdapter;


# direct methods
.method public constructor blacklist <init>(Landroid/federatedcompute/aidl/IExampleStoreIteratorCallback;Landroid/federatedcompute/ExampleStoreQueryCallbackImpl$IteratorAdapter;)V
    .registers 3
    .param p1, "exampleStoreIteratorCallback"    # Landroid/federatedcompute/aidl/IExampleStoreIteratorCallback;
    .param p2, "iteratorAdapter"    # Landroid/federatedcompute/ExampleStoreQueryCallbackImpl$IteratorAdapter;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Landroid/federatedcompute/ExampleStoreQueryCallbackImpl$IteratorCallbackAdapter;->mExampleStoreIteratorCallback:Landroid/federatedcompute/aidl/IExampleStoreIteratorCallback;

    .line 125
    iput-object p2, p0, Landroid/federatedcompute/ExampleStoreQueryCallbackImpl$IteratorCallbackAdapter;->mIteratorAdapter:Landroid/federatedcompute/ExampleStoreQueryCallbackImpl$IteratorAdapter;

    .line 126
    return-void
.end method


# virtual methods
.method public blacklist onIteratorNextFailure(I)V
    .registers 5
    .param p1, "errorCode"    # I

    .line 143
    :try_start_0
    iget-object v0, p0, Landroid/federatedcompute/ExampleStoreQueryCallbackImpl$IteratorCallbackAdapter;->mExampleStoreIteratorCallback:Landroid/federatedcompute/aidl/IExampleStoreIteratorCallback;

    invoke-interface {v0, p1}, Landroid/federatedcompute/aidl/IExampleStoreIteratorCallback;->onIteratorNextFailure(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 147
    goto :goto_13

    .line 144
    :catch_6
    move-exception v0

    .line 145
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ExampleStoreQueryCallbackImpl"

    const-string v2, "onIteratorNextFailure AIDL call failed, closing iterator"

    invoke-static {v1, v0, v2}, Lcom/android/federatedcompute/internal/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 146
    iget-object v1, p0, Landroid/federatedcompute/ExampleStoreQueryCallbackImpl$IteratorCallbackAdapter;->mIteratorAdapter:Landroid/federatedcompute/ExampleStoreQueryCallbackImpl$IteratorAdapter;

    invoke-virtual {v1}, Landroid/federatedcompute/ExampleStoreQueryCallbackImpl$IteratorAdapter;->close()V

    .line 148
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_13
    return-void
.end method

.method public blacklist onIteratorNextSuccess(Landroid/os/Bundle;)Z
    .registers 5
    .param p1, "result"    # Landroid/os/Bundle;

    .line 131
    :try_start_0
    iget-object v0, p0, Landroid/federatedcompute/ExampleStoreQueryCallbackImpl$IteratorCallbackAdapter;->mExampleStoreIteratorCallback:Landroid/federatedcompute/aidl/IExampleStoreIteratorCallback;

    invoke-interface {v0, p1}, Landroid/federatedcompute/aidl/IExampleStoreIteratorCallback;->onIteratorNextSuccess(Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 132
    const/4 v0, 0x1

    return v0

    .line 133
    :catch_7
    move-exception v0

    .line 134
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ExampleStoreQueryCallbackImpl"

    const-string v2, "onIteratorNextSuccess AIDL call failed, closing iterator"

    invoke-static {v1, v0, v2}, Lcom/android/federatedcompute/internal/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 135
    iget-object v1, p0, Landroid/federatedcompute/ExampleStoreQueryCallbackImpl$IteratorCallbackAdapter;->mIteratorAdapter:Landroid/federatedcompute/ExampleStoreQueryCallbackImpl$IteratorAdapter;

    invoke-virtual {v1}, Landroid/federatedcompute/ExampleStoreQueryCallbackImpl$IteratorAdapter;->close()V

    .line 137
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method
