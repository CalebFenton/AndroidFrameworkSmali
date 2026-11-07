.class public Landroid/provider/SettingsSlicesContract;
.super Ljava/lang/Object;
.source "SettingsSlicesContract.java"


# static fields
.field public static final whitelist AUTHORITY:Ljava/lang/String; = "android.settings.slices"

.field public static final whitelist BASE_URI:Landroid/net/Uri;

.field public static final whitelist KEY_AIRPLANE_MODE:Ljava/lang/String; = "airplane_mode"

.field public static final whitelist KEY_BATTERY_SAVER:Ljava/lang/String; = "battery_saver"

.field public static final whitelist KEY_BLUETOOTH:Ljava/lang/String; = "bluetooth"

.field public static final whitelist KEY_LOCATION:Ljava/lang/String; = "location"

.field public static final whitelist KEY_WIFI:Ljava/lang/String; = "wifi"

.field public static final whitelist PATH_SETTING_ACTION:Ljava/lang/String; = "action"

.field public static final whitelist PATH_SETTING_INTENT:Ljava/lang/String; = "intent"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 58
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 59
    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 60
    const-string v1, "android.settings.slices"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/SettingsSlicesContract;->BASE_URI:Landroid/net/Uri;

    .line 58
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method
