.class public Landroid/net/wifi/rtt/WifiRttManager;
.super Ljava/lang/Object;
.source "WifiRttManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/rtt/WifiRttManager$RttCharacteristicsKey;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_WIFI_RTT_STATE_CHANGED:Ljava/lang/String; = "android.net.wifi.rtt.action.WIFI_RTT_STATE_CHANGED"

.field public static final whitelist CHARACTERISTICS_KEY_BOOLEAN_LCI:Ljava/lang/String; = "key_lci"

.field public static final whitelist CHARACTERISTICS_KEY_BOOLEAN_LCR:Ljava/lang/String; = "key_lcr"

.field public static final whitelist CHARACTERISTICS_KEY_BOOLEAN_NTB_INITIATOR:Ljava/lang/String; = "key_ntb_initiator"

.field public static final whitelist CHARACTERISTICS_KEY_BOOLEAN_ONE_SIDED_RTT:Ljava/lang/String; = "key_one_sided_rtt"

.field public static final whitelist CHARACTERISTICS_KEY_BOOLEAN_RANGING_FRAME_PROTECTION_SUPPORTED:Ljava/lang/String; = "key_rnm_mfp_supported"

.field public static final whitelist CHARACTERISTICS_KEY_BOOLEAN_SECURE_HE_LTF_SUPPORTED:Ljava/lang/String; = "key_secure_he_ltf_supported"

.field public static final whitelist CHARACTERISTICS_KEY_BOOLEAN_STA_RESPONDER:Ljava/lang/String; = "key_sta_responder"

.field public static final whitelist CHARACTERISTICS_KEY_INT_MAX_SUPPORTED_SECURE_HE_LTF_PROTO_VERSION:Ljava/lang/String; = "key_max_supported_secure_he_ltf_proto_ver"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "WifiRttManager"

.field private static final greylist-max-o VDBG:Z = false


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mService:Landroid/net/wifi/rtt/IWifiRttManager;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/net/wifi/rtt/IWifiRttManager;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/wifi/rtt/IWifiRttManager;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Landroid/net/wifi/rtt/WifiRttManager;->mContext:Landroid/content/Context;

    .line 161
    iput-object p2, p0, Landroid/net/wifi/rtt/WifiRttManager;->mService:Landroid/net/wifi/rtt/IWifiRttManager;

    .line 162
    return-void
.end method


# virtual methods
.method public whitelist cancelRanging(Landroid/os/WorkSource;)V
    .registers 4
    .param p1, "workSource"    # Landroid/os/WorkSource;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 282
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/rtt/WifiRttManager;->mService:Landroid/net/wifi/rtt/IWifiRttManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/rtt/IWifiRttManager;->cancelRanging(Landroid/os/WorkSource;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 285
    nop

    .line 286
    return-void

    .line 283
    :catch_7
    move-exception v0

    .line 284
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getRttCharacteristics()Landroid/os/Bundle;
    .registers 3

    .line 301
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/rtt/WifiRttManager;->mService:Landroid/net/wifi/rtt/IWifiRttManager;

    invoke-interface {v0}, Landroid/net/wifi/rtt/IWifiRttManager;->getRttCharacteristics()Landroid/os/Bundle;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 302
    :catch_7
    move-exception v0

    .line 303
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isAvailable()Z
    .registers 3

    .line 176
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/rtt/WifiRttManager;->mService:Landroid/net/wifi/rtt/IWifiRttManager;

    invoke-interface {v0}, Landroid/net/wifi/rtt/IWifiRttManager;->isAvailable()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 177
    :catch_7
    move-exception v0

    .line 178
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startRanging(Landroid/net/wifi/rtt/RangingRequest;Ljava/util/concurrent/Executor;Landroid/net/wifi/rtt/RangingResultCallback;)V
    .registers 5
    .param p1, "request"    # Landroid/net/wifi/rtt/RangingRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/net/wifi/rtt/RangingResultCallback;

    .line 201
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/net/wifi/rtt/WifiRttManager;->startRanging(Landroid/os/WorkSource;Landroid/net/wifi/rtt/RangingRequest;Ljava/util/concurrent/Executor;Landroid/net/wifi/rtt/RangingResultCallback;)V

    .line 202
    return-void
.end method

.method public whitelist startRanging(Landroid/os/WorkSource;Landroid/net/wifi/rtt/RangingRequest;Ljava/util/concurrent/Executor;Landroid/net/wifi/rtt/RangingResultCallback;)V
    .registers 14
    .param p1, "workSource"    # Landroid/os/WorkSource;
    .param p2, "request"    # Landroid/net/wifi/rtt/RangingRequest;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/net/wifi/rtt/RangingResultCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 232
    if-eqz p3, :cond_53

    .line 235
    if-eqz p4, :cond_49

    .line 239
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    move-object v2, v0

    .line 241
    .local v2, "binder":Landroid/os/Binder;
    :try_start_a
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 242
    .local v8, "extras":Landroid/os/Bundle;
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_41

    if-eqz v0, :cond_25

    .line 243
    :try_start_15
    const-string v0, "EXTRA_PARAM_KEY_ATTRIBUTION_SOURCE"

    iget-object v1, p0, Landroid/net/wifi/rtt/WifiRttManager;->mContext:Landroid/content/Context;

    .line 244
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    .line 243
    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_20} :catch_21

    goto :goto_25

    .line 261
    .end local v8    # "extras":Landroid/os/Bundle;
    :catch_21
    move-exception v0

    move-object v5, p1

    move-object v6, p2

    goto :goto_44

    .line 246
    .restart local v8    # "extras":Landroid/os/Bundle;
    :cond_25
    :goto_25
    :try_start_25
    iget-object v1, p0, Landroid/net/wifi/rtt/WifiRttManager;->mService:Landroid/net/wifi/rtt/IWifiRttManager;

    iget-object v0, p0, Landroid/net/wifi/rtt/WifiRttManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Landroid/net/wifi/rtt/WifiRttManager;->mContext:Landroid/content/Context;

    .line 247
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Landroid/net/wifi/rtt/WifiRttManager$1;

    invoke-direct {v7, p0, p3, p4}, Landroid/net/wifi/rtt/WifiRttManager$1;-><init>(Landroid/net/wifi/rtt/WifiRttManager;Ljava/util/concurrent/Executor;Landroid/net/wifi/rtt/RangingResultCallback;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_38} :catch_41

    .line 246
    move-object v5, p1

    move-object v6, p2

    .end local p1    # "workSource":Landroid/os/WorkSource;
    .end local p2    # "request":Landroid/net/wifi/rtt/RangingRequest;
    .local v5, "workSource":Landroid/os/WorkSource;
    .local v6, "request":Landroid/net/wifi/rtt/RangingRequest;
    :try_start_3a
    invoke-interface/range {v1 .. v8}, Landroid/net/wifi/rtt/IWifiRttManager;->startRanging(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Landroid/net/wifi/rtt/RangingRequest;Landroid/net/wifi/rtt/IRttCallback;Landroid/os/Bundle;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3d} :catch_3f

    .line 263
    .end local v8    # "extras":Landroid/os/Bundle;
    nop

    .line 264
    return-void

    .line 261
    :catch_3f
    move-exception v0

    goto :goto_44

    .end local v5    # "workSource":Landroid/os/WorkSource;
    .end local v6    # "request":Landroid/net/wifi/rtt/RangingRequest;
    .restart local p1    # "workSource":Landroid/os/WorkSource;
    .restart local p2    # "request":Landroid/net/wifi/rtt/RangingRequest;
    :catch_41
    move-exception v0

    move-object v5, p1

    move-object v6, p2

    .line 262
    .end local p1    # "workSource":Landroid/os/WorkSource;
    .end local p2    # "request":Landroid/net/wifi/rtt/RangingRequest;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v5    # "workSource":Landroid/os/WorkSource;
    .restart local v6    # "request":Landroid/net/wifi/rtt/RangingRequest;
    :goto_44
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 236
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "binder":Landroid/os/Binder;
    .end local v5    # "workSource":Landroid/os/WorkSource;
    .end local v6    # "request":Landroid/net/wifi/rtt/RangingRequest;
    .restart local p1    # "workSource":Landroid/os/WorkSource;
    .restart local p2    # "request":Landroid/net/wifi/rtt/RangingRequest;
    :cond_49
    move-object v5, p1

    move-object v6, p2

    .end local p1    # "workSource":Landroid/os/WorkSource;
    .end local p2    # "request":Landroid/net/wifi/rtt/RangingRequest;
    .restart local v5    # "workSource":Landroid/os/WorkSource;
    .restart local v6    # "request":Landroid/net/wifi/rtt/RangingRequest;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null callback provided"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 233
    .end local v5    # "workSource":Landroid/os/WorkSource;
    .end local v6    # "request":Landroid/net/wifi/rtt/RangingRequest;
    .restart local p1    # "workSource":Landroid/os/WorkSource;
    .restart local p2    # "request":Landroid/net/wifi/rtt/RangingRequest;
    :cond_53
    move-object v5, p1

    move-object v6, p2

    .end local p1    # "workSource":Landroid/os/WorkSource;
    .end local p2    # "request":Landroid/net/wifi/rtt/RangingRequest;
    .restart local v5    # "workSource":Landroid/os/WorkSource;
    .restart local v6    # "request":Landroid/net/wifi/rtt/RangingRequest;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null executor provided"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
