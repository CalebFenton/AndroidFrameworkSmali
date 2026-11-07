.class Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;
.super Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub;
.source "WifiAwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/WifiAwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WifiAwareEventCallbackProxy"
.end annotation


# instance fields
.field private final blacklist mAttachCallback:Landroid/net/wifi/aware/AttachCallback;

.field private final greylist-max-o mAwareManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/net/wifi/aware/WifiAwareManager;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mBinder:Landroid/os/Binder;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mIdentityChangedListener:Landroid/net/wifi/aware/IdentityChangedListener;


# direct methods
.method public static synthetic blacklist $r8$lambda$9kEfQZZmiYu0_7Nv0f_FaIVHfnk(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->lambda$onConnectSuccess$0(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$F0x5yS35JQJU0sm1VOcRYnmIr0I(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->lambda$onConnectFail$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$NG9CS5T4TVj9sSlcwMBlpIb4gy8(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;I[B)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->lambda$onClusterIdChanged$4(I[B)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$aWow5vhso-yQk363gGNnbJ8iUhE(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;[B)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->lambda$onIdentityChanged$2([B)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$lgtzbTrq-vSG21sOaT5anYWEHIM(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->lambda$onAttachTerminate$3()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/net/wifi/aware/WifiAwareManager;Ljava/util/concurrent/Executor;Landroid/os/Binder;Landroid/net/wifi/aware/AttachCallback;Landroid/net/wifi/aware/IdentityChangedListener;)V
    .registers 7
    .param p1, "mgr"    # Landroid/net/wifi/aware/WifiAwareManager;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "binder"    # Landroid/os/Binder;
    .param p4, "attachCallback"    # Landroid/net/wifi/aware/AttachCallback;
    .param p5, "identityChangedListener"    # Landroid/net/wifi/aware/IdentityChangedListener;

    .line 933
    invoke-direct {p0}, Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub;-><init>()V

    .line 934
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mAwareManager:Ljava/lang/ref/WeakReference;

    .line 935
    iput-object p2, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 936
    iput-object p3, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mBinder:Landroid/os/Binder;

    .line 937
    iput-object p4, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mAttachCallback:Landroid/net/wifi/aware/AttachCallback;

    .line 938
    iput-object p5, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mIdentityChangedListener:Landroid/net/wifi/aware/IdentityChangedListener;

    .line 939
    return-void
.end method

.method private synthetic blacklist lambda$onAttachTerminate$3()V
    .registers 4

    .line 993
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mAwareManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 994
    .local v0, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    if-nez v0, :cond_12

    .line 995
    const-string v1, "WifiAwareManager"

    const-string v2, "WifiAwareEventCallbackProxy: handleMessage post GC"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    return-void

    .line 998
    :cond_12
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mAwareManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 999
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mAttachCallback:Landroid/net/wifi/aware/AttachCallback;

    invoke-virtual {v1}, Landroid/net/wifi/aware/AttachCallback;->onAwareSessionTerminated()V

    .line 1000
    return-void
.end method

.method private synthetic blacklist lambda$onClusterIdChanged$4(I[B)V
    .registers 8
    .param p1, "clusterEventType"    # I
    .param p2, "clusterId"    # [B

    .line 1009
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mAwareManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 1010
    .local v0, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    const-string v1, "WifiAwareManager"

    if-nez v0, :cond_12

    .line 1011
    const-string v2, "WifiAwareEventCallbackProxy: handleMessage post GC"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    return-void

    .line 1014
    :cond_12
    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mIdentityChangedListener:Landroid/net/wifi/aware/IdentityChangedListener;

    if-nez v2, :cond_1c

    .line 1015
    const-string v2, "CALLBACK_CLUSTER_ID_CHANGED: null listener."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 1018
    :cond_1c
    :try_start_1c
    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mIdentityChangedListener:Landroid/net/wifi/aware/IdentityChangedListener;

    .line 1019
    invoke-static {p2}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object v3

    .line 1018
    invoke-virtual {v2, p1, v3}, Landroid/net/wifi/aware/IdentityChangedListener;->onClusterIdChanged(ILandroid/net/MacAddress;)V
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_25} :catch_26

    .line 1022
    goto :goto_3d

    .line 1020
    :catch_26
    move-exception v2

    .line 1021
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Invalid MAC address, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    :goto_3d
    return-void
.end method

.method private synthetic blacklist lambda$onConnectFail$1()V
    .registers 4

    .line 960
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mAwareManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 961
    .local v0, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    if-nez v0, :cond_12

    .line 962
    const-string v1, "WifiAwareManager"

    const-string v2, "WifiAwareEventCallbackProxy: handleMessage post GC"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    return-void

    .line 965
    :cond_12
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mAwareManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 966
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mAttachCallback:Landroid/net/wifi/aware/AttachCallback;

    invoke-virtual {v1}, Landroid/net/wifi/aware/AttachCallback;->onAttachFailed()V

    .line 967
    return-void
.end method

.method private synthetic blacklist lambda$onConnectSuccess$0(I)V
    .registers 6
    .param p1, "clientId"    # I

    .line 946
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mAwareManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 947
    .local v0, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    if-nez v0, :cond_12

    .line 948
    const-string v1, "WifiAwareManager"

    const-string v2, "WifiAwareEventCallbackProxy: handleMessage post GC"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    return-void

    .line 951
    :cond_12
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mAttachCallback:Landroid/net/wifi/aware/AttachCallback;

    new-instance v2, Landroid/net/wifi/aware/WifiAwareSession;

    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mBinder:Landroid/os/Binder;

    invoke-direct {v2, v0, v3, p1}, Landroid/net/wifi/aware/WifiAwareSession;-><init>(Landroid/net/wifi/aware/WifiAwareManager;Landroid/os/Binder;I)V

    invoke-virtual {v1, v2}, Landroid/net/wifi/aware/AttachCallback;->onAttached(Landroid/net/wifi/aware/WifiAwareSession;)V

    .line 952
    return-void
.end method

.method private synthetic blacklist lambda$onIdentityChanged$2([B)V
    .registers 5
    .param p1, "mac"    # [B

    .line 975
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mAwareManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 976
    .local v0, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    const-string v1, "WifiAwareManager"

    if-nez v0, :cond_12

    .line 977
    const-string v2, "WifiAwareEventCallbackProxy: handleMessage post GC"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    return-void

    .line 980
    :cond_12
    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mIdentityChangedListener:Landroid/net/wifi/aware/IdentityChangedListener;

    if-nez v2, :cond_1c

    .line 981
    const-string v2, "CALLBACK_IDENTITY_CHANGED: null listener."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 983
    :cond_1c
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mIdentityChangedListener:Landroid/net/wifi/aware/IdentityChangedListener;

    invoke-virtual {v1, p1}, Landroid/net/wifi/aware/IdentityChangedListener;->onIdentityChanged([B)V

    .line 985
    :goto_21
    return-void
.end method


# virtual methods
.method public blacklist onAttachTerminate()V
    .registers 3

    .line 991
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 992
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$$ExternalSyntheticLambda4;-><init>(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1001
    return-void
.end method

.method public blacklist onClusterIdChanged(I[B)V
    .registers 5
    .param p1, "clusterEventType"    # I
    .param p2, "clusterId"    # [B

    .line 1007
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 1008
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$$ExternalSyntheticLambda3;-><init>(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;I[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1025
    return-void
.end method

.method public greylist-max-o onConnectFail(I)V
    .registers 4
    .param p1, "reason"    # I

    .line 958
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 959
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$$ExternalSyntheticLambda2;-><init>(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 968
    return-void
.end method

.method public greylist-max-o onConnectSuccess(I)V
    .registers 4
    .param p1, "clientId"    # I

    .line 944
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 945
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 953
    return-void
.end method

.method public greylist-max-o onIdentityChanged([B)V
    .registers 4
    .param p1, "mac"    # [B

    .line 973
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 974
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 986
    return-void
.end method
