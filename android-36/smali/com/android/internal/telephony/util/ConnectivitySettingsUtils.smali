.class public Lcom/android/internal/telephony/util/ConnectivitySettingsUtils;
.super Ljava/lang/Object;
.source "ConnectivitySettingsUtils.java"


# static fields
.field public static final blacklist PRIVATE_DNS_DEFAULT_MODE:Ljava/lang/String; = "private_dns_default_mode"

.field public static final blacklist PRIVATE_DNS_MODE:Ljava/lang/String; = "private_dns_mode"

.field public static final blacklist PRIVATE_DNS_MODE_OFF:I = 0x1

.field public static final blacklist PRIVATE_DNS_MODE_OFF_STRING:Ljava/lang/String; = "off"

.field public static final blacklist PRIVATE_DNS_MODE_OPPORTUNISTIC:I = 0x2

.field public static final blacklist PRIVATE_DNS_MODE_OPPORTUNISTIC_STRING:Ljava/lang/String; = "opportunistic"

.field public static final blacklist PRIVATE_DNS_MODE_PROVIDER_HOSTNAME:I = 0x3

.field public static final blacklist PRIVATE_DNS_MODE_PROVIDER_HOSTNAME_STRING:Ljava/lang/String; = "hostname"

.field public static final blacklist PRIVATE_DNS_SPECIFIER:Ljava/lang/String; = "private_dns_specifier"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getPrivateDnsHostname(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "private_dns_specifier"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getPrivateDnsMode(Landroid/content/Context;)I
    .registers 3

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 90
    const-string v0, "private_dns_mode"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v0, "private_dns_default_mode"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    :cond_16
    invoke-static {v0}, Lcom/android/internal/telephony/util/ConnectivitySettingsUtils;->getPrivateDnsModeAsInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static blacklist getPrivateDnsModeAsInt(Ljava/lang/String;)I
    .registers 3

    .line 65
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_8

    return v1

    .line 67
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    const-string v0, "hostname"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "off"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    return v1

    :cond_1c
    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x3

    return p0
.end method

.method public static blacklist getPrivateDnsModeAsString(I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_26

    const/4 v0, 0x2

    if-eq p0, v0, :cond_23

    const/4 v0, 0x3

    if-ne p0, v0, :cond_c

    .line 56
    const-string p0, "hostname"

    return-object p0

    .line 58
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid private dns mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_23
    const-string p0, "opportunistic"

    return-object p0

    .line 52
    :cond_26
    const-string p0, "off"

    return-object p0
.end method

.method public static blacklist setPrivateDnsHostname(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "private_dns_specifier"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static blacklist setPrivateDnsMode(Landroid/content/Context;I)V
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_21

    const/4 v0, 0x2

    if-eq p1, v0, :cond_21

    const/4 v0, 0x3

    if-ne p1, v0, :cond_a

    goto :goto_21

    .line 105
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid private dns mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 107
    :cond_21
    :goto_21
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "private_dns_mode"

    .line 108
    invoke-static {p1}, Lcom/android/internal/telephony/util/ConnectivitySettingsUtils;->getPrivateDnsModeAsString(I)Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
