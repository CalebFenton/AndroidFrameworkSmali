.class public Lcom/android/internal/telephony/GlobalSettingsHelper;
.super Ljava/lang/Object;
.source "GlobalSettingsHelper.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getBoolean(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 55
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/GlobalSettingsHelper;->getSettingName(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_10

    return p1

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist getBoolean(Landroid/content/Context;Ljava/lang/String;IZ)Z
    .registers 4

    .line 45
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/GlobalSettingsHelper;->getSettingName(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_10

    return p1

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist getInt(Landroid/content/Context;Ljava/lang/String;II)I
    .registers 4

    .line 36
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/GlobalSettingsHelper;->getSettingName(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static blacklist getSettingName(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    .line 89
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_21

    .line 90
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p0

    if-eqz p0, :cond_21

    .line 91
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_21
    return-object p1
.end method

.method public static blacklist setBoolean(Landroid/content/Context;Ljava/lang/String;IZ)Z
    .registers 4

    .line 83
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/GlobalSettingsHelper;->setInt(Landroid/content/Context;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static blacklist setInt(Landroid/content/Context;Ljava/lang/String;II)Z
    .registers 5

    .line 64
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/GlobalSettingsHelper;->getSettingName(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    .line 68
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_5 .. :try_end_d} :catch_11

    if-eq v0, p3, :cond_10

    goto :goto_11

    :cond_10
    const/4 p2, 0x0

    :catch_11
    :goto_11
    if-eqz p2, :cond_1a

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1a
    return p2
.end method
