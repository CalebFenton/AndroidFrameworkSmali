.class public final Landroid/R$integer;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "integer"
.end annotation


# static fields
.field public static final whitelist config_longAnimTime:I = 0x10e0002

.field public static final whitelist config_mediumAnimTime:I = 0x10e0001

.field public static final blacklist config_motionExpressiveDefaultEffectStiffness:I

.field public static final blacklist config_motionExpressiveDefaultSpatialStiffness:I

.field public static final blacklist config_motionExpressiveFastEffectStiffness:I

.field public static final blacklist config_motionExpressiveFastSpatialStiffness:I

.field public static final blacklist config_motionExpressiveSlowEffectStiffness:I

.field public static final blacklist config_motionExpressiveSlowSpatialStiffness:I

.field public static final blacklist config_motionStandardDefaultEffectStiffness:I

.field public static final blacklist config_motionStandardDefaultSpatialStiffness:I

.field public static final blacklist config_motionStandardFastEffectStiffness:I

.field public static final blacklist config_motionStandardFastSpatialStiffness:I

.field public static final blacklist config_motionStandardSlowEffectStiffness:I

.field public static final blacklist config_motionStandardSlowSpatialStiffness:I

.field public static final whitelist config_shortAnimTime:I = 0x10e0000

.field public static final whitelist status_bar_notification_info_maxnum:I = 0x10e0003
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 18411
    const v0, 0x1a60009

    sput v0, Landroid/R$integer;->config_motionExpressiveDefaultEffectStiffness:I

    .line 18413
    const v0, 0x1a60008

    sput v0, Landroid/R$integer;->config_motionExpressiveDefaultSpatialStiffness:I

    .line 18415
    const v0, 0x1a60007

    sput v0, Landroid/R$integer;->config_motionExpressiveFastEffectStiffness:I

    .line 18417
    const v0, 0x1a60006

    sput v0, Landroid/R$integer;->config_motionExpressiveFastSpatialStiffness:I

    .line 18419
    const v0, 0x1a6000b

    sput v0, Landroid/R$integer;->config_motionExpressiveSlowEffectStiffness:I

    .line 18421
    const v0, 0x1a6000a

    sput v0, Landroid/R$integer;->config_motionExpressiveSlowSpatialStiffness:I

    .line 18423
    const v0, 0x1a60003

    sput v0, Landroid/R$integer;->config_motionStandardDefaultEffectStiffness:I

    .line 18425
    const v0, 0x1a60002

    sput v0, Landroid/R$integer;->config_motionStandardDefaultSpatialStiffness:I

    .line 18427
    const v0, 0x1a60001

    sput v0, Landroid/R$integer;->config_motionStandardFastEffectStiffness:I

    .line 18429
    const/high16 v0, 0x1a60000

    sput v0, Landroid/R$integer;->config_motionStandardFastSpatialStiffness:I

    .line 18431
    const v0, 0x1a60005

    sput v0, Landroid/R$integer;->config_motionStandardSlowEffectStiffness:I

    .line 18433
    const v0, 0x1a60004

    sput v0, Landroid/R$integer;->config_motionStandardSlowSpatialStiffness:I

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 18401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
