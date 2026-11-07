.class public abstract Lcom/android/ims/ImsCallbackAdapterManager;
.super Ljava/lang/Object;
.source "ImsCallbackAdapterManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ImsCallbackAM"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mRemoteCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final blacklist mSlotId:I

.field private final blacklist mSubId:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Ljava/lang/Object;II)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "slotId"    # I
    .param p4, "subId"    # I

    .line 37
    .local p0, "this":Lcom/android/ims/ImsCallbackAdapterManager;, "Lcom/android/ims/ImsCallbackAdapterManager<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsCallbackAdapterManager;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    .line 38
    iput-object p1, p0, Lcom/android/ims/ImsCallbackAdapterManager;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/android/ims/ImsCallbackAdapterManager;->mLock:Ljava/lang/Object;

    .line 40
    iput p3, p0, Lcom/android/ims/ImsCallbackAdapterManager;->mSlotId:I

    .line 41
    iput p4, p0, Lcom/android/ims/ImsCallbackAdapterManager;->mSubId:I

    .line 42
    return-void
.end method


# virtual methods
.method public final blacklist addCallback(Landroid/os/IInterface;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 47
    .local p0, "this":Lcom/android/ims/ImsCallbackAdapterManager;, "Lcom/android/ims/ImsCallbackAdapterManager<TT;>;"
    .local p1, "localCallback":Landroid/os/IInterface;, "TT;"
    iget-object v0, p0, Lcom/android/ims/ImsCallbackAdapterManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 51
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCallbackAdapterManager;->registerCallback(Landroid/os/IInterface;)V

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsCallbackAM ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ims/ImsCallbackAdapterManager;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Local callback added: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v1, p0, Lcom/android/ims/ImsCallbackAdapterManager;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 55
    monitor-exit v0

    .line 56
    return-void

    .line 55
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public blacklist addCallbackForSubscription(Landroid/os/IInterface;I)V
    .registers 6
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 60
    .local p0, "this":Lcom/android/ims/ImsCallbackAdapterManager;, "Lcom/android/ims/ImsCallbackAdapterManager<TT;>;"
    .local p1, "localCallback":Landroid/os/IInterface;, "TT;"
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_33

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsCallbackAM ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/ImsCallbackAdapterManager;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/ImsCallbackAdapterManager;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "add callback: invalid subId."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void

    .line 64
    :cond_33
    iget v0, p0, Lcom/android/ims/ImsCallbackAdapterManager;->mSubId:I

    if-ne v0, p2, :cond_42

    .line 76
    iget-object v0, p0, Lcom/android/ims/ImsCallbackAdapterManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_3a
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCallbackAdapterManager;->addCallback(Landroid/os/IInterface;)V

    .line 78
    monitor-exit v0

    .line 79
    return-void

    .line 78
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_3f

    throw v1

    .line 71
    :cond_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsCallbackAM ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/ImsCallbackAdapterManager;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/ImsCallbackAdapterManager;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add callback: inactive subID detected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImsService is not available for the subscription specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final blacklist close()V
    .registers 6

    .line 96
    .local p0, "this":Lcom/android/ims/ImsCallbackAdapterManager;, "Lcom/android/ims/ImsCallbackAdapterManager<TT;>;"
    iget-object v0, p0, Lcom/android/ims/ImsCallbackAdapterManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/ImsCallbackAdapterManager;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 98
    .local v1, "lastCallbackIndex":I
    move v2, v1

    .local v2, "ii":I
    :goto_c
    if-ltz v2, :cond_20

    .line 99
    iget-object v3, p0, Lcom/android/ims/ImsCallbackAdapterManager;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v3

    .line 100
    .local v3, "callbackItem":Landroid/os/IInterface;, "TT;"
    invoke-virtual {p0, v3}, Lcom/android/ims/ImsCallbackAdapterManager;->unregisterCallback(Landroid/os/IInterface;)V

    .line 101
    iget-object v4, p0, Lcom/android/ims/ImsCallbackAdapterManager;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 98
    nop

    .end local v3    # "callbackItem":Landroid/os/IInterface;, "TT;"
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    .line 103
    .end local v2    # "ii":I
    :cond_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsCallbackAM ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/ims/ImsCallbackAdapterManager;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Closing connection and clearing callbacks"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    nop

    .end local v1    # "lastCallbackIndex":I
    monitor-exit v0

    .line 105
    return-void

    .line 104
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw v1
.end method

.method public abstract blacklist registerCallback(Landroid/os/IInterface;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public final blacklist removeCallback(Landroid/os/IInterface;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 83
    .local p0, "this":Lcom/android/ims/ImsCallbackAdapterManager;, "Lcom/android/ims/ImsCallbackAdapterManager<TT;>;"
    .local p1, "localCallback":Landroid/os/IInterface;, "TT;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsCallbackAM ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/ImsCallbackAdapterManager;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Local callback removed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/android/ims/ImsCallbackAdapterManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_34
    iget-object v1, p0, Lcom/android/ims/ImsCallbackAdapterManager;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCallbackAdapterManager;->unregisterCallback(Landroid/os/IInterface;)V

    .line 89
    :cond_3f
    monitor-exit v0

    .line 90
    return-void

    .line 89
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_34 .. :try_end_43} :catchall_41

    throw v1
.end method

.method public abstract blacklist unregisterCallback(Landroid/os/IInterface;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
