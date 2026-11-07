.class public final Landroid/R$dimen;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dimen"
.end annotation


# static fields
.field public static final whitelist app_icon_size:I = 0x1050000

.field public static final blacklist config_motionExpressiveDefaultEffectDamping:I

.field public static final blacklist config_motionExpressiveDefaultSpatialDamping:I

.field public static final blacklist config_motionExpressiveFastEffectDamping:I

.field public static final blacklist config_motionExpressiveFastSpatialDamping:I

.field public static final blacklist config_motionExpressiveSlowEffectDamping:I

.field public static final blacklist config_motionExpressiveSlowSpatialDamping:I

.field public static final blacklist config_motionStandardDefaultEffectDamping:I

.field public static final blacklist config_motionStandardDefaultSpatialDamping:I

.field public static final blacklist config_motionStandardFastEffectDamping:I

.field public static final blacklist config_motionStandardFastSpatialDamping:I

.field public static final blacklist config_motionStandardSlowEffectDamping:I

.field public static final blacklist config_motionStandardSlowSpatialDamping:I

.field public static final whitelist config_restrictedIconSize:I = 0x1050007
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist config_shapeCornerRadiusLarge:I

.field public static final blacklist config_shapeCornerRadiusMedium:I

.field public static final blacklist config_shapeCornerRadiusSmall:I

.field public static final blacklist config_shapeCornerRadiusXlarge:I

.field public static final blacklist config_shapeCornerRadiusXsmall:I

.field public static final whitelist config_viewConfigurationHandwritingGestureLineMargin:I = 0x105000a
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist dialog_min_width_major:I = 0x1050003

.field public static final whitelist dialog_min_width_minor:I = 0x1050004

.field public static final whitelist notification_large_icon_height:I = 0x1050006

.field public static final whitelist notification_large_icon_width:I = 0x1050005

.field public static final whitelist system_app_widget_background_radius:I = 0x1050008

.field public static final whitelist system_app_widget_inner_radius:I = 0x1050009

.field public static final whitelist thumbnail_height:I = 0x1050001

.field public static final whitelist thumbnail_width:I = 0x1050002


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 17809
    const v0, 0x1af0009

    sput v0, Landroid/R$dimen;->config_motionExpressiveDefaultEffectDamping:I

    .line 17811
    const v0, 0x1af0008

    sput v0, Landroid/R$dimen;->config_motionExpressiveDefaultSpatialDamping:I

    .line 17813
    const v0, 0x1af0007

    sput v0, Landroid/R$dimen;->config_motionExpressiveFastEffectDamping:I

    .line 17819
    const v0, 0x1af0006

    sput v0, Landroid/R$dimen;->config_motionExpressiveFastSpatialDamping:I

    .line 17821
    const v0, 0x1af000b

    sput v0, Landroid/R$dimen;->config_motionExpressiveSlowEffectDamping:I

    .line 17823
    const v0, 0x1af000a

    sput v0, Landroid/R$dimen;->config_motionExpressiveSlowSpatialDamping:I

    .line 17825
    const v0, 0x1af0003

    sput v0, Landroid/R$dimen;->config_motionStandardDefaultEffectDamping:I

    .line 17827
    const v0, 0x1af0002

    sput v0, Landroid/R$dimen;->config_motionStandardDefaultSpatialDamping:I

    .line 17829
    const v0, 0x1af0001

    sput v0, Landroid/R$dimen;->config_motionStandardFastEffectDamping:I

    .line 17834
    const/high16 v0, 0x1af0000

    sput v0, Landroid/R$dimen;->config_motionStandardFastSpatialDamping:I

    .line 17836
    const v0, 0x1af0005

    sput v0, Landroid/R$dimen;->config_motionStandardSlowEffectDamping:I

    .line 17838
    const v0, 0x1af0004

    sput v0, Landroid/R$dimen;->config_motionStandardSlowSpatialDamping:I

    .line 17846
    const v0, 0x1af000f

    sput v0, Landroid/R$dimen;->config_shapeCornerRadiusLarge:I

    .line 17848
    const v0, 0x1af000e

    sput v0, Landroid/R$dimen;->config_shapeCornerRadiusMedium:I

    .line 17850
    const v0, 0x1af000d

    sput v0, Landroid/R$dimen;->config_shapeCornerRadiusSmall:I

    .line 17852
    const v0, 0x1af0010

    sput v0, Landroid/R$dimen;->config_shapeCornerRadiusXlarge:I

    .line 17858
    const v0, 0x1af000c

    sput v0, Landroid/R$dimen;->config_shapeCornerRadiusXsmall:I

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 17802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
