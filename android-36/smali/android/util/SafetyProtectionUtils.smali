.class public Landroid/util/SafetyProtectionUtils;
.super Ljava/lang/Object;
.source "SafetyProtectionUtils.java"


# static fields
.field private static final blacklist SAFETY_PROTECTION_RESOURCES_ENABLED:Ljava/lang/String; = "safety_protection_enabled"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist shouldShowSafetyProtectionResources(Landroid/content/Context;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 44
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "privacy"

    const-string/jumbo v2, "safety_protection_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 47
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "config_safetyProtectionEnabled"

    const-string v4, "bool"

    const-string v5, "android"

    .line 48
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 46
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 50
    const v1, 0x10800b5

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 51
    const v1, 0x1040041

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1
    :try_end_38
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_38} :catch_3e

    if-nez v1, :cond_3c

    const/4 v0, 0x1

    goto :goto_3d

    :cond_3c
    nop

    .line 44
    :goto_3d
    return v0

    .line 53
    :catch_3e
    move-exception v1

    .line 56
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    return v0
.end method
