.class public Lcom/android/internal/telephony/imsphone/ImsPhoneFactory;
.super Ljava/lang/Object;
.source "ImsPhoneFactory.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist makePhone(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/imsphone/ImsPhone;
    .registers 5

    .line 42
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    :catch_6
    move-exception p0

    .line 44
    const-string p1, "VoltePhoneFactory"

    const-string p2, "makePhone"

    invoke-static {p1, p2, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method
