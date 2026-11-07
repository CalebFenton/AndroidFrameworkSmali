.class public final Landroid/telephony/CarrierConfigManager$ImsWfc;
.super Ljava/lang/Object;
.source "CarrierConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CarrierConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImsWfc"
.end annotation


# static fields
.field public static final whitelist KEY_EMERGENCY_CALL_OVER_EMERGENCY_PDN_BOOL:Ljava/lang/String; = "imswfc.emergency_call_over_emergency_pdn_bool"

.field public static final whitelist KEY_PIDF_SHORT_CODE_STRING_ARRAY:Ljava/lang/String; = "imswfc.pidf_short_code_string_array"

.field public static final whitelist KEY_PREFIX:Ljava/lang/String; = "imswfc."


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetDefaults()Landroid/os/PersistableBundle;
    .registers 1

    invoke-static {}, Landroid/telephony/CarrierConfigManager$ImsWfc;->getDefaults()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 8457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getDefaults()Landroid/os/PersistableBundle;
    .registers 3

    .line 8480
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 8482
    .local v0, "defaults":Landroid/os/PersistableBundle;
    const-string/jumbo v1, "imswfc.emergency_call_over_emergency_pdn_bool"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8483
    const-string/jumbo v1, "imswfc.pidf_short_code_string_array"

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 8485
    return-object v0
.end method
