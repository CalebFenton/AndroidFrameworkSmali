.class final Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$LogAccelerateInterpolator;
.super Ljava/lang/Object;
.source "LocalFloatingToolbarPopup.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LogAccelerateInterpolator"
.end annotation


# static fields
.field private static final blacklist BASE:I = 0x64

.field private static final blacklist LOGS_SCALE:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1379
    const/16 v0, 0x64

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$LogAccelerateInterpolator;->computeLog(FI)F

    move-result v0

    div-float/2addr v1, v0

    sput v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$LogAccelerateInterpolator;->LOGS_SCALE:F

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 1376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$LogAccelerateInterpolator;-><init>()V

    return-void
.end method

.method private static blacklist computeLog(FI)F
    .registers 6
    .param p0, "t"    # F
    .param p1, "base"    # I

    .line 1382
    int-to-double v0, p1

    neg-float v2, p0

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    double-to-float v0, v2

    return v0
.end method


# virtual methods
.method public whitelist getInterpolation(F)F
    .registers 5
    .param p1, "t"    # F

    .line 1387
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p1

    const/16 v2, 0x64

    invoke-static {v1, v2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$LogAccelerateInterpolator;->computeLog(FI)F

    move-result v1

    sget v2, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$LogAccelerateInterpolator;->LOGS_SCALE:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method
