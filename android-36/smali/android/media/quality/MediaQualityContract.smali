.class public Landroid/media/quality/MediaQualityContract;
.super Ljava/lang/Object;
.source "MediaQualityContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/quality/MediaQualityContract$SoundQuality;,
        Landroid/media/quality/MediaQualityContract$PictureQuality;,
        Landroid/media/quality/MediaQualityContract$BaseParameters;,
        Landroid/media/quality/MediaQualityContract$ColorTempValue;,
        Landroid/media/quality/MediaQualityContract$Level;
    }
.end annotation


# static fields
.field public static final blacklist COLOR_TEMP_COOL:Ljava/lang/String; = "color_temp_cool"

.field public static final blacklist COLOR_TEMP_COOL_HDR10PLUS:Ljava/lang/String; = "color_temp_cool_hdr10plus"

.field public static final blacklist COLOR_TEMP_FMMHDR:Ljava/lang/String; = "color_temp_fmmhdr"

.field public static final blacklist COLOR_TEMP_FMMSDR:Ljava/lang/String; = "color_temp_fmmsdr"

.field public static final blacklist COLOR_TEMP_STANDARD:Ljava/lang/String; = "color_temp_standard"

.field public static final blacklist COLOR_TEMP_STANDARD_HDR10PLUS:Ljava/lang/String; = "color_temp_standard_hdr10plus"

.field public static final blacklist COLOR_TEMP_USER:Ljava/lang/String; = "color_temp_user"

.field public static final blacklist COLOR_TEMP_USER_HDR10PLUS:Ljava/lang/String; = "color_temp_user_hdr10plus"

.field public static final blacklist COLOR_TEMP_WARM:Ljava/lang/String; = "color_temp_warm"

.field public static final blacklist COLOR_TEMP_WARM_HDR10PLUS:Ljava/lang/String; = "color_temp_warm_hdr10plus"

.field public static final whitelist LEVEL_HIGH:Ljava/lang/String; = "level_high"

.field public static final whitelist LEVEL_LOW:Ljava/lang/String; = "level_low"

.field public static final whitelist LEVEL_MEDIUM:Ljava/lang/String; = "level_medium"

.field public static final whitelist LEVEL_OFF:Ljava/lang/String; = "level_off"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 1045
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1046
    return-void
.end method
