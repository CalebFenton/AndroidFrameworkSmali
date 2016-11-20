.class public Lcom/android/server/pm/UserRestrictionsUtils;
.super Ljava/lang/Object;
.source "UserRestrictionsUtils.java"


# static fields
.field private static final DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final GLOBAL_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final IMMUTABLE_BY_OWNERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NON_PERSIST_USER_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "UserRestrictionsUtils"

.field public static final USER_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 67
    const/16 v0, 0x28

    #@7
    new-array v0, v0, [Ljava/lang/String;

    #@9
    .line 68
    const-string/jumbo v1, "no_config_wifi"

    #@c
    aput-object v1, v0, v3

    #@e
    .line 69
    const-string/jumbo v1, "no_modify_accounts"

    #@11
    aput-object v1, v0, v4

    #@13
    .line 70
    const-string/jumbo v1, "no_install_apps"

    #@16
    aput-object v1, v0, v5

    #@18
    .line 71
    const-string/jumbo v1, "no_uninstall_apps"

    #@1b
    aput-object v1, v0, v6

    #@1d
    .line 72
    const-string/jumbo v1, "no_share_location"

    #@20
    aput-object v1, v0, v7

    #@22
    .line 73
    const-string/jumbo v1, "no_install_unknown_sources"

    #@25
    const/4 v2, 0x5

    #@26
    aput-object v1, v0, v2

    #@28
    .line 74
    const-string/jumbo v1, "no_config_bluetooth"

    #@2b
    const/4 v2, 0x6

    #@2c
    aput-object v1, v0, v2

    #@2e
    .line 75
    const-string/jumbo v1, "no_usb_file_transfer"

    #@31
    const/4 v2, 0x7

    #@32
    aput-object v1, v0, v2

    #@34
    .line 76
    const-string/jumbo v1, "no_config_credentials"

    #@37
    const/16 v2, 0x8

    #@39
    aput-object v1, v0, v2

    #@3b
    .line 77
    const-string/jumbo v1, "no_remove_user"

    #@3e
    const/16 v2, 0x9

    #@40
    aput-object v1, v0, v2

    #@42
    .line 78
    const-string/jumbo v1, "no_debugging_features"

    #@45
    const/16 v2, 0xa

    #@47
    aput-object v1, v0, v2

    #@49
    .line 79
    const-string/jumbo v1, "no_config_vpn"

    #@4c
    const/16 v2, 0xb

    #@4e
    aput-object v1, v0, v2

    #@50
    .line 80
    const-string/jumbo v1, "no_config_tethering"

    #@53
    const/16 v2, 0xc

    #@55
    aput-object v1, v0, v2

    #@57
    .line 81
    const-string/jumbo v1, "no_network_reset"

    #@5a
    const/16 v2, 0xd

    #@5c
    aput-object v1, v0, v2

    #@5e
    .line 82
    const-string/jumbo v1, "no_factory_reset"

    #@61
    const/16 v2, 0xe

    #@63
    aput-object v1, v0, v2

    #@65
    .line 83
    const-string/jumbo v1, "no_add_user"

    #@68
    const/16 v2, 0xf

    #@6a
    aput-object v1, v0, v2

    #@6c
    .line 84
    const-string/jumbo v1, "ensure_verify_apps"

    #@6f
    const/16 v2, 0x10

    #@71
    aput-object v1, v0, v2

    #@73
    .line 85
    const-string/jumbo v1, "no_config_cell_broadcasts"

    #@76
    const/16 v2, 0x11

    #@78
    aput-object v1, v0, v2

    #@7a
    .line 86
    const-string/jumbo v1, "no_config_mobile_networks"

    #@7d
    const/16 v2, 0x12

    #@7f
    aput-object v1, v0, v2

    #@81
    .line 87
    const-string/jumbo v1, "no_control_apps"

    #@84
    const/16 v2, 0x13

    #@86
    aput-object v1, v0, v2

    #@88
    .line 88
    const-string/jumbo v1, "no_physical_media"

    #@8b
    const/16 v2, 0x14

    #@8d
    aput-object v1, v0, v2

    #@8f
    .line 89
    const-string/jumbo v1, "no_unmute_microphone"

    #@92
    const/16 v2, 0x15

    #@94
    aput-object v1, v0, v2

    #@96
    .line 90
    const-string/jumbo v1, "no_adjust_volume"

    #@99
    const/16 v2, 0x16

    #@9b
    aput-object v1, v0, v2

    #@9d
    .line 91
    const-string/jumbo v1, "no_outgoing_calls"

    #@a0
    const/16 v2, 0x17

    #@a2
    aput-object v1, v0, v2

    #@a4
    .line 92
    const-string/jumbo v1, "no_sms"

    #@a7
    const/16 v2, 0x18

    #@a9
    aput-object v1, v0, v2

    #@ab
    .line 93
    const-string/jumbo v1, "no_fun"

    #@ae
    const/16 v2, 0x19

    #@b0
    aput-object v1, v0, v2

    #@b2
    .line 94
    const-string/jumbo v1, "no_create_windows"

    #@b5
    const/16 v2, 0x1a

    #@b7
    aput-object v1, v0, v2

    #@b9
    .line 95
    const-string/jumbo v1, "no_cross_profile_copy_paste"

    #@bc
    const/16 v2, 0x1b

    #@be
    aput-object v1, v0, v2

    #@c0
    .line 96
    const-string/jumbo v1, "no_outgoing_beam"

    #@c3
    const/16 v2, 0x1c

    #@c5
    aput-object v1, v0, v2

    #@c7
    .line 97
    const-string/jumbo v1, "no_wallpaper"

    #@ca
    const/16 v2, 0x1d

    #@cc
    aput-object v1, v0, v2

    #@ce
    .line 98
    const-string/jumbo v1, "no_safe_boot"

    #@d1
    const/16 v2, 0x1e

    #@d3
    aput-object v1, v0, v2

    #@d5
    .line 99
    const-string/jumbo v1, "allow_parent_profile_app_linking"

    #@d8
    const/16 v2, 0x1f

    #@da
    aput-object v1, v0, v2

    #@dc
    .line 100
    const-string/jumbo v1, "no_record_audio"

    #@df
    const/16 v2, 0x20

    #@e1
    aput-object v1, v0, v2

    #@e3
    .line 101
    const-string/jumbo v1, "no_camera"

    #@e6
    const/16 v2, 0x21

    #@e8
    aput-object v1, v0, v2

    #@ea
    .line 102
    const-string/jumbo v1, "no_run_in_background"

    #@ed
    const/16 v2, 0x22

    #@ef
    aput-object v1, v0, v2

    #@f1
    .line 103
    const-string/jumbo v1, "no_data_roaming"

    #@f4
    const/16 v2, 0x23

    #@f6
    aput-object v1, v0, v2

    #@f8
    .line 104
    const-string/jumbo v1, "no_set_user_icon"

    #@fb
    const/16 v2, 0x24

    #@fd
    aput-object v1, v0, v2

    #@ff
    .line 105
    const-string/jumbo v1, "no_set_wallpaper"

    #@102
    const/16 v2, 0x25

    #@104
    aput-object v1, v0, v2

    #@106
    .line 106
    const-string/jumbo v1, "no_oem_unlock"

    #@109
    const/16 v2, 0x26

    #@10b
    aput-object v1, v0, v2

    #@10d
    .line 107
    const-string/jumbo v1, "disallow_unmute_device"

    #@110
    const/16 v2, 0x27

    #@112
    aput-object v1, v0, v2

    #@114
    .line 67
    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->newSetWithUniqueCheck([Ljava/lang/String;)Ljava/util/Set;

    #@117
    move-result-object v0

    #@118
    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    #@11a
    .line 113
    new-array v0, v4, [Ljava/lang/String;

    #@11c
    .line 114
    const-string/jumbo v1, "no_record_audio"

    #@11f
    aput-object v1, v0, v3

    #@121
    .line 113
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    #@124
    move-result-object v0

    #@125
    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->NON_PERSIST_USER_RESTRICTIONS:Ljava/util/Set;

    #@127
    .line 120
    const/16 v0, 0xd

    #@129
    new-array v0, v0, [Ljava/lang/String;

    #@12b
    .line 121
    const-string/jumbo v1, "no_usb_file_transfer"

    #@12e
    aput-object v1, v0, v3

    #@130
    .line 122
    const-string/jumbo v1, "no_config_tethering"

    #@133
    aput-object v1, v0, v4

    #@135
    .line 123
    const-string/jumbo v1, "no_network_reset"

    #@138
    aput-object v1, v0, v5

    #@13a
    .line 124
    const-string/jumbo v1, "no_factory_reset"

    #@13d
    aput-object v1, v0, v6

    #@13f
    .line 125
    const-string/jumbo v1, "no_add_user"

    #@142
    aput-object v1, v0, v7

    #@144
    .line 126
    const-string/jumbo v1, "no_config_cell_broadcasts"

    #@147
    const/4 v2, 0x5

    #@148
    aput-object v1, v0, v2

    #@14a
    .line 127
    const-string/jumbo v1, "no_config_mobile_networks"

    #@14d
    const/4 v2, 0x6

    #@14e
    aput-object v1, v0, v2

    #@150
    .line 128
    const-string/jumbo v1, "no_physical_media"

    #@153
    const/4 v2, 0x7

    #@154
    aput-object v1, v0, v2

    #@156
    .line 129
    const-string/jumbo v1, "no_sms"

    #@159
    const/16 v2, 0x8

    #@15b
    aput-object v1, v0, v2

    #@15d
    .line 130
    const-string/jumbo v1, "no_fun"

    #@160
    const/16 v2, 0x9

    #@162
    aput-object v1, v0, v2

    #@164
    .line 131
    const-string/jumbo v1, "no_safe_boot"

    #@167
    const/16 v2, 0xa

    #@169
    aput-object v1, v0, v2

    #@16b
    .line 132
    const-string/jumbo v1, "no_create_windows"

    #@16e
    const/16 v2, 0xb

    #@170
    aput-object v1, v0, v2

    #@172
    .line 133
    const-string/jumbo v1, "no_data_roaming"

    #@175
    const/16 v2, 0xc

    #@177
    aput-object v1, v0, v2

    #@179
    .line 120
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    #@17c
    move-result-object v0

    #@17d
    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;

    #@17f
    .line 139
    new-array v0, v6, [Ljava/lang/String;

    #@181
    .line 140
    const-string/jumbo v1, "no_record_audio"

    #@184
    aput-object v1, v0, v3

    #@186
    .line 141
    const-string/jumbo v1, "no_wallpaper"

    #@189
    aput-object v1, v0, v4

    #@18b
    .line 142
    const-string/jumbo v1, "no_oem_unlock"

    #@18e
    aput-object v1, v0, v5

    #@190
    .line 139
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    #@193
    move-result-object v0

    #@194
    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->IMMUTABLE_BY_OWNERS:Ljava/util/Set;

    #@196
    .line 149
    new-array v0, v7, [Ljava/lang/String;

    #@198
    .line 150
    const-string/jumbo v1, "no_adjust_volume"

    #@19b
    aput-object v1, v0, v3

    #@19d
    .line 151
    const-string/jumbo v1, "no_run_in_background"

    #@1a0
    aput-object v1, v0, v4

    #@1a2
    .line 152
    const-string/jumbo v1, "no_unmute_microphone"

    #@1a5
    aput-object v1, v0, v5

    #@1a7
    .line 153
    const-string/jumbo v1, "disallow_unmute_device"

    #@1aa
    aput-object v1, v0, v6

    #@1ac
    .line 149
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    #@1af
    move-result-object v0

    #@1b0
    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->GLOBAL_RESTRICTIONS:Ljava/util/Set;

    #@1b2
    .line 53
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static applyUserRestriction(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "newValue"    # Z

    #@0
    .prologue
    .line 339
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v0

    #@4
    .line 340
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@7
    move-result-wide v4

    #@8
    .line 342
    .local v4, "id":J
    :try_start_0
    const-string/jumbo v10, "no_config_wifi"

    #@b
    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v10

    #@f
    if-eqz v10, :cond_1

    #@11
    .line 344
    if-eqz p3, :cond_0

    #@13
    .line 346
    const-string/jumbo v10, "wifi_networks_available_notification_on"

    #@16
    .line 347
    const/4 v11, 0x0

    #@17
    .line 345
    invoke-static {v0, v10, v11, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    .line 450
    :cond_0
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1d
    .line 324
    return-void

    #@1e
    .line 342
    :cond_1
    :try_start_1
    const-string/jumbo v10, "no_data_roaming"

    #@21
    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v10

    #@25
    if-eqz v10, :cond_2

    #@27
    .line 351
    if-eqz p3, :cond_0

    #@29
    .line 355
    new-instance v9, Landroid/telephony/SubscriptionManager;

    #@2b
    invoke-direct {v9, p0}, Landroid/telephony/SubscriptionManager;-><init>(Landroid/content/Context;)V

    #@2e
    .line 357
    .local v9, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v9}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    #@31
    move-result-object v8

    #@32
    .line 358
    .local v8, "subscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v8, :cond_a

    #@34
    .line 359
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@37
    move-result-object v7

    #@38
    .local v7, "subInfo$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@3b
    move-result v10

    #@3c
    if-eqz v10, :cond_a

    #@3e
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@41
    move-result-object v6

    #@42
    check-cast v6, Landroid/telephony/SubscriptionInfo;

    #@44
    .line 361
    .local v6, "subInfo":Landroid/telephony/SubscriptionInfo;
    new-instance v10, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v11, "data_roaming"

    #@4c
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v10

    #@50
    .line 362
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    #@53
    move-result v11

    #@54
    .line 361
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@57
    move-result-object v10

    #@58
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v10

    #@5c
    .line 362
    const-string/jumbo v11, "0"

    #@5f
    .line 360
    invoke-static {v0, v10, v11, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@62
    goto :goto_1

    #@63
    .line 449
    .end local v6    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v7    # "subInfo$iterator":Ljava/util/Iterator;
    .end local v8    # "subscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local v9    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    :catchall_0
    move-exception v10

    #@64
    .line 450
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@67
    .line 449
    throw v10

    #@68
    .line 342
    :cond_2
    :try_start_2
    const-string/jumbo v10, "no_share_location"

    #@6b
    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6e
    move-result v10

    #@6f
    if-eqz v10, :cond_3

    #@71
    .line 372
    if-eqz p3, :cond_0

    #@73
    .line 374
    const-string/jumbo v10, "location_mode"

    #@76
    .line 375
    const/4 v11, 0x0

    #@77
    .line 373
    invoke-static {v0, v10, v11, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@7a
    goto :goto_0

    #@7b
    .line 342
    :cond_3
    const-string/jumbo v10, "no_debugging_features"

    #@7e
    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@81
    move-result v10

    #@82
    if-eqz v10, :cond_4

    #@84
    .line 380
    if-eqz p3, :cond_0

    #@86
    .line 383
    if-nez p1, :cond_0

    #@88
    .line 385
    const-string/jumbo v10, "adb_enabled"

    #@8b
    const-string/jumbo v11, "0"

    #@8e
    .line 384
    invoke-static {v0, v10, v11, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@91
    goto :goto_0

    #@92
    .line 342
    :cond_4
    const-string/jumbo v10, "ensure_verify_apps"

    #@95
    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@98
    move-result v10

    #@99
    if-eqz v10, :cond_5

    #@9b
    .line 391
    if-eqz p3, :cond_0

    #@9d
    .line 393
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@a0
    move-result-object v10

    #@a1
    .line 394
    const-string/jumbo v11, "package_verifier_enable"

    #@a4
    const-string/jumbo v12, "1"

    #@a7
    .line 392
    invoke-static {v10, v11, v12, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@aa
    .line 397
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@ad
    move-result-object v10

    #@ae
    .line 398
    const-string/jumbo v11, "verifier_verify_adb_installs"

    #@b1
    const-string/jumbo v12, "1"

    #@b4
    .line 396
    invoke-static {v10, v11, v12, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@b7
    goto/16 :goto_0

    #@b9
    .line 342
    :cond_5
    const-string/jumbo v10, "no_install_unknown_sources"

    #@bc
    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bf
    move-result v10

    #@c0
    if-eqz v10, :cond_6

    #@c2
    .line 403
    if-eqz p3, :cond_0

    #@c4
    .line 405
    const-string/jumbo v10, "install_non_market_apps"

    #@c7
    const/4 v11, 0x0

    #@c8
    .line 404
    invoke-static {v0, v10, v11, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@cb
    goto/16 :goto_0

    #@cd
    .line 342
    :cond_6
    const-string/jumbo v10, "no_run_in_background"

    #@d0
    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d3
    move-result v10

    #@d4
    if-eqz v10, :cond_7

    #@d6
    .line 410
    if-eqz p3, :cond_0

    #@d8
    .line 411
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@db
    move-result v1

    #@dc
    .line 412
    .local v1, "currentUser":I
    if-eq v1, p1, :cond_0

    #@de
    if-eqz p1, :cond_0

    #@e0
    .line 414
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@e3
    move-result-object v10

    #@e4
    const/4 v11, 0x0

    #@e5
    const/4 v12, 0x0

    #@e6
    invoke-interface {v10, p1, v11, v12}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@e9
    goto/16 :goto_0

    #@eb
    .line 415
    :catch_0
    move-exception v2

    #@ec
    .line 416
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@ef
    move-result-object v10

    #@f0
    throw v10

    #@f1
    .line 342
    .end local v1    # "currentUser":I
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_7
    const-string/jumbo v10, "no_safe_boot"

    #@f4
    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f7
    move-result v10

    #@f8
    if-eqz v10, :cond_8

    #@fa
    .line 428
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@fd
    move-result-object v11

    #@fe
    .line 429
    const-string/jumbo v12, "safe_boot_disallowed"

    #@101
    .line 430
    if-eqz p3, :cond_b

    #@103
    const/4 v10, 0x1

    #@104
    .line 427
    :goto_2
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@107
    goto/16 :goto_0

    #@109
    .line 342
    :cond_8
    const-string/jumbo v10, "no_factory_reset"

    #@10c
    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10f
    move-result v10

    #@110
    if-eqz v10, :cond_9

    #@112
    .line 434
    :goto_3
    if-eqz p3, :cond_0

    #@114
    .line 436
    const-string/jumbo v10, "persistent_data_block"

    #@117
    .line 435
    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@11a
    move-result-object v3

    #@11b
    check-cast v3, Landroid/service/persistentdata/PersistentDataBlockManager;

    #@11d
    .line 437
    .local v3, "manager":Landroid/service/persistentdata/PersistentDataBlockManager;
    if-eqz v3, :cond_0

    #@11f
    .line 438
    invoke-virtual {v3}, Landroid/service/persistentdata/PersistentDataBlockManager;->getOemUnlockEnabled()Z

    #@122
    move-result v10

    #@123
    .line 437
    if-eqz v10, :cond_0

    #@125
    .line 439
    invoke-virtual {v3}, Landroid/service/persistentdata/PersistentDataBlockManager;->getFlashLockState()I

    #@128
    move-result v10

    #@129
    if-eqz v10, :cond_0

    #@12b
    .line 444
    const/4 v10, 0x0

    #@12c
    invoke-virtual {v3, v10}, Landroid/service/persistentdata/PersistentDataBlockManager;->setOemUnlockEnabled(Z)V

    #@12f
    goto/16 :goto_0

    #@131
    .line 342
    .end local v3    # "manager":Landroid/service/persistentdata/PersistentDataBlockManager;
    :cond_9
    const-string/jumbo v10, "no_oem_unlock"

    #@134
    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@137
    move-result v10

    #@138
    if-eqz v10, :cond_0

    #@13a
    goto :goto_3

    #@13b
    .line 368
    .restart local v8    # "subscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v9    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    :cond_a
    const-string/jumbo v10, "data_roaming"

    #@13e
    const-string/jumbo v11, "0"

    #@141
    .line 367
    invoke-static {v0, v10, v11, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@144
    goto/16 :goto_0

    #@146
    .line 430
    .end local v8    # "subscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local v9    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    :cond_b
    const/4 v10, 0x0

    #@147
    goto :goto_2
.end method

.method public static applyUserRestrictions(Landroid/content/Context;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "newRestrictions"    # Landroid/os/Bundle;
    .param p3, "prevRestrictions"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 306
    sget-object v4, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    #@2
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_1

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Ljava/lang/String;

    #@12
    .line 307
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@15
    move-result v2

    #@16
    .line 308
    .local v2, "newValue":Z
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@19
    move-result v3

    #@1a
    .line 310
    .local v3, "prevValue":Z
    if-eq v2, v3, :cond_0

    #@1c
    .line 311
    invoke-static {p0, p1, v0, v2}, Lcom/android/server/pm/UserRestrictionsUtils;->applyUserRestriction(Landroid/content/Context;ILjava/lang/String;Z)V

    #@1f
    goto :goto_0

    #@20
    .line 305
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "newValue":Z
    .end local v3    # "prevValue":Z
    :cond_1
    return-void
.end method

.method public static areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 6
    .param p0, "a"    # Landroid/os/Bundle;
    .param p1, "b"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 276
    if-ne p0, p1, :cond_0

    #@4
    .line 277
    return v5

    #@5
    .line 279
    :cond_0
    invoke-static {p0}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_1

    #@b
    .line 280
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    #@e
    move-result v2

    #@f
    return v2

    #@10
    .line 282
    :cond_1
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_2

    #@16
    .line 283
    return v4

    #@17
    .line 285
    :cond_2
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@1a
    move-result-object v2

    #@1b
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v1

    #@1f
    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_4

    #@25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Ljava/lang/String;

    #@2b
    .line 286
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@2e
    move-result v2

    #@2f
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@32
    move-result v3

    #@33
    if-eq v2, v3, :cond_3

    #@35
    .line 287
    return v4

    #@36
    .line 290
    .end local v0    # "key":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@39
    move-result-object v2

    #@3a
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3d
    move-result-object v1

    #@3e
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@41
    move-result v2

    #@42
    if-eqz v2, :cond_6

    #@44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@47
    move-result-object v0

    #@48
    check-cast v0, Ljava/lang/String;

    #@4a
    .line 291
    .restart local v0    # "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@4d
    move-result v2

    #@4e
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@51
    move-result v3

    #@52
    if-eq v2, v3, :cond_5

    #@54
    .line 292
    return v4

    #@55
    .line 295
    .end local v0    # "key":Ljava/lang/String;
    :cond_6
    return v5
.end method

.method public static canDeviceOwnerChange(Ljava/lang/String;)Z
    .locals 1
    .param p0, "restriction"    # Ljava/lang/String;

    #@0
    .prologue
    .line 237
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->IMMUTABLE_BY_OWNERS:Ljava/util/Set;

    #@2
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x1

    #@b
    goto :goto_0
.end method

.method public static canProfileOwnerChange(Ljava/lang/String;I)Z
    .locals 2
    .param p0, "restriction"    # Ljava/lang/String;
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 245
    sget-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->IMMUTABLE_BY_OWNERS:Ljava/util/Set;

    #@3
    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 246
    if-eqz p1, :cond_1

    #@b
    .line 247
    sget-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;

    #@d
    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@10
    move-result v1

    #@11
    .line 246
    if-eqz v1, :cond_1

    #@13
    .line 245
    :cond_0
    :goto_0
    return v0

    #@14
    .line 246
    :cond_1
    const/4 v0, 0x1

    #@15
    goto :goto_0
.end method

.method public static clone(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p0, "in"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 217
    if-eqz p0, :cond_0

    #@2
    new-instance v0, Landroid/os/Bundle;

    #@4
    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@7
    :goto_0
    return-object v0

    #@8
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    #@a
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@d
    goto :goto_0
.end method

.method public static dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "restrictions"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 455
    const/4 v2, 0x1

    #@1
    .line 456
    .local v2, "noneSet":Z
    if-eqz p2, :cond_3

    #@3
    .line 457
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@6
    move-result-object v3

    #@7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_1

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/lang/String;

    #@17
    .line 458
    .local v0, "key":Ljava/lang/String;
    const/4 v3, 0x0

    #@18
    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 459
    new-instance v3, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@32
    .line 460
    const/4 v2, 0x0

    #@33
    goto :goto_0

    #@34
    .line 463
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_2

    #@36
    .line 464
    new-instance v3, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v3

    #@3f
    const-string/jumbo v4, "none"

    #@42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v3

    #@4a
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4d
    .line 454
    .end local v1    # "key$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    return-void

    #@4e
    .line 467
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    const-string/jumbo v4, "null"

    #@5a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v3

    #@5e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v3

    #@62
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@65
    goto :goto_1
.end method

.method public static isEmpty(Landroid/os/Bundle;)Z
    .locals 3
    .param p0, "in"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 206
    if-eqz p0, :cond_0

    #@4
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_1

    #@a
    :cond_0
    :goto_0
    return v0

    #@b
    :cond_1
    move v0, v1

    #@c
    goto :goto_0
.end method

.method public static isValidRestriction(Ljava/lang/String;)Z
    .locals 3
    .param p0, "restriction"    # Ljava/lang/String;

    #@0
    .prologue
    .line 160
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    #@2
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 161
    const-string/jumbo v0, "UserRestrictionsUtils"

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "Unknown restriction: "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 162
    const/4 v0, 0x0

    #@23
    return v0

    #@24
    .line 164
    :cond_0
    const/4 v0, 0x1

    #@25
    return v0
.end method

.method public static merge(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 5
    .param p0, "dest"    # Landroid/os/Bundle;
    .param p1, "in"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 221
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 222
    if-eq p0, p1, :cond_0

    #@7
    move v2, v3

    #@8
    :goto_0
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    #@b
    .line 223
    if-nez p1, :cond_1

    #@d
    .line 224
    return-void

    #@e
    :cond_0
    move v2, v4

    #@f
    .line 222
    goto :goto_0

    #@10
    .line 226
    :cond_1
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@13
    move-result-object v2

    #@14
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v1

    #@18
    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_3

    #@1e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Ljava/lang/String;

    #@24
    .line 227
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_2

    #@2a
    .line 228
    invoke-virtual {p0, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@2d
    goto :goto_1

    #@2e
    .line 220
    .end local v0    # "key":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private static newSetWithUniqueCheck([Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .param p0, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 60
    invoke-static {p0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    #@3
    move-result-object v0

    #@4
    .line 63
    .local v0, "ret":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    #@7
    move-result v1

    #@8
    array-length v2, p0

    #@9
    if-ne v1, v2, :cond_0

    #@b
    const/4 v1, 0x1

    #@c
    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    #@f
    .line 64
    return-object v0

    #@10
    .line 63
    :cond_0
    const/4 v1, 0x0

    #@11
    goto :goto_0
.end method

.method public static nonNull(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p0, "in"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 202
    if-eqz p0, :cond_0

    #@2
    .end local p0    # "in":Landroid/os/Bundle;
    :goto_0
    return-object p0

    #@3
    .restart local p0    # "in":Landroid/os/Bundle;
    :cond_0
    new-instance p0, Landroid/os/Bundle;

    #@5
    .end local p0    # "in":Landroid/os/Bundle;
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    #@8
    goto :goto_0
.end method

.method public static readRestrictions(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    .locals 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "restrictions"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 190
    sget-object v3, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    #@3
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v1

    #@7
    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_1

    #@d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Ljava/lang/String;

    #@13
    .line 191
    .local v0, "key":Ljava/lang/String;
    invoke-interface {p0, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    .line 192
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@19
    .line 193
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@1c
    move-result v3

    #@1d
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@20
    goto :goto_0

    #@21
    .line 189
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static sortToGlobalAndLocal(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4
    .param p0, "in"    # Landroid/os/Bundle;
    .param p1, "global"    # Landroid/os/Bundle;
    .param p2, "local"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 256
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_1

    #@9
    .line 257
    :cond_0
    return-void

    #@a
    .line 259
    :cond_1
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@d
    move-result-object v2

    #@e
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v1

    #@12
    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_5

    #@18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Ljava/lang/String;

    #@1e
    .line 260
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_2

    #@24
    .line 263
    sget-object v2, Lcom/android/server/pm/UserRestrictionsUtils;->DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;

    #@26
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@29
    move-result v2

    #@2a
    if-nez v2, :cond_3

    #@2c
    sget-object v2, Lcom/android/server/pm/UserRestrictionsUtils;->GLOBAL_RESTRICTIONS:Ljava/util/Set;

    #@2e
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@31
    move-result v2

    #@32
    if-eqz v2, :cond_4

    #@34
    .line 264
    :cond_3
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@37
    goto :goto_0

    #@38
    .line 266
    :cond_4
    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@3b
    goto :goto_0

    #@3c
    .line 255
    .end local v0    # "key":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method public static writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 169
    if-nez p1, :cond_0

    #@3
    .line 170
    return-void

    #@4
    .line 173
    :cond_0
    invoke-interface {p0, v5, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 174
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@a
    move-result-object v2

    #@b
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_3

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Ljava/lang/String;

    #@1b
    .line 175
    .local v0, "key":Ljava/lang/String;
    sget-object v2, Lcom/android/server/pm/UserRestrictionsUtils;->NON_PERSIST_USER_RESTRICTIONS:Ljava/util/Set;

    #@1d
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@20
    move-result v2

    #@21
    if-nez v2, :cond_1

    #@23
    .line 178
    sget-object v2, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    #@25
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_2

    #@2b
    .line 179
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@2e
    move-result v2

    #@2f
    if-eqz v2, :cond_1

    #@31
    .line 180
    const-string/jumbo v2, "true"

    #@34
    invoke-interface {p0, v5, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@37
    goto :goto_0

    #@38
    .line 184
    :cond_2
    const-string/jumbo v2, "UserRestrictionsUtils"

    #@3b
    new-instance v3, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v4, "Unknown user restriction detected: "

    #@43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v3

    #@4f
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@52
    goto :goto_0

    #@53
    .line 186
    .end local v0    # "key":Ljava/lang/String;
    :cond_3
    invoke-interface {p0, v5, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@56
    .line 168
    return-void
.end method
