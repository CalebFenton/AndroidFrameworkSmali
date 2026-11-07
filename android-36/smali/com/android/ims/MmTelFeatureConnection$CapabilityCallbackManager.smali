.class Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;
.super Lcom/android/ims/ImsCallbackAdapterManager;
.source "MmTelFeatureConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/MmTelFeatureConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CapabilityCallbackManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/ims/ImsCallbackAdapterManager<",
        "Landroid/telephony/ims/aidl/IImsCapabilityCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/ims/MmTelFeatureConnection;


# direct methods
.method public constructor blacklist <init>(Lcom/android/ims/MmTelFeatureConnection;Landroid/content/Context;Ljava/lang/Object;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "lock"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    .line 153
    iget v0, p1, Lcom/android/ims/MmTelFeatureConnection;->mSlotId:I

    iget p1, p1, Lcom/android/ims/MmTelFeatureConnection;->mSubId:I

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/android/ims/ImsCallbackAdapterManager;-><init>(Landroid/content/Context;Ljava/lang/Object;II)V

    .line 154
    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist registerCallback(Landroid/os/IInterface;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 151
    check-cast p1, Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    invoke-virtual {p0, p1}, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->registerCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    return-void
.end method

.method public blacklist registerCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 6
    .param p1, "localCallback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 159
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    iget-object v0, v0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 161
    :try_start_5
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v1}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 162
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    iget-object v2, v2, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-static {v1, v2}, Lcom/android/ims/MmTelFeatureConnection;->-$$Nest$mgetServiceInterface(Lcom/android/ims/MmTelFeatureConnection;Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_14} :catch_52
    .catchall {:try_start_5 .. :try_end_14} :catchall_50

    .line 166
    .local v1, "binder":Landroid/telephony/ims/aidl/IImsMmTelFeature;
    nop

    .line 167
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_50

    .line 168
    if-eqz v1, :cond_26

    .line 170
    :try_start_18
    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->addCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1d

    .line 174
    nop

    .line 181
    return-void

    .line 171
    :catch_1d
    move-exception v0

    .line 172
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, " CapabilityCallbackManager - MmTelFeature binder is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 176
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MmTelFeatureConn ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    iget v2, v2, Lcom/android/ims/MmTelFeatureConnection;->mSlotId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CapabilityCallbackManager, register: Couldn\'t get binder"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "CapabilityCallbackManager: MmTelFeature is not available!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    .end local v1    # "binder":Landroid/telephony/ims/aidl/IImsMmTelFeature;
    :catchall_50
    move-exception v1

    goto :goto_5b

    .line 163
    :catch_52
    move-exception v1

    .line 164
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_53
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "CapabilityCallbackManager - MmTelFeature binder is dead."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;
    .end local p1    # "localCallback":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    throw v2

    .line 167
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;
    .restart local p1    # "localCallback":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    :goto_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_53 .. :try_end_5c} :catchall_50

    throw v1
.end method

.method public bridge synthetic blacklist unregisterCallback(Landroid/os/IInterface;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 151
    check-cast p1, Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    invoke-virtual {p0, p1}, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->unregisterCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    return-void
.end method

.method public blacklist unregisterCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 7
    .param p1, "localCallback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 186
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    iget-object v0, v0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :try_start_5
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v1}, Lcom/android/ims/MmTelFeatureConnection;->isBinderAlive()Z

    move-result v1

    if-nez v1, :cond_31

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MmTelFeatureConn ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    iget v2, v2, Lcom/android/ims/MmTelFeatureConnection;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapabilityCallbackManager, unregister: binder is not alive"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    monitor-exit v0

    return-void

    .line 192
    :cond_31
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    iget-object v2, v2, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-static {v1, v2}, Lcom/android/ims/MmTelFeatureConnection;->-$$Nest$mgetServiceInterface(Lcom/android/ims/MmTelFeatureConnection;Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    .line 193
    .local v1, "binder":Landroid/telephony/ims/aidl/IImsMmTelFeature;
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_5 .. :try_end_3c} :catchall_9e

    .line 194
    if-eqz v1, :cond_7b

    .line 196
    :try_start_3e
    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->removeCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_41} :catch_42
    .catch Ljava/lang/IllegalStateException; {:try_start_3e .. :try_end_41} :catch_42

    .line 200
    :goto_41
    goto :goto_9d

    .line 197
    :catch_42
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MmTelFeatureConn ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    iget v3, v3, Lcom/android/ims/MmTelFeatureConnection;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CapabilityCallbackManager, unregister: Binder is dead. Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 199
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 198
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_41

    .line 202
    :cond_7b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MmTelFeatureConn ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    iget v2, v2, Lcom/android/ims/MmTelFeatureConnection;->mSlotId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CapabilityCallbackManager, unregister: binder is null."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :goto_9d
    return-void

    .line 193
    .end local v1    # "binder":Landroid/telephony/ims/aidl/IImsMmTelFeature;
    :catchall_9e
    move-exception v1

    :try_start_9f
    monitor-exit v0
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_9e

    throw v1
.end method
