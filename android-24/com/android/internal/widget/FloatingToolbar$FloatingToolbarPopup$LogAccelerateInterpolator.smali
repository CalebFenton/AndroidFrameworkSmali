.class final Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$LogAccelerateInterpolator;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LogAccelerateInterpolator"
.end annotation


# static fields
.field private static final BASE:I = 0x64

.field private static final LOGS_SCALE:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    #@2
    .line 1506
    const/16 v0, 0x64

    #@4
    invoke-static {v1, v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$LogAccelerateInterpolator;->computeLog(FI)F

    #@7
    move-result v0

    #@8
    div-float v0, v1, v0

    #@a
    sput v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$LogAccelerateInterpolator;->LOGS_SCALE:F

    #@c
    .line 1503
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$LogAccelerateInterpolator;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$LogAccelerateInterpolator;-><init>()V

    #@3
    return-void
.end method

.method private static computeLog(FI)F
    .locals 4
    .param p0, "t"    # F
    .param p1, "base"    # I

    #@0
    .prologue
    .line 1509
    int-to-double v0, p1

    #@1
    neg-float v2, p0

    #@2
    float-to-double v2, v2

    #@3
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    #@6
    move-result-wide v0

    #@7
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    #@9
    sub-double v0, v2, v0

    #@b
    double-to-float v0, v0

    #@c
    return v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3
    .param p1, "t"    # F

    #@0
    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    #@2
    .line 1514
    sub-float v0, v2, p1

    #@4
    const/16 v1, 0x64

    #@6
    invoke-static {v0, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$LogAccelerateInterpolator;->computeLog(FI)F

    #@9
    move-result v0

    #@a
    sget v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$LogAccelerateInterpolator;->LOGS_SCALE:F

    #@c
    mul-float/2addr v0, v1

    #@d
    sub-float v0, v2, v0

    #@f
    return v0
.end method
