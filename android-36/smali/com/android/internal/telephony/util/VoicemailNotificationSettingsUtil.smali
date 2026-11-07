.class public Lcom/android/internal/telephony/util/VoicemailNotificationSettingsUtil;
.super Ljava/lang/Object;
.source "VoicemailNotificationSettingsUtil.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getRingTonePreference(Landroid/content/Context;)Landroid/net/Uri;
    .registers 3

    .line 82
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 83
    invoke-static {p0, v0}, Lcom/android/internal/telephony/util/VoicemailNotificationSettingsUtil;->migrateVoicemailRingtoneSettingsIfNeeded(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 85
    invoke-static {}, Lcom/android/internal/telephony/util/VoicemailNotificationSettingsUtil;->getVoicemailRingtoneSharedPrefsKey()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 86
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 87
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist getRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;
    .registers 2

    .line 76
    const-string v0, "voiceMail"

    invoke-static {v0, p0}, Lcom/android/internal/telephony/util/NotificationChannelController;->getChannel(Ljava/lang/String;Landroid/content/Context;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 78
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_d
    invoke-static {p0}, Lcom/android/internal/telephony/util/VoicemailNotificationSettingsUtil;->getRingTonePreference(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getVibrationPreference(Landroid/content/Context;)Z
    .registers 3

    .line 61
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 62
    invoke-static {p0, v0}, Lcom/android/internal/telephony/util/VoicemailNotificationSettingsUtil;->migrateVoicemailVibrationSettingsIfNeeded(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 63
    invoke-static {}, Lcom/android/internal/telephony/util/VoicemailNotificationSettingsUtil;->getVoicemailVibrationSharedPrefsKey()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static blacklist getVoicemailRingtoneSharedPrefsKey()Ljava/lang/String;
    .registers 2

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "voicemail_notification_ringtone_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getVoicemailVibrationSharedPrefsKey()Ljava/lang/String;
    .registers 2

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "voicemail_notification_vibrate_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist isVibrationEnabled(Landroid/content/Context;)Z
    .registers 2

    .line 55
    const-string v0, "voiceMail"

    invoke-static {v0, p0}, Lcom/android/internal/telephony/util/NotificationChannelController;->getChannel(Ljava/lang/String;Landroid/content/Context;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 57
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result p0

    return p0

    :cond_d
    invoke-static {p0}, Lcom/android/internal/telephony/util/VoicemailNotificationSettingsUtil;->getVibrationPreference(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static blacklist migrateVoicemailRingtoneSettingsIfNeeded(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .registers 4

    .line 137
    invoke-static {}, Lcom/android/internal/telephony/util/VoicemailNotificationSettingsUtil;->getVoicemailRingtoneSharedPrefsKey()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    .line 141
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_16

    goto :goto_32

    .line 145
    :cond_16
    const-string p0, "button_voicemail_notification_ringtone_key"

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    const/4 v1, 0x0

    .line 146
    invoke-interface {p1, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 150
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 151
    invoke-interface {p1, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 152
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_32
    :goto_32
    return-void
.end method

.method private static blacklist migrateVoicemailVibrationSettingsIfNeeded(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .registers 6

    .line 98
    invoke-static {}, Lcom/android/internal/telephony/util/VoicemailNotificationSettingsUtil;->getVoicemailVibrationSharedPrefsKey()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    .line 102
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_55

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_16

    goto :goto_55

    .line 106
    :cond_16
    const-string p0, "button_voicemail_notification_vibrate_key"

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "button_voicemail_notification_vibrate_when_key"

    if-eqz v1, :cond_34

    const/4 v1, 0x0

    .line 107
    invoke-interface {p1, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 110
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 111
    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 112
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 113
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 116
    :cond_34
    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 119
    const-string v1, "never"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    const-string v2, "always"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 123
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 124
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 125
    invoke-interface {p1, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 126
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_55
    :goto_55
    return-void
.end method

.method public static blacklist setRingtoneUri(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 3

    .line 67
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p1, :cond_b

    .line 68
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_d

    :cond_b
    const-string p1, ""

    .line 70
    :goto_d
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 71
    invoke-static {}, Lcom/android/internal/telephony/util/VoicemailNotificationSettingsUtil;->getVoicemailRingtoneSharedPrefsKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 72
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static blacklist setVibrationEnabled(Landroid/content/Context;Z)V
    .registers 3

    .line 48
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 49
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 50
    invoke-static {}, Lcom/android/internal/telephony/util/VoicemailNotificationSettingsUtil;->getVoicemailVibrationSharedPrefsKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 51
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
