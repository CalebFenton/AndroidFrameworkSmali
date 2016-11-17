.class public Lcom/android/server/notification/ZenModeFiltering;
.super Ljava/lang/Object;
.source "ZenModeFiltering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static final REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

.field private static final TAG:Ljava/lang/String; = "ZenModeHelper"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultPhoneApp:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 39
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    #@2
    sput-boolean v0, Lcom/android/server/notification/ZenModeFiltering;->DEBUG:Z

    #@4
    .line 41
    new-instance v0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    #@6
    const/4 v1, 0x0

    #@7
    invoke-direct {v0, v1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;-><init>(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)V

    #@a
    sput-object v0, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    #@c
    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 48
    iput-object p1, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    #@5
    .line 47
    return-void
.end method

.method private static audienceMatches(IF)Z
    .locals 4
    .param p0, "source"    # I
    .param p1, "contactAffinity"    # F

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    .line 222
    packed-switch p0, :pswitch_data_0

    #@5
    .line 230
    const-string/jumbo v1, "ZenModeHelper"

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Encountered unknown source: "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 231
    return v0

    #@20
    .line 224
    :pswitch_0
    return v0

    #@21
    .line 226
    :pswitch_1
    const/high16 v2, 0x3f000000    # 0.5f

    #@23
    cmpl-float v2, p1, v2

    #@25
    if-ltz v2, :cond_0

    #@27
    :goto_0
    return v0

    #@28
    :cond_0
    move v0, v1

    #@29
    goto :goto_0

    #@2a
    .line 228
    :pswitch_2
    const/high16 v2, 0x3f800000    # 1.0f

    #@2c
    cmpl-float v2, p1, v2

    #@2e
    if-ltz v2, :cond_1

    #@30
    :goto_1
    return v0

    #@31
    :cond_1
    move v0, v1

    #@32
    goto :goto_1

    #@33
    .line 222
    nop

    #@34
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static extras(Lcom/android/server/notification/NotificationRecord;)Landroid/os/Bundle;
    .locals 2
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 96
    if-eqz p0, :cond_0

    #@3
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@5
    if-eqz v1, :cond_0

    #@7
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@9
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    #@c
    move-result-object v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 97
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@11
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    #@14
    move-result-object v0

    #@15
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@17
    .line 96
    :cond_0
    return-object v0
.end method

.method private static isAlarm(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 2
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    const/4 v1, 0x4

    #@1
    .line 179
    const-string/jumbo v0, "alarm"

    #@4
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 180
    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationRecord;->isAudioStream(I)Z

    #@d
    move-result v0

    #@e
    .line 179
    if-nez v0, :cond_0

    #@10
    .line 181
    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationRecord;->isAudioAttributesUsage(I)Z

    #@13
    move-result v0

    #@14
    .line 179
    :goto_0
    return v0

    #@15
    :cond_0
    const/4 v0, 0x1

    #@16
    goto :goto_0
.end method

.method private isDefaultMessagingApp(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 4
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    .line 210
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    #@3
    move-result v1

    #@4
    .line 211
    .local v1, "userId":I
    const/16 v2, -0x2710

    #@6
    if-eq v1, v2, :cond_0

    #@8
    const/4 v2, -0x1

    #@9
    if-ne v1, v2, :cond_1

    #@b
    :cond_0
    const/4 v2, 0x0

    #@c
    return v2

    #@d
    .line 212
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    #@f
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@12
    move-result-object v2

    #@13
    .line 213
    const-string/jumbo v3, "sms_default_application"

    #@16
    .line 212
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    .line 214
    .local v0, "defaultApp":Ljava/lang/String;
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@1c
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@23
    move-result v2

    #@24
    return v2
.end method

.method private isDefaultPhoneApp(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 198
    iget-object v2, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    #@3
    if-nez v2, :cond_1

    #@5
    .line 200
    iget-object v2, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    #@7
    const-string/jumbo v3, "telecom"

    #@a
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/telecom/TelecomManager;

    #@10
    .line 201
    .local v0, "telecomm":Landroid/telecom/TelecomManager;
    if-eqz v0, :cond_0

    #@12
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getDefaultPhoneApp()Landroid/content/ComponentName;

    #@15
    move-result-object v1

    #@16
    :cond_0
    iput-object v1, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    #@18
    .line 202
    sget-boolean v1, Lcom/android/server/notification/ZenModeFiltering;->DEBUG:Z

    #@1a
    if-eqz v1, :cond_1

    #@1c
    const-string/jumbo v1, "ZenModeHelper"

    #@1f
    new-instance v2, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v3, "Default phone app: "

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    iget-object v3, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 204
    .end local v0    # "telecomm":Landroid/telecom/TelecomManager;
    :cond_1
    if-eqz p1, :cond_2

    #@3a
    iget-object v1, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    #@3c
    if-eqz v1, :cond_2

    #@3e
    .line 205
    iget-object v1, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    #@40
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v1

    #@48
    .line 204
    :goto_0
    return v1

    #@49
    :cond_2
    const/4 v1, 0x0

    #@4a
    goto :goto_0
.end method

.method private static isEvent(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    .line 185
    const-string/jumbo v0, "event"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method private isMessage(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    .line 218
    const-string/jumbo v0, "msg"

    #@3
    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeFiltering;->isDefaultMessagingApp(Lcom/android/server/notification/NotificationRecord;)Z

    #@c
    move-result v0

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x1

    #@f
    goto :goto_0
.end method

.method private static isReminder(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    .line 189
    const-string/jumbo v0, "reminder"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method private static isSystem(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    .line 175
    const-string/jumbo v0, "sys"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public static matchesCallFilter(Landroid/content/Context;ILandroid/service/notification/ZenModeConfig;Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IF)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "zen"    # I
    .param p2, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p3, "userHandle"    # Landroid/os/UserHandle;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "validator"    # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p6, "contactsTimeoutMs"    # I
    .param p7, "timeoutAffinity"    # F

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 81
    const/4 v1, 0x2

    #@3
    if-ne p1, v1, :cond_0

    #@5
    return v2

    #@6
    .line 82
    :cond_0
    const/4 v1, 0x3

    #@7
    if-ne p1, v1, :cond_1

    #@9
    return v2

    #@a
    .line 83
    :cond_1
    if-ne p1, v3, :cond_4

    #@c
    .line 84
    iget-boolean v1, p2, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    #@e
    if-eqz v1, :cond_2

    #@10
    sget-object v1, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    #@12
    invoke-static {v1, p0, p4}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->-wrap0(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;Landroid/content/Context;Landroid/os/Bundle;)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_2

    #@18
    return v3

    #@19
    .line 85
    :cond_2
    iget-boolean v1, p2, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    #@1b
    if-nez v1, :cond_3

    #@1d
    return v2

    #@1e
    .line 86
    :cond_3
    if-eqz p5, :cond_4

    #@20
    .line 87
    invoke-virtual {p5, p3, p4, p6, p7}, Lcom/android/server/notification/ValidateNotificationPeople;->getContactAffinity(Landroid/os/UserHandle;Landroid/os/Bundle;IF)F

    #@23
    move-result v0

    #@24
    .line 89
    .local v0, "contactAffinity":F
    iget v1, p2, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    #@26
    invoke-static {v1, v0}, Lcom/android/server/notification/ZenModeFiltering;->audienceMatches(IF)Z

    #@29
    move-result v1

    #@2a
    return v1

    #@2b
    .line 92
    .end local v0    # "contactAffinity":F
    :cond_4
    return v3
.end method

.method private static shouldInterceptAudience(ILcom/android/server/notification/NotificationRecord;)Z
    .locals 1
    .param p0, "source"    # I
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    .line 167
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    #@3
    move-result v0

    #@4
    invoke-static {p0, v0}, Lcom/android/server/notification/ZenModeFiltering;->audienceMatches(IF)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 168
    const-string/jumbo v0, "!audienceMatches"

    #@d
    invoke-static {p1, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    #@10
    .line 169
    const/4 v0, 0x1

    #@11
    return v0

    #@12
    .line 171
    :cond_0
    const/4 v0, 0x0

    #@13
    return v0
.end method

.method private static ts(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    #@0
    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    new-instance v1, Ljava/util/Date;

    #@7
    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v0

    #@e
    const-string/jumbo v1, " ("

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    const-string/jumbo v1, ")"

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 52
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    const-string/jumbo v1, "mDefaultPhoneApp="

    #@6
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    iget-object v1, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    #@b
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@e
    .line 53
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11
    const-string/jumbo v1, "RepeatCallers.mThresholdMinutes="

    #@14
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17
    .line 54
    sget-object v1, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    #@19
    invoke-static {v1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->-get1(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)I

    #@1c
    move-result v1

    #@1d
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    #@20
    .line 55
    sget-object v2, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    #@22
    monitor-enter v2

    #@23
    .line 56
    :try_start_0
    sget-object v1, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    #@25
    invoke-static {v1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->-get0(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)Landroid/util/ArrayMap;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    #@2c
    move-result v1

    #@2d
    if-nez v1, :cond_0

    #@2f
    .line 57
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@32
    const-string/jumbo v1, "RepeatCallers.mCalls="

    #@35
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@38
    .line 58
    const/4 v0, 0x0

    #@39
    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    #@3b
    invoke-static {v1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->-get0(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)Landroid/util/ArrayMap;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    #@42
    move-result v1

    #@43
    if-ge v0, v1, :cond_0

    #@45
    .line 59
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@48
    const-string/jumbo v1, "  "

    #@4b
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e
    .line 60
    sget-object v1, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    #@50
    invoke-static {v1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->-get0(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)Landroid/util/ArrayMap;

    #@53
    move-result-object v1

    #@54
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@57
    move-result-object v1

    #@58
    check-cast v1, Ljava/lang/String;

    #@5a
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5d
    .line 61
    const-string/jumbo v1, " at "

    #@60
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@63
    .line 62
    sget-object v1, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    #@65
    invoke-static {v1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->-get0(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)Landroid/util/ArrayMap;

    #@68
    move-result-object v1

    #@69
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@6c
    move-result-object v1

    #@6d
    check-cast v1, Ljava/lang/Long;

    #@6f
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    #@72
    move-result-wide v4

    #@73
    invoke-static {v4, v5}, Lcom/android/server/notification/ZenModeFiltering;->ts(J)Ljava/lang/String;

    #@76
    move-result-object v1

    #@77
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7a
    .line 58
    add-int/lit8 v0, v0, 0x1

    #@7c
    goto :goto_0

    #@7d
    .end local v0    # "i":I
    :cond_0
    monitor-exit v2

    #@7e
    .line 51
    return-void

    #@7f
    .line 55
    :catchall_0
    move-exception v1

    #@80
    monitor-exit v2

    #@81
    throw v1
.end method

.method public isCall(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    .line 193
    if-eqz p1, :cond_1

    #@2
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@4
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeFiltering;->isDefaultPhoneApp(Ljava/lang/String;)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 194
    const-string/jumbo v0, "call"

    #@11
    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    #@14
    move-result v0

    #@15
    .line 193
    :goto_0
    return v0

    #@16
    :cond_0
    const/4 v0, 0x1

    #@17
    goto :goto_0

    #@18
    :cond_1
    const/4 v0, 0x0

    #@19
    goto :goto_0
.end method

.method public shouldIntercept(ILandroid/service/notification/ZenModeConfig;Lcom/android/server/notification/NotificationRecord;)Z
    .locals 5
    .param p1, "zen"    # I
    .param p2, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p3, "record"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 101
    invoke-static {p3}, Lcom/android/server/notification/ZenModeFiltering;->isSystem(Lcom/android/server/notification/NotificationRecord;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 102
    return v3

    #@9
    .line 104
    :cond_0
    packed-switch p1, :pswitch_data_0

    #@c
    .line 162
    return v3

    #@d
    .line 107
    :pswitch_0
    const-string/jumbo v0, "none"

    #@10
    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    #@13
    .line 108
    return v4

    #@14
    .line 110
    :pswitch_1
    invoke-static {p3}, Lcom/android/server/notification/ZenModeFiltering;->isAlarm(Lcom/android/server/notification/NotificationRecord;)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 112
    return v3

    #@1b
    .line 114
    :cond_1
    const-string/jumbo v0, "alarmsOnly"

    #@1e
    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    #@21
    .line 115
    return v4

    #@22
    .line 117
    :pswitch_2
    invoke-static {p3}, Lcom/android/server/notification/ZenModeFiltering;->isAlarm(Lcom/android/server/notification/NotificationRecord;)Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_2

    #@28
    .line 119
    return v3

    #@29
    .line 122
    :cond_2
    invoke-virtual {p3}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I

    #@2c
    move-result v0

    #@2d
    const/4 v1, 0x2

    #@2e
    if-ne v0, v1, :cond_3

    #@30
    .line 123
    const-string/jumbo v0, "priorityApp"

    #@33
    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceNotIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    #@36
    .line 124
    return v3

    #@37
    .line 126
    :cond_3
    invoke-virtual {p0, p3}, Lcom/android/server/notification/ZenModeFiltering;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    #@3a
    move-result v0

    #@3b
    if-eqz v0, :cond_6

    #@3d
    .line 127
    iget-boolean v0, p2, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    #@3f
    if-eqz v0, :cond_4

    #@41
    .line 128
    sget-object v0, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    #@43
    iget-object v1, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    #@45
    invoke-static {p3}, Lcom/android/server/notification/ZenModeFiltering;->extras(Lcom/android/server/notification/NotificationRecord;)Landroid/os/Bundle;

    #@48
    move-result-object v2

    #@49
    invoke-static {v0, v1, v2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->-wrap0(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;Landroid/content/Context;Landroid/os/Bundle;)Z

    #@4c
    move-result v0

    #@4d
    .line 127
    if-eqz v0, :cond_4

    #@4f
    .line 129
    const-string/jumbo v0, "repeatCaller"

    #@52
    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceNotIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    #@55
    .line 130
    return v3

    #@56
    .line 132
    :cond_4
    iget-boolean v0, p2, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    #@58
    if-nez v0, :cond_5

    #@5a
    .line 133
    const-string/jumbo v0, "!allowCalls"

    #@5d
    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    #@60
    .line 134
    return v4

    #@61
    .line 136
    :cond_5
    iget v0, p2, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    #@63
    invoke-static {v0, p3}, Lcom/android/server/notification/ZenModeFiltering;->shouldInterceptAudience(ILcom/android/server/notification/NotificationRecord;)Z

    #@66
    move-result v0

    #@67
    return v0

    #@68
    .line 138
    :cond_6
    invoke-direct {p0, p3}, Lcom/android/server/notification/ZenModeFiltering;->isMessage(Lcom/android/server/notification/NotificationRecord;)Z

    #@6b
    move-result v0

    #@6c
    if-eqz v0, :cond_8

    #@6e
    .line 139
    iget-boolean v0, p2, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    #@70
    if-nez v0, :cond_7

    #@72
    .line 140
    const-string/jumbo v0, "!allowMessages"

    #@75
    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    #@78
    .line 141
    return v4

    #@79
    .line 143
    :cond_7
    iget v0, p2, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    #@7b
    invoke-static {v0, p3}, Lcom/android/server/notification/ZenModeFiltering;->shouldInterceptAudience(ILcom/android/server/notification/NotificationRecord;)Z

    #@7e
    move-result v0

    #@7f
    return v0

    #@80
    .line 145
    :cond_8
    invoke-static {p3}, Lcom/android/server/notification/ZenModeFiltering;->isEvent(Lcom/android/server/notification/NotificationRecord;)Z

    #@83
    move-result v0

    #@84
    if-eqz v0, :cond_a

    #@86
    .line 146
    iget-boolean v0, p2, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    #@88
    if-nez v0, :cond_9

    #@8a
    .line 147
    const-string/jumbo v0, "!allowEvents"

    #@8d
    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    #@90
    .line 148
    return v4

    #@91
    .line 150
    :cond_9
    return v3

    #@92
    .line 152
    :cond_a
    invoke-static {p3}, Lcom/android/server/notification/ZenModeFiltering;->isReminder(Lcom/android/server/notification/NotificationRecord;)Z

    #@95
    move-result v0

    #@96
    if-eqz v0, :cond_c

    #@98
    .line 153
    iget-boolean v0, p2, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    #@9a
    if-nez v0, :cond_b

    #@9c
    .line 154
    const-string/jumbo v0, "!allowReminders"

    #@9f
    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    #@a2
    .line 155
    return v4

    #@a3
    .line 157
    :cond_b
    return v3

    #@a4
    .line 159
    :cond_c
    const-string/jumbo v0, "!priority"

    #@a7
    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    #@aa
    .line 160
    return v4

    #@ab
    .line 104
    nop

    #@ac
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
