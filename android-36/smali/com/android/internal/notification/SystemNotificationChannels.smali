.class public Lcom/android/internal/notification/SystemNotificationChannels;
.super Ljava/lang/Object;
.source "SystemNotificationChannels.java"


# static fields
.field public static final blacklist ABUSIVE_BACKGROUND_APPS:Ljava/lang/String; = "ABUSIVE_BACKGROUND_APPS"

.field public static final blacklist ACCESSIBILITY_HEARING_DEVICE:Ljava/lang/String; = "ACCESSIBILITY_HEARING_DEVICE"

.field public static final blacklist ACCESSIBILITY_MAGNIFICATION:Ljava/lang/String; = "ACCESSIBILITY_MAGNIFICATION"

.field public static final blacklist ACCESSIBILITY_SECURITY_POLICY:Ljava/lang/String; = "ACCESSIBILITY_SECURITY_POLICY"

.field public static final blacklist ACCOUNT:Ljava/lang/String; = "ACCOUNT"

.field public static final blacklist ALERTS:Ljava/lang/String; = "ALERTS"

.field public static final blacklist CAR_MODE:Ljava/lang/String; = "CAR_MODE"

.field public static final blacklist DEVELOPER:Ljava/lang/String; = "DEVELOPER"

.field public static final blacklist DEVELOPER_IMPORTANT:Ljava/lang/String; = "DEVELOPER_IMPORTANT"

.field public static final blacklist DEVICE_ADMIN:Ljava/lang/String; = "DEVICE_ADMIN_ALERTS"

.field public static final blacklist DEVICE_ADMIN_DEPRECATED:Ljava/lang/String; = "DEVICE_ADMIN"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist FOREGROUND_SERVICE:Ljava/lang/String; = "FOREGROUND_SERVICE"

.field public static final blacklist HEAVY_WEIGHT_APP:Ljava/lang/String; = "HEAVY_WEIGHT_APP"

.field public static final blacklist NETWORK_ALERTS:Ljava/lang/String; = "NETWORK_ALERTS"

.field public static final blacklist NETWORK_AVAILABLE:Ljava/lang/String; = "NETWORK_AVAILABLE"

.field public static final blacklist NETWORK_STATUS:Ljava/lang/String; = "NETWORK_STATUS"

.field static final blacklist OBSOLETE_DO_NOT_DISTURB:Ljava/lang/String; = "DO_NOT_DISTURB"

.field public static final blacklist PHYSICAL_KEYBOARD:Ljava/lang/String; = "PHYSICAL_KEYBOARD"

.field public static final blacklist RETAIL_MODE:Ljava/lang/String; = "RETAIL_MODE"

.field public static final blacklist SECURITY:Ljava/lang/String; = "SECURITY"

.field public static final blacklist SYSTEM_CHANGES:Ljava/lang/String; = "SYSTEM_CHANGES_ALERTS"

.field public static final blacklist SYSTEM_CHANGES_DEPRECATED:Ljava/lang/String; = "SYSTEM_CHANGES"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TIME:Ljava/lang/String; = "TIME"

.field public static final blacklist UPDATES:Ljava/lang/String; = "UPDATES"

.field public static final blacklist USB:Ljava/lang/String; = "USB"

.field public static blacklist VIRTUAL_KEYBOARD:Ljava/lang/String; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist VPN:Ljava/lang/String; = "VPN"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    const-string v0, "VIRTUAL_KEYBOARD"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->VIRTUAL_KEYBOARD:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createAccountChannelForPackage(Ljava/lang/String;ILandroid/content/Context;)V
    .registers 8
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 254
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    .line 256
    .local v0, "iNotificationManager":Landroid/app/INotificationManager;
    :try_start_4
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/app/NotificationChannel;

    .line 257
    invoke-static {p2}, Lcom/android/internal/notification/SystemNotificationChannels;->newAccountChannel(Landroid/content/Context;)Landroid/app/NotificationChannel;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 256
    invoke-interface {v0, p0, p1, v1}, Landroid/app/INotificationManager;->createNotificationChannelsForPackage(Ljava/lang/String;ILandroid/content/pm/ParceledListSlice;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1a} :catch_1c

    .line 260
    nop

    .line 261
    return-void

    .line 258
    :catch_1c
    move-exception v1

    .line 259
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static blacklist createAll(Landroid/content/Context;)V
    .registers 28
    .param p0, "context"    # Landroid/content/Context;

    .line 79
    move-object/from16 v0, p0

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 80
    .local v1, "nm":Landroid/app/NotificationManager;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v2, "channelsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    new-instance v3, Landroid/app/NotificationChannel;

    .line 83
    const v4, 0x10406cd

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "PHYSICAL_KEYBOARD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v4, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 85
    .local v3, "physicalKeyboardChannel":Landroid/app/NotificationChannel;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 86
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v5, Landroid/app/NotificationChannel;

    .line 90
    const v7, 0x10406cf

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "SECURITY"

    invoke-direct {v5, v8, v7, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 92
    .local v5, "security":Landroid/app/NotificationChannel;
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v7, Landroid/app/NotificationChannel;

    .line 96
    const v8, 0x10406c0

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "CAR_MODE"

    invoke-direct {v7, v9, v8, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 98
    .local v7, "car":Landroid/app/NotificationChannel;
    invoke-virtual {v7, v4}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 99
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-static {v0}, Lcom/android/internal/notification/SystemNotificationChannels;->newAccountChannel(Landroid/content/Context;)Landroid/app/NotificationChannel;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v8, Landroid/app/NotificationChannel;

    .line 105
    const v9, 0x10406c1

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "DEVELOPER"

    invoke-direct {v8, v10, v9, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 107
    .local v8, "developer":Landroid/app/NotificationChannel;
    invoke-virtual {v8, v4}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 108
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v9, Landroid/app/NotificationChannel;

    .line 112
    const v10, 0x10406c2

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "DEVELOPER_IMPORTANT"

    const/4 v12, 0x4

    invoke-direct {v9, v11, v10, v12}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 114
    .local v9, "developerImportant":Landroid/app/NotificationChannel;
    invoke-virtual {v8, v4}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 115
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v10, Landroid/app/NotificationChannel;

    .line 119
    const v11, 0x10406d5

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v13, "UPDATES"

    invoke-direct {v10, v13, v11, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 121
    .local v10, "updates":Landroid/app/NotificationChannel;
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v11, Landroid/app/NotificationChannel;

    .line 125
    const v13, 0x10406cc

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "NETWORK_STATUS"

    invoke-direct {v11, v14, v13, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 127
    .local v11, "network":Landroid/app/NotificationChannel;
    invoke-virtual {v11, v4}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 128
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v13, Landroid/app/NotificationChannel;

    .line 132
    const v14, 0x10406ca

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "NETWORK_ALERTS"

    invoke-direct {v13, v15, v14, v12}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 134
    .local v13, "networkAlertsChannel":Landroid/app/NotificationChannel;
    invoke-virtual {v13, v4}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 135
    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v14, Landroid/app/NotificationChannel;

    .line 139
    const v15, 0x10406cb

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v12, "NETWORK_AVAILABLE"

    invoke-direct {v14, v12, v15, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 141
    .local v14, "networkAvailable":Landroid/app/NotificationChannel;
    invoke-virtual {v14, v4}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 142
    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v12, Landroid/app/NotificationChannel;

    .line 146
    const v15, 0x10406d8

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v4, "VPN"

    invoke-direct {v12, v4, v15, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 148
    .local v12, "vpn":Landroid/app/NotificationChannel;
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v4, Landroid/app/NotificationChannel;

    .line 152
    const v15, 0x10406d4

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v6, "TIME"

    move-object/from16 v17, v3

    .end local v3    # "physicalKeyboardChannel":Landroid/app/NotificationChannel;
    .local v17, "physicalKeyboardChannel":Landroid/app/NotificationChannel;
    const/4 v3, 0x3

    invoke-direct {v4, v6, v15, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 154
    .local v4, "time":Landroid/app/NotificationChannel;
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v6, Landroid/app/NotificationChannel;

    .line 158
    invoke-static {v0}, Lcom/android/internal/notification/SystemNotificationChannels;->getDeviceAdminNotificationChannelName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    const-string v3, "DEVICE_ADMIN_ALERTS"

    move-object/from16 v19, v4

    const/4 v4, 0x4

    .end local v4    # "time":Landroid/app/NotificationChannel;
    .local v19, "time":Landroid/app/NotificationChannel;
    invoke-direct {v6, v3, v15, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 160
    .local v6, "deviceAdmin":Landroid/app/NotificationChannel;
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v3, Landroid/app/NotificationChannel;

    .line 164
    const v4, 0x10406be

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v15, "ALERTS"

    move-object/from16 v20, v5

    const/4 v5, 0x3

    .end local v5    # "security":Landroid/app/NotificationChannel;
    .local v20, "security":Landroid/app/NotificationChannel;
    invoke-direct {v3, v15, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 166
    .local v3, "alertsChannel":Landroid/app/NotificationChannel;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v4, Landroid/app/NotificationChannel;

    .line 170
    const v5, 0x10406ce

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v15, "RETAIL_MODE"

    move-object/from16 v21, v3

    const/4 v3, 0x2

    .end local v3    # "alertsChannel":Landroid/app/NotificationChannel;
    .local v21, "alertsChannel":Landroid/app/NotificationChannel;
    invoke-direct {v4, v15, v5, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 172
    .local v4, "retail":Landroid/app/NotificationChannel;
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v3, Landroid/app/NotificationChannel;

    .line 176
    const v5, 0x10406d6

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v15, "USB"

    move-object/from16 v22, v4

    const/4 v4, 0x1

    .end local v4    # "retail":Landroid/app/NotificationChannel;
    .local v22, "retail":Landroid/app/NotificationChannel;
    invoke-direct {v3, v15, v5, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 178
    .local v3, "usb":Landroid/app/NotificationChannel;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v4, Landroid/app/NotificationChannel;

    .line 182
    const v5, 0x10406c6

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v15, "FOREGROUND_SERVICE"

    move-object/from16 v23, v3

    const/4 v3, 0x2

    .end local v3    # "usb":Landroid/app/NotificationChannel;
    .local v23, "usb":Landroid/app/NotificationChannel;
    invoke-direct {v4, v15, v5, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 184
    .local v4, "foregroundChannel":Landroid/app/NotificationChannel;
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 185
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v3, Landroid/app/NotificationChannel;

    .line 189
    const v5, 0x10406c7

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v15, "HEAVY_WEIGHT_APP"

    move-object/from16 v24, v4

    const/4 v4, 0x3

    .end local v4    # "foregroundChannel":Landroid/app/NotificationChannel;
    .local v24, "foregroundChannel":Landroid/app/NotificationChannel;
    invoke-direct {v3, v15, v5, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 191
    .local v3, "heavyWeightChannel":Landroid/app/NotificationChannel;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 192
    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 193
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    .line 194
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    .line 195
    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    .line 192
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 196
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v4, Landroid/app/NotificationChannel;

    .line 199
    const v15, 0x10406d3

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v5, "SYSTEM_CHANGES_ALERTS"

    move-object/from16 v26, v3

    const/4 v3, 0x3

    .end local v3    # "heavyWeightChannel":Landroid/app/NotificationChannel;
    .local v26, "heavyWeightChannel":Landroid/app/NotificationChannel;
    invoke-direct {v4, v5, v15, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 201
    .local v4, "systemChanges":Landroid/app/NotificationChannel;
    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 202
    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    .line 203
    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    .line 204
    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    .line 201
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 205
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v3, Landroid/app/NotificationChannel;

    .line 209
    const v5, 0x10406bb

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v15, "ACCESSIBILITY_MAGNIFICATION"

    move-object/from16 v18, v4

    const/4 v4, 0x4

    .end local v4    # "systemChanges":Landroid/app/NotificationChannel;
    .local v18, "systemChanges":Landroid/app/NotificationChannel;
    invoke-direct {v3, v15, v5, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 211
    .local v3, "newFeaturePrompt":Landroid/app/NotificationChannel;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 212
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    new-instance v4, Landroid/app/NotificationChannel;

    .line 216
    const v5, 0x10406ba

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v15, "ACCESSIBILITY_HEARING_DEVICE"

    move-object/from16 v25, v3

    const/4 v3, 0x4

    .end local v3    # "newFeaturePrompt":Landroid/app/NotificationChannel;
    .local v25, "newFeaturePrompt":Landroid/app/NotificationChannel;
    invoke-direct {v4, v15, v5, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 218
    .local v4, "accessibilityHearingDeviceChannel":Landroid/app/NotificationChannel;
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 219
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    new-instance v3, Landroid/app/NotificationChannel;

    .line 223
    const v5, 0x10406bc

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v15, "ACCESSIBILITY_SECURITY_POLICY"

    move-object/from16 v16, v4

    const/4 v4, 0x2

    .end local v4    # "accessibilityHearingDeviceChannel":Landroid/app/NotificationChannel;
    .local v16, "accessibilityHearingDeviceChannel":Landroid/app/NotificationChannel;
    invoke-direct {v3, v15, v5, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 225
    .local v3, "accessibilitySecurityPolicyChannel":Landroid/app/NotificationChannel;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    new-instance v5, Landroid/app/NotificationChannel;

    .line 229
    const v15, 0x10406b9

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v0, "ABUSIVE_BACKGROUND_APPS"

    invoke-direct {v5, v0, v15, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 231
    .local v5, "abusiveBackgroundAppsChannel":Landroid/app/NotificationChannel;
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannels(Ljava/util/List;)V

    .line 236
    const-string v0, "DO_NOT_DISTURB"

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method private static blacklist getDeviceAdminNotificationChannelName(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 240
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 241
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v2, Lcom/android/internal/notification/SystemNotificationChannels$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/internal/notification/SystemNotificationChannels$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    const-string v3, "Core.NOTIFICATION_CHANNEL_DEVICE_ADMIN"

    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static synthetic blacklist lambda$getDeviceAdminNotificationChannelName$0(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 242
    const v0, 0x10406c3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist newAccountChannel(Landroid/content/Context;)Landroid/app/NotificationChannel;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 264
    new-instance v0, Landroid/app/NotificationChannel;

    .line 266
    const v1, 0x10406bd

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const-string v3, "ACCOUNT"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 264
    return-object v0
.end method

.method public static blacklist removeDeprecated(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 247
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 248
    .local v0, "nm":Landroid/app/NotificationManager;
    sget-object v1, Lcom/android/internal/notification/SystemNotificationChannels;->VIRTUAL_KEYBOARD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 249
    const-string v1, "DEVICE_ADMIN"

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 250
    const-string v1, "SYSTEM_CHANGES"

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 251
    return-void
.end method
