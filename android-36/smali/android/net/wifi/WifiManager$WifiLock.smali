.class public Landroid/net/wifi/WifiManager$WifiLock;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WifiLock"
.end annotation


# instance fields
.field private final greylist-max-o mBinder:Landroid/os/IBinder;

.field private greylist-max-o mHeld:Z

.field greylist-max-o mLockType:I

.field private greylist-max-o mRefCount:I

.field private greylist-max-o mRefCounted:Z

.field private greylist-max-o mTag:Ljava/lang/String;

.field private greylist-max-o mWorkSource:Landroid/os/WorkSource;

.field final synthetic blacklist this$0:Landroid/net/wifi/WifiManager;


# direct methods
.method private constructor blacklist <init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;)V
    .registers 6
    .param p1, "this$0"    # Landroid/net/wifi/WifiManager;
    .param p2, "lockType"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 8030
    iput-object p1, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8031
    iput-object p3, p0, Landroid/net/wifi/WifiManager$WifiLock;->mTag:Ljava/lang/String;

    .line 8032
    iput p2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mLockType:I

    .line 8033
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    .line 8034
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    .line 8035
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCounted:Z

    .line 8036
    iput-boolean v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z

    .line 8037
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;Landroid/net/wifi/WifiManager-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/WifiManager$WifiLock;-><init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist acquire()V
    .registers 11

    .line 8051
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v1

    .line 8052
    :try_start_3
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCounted:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    iget v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    if-ne v0, v2, :cond_7e

    goto :goto_14

    :cond_10
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_80

    if-nez v0, :cond_7e

    .line 8054
    :goto_14
    :try_start_14
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v9, v0

    .line 8055
    .local v9, "extras":Landroid/os/Bundle;
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 8056
    const-string v0, "EXTRA_PARAM_KEY_ATTRIBUTION_SOURCE"

    iget-object v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v3}, Landroid/net/wifi/WifiManager;->-$$Nest$fgetmContext(Landroid/net/wifi/WifiManager;)Landroid/content/Context;

    move-result-object v3

    .line 8057
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    .line 8056
    invoke-virtual {v9, v0, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8059
    :cond_2f
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    iget-object v3, v0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v4, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    iget v5, p0, Landroid/net/wifi/WifiManager$WifiLock;->mLockType:I

    iget-object v6, p0, Landroid/net/wifi/WifiManager$WifiLock;->mTag:Ljava/lang/String;

    iget-object v7, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->-$$Nest$fgetmContext(Landroid/net/wifi/WifiManager;)Landroid/content/Context;

    move-result-object v0

    .line 8060
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    .line 8059
    invoke-interface/range {v3 .. v9}, Landroid/net/wifi/IWifiManager;->acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 8061
    iget-object v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    monitor-enter v3
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_4b} :catch_78
    .catchall {:try_start_14 .. :try_end_4b} :catchall_80

    .line 8062
    :try_start_4b
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->-$$Nest$fgetmActiveLockCount(Landroid/net/wifi/WifiManager;)I

    move-result v0

    const/16 v4, 0x32

    if-ge v0, v4, :cond_64

    .line 8067
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->-$$Nest$fgetmActiveLockCount(Landroid/net/wifi/WifiManager;)I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v0, v4}, Landroid/net/wifi/WifiManager;->-$$Nest$fputmActiveLockCount(Landroid/net/wifi/WifiManager;I)V

    .line 8068
    monitor-exit v3
    :try_end_60
    .catchall {:try_start_4b .. :try_end_60} :catchall_75

    .line 8071
    .end local v9    # "extras":Landroid/os/Bundle;
    nop

    .line 8072
    :try_start_61
    iput-boolean v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z
    :try_end_63
    .catchall {:try_start_61 .. :try_end_63} :catchall_80

    goto :goto_7e

    .line 8063
    .restart local v9    # "extras":Landroid/os/Bundle;
    :cond_64
    :try_start_64
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    iget-object v0, v0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0, v2}, Landroid/net/wifi/IWifiManager;->releaseWifiLock(Landroid/os/IBinder;)Z

    .line 8064
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Exceeded maximum number of wifi locks"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local v9    # "extras":Landroid/os/Bundle;
    .end local p0    # "this":Landroid/net/wifi/WifiManager$WifiLock;
    throw v0

    .line 8068
    .restart local v9    # "extras":Landroid/os/Bundle;
    .restart local p0    # "this":Landroid/net/wifi/WifiManager$WifiLock;
    :catchall_75
    move-exception v0

    monitor-exit v3
    :try_end_77
    .catchall {:try_start_64 .. :try_end_77} :catchall_75

    .end local p0    # "this":Landroid/net/wifi/WifiManager$WifiLock;
    :try_start_77
    throw v0
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_77 .. :try_end_78} :catch_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_80

    .line 8069
    .end local v9    # "extras":Landroid/os/Bundle;
    .restart local p0    # "this":Landroid/net/wifi/WifiManager$WifiLock;
    :catch_78
    move-exception v0

    .line 8070
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_79
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/net/wifi/WifiManager$WifiLock;
    throw v2

    .line 8074
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/net/wifi/WifiManager$WifiLock;
    :cond_7e
    :goto_7e
    monitor-exit v1

    .line 8075
    return-void

    .line 8074
    :catchall_80
    move-exception v0

    monitor-exit v1
    :try_end_82
    .catchall {:try_start_79 .. :try_end_82} :catchall_80

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 8186
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 8187
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v0

    .line 8188
    :try_start_6
    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_2e

    if-eqz v1, :cond_2c

    .line 8190
    :try_start_a
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    iget-object v1, v1, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/net/wifi/IWifiManager;->releaseWifiLock(Landroid/os/IBinder;)Z

    .line 8191
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    monitor-enter v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_16} :catch_26
    .catchall {:try_start_a .. :try_end_16} :catchall_2e

    .line 8192
    :try_start_16
    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v2}, Landroid/net/wifi/WifiManager;->-$$Nest$fgetmActiveLockCount(Landroid/net/wifi/WifiManager;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Landroid/net/wifi/WifiManager;->-$$Nest$fputmActiveLockCount(Landroid/net/wifi/WifiManager;I)V

    .line 8193
    monitor-exit v1

    .line 8196
    goto :goto_2c

    .line 8193
    :catchall_23
    move-exception v2

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_16 .. :try_end_25} :catchall_23

    .end local p0    # "this":Landroid/net/wifi/WifiManager$WifiLock;
    :try_start_25
    throw v2
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_26} :catch_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_2e

    .line 8194
    .restart local p0    # "this":Landroid/net/wifi/WifiManager$WifiLock;
    :catch_26
    move-exception v1

    .line 8195
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_27
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/net/wifi/WifiManager$WifiLock;
    throw v2

    .line 8198
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/net/wifi/WifiManager$WifiLock;
    :cond_2c
    :goto_2c
    monitor-exit v0

    .line 8199
    return-void

    .line 8198
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public whitelist isHeld()Z
    .registers 3

    .line 8129
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v0

    .line 8130
    :try_start_3
    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z

    monitor-exit v0

    return v1

    .line 8131
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist release()V
    .registers 5

    .line 8090
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v0

    .line 8091
    :try_start_3
    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCounted:Z

    if-eqz v1, :cond_10

    iget v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    if-nez v1, :cond_3a

    goto :goto_14

    :cond_10
    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_5b

    if-eqz v1, :cond_3a

    .line 8093
    :goto_14
    :try_start_14
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    iget-object v1, v1, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/net/wifi/IWifiManager;->releaseWifiLock(Landroid/os/IBinder;)Z

    .line 8094
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    monitor-enter v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_20} :catch_34
    .catchall {:try_start_14 .. :try_end_20} :catchall_5b

    .line 8095
    :try_start_20
    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v2}, Landroid/net/wifi/WifiManager;->-$$Nest$fgetmActiveLockCount(Landroid/net/wifi/WifiManager;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Landroid/net/wifi/WifiManager;->-$$Nest$fputmActiveLockCount(Landroid/net/wifi/WifiManager;I)V

    .line 8096
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_31

    .line 8099
    nop

    .line 8100
    const/4 v1, 0x0

    :try_start_2e
    iput-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z
    :try_end_30
    .catchall {:try_start_2e .. :try_end_30} :catchall_5b

    goto :goto_3a

    .line 8096
    :catchall_31
    move-exception v2

    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    .end local p0    # "this":Landroid/net/wifi/WifiManager$WifiLock;
    :try_start_33
    throw v2
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_34} :catch_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_5b

    .line 8097
    .restart local p0    # "this":Landroid/net/wifi/WifiManager$WifiLock;
    :catch_34
    move-exception v1

    .line 8098
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_35
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/net/wifi/WifiManager$WifiLock;
    throw v2

    .line 8102
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/net/wifi/WifiManager$WifiLock;
    :cond_3a
    :goto_3a
    iget v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    if-ltz v1, :cond_40

    .line 8105
    monitor-exit v0

    .line 8106
    return-void

    .line 8103
    :cond_40
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiLock under-locked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/wifi/WifiManager$WifiLock;
    throw v1

    .line 8105
    .restart local p0    # "this":Landroid/net/wifi/WifiManager$WifiLock;
    :catchall_5b
    move-exception v1

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_35 .. :try_end_5d} :catchall_5b

    throw v1
.end method

.method public whitelist setReferenceCounted(Z)V
    .registers 2
    .param p1, "refCounted"    # Z

    .line 8120
    iput-boolean p1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCounted:Z

    .line 8121
    return-void
.end method

.method public whitelist setWorkSource(Landroid/os/WorkSource;)V
    .registers 9
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 8135
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v0

    .line 8136
    if-eqz p1, :cond_10

    :try_start_5
    invoke-virtual {p1}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 8137
    const/4 p1, 0x0

    goto :goto_10

    .line 8167
    :catchall_d
    move-exception v1

    goto/16 :goto_7d

    .line 8139
    :cond_10
    :goto_10
    const/4 v1, 0x1

    .line 8140
    .local v1, "changed":Z
    if-nez p1, :cond_17

    .line 8141
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    goto :goto_3f

    .line 8143
    :cond_17
    invoke-virtual {p1}, Landroid/os/WorkSource;->withoutNames()Landroid/os/WorkSource;

    move-result-object v2

    move-object p1, v2

    .line 8144
    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x1

    if-nez v2, :cond_30

    .line 8145
    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v2, :cond_26

    goto :goto_27

    :cond_26
    const/4 v3, 0x0

    :goto_27
    move v1, v3

    .line 8146
    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    iput-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    goto :goto_3f

    .line 8148
    :cond_30
    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v3

    move v1, v2

    .line 8149
    if-eqz v1, :cond_3f

    .line 8150
    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, p1}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 8154
    :cond_3f
    :goto_3f
    if-eqz v1, :cond_7b

    iget-boolean v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z
    :try_end_43
    .catchall {:try_start_5 .. :try_end_43} :catchall_d

    if-eqz v2, :cond_7b

    .line 8156
    :try_start_45
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 8157
    .local v2, "extras":Landroid/os/Bundle;
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 8158
    const-string v3, "EXTRA_PARAM_KEY_ATTRIBUTION_SOURCE"

    iget-object v4, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v4}, Landroid/net/wifi/WifiManager;->-$$Nest$fgetmContext(Landroid/net/wifi/WifiManager;)Landroid/content/Context;

    move-result-object v4

    .line 8159
    invoke-virtual {v4}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    .line 8158
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8161
    :cond_5f
    iget-object v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    iget-object v3, v3, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v4, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v6, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v6}, Landroid/net/wifi/WifiManager;->-$$Nest$fgetmContext(Landroid/net/wifi/WifiManager;)Landroid/content/Context;

    move-result-object v6

    .line 8162
    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    .line 8161
    invoke-interface {v3, v4, v5, v6, v2}, Landroid/net/wifi/IWifiManager;->updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_74} :catch_75
    .catchall {:try_start_45 .. :try_end_74} :catchall_d

    .line 8165
    .end local v2    # "extras":Landroid/os/Bundle;
    goto :goto_7b

    .line 8163
    :catch_75
    move-exception v2

    .line 8164
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_76
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/net/wifi/WifiManager$WifiLock;
    .end local p1    # "ws":Landroid/os/WorkSource;
    throw v3

    .line 8167
    .end local v1    # "changed":Z
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/net/wifi/WifiManager$WifiLock;
    .restart local p1    # "ws":Landroid/os/WorkSource;
    :cond_7b
    :goto_7b
    monitor-exit v0

    .line 8168
    return-void

    .line 8167
    :goto_7d
    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_76 .. :try_end_7e} :catchall_d

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 8172
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v0

    .line 8173
    :try_start_3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 8174
    .local v1, "s1":Ljava/lang/String;
    iget-boolean v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z

    if-eqz v2, :cond_12

    const-string v2, "held; "

    goto :goto_14

    :cond_12
    const-string v2, ""

    .line 8175
    .local v2, "s2":Ljava/lang/String;
    :goto_14
    iget-boolean v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCounted:Z

    if-eqz v3, :cond_2e

    .line 8176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refcounted: refcount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "s3":Ljava/lang/String;
    goto :goto_30

    .line 8178
    .end local v3    # "s3":Ljava/lang/String;
    :cond_2e
    const-string v3, "not refcounted"

    .line 8180
    .restart local v3    # "s3":Ljava/lang/String;
    :goto_30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WifiLock{ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " }"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    monitor-exit v0

    return-object v4

    .line 8181
    .end local v1    # "s1":Ljava/lang/String;
    .end local v2    # "s2":Ljava/lang/String;
    .end local v3    # "s3":Ljava/lang/String;
    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_3 .. :try_end_5b} :catchall_59

    throw v1
.end method
