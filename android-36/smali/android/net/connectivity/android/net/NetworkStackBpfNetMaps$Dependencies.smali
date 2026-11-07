.class public Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps$Dependencies;
.super Ljava/lang/Object;
.source "NetworkStackBpfNetMaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dependencies"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getConfigurationMap()Landroid/net/connectivity/com/android/net/module/util/IBpfMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/net/connectivity/com/android/net/module/util/IBpfMap<",
            "Landroid/net/connectivity/com/android/net/module/util/Struct$S32;",
            "Landroid/net/connectivity/com/android/net/module/util/Struct$U32;",
            ">;"
        }
    .end annotation

    .line 97
    :try_start_0
    new-instance v0, Landroid/net/connectivity/com/android/net/module/util/BpfMap;

    const-string v1, "/sys/fs/bpf/netd_shared/map_netd_configuration_map"

    const-class v2, Landroid/net/connectivity/com/android/net/module/util/Struct$S32;

    const-class v3, Landroid/net/connectivity/com/android/net/module/util/Struct$U32;

    const/16 v4, 0x8

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/net/connectivity/com/android/net/module/util/BpfMap;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;)V
    :try_end_d
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    .line 99
    :catch_e
    move-exception v0

    .line 100
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot open configuration map"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getDataSaverEnabledMap()Landroid/net/connectivity/com/android/net/module/util/IBpfMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/net/connectivity/com/android/net/module/util/IBpfMap<",
            "Landroid/net/connectivity/com/android/net/module/util/Struct$S32;",
            "Landroid/net/connectivity/com/android/net/module/util/Struct$U8;",
            ">;"
        }
    .end annotation

    .line 117
    :try_start_0
    new-instance v0, Landroid/net/connectivity/com/android/net/module/util/BpfMap;

    const-string v1, "/sys/fs/bpf/netd_shared/map_netd_data_saver_enabled_map"

    const-class v2, Landroid/net/connectivity/com/android/net/module/util/Struct$S32;

    const-class v3, Landroid/net/connectivity/com/android/net/module/util/Struct$U8;

    const/16 v4, 0x8

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/net/connectivity/com/android/net/module/util/BpfMap;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;)V
    :try_end_d
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    .line 119
    :catch_e
    move-exception v0

    .line 120
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot open data saver enabled map"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getUidOwnerMap()Landroid/net/connectivity/com/android/net/module/util/IBpfMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/net/connectivity/com/android/net/module/util/IBpfMap<",
            "Landroid/net/connectivity/com/android/net/module/util/Struct$S32;",
            "Landroid/net/connectivity/android/net/UidOwnerValue;",
            ">;"
        }
    .end annotation

    .line 107
    :try_start_0
    new-instance v0, Landroid/net/connectivity/com/android/net/module/util/BpfMap;

    const-string v1, "/sys/fs/bpf/netd_shared/map_netd_uid_owner_map"

    const-class v2, Landroid/net/connectivity/com/android/net/module/util/Struct$S32;

    const-class v3, Landroid/net/connectivity/android/net/UidOwnerValue;

    const/16 v4, 0x8

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/net/connectivity/com/android/net/module/util/BpfMap;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;)V
    :try_end_d
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    .line 109
    :catch_e
    move-exception v0

    .line 110
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot open uid owner map"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
