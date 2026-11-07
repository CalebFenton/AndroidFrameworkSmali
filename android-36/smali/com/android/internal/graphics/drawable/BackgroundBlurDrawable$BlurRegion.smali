.class public final Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;
.super Ljava/lang/Object;
.source "BackgroundBlurDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BlurRegion"
.end annotation


# instance fields
.field public final blacklist alpha:F

.field public final blacklist blurRadius:I

.field public final blacklist cornerRadiusBL:F

.field public final blacklist cornerRadiusBR:F

.field public final blacklist cornerRadiusTL:F

.field public final blacklist cornerRadiusTR:F

.field public final blacklist rect:Landroid/graphics/Rect;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)V
    .registers 3
    .param p1, "drawable"    # Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmAlpha(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)F

    move-result v0

    iput v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->alpha:F

    .line 443
    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmBlurRadius(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->blurRadius:I

    .line 444
    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmCornerRadiusTL(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)F

    move-result v0

    iput v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->cornerRadiusTL:F

    .line 445
    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmCornerRadiusTR(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)F

    move-result v0

    iput v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->cornerRadiusTR:F

    .line 446
    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmCornerRadiusBL(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)F

    move-result v0

    iput v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->cornerRadiusBL:F

    .line 447
    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmCornerRadiusBR(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)F

    move-result v0

    iput v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->cornerRadiusBR:F

    .line 448
    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmRect(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->rect:Landroid/graphics/Rect;

    .line 449
    return-void
.end method


# virtual methods
.method blacklist toFloatArray()[F
    .registers 4

    .line 455
    const/16 v0, 0xa

    new-array v0, v0, [F

    .line 456
    .local v0, "floatArray":[F
    iget v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->blurRadius:I

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 457
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->alpha:F

    aput v2, v0, v1

    .line 458
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 459
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 460
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 461
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 462
    const/4 v1, 0x6

    iget v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->cornerRadiusTL:F

    aput v2, v0, v1

    .line 463
    const/4 v1, 0x7

    iget v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->cornerRadiusTR:F

    aput v2, v0, v1

    .line 464
    const/16 v1, 0x8

    iget v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->cornerRadiusBL:F

    aput v2, v0, v1

    .line 465
    const/16 v1, 0x9

    iget v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->cornerRadiusBR:F

    aput v2, v0, v1

    .line 466
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BlurRegion{blurRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->blurRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", corners={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->cornerRadiusTL:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->cornerRadiusTR:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->cornerRadiusBL:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->cornerRadiusBR:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}, alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->alpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
