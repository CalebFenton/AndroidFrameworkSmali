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
    .line 68
    const/16 v0, 0x26

    #@7
    new-array v0, v0, [Ljava/lang/String;

    #@9
    .line 69
    const-string/jumbo v1, "no_config_wifi"

    #@c
    aput-object v1, v0, v3

    #@e
    .line 70
    const-string/jumbo v1, "no_modify_accounts"

    #@11
    aput-object v1, v0, v4

    #@13
    .line 71
    const-string/jumbo v1, "no_install_apps"

    #@16
    aput-object v1, v0, v5

    #@18
    .line 72
    const-string/jumbo v1, "no_uninstall_apps"

    #@1b
    aput-object v1, v0, v6

    #@1d
    .line 73
    const-string/jumbo v1, "no_share_location"

    #@20
    aput-object v1, v0, v7

    #@22
    .line 74
    const-string/jumbo v1, "no_install_unknown_sources"

    #@25
    const/4 v2, 0x5

    #@26
    aput-object v1, v0, v2

    #@28
    .line 75
    const-string/jumbo v1, "no_config_bluetooth"

    #@2b
    const/4 v2, 0x6

    #@2c
    aput-object v1, v0, v2

    #@2e
    .line 76
    const-string/jumbo v1, "no_usb_file_transfer"

    #@31
    const/4 v2, 0x7

    #@32
    aput-object v1, v0, v2

    #@34
    .line 77
    const-string/jumbo v1, "no_config_credentials"

    #@37
    const/16 v2, 0x8

    #@39
    aput-object v1, v0, v2

    #@3b
    .line 78
    const-string/jumbo v1, "no_remove_user"

    #@3e
    const/16 v2, 0x9

    #@40
    aput-object v1, v0, v2

    #@42
    .line 79
    const-string/jumbo v1, "no_debugging_features"

    #@45
    const/16 v2, 0xa

    #@47
    aput-object v1, v0, v2

    #@49
    .line 80
    const-string/jumbo v1, "no_config_vpn"

    #@4c
    const/16 v2, 0xb

    #@4e
    aput-object v1, v0, v2

    #@50
    .line 81
    const-string/jumbo v1, "no_config_tethering"

    #@53
    const/16 v2, 0xc

    #@55
    aput-object v1, v0, v2

    #@57
    .line 82
    const-string/jumbo v1, "no_network_reset"

    #@5a
    const/16 v2, 0xd

    #@5c
    aput-object v1, v0, v2

    #@5e
    .line 83
    const-string/jumbo v1, "no_factory_reset"

    #@61
    const/16 v2, 0xe

    #@63
    aput-object v1, v0, v2

    #@65
    .line 84
    const-string/jumbo v1, "no_add_user"

    #@68
    const/16 v2, 0xf

    #@6a
    aput-object v1, v0, v2

    #@6c
    .line 85
    const-string/jumbo v1, "ensure_verify_apps"

    #@6f
    const/16 v2, 0x10

    #@71
    aput-object v1, v0, v2

    #@73
    .line 86
    const-string/jumbo v1, "no_config_cell_broadcasts"

    #@76
    const/16 v2, 0x11

    #@78
    aput-object v1, v0, v2

    #@7a
    .line 87
    const-string/jumbo v1, "no_config_mobile_networks"

    #@7d
    const/16 v2, 0x12

    #@7f
    aput-object v1, v0, v2

    #@81
    .line 88
    const-string/jumbo v1, "no_control_apps"

    #@84
    const/16 v2, 0x13

    #@86
    aput-object v1, v0, v2

    #@88
    .line 89
    const-string/jumbo v1, "no_physical_media"

    #@8b
    const/16 v2, 0x14

    #@8d
    aput-object v1, v0, v2

    #@8f
    .line 90
    const-string/jumbo v1, "no_unmute_microphone"

    #@92
    const/16 v2, 0x15

    #@94
    aput-object v1, v0, v2

    #@96
    .line 91
    const-string/jumbo v1, "no_adjust_volume"

    #@99
    const/16 v2, 0x16

    #@9b
    aput-object v1, v0, v2

    #@9d
    .line 92
    const-string/jumbo v1, "no_outgoing_calls"

    #@a0
    const/16 v2, 0x17

    #@a2
    aput-object v1, v0, v2

    #@a4
    .line 93
    const-string/jumbo v1, "no_sms"

    #@a7
    const/16 v2, 0x18

    #@a9
    aput-object v1, v0, v2

    #@ab
    .line 94
    const-string/jumbo v1, "no_fun"

    #@ae
    const/16 v2, 0x19

    #@b0
    aput-object v1, v0, v2

    #@b2
    .line 95
    const-string/jumbo v1, "no_create_windows"

    #@b5
    const/16 v2, 0x1a

    #@b7
    aput-object v1, v0, v2

    #@b9
    .line 96
    const-string/jumbo v1, "no_cross_profile_copy_paste"

    #@bc
    const/16 v2, 0x1b

    #@be
    aput-object v1, v0, v2

    #@c0
    .line 97
    const-string/jumbo v1, "no_outgoing_beam"

    #@c3
    const/16 v2, 0x1c

    #@c5
    aput-object v1, v0, v2

    #@c7
    .line 98
    const-string/jumbo v1, "no_wallpaper"

    #@ca
    const/16 v2, 0x1d

    #@cc
    aput-object v1, v0, v2

    #@ce
    .line 99
    const-string/jumbo v1, "no_safe_boot"

    #@d1
    const/16 v2, 0x1e

    #@d3
    aput-object v1, v0, v2

    #@d5
    .line 100
    const-string/jumbo v1, "allow_parent_profile_app_linking"

    #@d8
    const/16 v2, 0x1f

    #@da
    aput-object v1, v0, v2

    #@dc
    .line 101
    const-string/jumbo v1, "no_record_audio"

    #@df
    const/16 v2, 0x20

    #@e1
    aput-object v1, v0, v2

    #@e3
    .line 102
    const-string/jumbo v1, "no_camera"

    #@e6
    const/16 v2, 0x21

    #@e8
    aput-object v1, v0, v2

    #@ea
    .line 103
    const-string/jumbo v1, "no_run_in_background"

    #@ed
    const/16 v2, 0x22

    #@ef
    aput-object v1, v0, v2

    #@f1
    .line 104
    const-string/jumbo v1, "no_data_roaming"

    #@f4
    const/16 v2, 0x23

    #@f6
    aput-object v1, v0, v2

    #@f8
    .line 105
    const-string/jumbo v1, "no_set_user_icon"

    #@fb
    const/16 v2, 0x24

    #@fd
    aput-object v1, v0, v2

    #@ff
    .line 106
    const-string/jumbo v1, "no_set_wallpaper"

    #@102
    const/16 v2, 0x25

    #@104
    aput-object v1, v0, v2

    #@106
    .line 68
    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->newSetWithUniqueCheck([Ljava/lang/String;)Ljava/util/Set;

    #@109
    move-result-object v0

    #@10a
    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    #@10c
    .line 112
    new-array v0, v4, [Ljava/lang/String;

    #@10e
    .line 113
    const-string/jumbo v1, "no_record_audio"

    #@111
    aput-object v1, v0, v3

    #@113
    .line 112
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    #@116
    move-result-object v0

    #@117
    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->NON_PERSIST_USER_RESTRICTIONS:Ljava/util/Set;

    #@119
    .line 119
    const/16 v0, 0xd

    #@11b
    new-array v0, v0, [Ljava/lang/String;

    #@11d
    .line 120
    const-string/jumbo v1, "no_usb_file_transfer"

    #@120
    aput-object v1, v0, v3

    #@122
    .line 121
    const-string/jumbo v1, "no_config_tethering"

    #@125
    aput-object v1, v0, v4

    #@127
    .line 122
    const-string/jumbo v1, "no_network_reset"

    #@12a
    aput-object v1, v0, v5

    #@12c
    .line 123
    const-string/jumbo v1, "no_factory_reset"

    #@12f
    aput-object v1, v0, v6

    #@131
    .line 124
    const-string/jumbo v1, "no_add_user"

    #@134
    aput-object v1, v0, v7

    #@136
    .line 125
    const-string/jumbo v1, "no_config_cell_broadcasts"

    #@139
    const/4 v2, 0x5

    #@13a
    aput-object v1, v0, v2

    #@13c
    .line 126
    const-string/jumbo v1, "no_config_mobile_networks"

    #@13f
    const/4 v2, 0x6

    #@140
    aput-object v1, v0, v2

    #@142
    .line 127
    const-string/jumbo v1, "no_physical_media"

    #@145
    const/4 v2, 0x7

    #@146
    aput-object v1, v0, v2

    #@148
    .line 128
    const-string/jumbo v1, "no_sms"

    #@14b
    const/16 v2, 0x8

    #@14d
    aput-object v1, v0, v2

    #@14f
    .line 129
    const-string/jumbo v1, "no_fun"

    #@152
    const/16 v2, 0x9

    #@154
    aput-object v1, v0, v2

    #@156
    .line 130
    const-string/jumbo v1, "no_safe_boot"

    #@159
    const/16 v2, 0xa

    #@15b
    aput-object v1, v0, v2

    #@15d
    .line 131
    const-string/jumbo v1, "no_create_windows"

    #@160
    const/16 v2, 0xb

    #@162
    aput-object v1, v0, v2

    #@164
    .line 132
    const-string/jumbo v1, "no_data_roaming"

    #@167
    const/16 v2, 0xc

    #@169
    aput-object v1, v0, v2

    #@16b
    .line 119
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    #@16e
    move-result-object v0

    #@16f
    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;

    #@171
    .line 138
    new-array v0, v5, [Ljava/lang/String;

    #@173
    .line 139
    const-string/jumbo v1, "no_record_audio"

    #@176
    aput-object v1, v0, v3

    #@178
    .line 140
    const-string/jumbo v1, "no_wallpaper"

    #@17b
    aput-object v1, v0, v4

    #@17d
    .line 138
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    #@180
    move-result-object v0

    #@181
    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->IMMUTABLE_BY_OWNERS:Ljava/util/Set;

    #@183
    .line 147
    new-array v0, v6, [Ljava/lang/String;

    #@185
    .line 148
    const-string/jumbo v1, "no_adjust_volume"

    #@188
    aput-object v1, v0, v3

    #@18a
    .line 149
    const-string/jumbo v1, "no_run_in_background"

    #@18d
    aput-object v1, v0, v4

    #@18f
    .line 150
    const-string/jumbo v1, "no_unmute_microphone"

    #@192
    aput-object v1, v0, v5

    #@194
    .line 147
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    #@197
    move-result-object v0

    #@198
    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->GLOBAL_RESTRICTIONS:Ljava/util/Set;

    #@19a
    .line 54
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static applyUserRestriction(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "newValue"    # Z

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 337
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@4
    move-result-object v0

    #@5
    .line 338
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@8
    move-result-wide v4

    #@9
    .line 340
    .local v4, "id":J
    :try_start_0
    const-string/jumbo v10, "no_config_wifi"

    #@c
    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v10

    #@10
    if-eqz v10, :cond_1

    #@12
    .line 342
    if-eqz p3, :cond_0

    #@14
    .line 344
    const-string/jumbo v9, "wifi_networks_available_notification_on"

    #@17
    .line 345
    const/4 v10, 0x0

    #@18
    .line 343
    invoke-static {v0, v9, v10, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 432
    :cond_0
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1e
    .line 322
    return-void

    #@1f
    .line 340
    :cond_1
    :try_start_1
    const-string/jumbo v10, "no_data_roaming"

    #@22
    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v10

    #@26
    if-eqz v10, :cond_2

    #@28
    .line 349
    if-eqz p3, :cond_0

    #@2a
    .line 353
    new-instance v8, Landroid/telephony/SubscriptionManager;

    #@2c
    invoke-direct {v8, p0}, Landroid/telephony/SubscriptionManager;-><init>(Landroid/content/Context;)V

    #@2f
    .line 355
    .local v8, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v8}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    #@32
    move-result-object v7

    #@33
    .line 356
    .local v7, "subscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v7, :cond_9

    #@35
    .line 357
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@38
    move-result-object v6

    #@39
    .local v6, "subInfo$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@3c
    move-result v9

    #@3d
    if-eqz v9, :cond_9

    #@3f
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@42
    move-result-object v3

    #@43
    check-cast v3, Landroid/telephony/SubscriptionInfo;

    #@45
    .line 359
    .local v3, "subInfo":Landroid/telephony/SubscriptionInfo;
    new-instance v9, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v10, "data_roaming"

    #@4d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v9

    #@51
    .line 360
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    #@54
    move-result v10

    #@55
    .line 359
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@58
    move-result-object v9

    #@59
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v9

    #@5d
    .line 360
    const-string/jumbo v10, "0"

    #@60
    .line 358
    invoke-static {v0, v9, v10, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@63
    goto :goto_1

    #@64
    .line 431
    .end local v3    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v6    # "subInfo$iterator":Ljava/util/Iterator;
    .end local v7    # "subscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local v8    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    :catchall_0
    move-exception v9

    #@65
    .line 432
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@68
    .line 431
    throw v9

    #@69
    .line 340
    :cond_2
    :try_start_2
    const-string/jumbo v10, "no_share_location"

    #@6c
    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6f
    move-result v10

    #@70
    if-eqz v10, :cond_3

    #@72
    .line 370
    if-eqz p3, :cond_0

    #@74
    .line 372
    const-string/jumbo v9, "location_mode"

    #@77
    .line 373
    const/4 v10, 0x0

    #@78
    .line 371
    invoke-static {v0, v9, v10, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@7b
    goto :goto_0

    #@7c
    .line 340
    :cond_3
    const-string/jumbo v10, "no_debugging_features"

    #@7f
    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@82
    move-result v10

    #@83
    if-eqz v10, :cond_4

    #@85
    .line 378
    if-eqz p3, :cond_0

    #@87
    .line 381
    if-nez p1, :cond_0

    #@89
    .line 383
    const-string/jumbo v9, "adb_enabled"

    #@8c
    const-string/jumbo v10, "0"

    #@8f
    .line 382
    invoke-static {v0, v9, v10, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@92
    goto :goto_0

    #@93
    .line 340
    :cond_4
    const-string/jumbo v10, "ensure_verify_apps"

    #@96
    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@99
    move-result v10

    #@9a
    if-eqz v10, :cond_5

    #@9c
    .line 389
    if-eqz p3, :cond_0

    #@9e
    .line 391
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@a1
    move-result-object v9

    #@a2
    .line 392
    const-string/jumbo v10, "package_verifier_enable"

    #@a5
    const-string/jumbo v11, "1"

    #@a8
    .line 390
    invoke-static {v9, v10, v11, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@ab
    .line 395
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@ae
    move-result-object v9

    #@af
    .line 396
    const-string/jumbo v10, "verifier_verify_adb_installs"

    #@b2
    const-string/jumbo v11, "1"

    #@b5
    .line 394
    invoke-static {v9, v10, v11, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@b8
    goto/16 :goto_0

    #@ba
    .line 340
    :cond_5
    const-string/jumbo v10, "no_install_unknown_sources"

    #@bd
    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c0
    move-result v10

    #@c1
    if-eqz v10, :cond_6

    #@c3
    .line 401
    if-eqz p3, :cond_0

    #@c5
    .line 403
    const-string/jumbo v9, "install_non_market_apps"

    #@c8
    const/4 v10, 0x0

    #@c9
    .line 402
    invoke-static {v0, v9, v10, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@cc
    goto/16 :goto_0

    #@ce
    .line 340
    :cond_6
    const-string/jumbo v10, "no_run_in_background"

    #@d1
    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d4
    move-result v10

    #@d5
    if-eqz v10, :cond_7

    #@d7
    .line 408
    if-eqz p3, :cond_0

    #@d9
    .line 409
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@dc
    move-result v1

    #@dd
    .line 410
    .local v1, "currentUser":I
    if-eq v1, p1, :cond_0

    #@df
    if-eqz p1, :cond_0

    #@e1
    .line 412
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@e4
    move-result-object v9

    #@e5
    const/4 v10, 0x0

    #@e6
    const/4 v11, 0x0

    #@e7
    invoke-interface {v9, p1, v10, v11}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@ea
    goto/16 :goto_0

    #@ec
    .line 413
    :catch_0
    move-exception v2

    #@ed
    .line 414
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@f0
    move-result-object v9

    #@f1
    throw v9

    #@f2
    .line 340
    .end local v1    # "currentUser":I
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_7
    const-string/jumbo v10, "no_safe_boot"

    #@f5
    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f8
    move-result v10

    #@f9
    if-eqz v10, :cond_0

    #@fb
    .line 426
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@fe
    move-result-object v10

    #@ff
    .line 427
    const-string/jumbo v11, "safe_boot_disallowed"

    #@102
    .line 428
    if-eqz p3, :cond_8

    #@104
    const/4 v9, 0x1

    #@105
    .line 425
    :cond_8
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@108
    goto/16 :goto_0

    #@10a
    .line 366
    .restart local v7    # "subscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v8    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    :cond_9
    const-string/jumbo v9, "data_roaming"

    #@10d
    const-string/jumbo v10, "0"

    #@110
    .line 365
    invoke-static {v0, v9, v10, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@113
    goto/16 :goto_0
.end method

.method public static applyUserRestrictions(Landroid/content/Context;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "newRestrictions"    # Landroid/os/Bundle;
    .param p3, "prevRestrictions"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 304
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
    .line 305
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@15
    move-result v2

    #@16
    .line 306
    .local v2, "newValue":Z
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@19
    move-result v3

    #@1a
    .line 308
    .local v3, "prevValue":Z
    if-eq v2, v3, :cond_0

    #@1c
    .line 309
    invoke-static {p0, p1, v0, v2}, Lcom/android/server/pm/UserRestrictionsUtils;->applyUserRestriction(Landroid/content/Context;ILjava/lang/String;Z)V

    #@1f
    goto :goto_0

    #@20
    .line 303
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
    .line 274
    if-ne p0, p1, :cond_0

    #@4
    .line 275
    return v5

    #@5
    .line 277
    :cond_0
    invoke-static {p0}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_1

    #@b
    .line 278
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    #@e
    move-result v2

    #@f
    return v2

    #@10
    .line 280
    :cond_1
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_2

    #@16
    .line 281
    return v4

    #@17
    .line 283
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
    .line 284
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
    .line 285
    return v4

    #@36
    .line 288
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
    .line 289
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
    .line 290
    return v4

    #@55
    .line 293
    .end local v0    # "key":Ljava/lang/String;
    :cond_6
    return v5
.end method

.method public static canDeviceOwnerChange(Ljava/lang/String;)Z
    .locals 1
    .param p0, "restriction"    # Ljava/lang/String;

    #@0
    .prologue
    .line 235
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
    .line 243
    sget-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->IMMUTABLE_BY_OWNERS:Ljava/util/Set;

    #@3
    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 244
    if-eqz p1, :cond_1

    #@b
    .line 245
    sget-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;

    #@d
    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@10
    move-result v1

    #@11
    .line 244
    if-eqz v1, :cond_1

    #@13
    .line 243
    :cond_0
    :goto_0
    return v0

    #@14
    .line 244
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
    .line 215
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
    .line 437
    const/4 v2, 0x1

    #@1
    .line 438
    .local v2, "noneSet":Z
    if-eqz p2, :cond_3

    #@3
    .line 439
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
    .line 440
    .local v0, "key":Ljava/lang/String;
    const/4 v3, 0x0

    #@18
    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 441
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
    .line 442
    const/4 v2, 0x0

    #@33
    goto :goto_0

    #@34
    .line 445
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_2

    #@36
    .line 446
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
    .line 436
    .end local v1    # "key$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    return-void

    #@4e
    .line 449
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
    .line 204
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
    .line 157
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    #@2
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 158
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
    .line 159
    const/4 v0, 0x0

    #@23
    return v0

    #@24
    .line 161
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
    .line 219
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 220
    if-eq p0, p1, :cond_0

    #@7
    move v2, v3

    #@8
    :goto_0
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    #@b
    .line 221
    if-nez p1, :cond_1

    #@d
    .line 222
    return-void

    #@e
    :cond_0
    move v2, v4

    #@f
    .line 220
    goto :goto_0

    #@10
    .line 224
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
    .line 225
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_2

    #@2a
    .line 226
    invoke-virtual {p0, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@2d
    goto :goto_1

    #@2e
    .line 218
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
    .line 61
    invoke-static {p0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    #@3
    move-result-object v0

    #@4
    .line 64
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
    .line 65
    return-object v0

    #@10
    .line 64
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
    .line 200
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 188
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
    .line 189
    .local v0, "key":Ljava/lang/String;
    invoke-interface {p0, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    .line 190
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@19
    .line 191
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@1c
    move-result v3

    #@1d
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@20
    goto :goto_0

    #@21
    .line 187
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
    .line 254
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_1

    #@9
    .line 255
    :cond_0
    return-void

    #@a
    .line 257
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
    .line 258
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_2

    #@24
    .line 261
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
    .line 262
    :cond_3
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@37
    goto :goto_0

    #@38
    .line 264
    :cond_4
    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@3b
    goto :goto_0

    #@3c
    .line 253
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
    .line 166
    if-nez p1, :cond_0

    #@3
    .line 167
    return-void

    #@4
    .line 170
    :cond_0
    invoke-interface {p0, v5, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 171
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
    .line 172
    .local v0, "key":Ljava/lang/String;
    sget-object v2, Lcom/android/server/pm/UserRestrictionsUtils;->NON_PERSIST_USER_RESTRICTIONS:Ljava/util/Set;

    #@1d
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@20
    move-result v2

    #@21
    if-nez v2, :cond_1

    #@23
    .line 175
    sget-object v2, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    #@25
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_2

    #@2b
    .line 176
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@2e
    move-result v2

    #@2f
    if-eqz v2, :cond_1

    #@31
    .line 177
    const-string/jumbo v2, "true"

    #@34
    invoke-interface {p0, v5, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@37
    goto :goto_0

    #@38
    .line 181
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
    .line 183
    .end local v0    # "key":Ljava/lang/String;
    :cond_3
    invoke-interface {p0, v5, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@56
    .line 165
    return-void
.end method
