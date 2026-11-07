.class public final Lcom/android/internal/accessibility/common/MagnificationConstants;
.super Ljava/lang/Object;
.source "MagnificationConstants.java"


# static fields
.field public static final blacklist PERSISTED_SCALE_MIN_VALUE:F = 1.3f

.field public static final blacklist SCALE_MAX_VALUE:F

.field public static final blacklist SCALE_MIN_VALUE:F = 1.0f


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 37
    nop

    .line 38
    const-string/jumbo v0, "ro.config.max_magnification_scale"

    const-string v1, "8.0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/android/internal/accessibility/common/MagnificationConstants;->SCALE_MAX_VALUE:F

    .line 37
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
