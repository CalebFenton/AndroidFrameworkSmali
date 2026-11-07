.class Lcom/android/ims/ImsManager$DefaultSettingsProxy;
.super Ljava/lang/Object;
.source "ImsManager.java"

# interfaces
.implements Lcom/android/ims/ImsManager$SettingsProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultSettingsProxy"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/ims/ImsManager-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/ims/ImsManager$DefaultSettingsProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getSecureIntSetting(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .registers 5
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "def"    # I

    .line 276
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public blacklist putSecureIntSetting(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .registers 5
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 281
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
