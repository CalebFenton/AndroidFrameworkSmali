.class public final Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;
.super Ljava/lang/Object;
.source "AccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/AccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScreenshotResult"
.end annotation


# instance fields
.field private final blacklist mColorSpace:Landroid/graphics/ColorSpace;

.field private final blacklist mHardwareBuffer:Landroid/hardware/HardwareBuffer;

.field private final blacklist mTimestamp:J


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;J)V
    .registers 6
    .param p1, "hardwareBuffer"    # Landroid/hardware/HardwareBuffer;
    .param p2, "colorSpace"    # Landroid/graphics/ColorSpace;
    .param p3, "timestamp"    # J

    .line 3281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3282
    const-string/jumbo v0, "hardwareBuffer cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3283
    const-string v0, "colorSpace cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3284
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    .line 3285
    iput-object p2, p0, Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 3286
    iput-wide p3, p0, Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;->mTimestamp:J

    .line 3287
    return-void
.end method


# virtual methods
.method public whitelist getColorSpace()Landroid/graphics/ColorSpace;
    .registers 2

    .line 3297
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;->mColorSpace:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public whitelist getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .registers 2

    .line 3311
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    return-object v0
.end method

.method public whitelist getTimestamp()J
    .registers 3

    .line 3321
    iget-wide v0, p0, Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;->mTimestamp:J

    return-wide v0
.end method
