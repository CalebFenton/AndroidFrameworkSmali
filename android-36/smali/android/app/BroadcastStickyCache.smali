.class public Landroid/app/BroadcastStickyCache;
.super Ljava/lang/Object;
.source "BroadcastStickyCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;
    }
.end annotation


# static fields
.field public static final blacklist STICKY_BROADCAST_ACTIONS:[Ljava/lang/String;

.field public static final blacklist sActionApiNameMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sActionConfigMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/IpcDataCache$Config;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sFilterCacheMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;",
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/Void;",
            "Landroid/content/Intent;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 24

    .line 52
    const-string v22, "android.intent.action.HDMI_PLUGGED"

    const-string v23, "android.net.conn.INET_CONDITION_ACTION"

    const-string v1, "android.media.action.HDMI_AUDIO_PLUG"

    const-string v2, "android.intent.action.HEADSET_PLUG"

    const-string v3, "android.media.SCO_AUDIO_STATE_CHANGED"

    const-string v4, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    const-string v5, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    const-string v6, "android.media.RINGER_MODE_CHANGED"

    const-string v7, "android.net.conn.CONNECTIVITY_CHANGE"

    const-string v8, "android.intent.action.BATTERY_CHANGED"

    const-string v9, "android.intent.action.DEVICE_STORAGE_FULL"

    const-string v10, "android.intent.action.DEVICE_STORAGE_LOW"

    const-string v11, "android.intent.action.SIM_STATE_CHANGED"

    const-string v12, "android.net.nsd.STATE_CHANGED"

    const-string v13, "android.telephony.action.SERVICE_PROVIDERS_UPDATED"

    const-string v14, "android.net.conn.TETHER_STATE_CHANGED"

    const-string v15, "android.os.UpdateLock.UPDATE_LOCK_CHANGED"

    const-string v16, "android.hardware.usb.action.USB_STATE"

    const-string v17, "android.net.wifi.action.WIFI_SCAN_AVAILABILITY_CHANGED"

    const-string v18, "android.net.wifi.STATE_CHANGE"

    const-string v19, "android.net.wifi.supplicant.STATE_CHANGE"

    const-string v20, "android.net.wifi.WIFI_STATE_CHANGED"

    const-string v21, "android.net.wifi.p2p.STATE_CHANGED"

    filled-new-array/range {v1 .. v23}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/BroadcastStickyCache;->STICKY_BROADCAST_ACTIONS:[Ljava/lang/String;

    .line 79
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/app/BroadcastStickyCache;->sActionApiNameMap:Landroid/util/ArrayMap;

    .line 82
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/app/BroadcastStickyCache;->sActionConfigMap:Landroid/util/ArrayMap;

    .line 86
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/app/BroadcastStickyCache;->sFilterCacheMap:Landroid/util/ArrayMap;

    .line 89
    sget-object v0, Landroid/app/BroadcastStickyCache;->sActionApiNameMap:Landroid/util/ArrayMap;

    const-string v1, "android.media.action.HDMI_AUDIO_PLUG"

    const-string/jumbo v2, "hdmi_audio_plug"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Landroid/app/BroadcastStickyCache;->sActionApiNameMap:Landroid/util/ArrayMap;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    const-string/jumbo v2, "headset_plug"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Landroid/app/BroadcastStickyCache;->sActionApiNameMap:Landroid/util/ArrayMap;

    const-string v1, "android.media.SCO_AUDIO_STATE_CHANGED"

    const-string/jumbo v2, "sco_audio_state_changed"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Landroid/app/BroadcastStickyCache;->sActionApiNameMap:Landroid/util/ArrayMap;

    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    const-string v2, "action_sco_audio_state_updated"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Landroid/app/BroadcastStickyCache;->sActionApiNameMap:Landroid/util/ArrayMap;

    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    const-string/jumbo v2, "internal_ringer_mode_changed_action"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Landroid/app/BroadcastStickyCache;->sActionApiNameMap:Landroid/util/ArrayMap;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    const-string/jumbo v2, "ringer_mode_changed"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Landroid/app/BroadcastStickyCache;->sActionApiNameMap:Landroid/util/ArrayMap;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    const-string v2, "connectivity_change"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Landroid/app/BroadcastStickyCache;->sActionApiNameMap:Landroid/util/ArrayMap;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    const-string v2, "battery_changed"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Landroid/app/BroadcastStickyCache;->sActionApiNameMap:Landroid/util/ArrayMap;

    const-string v1, "android.intent.action.DEVICE_STORAGE_FULL"

    const-string v2, "device_storage_full"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Landroid/app/BroadcastStickyCache;->sActionApiNameMap:Landroid/util/ArrayMap;

    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    const-string v2, "device_storage_low"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Landroid/app/BroadcastStickyCache;->sActionApiNameMap:Landroid/util/ArrayMap;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    const-string/jumbo v2, "sim_state_changed"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Landroid/app/BroadcastStickyCache;->sActionApiNameMap:Landroid/util/ArrayMap;

    const-string v1, "android.net.nsd.STATE_CHANGED"

    const-string/jumbo v2, "nsd_state_changed"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Landroid/app/BroadcastStickyCache;->sActionApiNameMap:Landroid/util/ArrayMap;

    const-string v1, "android.telephony.action.SERVICE_PROVIDERS_UPDATED"

    const-string/jumbo v2, "service_providers_updated"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Landroid/app/BroadcastStickyCache;->sActionApiNameMap:Landroid/util/ArrayMap;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    const-string/jumbo v2, "tether_state_changed"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Landroid/app/BroadcastStickyCache;->sActionApiNameMap:Landroid/util/ArrayMap;

    const-string v1, "android.os.UpdateLock.UPDATE_LOCK_CHANGED"

    const-string/jumbo v2, "update_lock_changed"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Landroid/app/BroadcastStickyCache;->sActionApiNameMap:Landroid/util/ArrayMap;

    const-string v1, "android.hardware.usb.action.USB_STATE"

    const-string/jumbo v2, "usb_state"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Landroid/app/BroadcastStickyCache;->sActionApiNameMap:Landroid/util/ArrayMap;

    const-string v1, "android.net.wifi.action.WIFI_SCAN_AVAILABILITY_CHANGED"

    const-string/jumbo v2, "wifi_scan_availability_changed"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Landroid/app/BroadcastStickyCache;->sActionApiNameMap:Landroid/util/ArrayMap;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    const-string/jumbo v2, "network_state_change"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Landroid/app/BroadcastStickyCache;->sActionApiNameMap:Landroid/util/ArrayMap;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    const-string/jumbo v2, "supplicant_state_change"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Landroid/app/BroadcastStickyCache;->sActionApiNameMap:Landroid/util/ArrayMap;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    const-string/jumbo v2, "wifi_state_changed"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Landroid/app/BroadcastStickyCache;->sActionApiNameMap:Landroid/util/ArrayMap;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    const-string/jumbo v2, "wifi_p2p_state_changed"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Landroid/app/BroadcastStickyCache;->sActionApiNameMap:Landroid/util/ArrayMap;

    const-string v1, "android.intent.action.HDMI_PLUGGED"

    const-string/jumbo v2, "hdmi_plugged"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Landroid/app/BroadcastStickyCache;->sActionApiNameMap:Landroid/util/ArrayMap;

    const-string v1, "android.net.conn.INET_CONDITION_ACTION"

    const-string/jumbo v2, "inet_condition_action"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist clearCacheForTest()V
    .registers 2

    .line 197
    const-class v0, Landroid/app/BroadcastStickyCache;

    monitor-enter v0

    .line 198
    :try_start_3
    sget-object v1, Landroid/app/BroadcastStickyCache;->sFilterCacheMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 199
    monitor-exit v0

    .line 200
    return-void

    .line 199
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static blacklist dumpCacheInfo(Landroid/os/ParcelFileDescriptor;)V
    .registers 4
    .param p0, "pfd"    # Landroid/os/ParcelFileDescriptor;

    .line 231
    invoke-static {}, Landroid/app/Flags;->useStickyBcastCache()Z

    move-result v0

    if-nez v0, :cond_7

    .line 232
    return-void

    .line 234
    :cond_7
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 235
    .local v0, "pw":Ljava/io/PrintWriter;
    const-class v1, Landroid/app/BroadcastStickyCache;

    monitor-enter v1

    .line 236
    :try_start_18
    invoke-static {v0}, Landroid/app/BroadcastStickyCache;->dumpCacheLocked(Ljava/io/PrintWriter;)V

    .line 237
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_20

    .line 238
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 239
    return-void

    .line 237
    :catchall_20
    move-exception v2

    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v2
.end method

.method private static blacklist dumpCacheLocked(Ljava/io/PrintWriter;)V
    .registers 8
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 243
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p0, v1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .local v0, "ipw":Landroid/util/IndentingPrintWriter;
    const-string v1, "Cached sticky broadcasts:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 247
    sget-object v1, Landroid/app/BroadcastStickyCache;->sFilterCacheMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 248
    .local v1, "count":I
    if-nez v1, :cond_1d

    .line 249
    const-string v2, "<empty>"

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_67

    .line 251
    :cond_1d
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    if-ge v2, v1, :cond_67

    .line 252
    sget-object v3, Landroid/app/BroadcastStickyCache;->sFilterCacheMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;

    .line 253
    .local v3, "stickyBroadcast":Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;
    sget-object v4, Landroid/app/BroadcastStickyCache;->sFilterCacheMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IpcDataCache;

    .line 254
    .local v4, "ipcDataCache":Landroid/os/IpcDataCache;, "Landroid/os/IpcDataCache<Ljava/lang/Void;Landroid/content/Intent;>;"
    const-string v5, "Entry #"

    invoke-virtual {v0, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 256
    const-string v5, ":"

    invoke-virtual {v0, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 258
    const-string v5, "action"

    invoke-static {v3}, Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;->-$$Nest$fgetaction(Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/IndentingPrintWriter;->println()V

    .line 259
    invoke-static {v3}, Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;->-$$Nest$fgetfilter(Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;)Landroid/content/IntentFilter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/IntentFilter;->toLongString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "filter"

    invoke-virtual {v0, v6, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/IndentingPrintWriter;->println()V

    .line 260
    invoke-virtual {v4, p0}, Landroid/os/IpcDataCache;->dumpCacheEntries(Ljava/io/PrintWriter;)V

    .line 261
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 251
    .end local v3    # "stickyBroadcast":Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;
    .end local v4    # "ipcDataCache":Landroid/os/IpcDataCache;, "Landroid/os/IpcDataCache<Ljava/lang/Void;Landroid/content/Intent;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 264
    .end local v2    # "i":I
    :cond_67
    :goto_67
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 265
    return-void
.end method

.method private static blacklist findIpcDataCache(Landroid/content/IntentFilter;)Landroid/os/IpcDataCache;
    .registers 5
    .param p0, "filter"    # Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IntentFilter;",
            ")",
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/Void;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 206
    sget-object v0, Landroid/app/BroadcastStickyCache;->sFilterCacheMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_37

    .line 207
    sget-object v1, Landroid/app/BroadcastStickyCache;->sFilterCacheMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;

    .line 208
    .local v1, "existingFilter":Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;->action()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 209
    invoke-virtual {v1}, Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;->filter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-static {v2, p0}, Landroid/content/IntentFilter;->filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 210
    sget-object v2, Landroid/app/BroadcastStickyCache;->sFilterCacheMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IpcDataCache;

    return-object v2

    .line 206
    .end local v1    # "existingFilter":Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;
    :cond_34
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 213
    .end local v0    # "i":I
    :cond_37
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist getConfig(Ljava/lang/String;)Landroid/os/IpcDataCache$Config;
    .registers 6
    .param p0, "action"    # Ljava/lang/String;

    .line 219
    sget-object v0, Landroid/app/BroadcastStickyCache;->sActionConfigMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 222
    sget-object v0, Landroid/app/BroadcastStickyCache;->sActionConfigMap:Landroid/util/ArrayMap;

    new-instance v1, Landroid/os/IpcDataCache$Config;

    sget-object v2, Landroid/app/BroadcastStickyCache;->sActionApiNameMap:Landroid/util/ArrayMap;

    .line 224
    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x20

    const-string/jumbo v4, "system_server"

    invoke-direct {v1, v3, v4, v2}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache$Config;->cacheNulls(Z)Landroid/os/IpcDataCache$Config;

    move-result-object v1

    .line 222
    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_24
    sget-object v0, Landroid/app/BroadcastStickyCache;->sActionConfigMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IpcDataCache$Config;

    return-object v0
.end method

.method public static blacklist getIntent(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;
    .registers 22
    .param p0, "applicationThread"    # Landroid/app/IApplicationThread;
    .param p1, "mBasePackageName"    # Ljava/lang/String;
    .param p2, "attributionTag"    # Ljava/lang/String;
    .param p3, "filter"    # Landroid/content/IntentFilter;
    .param p4, "broadcastPermission"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "flags"    # I

    .line 168
    move-object/from16 v4, p3

    const-class v8, Landroid/app/BroadcastStickyCache;

    monitor-enter v8

    .line 169
    :try_start_5
    invoke-static {v4}, Landroid/app/BroadcastStickyCache;->findIpcDataCache(Landroid/content/IntentFilter;)Landroid/os/IpcDataCache;

    move-result-object v0

    move-object v9, v0

    .line 171
    .local v9, "intentDataCache":Landroid/os/IpcDataCache;, "Landroid/os/IpcDataCache<Ljava/lang/Void;Landroid/content/Intent;>;"
    const/4 v10, 0x0

    if-nez v9, :cond_39

    .line 172
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 173
    .local v11, "action":Ljava/lang/String;
    new-instance v0, Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;

    invoke-direct {v0, v4, v11, v10}, Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;-><init>(Landroid/content/IntentFilter;Ljava/lang/String;Landroid/app/BroadcastStickyCache-IA;)V

    move-object v12, v0

    .line 175
    .local v12, "stickyBroadcastFilter":Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;
    invoke-static {v11}, Landroid/app/BroadcastStickyCache;->getConfig(Ljava/lang/String;)Landroid/os/IpcDataCache$Config;

    move-result-object v0

    move-object v13, v0

    .line 177
    .local v13, "config":Landroid/os/IpcDataCache$Config;
    new-instance v14, Landroid/os/IpcDataCache;

    new-instance v0, Landroid/app/BroadcastStickyCache$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/app/BroadcastStickyCache$$ExternalSyntheticLambda0;-><init>(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentFilter;Ljava/lang/String;II)V

    invoke-direct {v14, v13, v0}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    move-object v9, v14

    .line 189
    sget-object v0, Landroid/app/BroadcastStickyCache;->sFilterCacheMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v12, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .end local v11    # "action":Ljava/lang/String;
    .end local v12    # "stickyBroadcastFilter":Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;
    .end local v13    # "config":Landroid/os/IpcDataCache$Config;
    :cond_39
    monitor-exit v8
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_41

    .line 192
    invoke-virtual {v9, v10}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0

    .line 191
    .end local v9    # "intentDataCache":Landroid/os/IpcDataCache;, "Landroid/os/IpcDataCache<Ljava/lang/Void;Landroid/content/Intent;>;"
    :catchall_41
    move-exception v0

    :try_start_42
    monitor-exit v8
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v0
.end method

.method public static blacklist invalidateAllCaches()V
    .registers 3

    .line 147
    sget-object v0, Landroid/app/BroadcastStickyCache;->sActionApiNameMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1b

    .line 148
    sget-object v1, Landroid/app/BroadcastStickyCache;->sActionApiNameMap:Landroid/util/ArrayMap;

    .line 149
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 148
    const-string/jumbo v2, "system_server"

    invoke-static {v2, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 151
    .end local v0    # "i":I
    :cond_1b
    return-void
.end method

.method public static blacklist invalidateCache(Ljava/lang/String;)V
    .registers 3
    .param p0, "action"    # Ljava/lang/String;

    .line 138
    invoke-static {}, Landroid/app/Flags;->useStickyBcastCache()Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Landroid/app/BroadcastStickyCache;->STICKY_BROADCAST_ACTIONS:[Ljava/lang/String;

    .line 139
    invoke-static {v0, p0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_1e

    .line 142
    :cond_f
    sget-object v0, Landroid/app/BroadcastStickyCache;->sActionApiNameMap:Landroid/util/ArrayMap;

    .line 143
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 142
    const-string/jumbo v1, "system_server"

    invoke-static {v1, v0}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void

    .line 140
    :cond_1e
    :goto_1e
    return-void
.end method

.method static synthetic blacklist lambda$getIntent$0(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentFilter;Ljava/lang/String;IILjava/lang/Void;)Landroid/content/Intent;
    .registers 18
    .param p0, "applicationThread"    # Landroid/app/IApplicationThread;
    .param p1, "mBasePackageName"    # Ljava/lang/String;
    .param p2, "attributionTag"    # Ljava/lang/String;
    .param p3, "filter"    # Landroid/content/IntentFilter;
    .param p4, "broadcastPermission"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "flags"    # I
    .param p7, "query"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 179
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const-string/jumbo v4, "null"

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-interface/range {v0 .. v9}, Landroid/app/IActivityManager;->registerReceiverWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist useCache(Landroid/content/IntentFilter;)Z
    .registers 5
    .param p0, "filter"    # Landroid/content/IntentFilter;

    .line 131
    invoke-static {}, Landroid/app/Flags;->useStickyBcastCache()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    if-eqz p0, :cond_1e

    .line 133
    invoke-virtual {p0}, Landroid/content/IntentFilter;->safeCountActions()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1e

    sget-object v0, Landroid/app/BroadcastStickyCache;->STICKY_BROADCAST_ACTIONS:[Ljava/lang/String;

    .line 134
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    move v1, v2

    goto :goto_1f

    :cond_1e
    nop

    .line 131
    :goto_1f
    return v1
.end method
