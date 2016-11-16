.class public Lcom/android/server/connectivity/NetworkNotificationManager;
.super Ljava/lang/Object;
.source "NetworkNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final NOTIFICATION_ID:Ljava/lang/String; = "Connectivity.Notification"

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 42
    const-class v0, Lcom/android/server/connectivity/NetworkNotificationManager;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    #@8
    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;Landroid/app/NotificationManager;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "t"    # Landroid/telephony/TelephonyManager;
    .param p3, "n"    # Landroid/app/NotificationManager;

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    #@5
    .line 52
    iput-object p2, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@7
    .line 53
    iput-object p3, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    #@9
    .line 50
    return-void
.end method

.method private static getFirstTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I
    .locals 2
    .param p0, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 58
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    const/16 v1, 0x40

    #@3
    if-ge v0, v1, :cond_1

    #@5
    .line 59
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@7
    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    return v0

    #@e
    .line 58
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 61
    :cond_1
    const/4 v1, -0x1

    #@12
    return v1
.end method

.method private static getIcon(I)I
    .locals 1
    .param p0, "transportType"    # I

    #@0
    .prologue
    .line 75
    const/4 v0, 0x1

    #@1
    if-ne p0, v0, :cond_0

    #@3
    .line 76
    const v0, 0x10806d6

    #@6
    .line 75
    :goto_0
    return v0

    #@7
    .line 77
    :cond_0
    const v0, 0x10806d2

    #@a
    goto :goto_0
.end method

.method private static getTransportName(I)Ljava/lang/String;
    .locals 4
    .param p0, "transportType"    # I

    #@0
    .prologue
    .line 65
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@3
    move-result-object v2

    #@4
    .line 66
    .local v2, "r":Landroid/content/res/Resources;
    const v3, 0x1070059

    #@7
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 68
    .local v1, "networkTypes":[Ljava/lang/String;
    :try_start_0
    aget-object v3, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    return-object v3

    #@e
    .line 69
    :catch_0
    move-exception v0

    #@f
    .line 70
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const v3, 0x10403e2

    #@12
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    return-object v3
.end method


# virtual methods
.method public clearNotification(I)V
    .locals 4
    .param p1, "id"    # I

    #@0
    .prologue
    .line 196
    sget-object v1, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    #@2
    new-instance v2, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v3, "clearNotification id="

    #@a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    #@1b
    const-string/jumbo v2, "Connectivity.Notification"

    #@1e
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@20
    invoke-virtual {v1, v2, p1, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    .line 194
    :goto_0
    return-void

    #@24
    .line 200
    :catch_0
    move-exception v0

    #@25
    .line 201
    .local v0, "npe":Ljava/lang/NullPointerException;
    sget-object v1, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    #@27
    new-instance v2, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v3, "setNotificationVisible: cancel notificationManager npe="

    #@2f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    goto :goto_0
.end method

.method public setProvNotificationVisible(ZILjava/lang/String;)V
    .locals 8
    .param p1, "visible"    # Z
    .param p2, "id"    # I
    .param p3, "action"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 209
    if-eqz p1, :cond_0

    #@4
    .line 210
    new-instance v7, Landroid/content/Intent;

    #@6
    invoke-direct {v7, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@9
    .line 211
    .local v7, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    #@b
    invoke-static {v0, v6, v7, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@e
    move-result-object v5

    #@f
    .line 212
    .local v5, "pendingIntent":Landroid/app/PendingIntent;
    sget-object v2, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    #@11
    move-object v0, p0

    #@12
    move v1, p2

    #@13
    move-object v4, v3

    #@14
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/connectivity/NetworkNotificationManager;->showNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/app/PendingIntent;Z)V

    #@17
    .line 208
    .end local v5    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v7    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    #@18
    .line 214
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(I)V

    #@1b
    goto :goto_0
.end method

.method public showNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/app/PendingIntent;Z)V
    .locals 16
    .param p1, "id"    # I
    .param p2, "notifyType"    # Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    .param p3, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p4, "switchToNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p5, "intent"    # Landroid/app/PendingIntent;
    .param p6, "highPriority"    # Z

    #@0
    .prologue
    .line 105
    if-eqz p3, :cond_0

    #@2
    .line 106
    invoke-static/range {p3 .. p3}, Lcom/android/server/connectivity/NetworkNotificationManager;->getFirstTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    #@5
    move-result v12

    #@6
    .line 107
    .local v12, "transportType":I
    move-object/from16 v0, p3

    #@8
    iget-object v13, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@a
    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    #@d
    move-result-object v4

    #@e
    .line 109
    .local v4, "extraInfo":Ljava/lang/String;
    move-object/from16 v0, p3

    #@10
    iget-object v13, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@12
    const/16 v14, 0xc

    #@14
    invoke-virtual {v13, v14}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@17
    move-result v13

    #@18
    if-nez v13, :cond_1

    #@1a
    return-void

    #@1b
    .line 112
    .end local v4    # "extraInfo":Ljava/lang/String;
    .end local v12    # "transportType":I
    :cond_0
    const/4 v12, 0x0

    #@1c
    .line 113
    .restart local v12    # "transportType":I
    const/4 v4, 0x0

    #@1d
    .line 117
    :cond_1
    sget-object v13, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    #@1f
    new-instance v14, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v15, "showNotification "

    #@27
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v14

    #@2b
    move-object/from16 v0, p2

    #@2d
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v14

    #@31
    .line 118
    const-string/jumbo v15, " transportType="

    #@34
    .line 117
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v14

    #@38
    .line 118
    invoke-static {v12}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    #@3b
    move-result-object v15

    #@3c
    .line 117
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v14

    #@40
    .line 119
    const-string/jumbo v15, " extraInfo="

    #@43
    .line 117
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v14

    #@47
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v14

    #@4b
    .line 119
    const-string/jumbo v15, " highPriority="

    #@4e
    .line 117
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v14

    #@52
    move/from16 v0, p6

    #@54
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@57
    move-result-object v14

    #@58
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v14

    #@5c
    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5f
    .line 122
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@62
    move-result-object v9

    #@63
    .line 125
    .local v9, "r":Landroid/content/res/Resources;
    invoke-static {v12}, Lcom/android/server/connectivity/NetworkNotificationManager;->getIcon(I)I

    #@66
    move-result v6

    #@67
    .line 126
    .local v6, "icon":I
    sget-object v13, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NO_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    #@69
    move-object/from16 v0, p2

    #@6b
    if-ne v0, v13, :cond_2

    #@6d
    const/4 v13, 0x1

    #@6e
    if-ne v12, v13, :cond_2

    #@70
    .line 127
    const/4 v13, 0x1

    #@71
    new-array v13, v13, [Ljava/lang/Object;

    #@73
    const/4 v14, 0x0

    #@74
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@77
    move-result-object v14

    #@78
    const/4 v15, 0x0

    #@79
    aput-object v14, v13, v15

    #@7b
    const v14, 0x10403dd

    #@7e
    invoke-virtual {v9, v14, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@81
    move-result-object v10

    #@82
    .line 128
    .local v10, "title":Ljava/lang/CharSequence;
    const v13, 0x10403de

    #@85
    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@88
    move-result-object v3

    #@89
    .line 162
    .local v3, "details":Ljava/lang/CharSequence;
    :goto_0
    new-instance v13, Landroid/app/Notification$Builder;

    #@8b
    move-object/from16 v0, p0

    #@8d
    iget-object v14, v0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    #@8f
    invoke-direct {v13, v14}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@92
    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@95
    move-result-wide v14

    #@96
    .line 162
    invoke-virtual {v13, v14, v15}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@99
    move-result-object v14

    #@9a
    .line 164
    sget-object v13, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NETWORK_SWITCH:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    #@9c
    move-object/from16 v0, p2

    #@9e
    if-ne v0, v13, :cond_6

    #@a0
    const/4 v13, 0x1

    #@a1
    .line 162
    :goto_1
    invoke-virtual {v14, v13}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    #@a4
    move-result-object v13

    #@a5
    invoke-virtual {v13, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@a8
    move-result-object v13

    #@a9
    .line 166
    const/4 v14, 0x1

    #@aa
    .line 162
    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    #@ad
    move-result-object v13

    #@ae
    invoke-virtual {v13, v10}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@b1
    move-result-object v13

    #@b2
    .line 168
    move-object/from16 v0, p0

    #@b4
    iget-object v14, v0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    #@b6
    .line 169
    const v15, 0x106005b

    #@b9
    .line 168
    invoke-virtual {v14, v15}, Landroid/content/Context;->getColor(I)I

    #@bc
    move-result v14

    #@bd
    .line 162
    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@c0
    move-result-object v13

    #@c1
    invoke-virtual {v13, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@c4
    move-result-object v13

    #@c5
    move-object/from16 v0, p5

    #@c7
    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@ca
    move-result-object v13

    #@cb
    .line 172
    const/4 v14, 0x1

    #@cc
    .line 162
    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    #@cf
    move-result-object v14

    #@d0
    .line 173
    if-eqz p6, :cond_7

    #@d2
    .line 174
    const/4 v13, 0x1

    #@d3
    .line 162
    :goto_2
    invoke-virtual {v14, v13}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    #@d6
    move-result-object v14

    #@d7
    .line 176
    if-eqz p6, :cond_8

    #@d9
    const/4 v13, -0x1

    #@da
    .line 162
    :goto_3
    invoke-virtual {v14, v13}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    #@dd
    move-result-object v13

    #@de
    .line 177
    const/4 v14, 0x1

    #@df
    .line 162
    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    #@e2
    move-result-object v2

    #@e3
    .line 179
    .local v2, "builder":Landroid/app/Notification$Builder;
    sget-object v13, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NETWORK_SWITCH:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    #@e5
    move-object/from16 v0, p2

    #@e7
    if-ne v0, v13, :cond_9

    #@e9
    .line 180
    new-instance v13, Landroid/app/Notification$BigTextStyle;

    #@eb
    invoke-direct {v13}, Landroid/app/Notification$BigTextStyle;-><init>()V

    #@ee
    invoke-virtual {v13, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    #@f1
    move-result-object v13

    #@f2
    invoke-virtual {v2, v13}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    #@f5
    .line 185
    :goto_4
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@f8
    move-result-object v7

    #@f9
    .line 188
    .local v7, "notification":Landroid/app/Notification;
    :try_start_0
    move-object/from16 v0, p0

    #@fb
    iget-object v13, v0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    #@fd
    const-string/jumbo v14, "Connectivity.Notification"

    #@100
    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@102
    move/from16 v0, p1

    #@104
    invoke-virtual {v13, v14, v0, v7, v15}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@107
    .line 102
    :goto_5
    return-void

    #@108
    .line 129
    .end local v2    # "builder":Landroid/app/Notification$Builder;
    .end local v3    # "details":Ljava/lang/CharSequence;
    .end local v7    # "notification":Landroid/app/Notification;
    .end local v10    # "title":Ljava/lang/CharSequence;
    :cond_2
    sget-object v13, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->LOST_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    #@10a
    move-object/from16 v0, p2

    #@10c
    if-ne v0, v13, :cond_3

    #@10e
    .line 130
    const/4 v13, 0x1

    #@10f
    if-ne v12, v13, :cond_3

    #@111
    .line 131
    const/4 v13, 0x1

    #@112
    new-array v13, v13, [Ljava/lang/Object;

    #@114
    const/4 v14, 0x0

    #@115
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@118
    move-result-object v14

    #@119
    const/4 v15, 0x0

    #@11a
    aput-object v14, v13, v15

    #@11c
    const v14, 0x10403dd

    #@11f
    invoke-virtual {v9, v14, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@122
    move-result-object v10

    #@123
    .line 132
    .restart local v10    # "title":Ljava/lang/CharSequence;
    const v13, 0x10403de

    #@126
    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@129
    move-result-object v3

    #@12a
    .restart local v3    # "details":Ljava/lang/CharSequence;
    goto/16 :goto_0

    #@12c
    .line 133
    .end local v3    # "details":Ljava/lang/CharSequence;
    .end local v10    # "title":Ljava/lang/CharSequence;
    :cond_3
    sget-object v13, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    #@12e
    move-object/from16 v0, p2

    #@130
    if-ne v0, v13, :cond_4

    #@132
    .line 134
    packed-switch v12, :pswitch_data_0

    #@135
    .line 146
    const/4 v13, 0x1

    #@136
    new-array v13, v13, [Ljava/lang/Object;

    #@138
    const/4 v14, 0x0

    #@139
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13c
    move-result-object v14

    #@13d
    const/4 v15, 0x0

    #@13e
    aput-object v14, v13, v15

    #@140
    const v14, 0x10403db

    #@143
    invoke-virtual {v9, v14, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@146
    move-result-object v10

    #@147
    .line 147
    .restart local v10    # "title":Ljava/lang/CharSequence;
    const/4 v13, 0x1

    #@148
    new-array v13, v13, [Ljava/lang/Object;

    #@14a
    const/4 v14, 0x0

    #@14b
    aput-object v4, v13, v14

    #@14d
    const v14, 0x10403dc

    #@150
    invoke-virtual {v9, v14, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@153
    move-result-object v3

    #@154
    .restart local v3    # "details":Ljava/lang/CharSequence;
    goto/16 :goto_0

    #@156
    .line 136
    .end local v3    # "details":Ljava/lang/CharSequence;
    .end local v10    # "title":Ljava/lang/CharSequence;
    :pswitch_0
    const/4 v13, 0x1

    #@157
    new-array v13, v13, [Ljava/lang/Object;

    #@159
    const/4 v14, 0x0

    #@15a
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15d
    move-result-object v14

    #@15e
    const/4 v15, 0x0

    #@15f
    aput-object v14, v13, v15

    #@161
    const v14, 0x10403da

    #@164
    invoke-virtual {v9, v14, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@167
    move-result-object v10

    #@168
    .line 137
    .restart local v10    # "title":Ljava/lang/CharSequence;
    const/4 v13, 0x1

    #@169
    new-array v13, v13, [Ljava/lang/Object;

    #@16b
    const/4 v14, 0x0

    #@16c
    aput-object v4, v13, v14

    #@16e
    const v14, 0x10403dc

    #@171
    invoke-virtual {v9, v14, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@174
    move-result-object v3

    #@175
    .restart local v3    # "details":Ljava/lang/CharSequence;
    goto/16 :goto_0

    #@177
    .line 140
    .end local v3    # "details":Ljava/lang/CharSequence;
    .end local v10    # "title":Ljava/lang/CharSequence;
    :pswitch_1
    const/4 v13, 0x1

    #@178
    new-array v13, v13, [Ljava/lang/Object;

    #@17a
    const/4 v14, 0x0

    #@17b
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17e
    move-result-object v14

    #@17f
    const/4 v15, 0x0

    #@180
    aput-object v14, v13, v15

    #@182
    const v14, 0x10403db

    #@185
    invoke-virtual {v9, v14, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@188
    move-result-object v10

    #@189
    .line 143
    .restart local v10    # "title":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    #@18b
    iget-object v13, v0, Lcom/android/server/connectivity/NetworkNotificationManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@18d
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    #@190
    move-result-object v3

    #@191
    .restart local v3    # "details":Ljava/lang/CharSequence;
    goto/16 :goto_0

    #@193
    .line 150
    .end local v3    # "details":Ljava/lang/CharSequence;
    .end local v10    # "title":Ljava/lang/CharSequence;
    :cond_4
    sget-object v13, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NETWORK_SWITCH:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    #@195
    move-object/from16 v0, p2

    #@197
    if-ne v0, v13, :cond_5

    #@199
    .line 151
    invoke-static {v12}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    #@19c
    move-result-object v5

    #@19d
    .line 152
    .local v5, "fromTransport":Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Lcom/android/server/connectivity/NetworkNotificationManager;->getFirstTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    #@1a0
    move-result v13

    #@1a1
    invoke-static {v13}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    #@1a4
    move-result-object v11

    #@1a5
    .line 153
    .local v11, "toTransport":Ljava/lang/String;
    const/4 v13, 0x1

    #@1a6
    new-array v13, v13, [Ljava/lang/Object;

    #@1a8
    const/4 v14, 0x0

    #@1a9
    aput-object v11, v13, v14

    #@1ab
    const v14, 0x10403df

    #@1ae
    invoke-virtual {v9, v14, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@1b1
    move-result-object v10

    #@1b2
    .line 154
    .restart local v10    # "title":Ljava/lang/CharSequence;
    const/4 v13, 0x2

    #@1b3
    new-array v13, v13, [Ljava/lang/Object;

    #@1b5
    const/4 v14, 0x0

    #@1b6
    aput-object v11, v13, v14

    #@1b8
    .line 155
    const/4 v14, 0x1

    #@1b9
    aput-object v5, v13, v14

    #@1bb
    .line 154
    const v14, 0x10403e0

    #@1be
    invoke-virtual {v9, v14, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@1c1
    move-result-object v3

    #@1c2
    .restart local v3    # "details":Ljava/lang/CharSequence;
    goto/16 :goto_0

    #@1c4
    .line 157
    .end local v3    # "details":Ljava/lang/CharSequence;
    .end local v5    # "fromTransport":Ljava/lang/String;
    .end local v10    # "title":Ljava/lang/CharSequence;
    .end local v11    # "toTransport":Ljava/lang/String;
    :cond_5
    sget-object v13, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    #@1c6
    new-instance v14, Ljava/lang/StringBuilder;

    #@1c8
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@1cb
    const-string/jumbo v15, "Unknown notification type "

    #@1ce
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d1
    move-result-object v14

    #@1d2
    move-object/from16 v0, p2

    #@1d4
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d7
    move-result-object v14

    #@1d8
    const-string/jumbo v15, "on network transport "

    #@1db
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1de
    move-result-object v14

    #@1df
    .line 158
    invoke-static {v12}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    #@1e2
    move-result-object v15

    #@1e3
    .line 157
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e6
    move-result-object v14

    #@1e7
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ea
    move-result-object v14

    #@1eb
    invoke-static {v13, v14}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@1ee
    .line 159
    return-void

    #@1ef
    .line 164
    .restart local v3    # "details":Ljava/lang/CharSequence;
    .restart local v10    # "title":Ljava/lang/CharSequence;
    :cond_6
    const/4 v13, 0x0

    #@1f0
    goto/16 :goto_1

    #@1f2
    .line 175
    :cond_7
    const/4 v13, 0x0

    #@1f3
    goto/16 :goto_2

    #@1f5
    .line 176
    :cond_8
    const/4 v13, 0x0

    #@1f6
    goto/16 :goto_3

    #@1f8
    .line 182
    .restart local v2    # "builder":Landroid/app/Notification$Builder;
    :cond_9
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@1fb
    goto/16 :goto_4

    #@1fd
    .line 189
    .restart local v7    # "notification":Landroid/app/Notification;
    :catch_0
    move-exception v8

    #@1fe
    .line 190
    .local v8, "npe":Ljava/lang/NullPointerException;
    sget-object v13, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    #@200
    new-instance v14, Ljava/lang/StringBuilder;

    #@202
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@205
    const-string/jumbo v15, "setNotificationVisible: visible notificationManager npe="

    #@208
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20b
    move-result-object v14

    #@20c
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20f
    move-result-object v14

    #@210
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@213
    move-result-object v14

    #@214
    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@217
    goto/16 :goto_5

    #@219
    .line 134
    nop

    #@21a
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public showToast(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 7
    .param p1, "fromNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "toNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 219
    invoke-static {p1}, Lcom/android/server/connectivity/NetworkNotificationManager;->getFirstTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    #@4
    move-result v3

    #@5
    invoke-static {v3}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 220
    .local v0, "fromTransport":Ljava/lang/String;
    invoke-static {p2}, Lcom/android/server/connectivity/NetworkNotificationManager;->getFirstTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    #@c
    move-result v3

    #@d
    invoke-static {v3}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    .line 221
    .local v2, "toTransport":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    #@13
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@16
    move-result-object v3

    #@17
    const/4 v4, 0x2

    #@18
    new-array v4, v4, [Ljava/lang/Object;

    #@1a
    .line 222
    const/4 v5, 0x0

    #@1b
    aput-object v0, v4, v5

    #@1d
    aput-object v2, v4, v6

    #@1f
    const v5, 0x10403e1

    #@22
    .line 221
    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    .line 223
    .local v1, "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    #@28
    invoke-static {v3, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    #@2f
    .line 218
    return-void
.end method
