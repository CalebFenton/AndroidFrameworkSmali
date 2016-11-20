.class Lcom/android/server/accessibility/DisplayAdjustmentUtils;
.super Ljava/lang/Object;
.source "DisplayAdjustmentUtils.java"


# static fields
.field private static final DEFAULT_DISPLAY_DALTONIZER:I = 0xc

.field private static final MATRIX_GRAYSCALE:[F

.field private static final MATRIX_INVERT_COLOR:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0x10

    #@2
    .line 37
    new-array v0, v1, [F

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->MATRIX_GRAYSCALE:[F

    #@9
    .line 51
    new-array v0, v1, [F

    #@b
    fill-array-data v0, :array_1

    #@e
    sput-object v0, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->MATRIX_INVERT_COLOR:[F

    #@10
    .line 30
    return-void

    #@11
    .line 37
    nop

    #@12
    :array_0
    .array-data 4
        0x3e59b3d0    # 0.2126f
        0x3e59b3d0    # 0.2126f
        0x3e59b3d0    # 0.2126f
        0x0
        0x3f371759    # 0.7152f
        0x3f371759    # 0.7152f
        0x3f371759    # 0.7152f
        0x0
        0x3d93dd98    # 0.0722f
        0x3d93dd98    # 0.0722f
        0x3d93dd98    # 0.0722f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    #@36
    .line 51
    :array_1
    .array-data 4
        0x3ecdd2f2    # 0.402f
        -0x40e6e979    # -0.598f
        -0x40e6a7f0    # -0.599f
        0x0
        -0x4069ba5e    # -1.174f
        -0x41cdd2f2    # -0.174f
        -0x4069999a    # -1.175f
        0x0
        -0x4196872b    # -0.228f
        -0x4196872b    # -0.228f
        0x3f45a1cb    # 0.772f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static applyDaltonizerSetting(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@4
    move-result-object v0

    #@5
    .line 60
    .local v0, "cr":Landroid/content/ContentResolver;
    const-class v4, Lcom/android/server/display/DisplayTransformManager;

    #@7
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Lcom/android/server/display/DisplayTransformManager;

    #@d
    .line 62
    .local v2, "dtm":Lcom/android/server/display/DisplayTransformManager;
    const/4 v1, -0x1

    #@e
    .line 64
    .local v1, "daltonizerMode":I
    const-string/jumbo v4, "accessibility_display_daltonizer_enabled"

    #@11
    .line 63
    invoke-static {v0, v4, v5, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_0

    #@17
    .line 66
    const-string/jumbo v4, "accessibility_display_daltonizer"

    #@1a
    const/16 v5, 0xc

    #@1c
    .line 65
    invoke-static {v0, v4, v5, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@1f
    move-result v1

    #@20
    .line 69
    :cond_0
    const/4 v3, 0x0

    #@21
    .line 70
    .local v3, "grayscaleMatrix":[F
    if-nez v1, :cond_1

    #@23
    .line 72
    sget-object v3, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->MATRIX_GRAYSCALE:[F

    #@25
    .line 73
    .local v3, "grayscaleMatrix":[F
    const/4 v1, -0x1

    #@26
    .line 75
    .end local v3    # "grayscaleMatrix":[F
    :cond_1
    const/16 v4, 0xc8

    #@28
    invoke-virtual {v2, v4, v3}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    #@2b
    .line 76
    invoke-virtual {v2, v1}, Lcom/android/server/display/DisplayTransformManager;->setDaltonizerMode(I)V

    #@2e
    .line 58
    return-void
.end method

.method public static applyInversionSetting(Landroid/content/Context;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@4
    move-result-object v0

    #@5
    .line 84
    .local v0, "cr":Landroid/content/ContentResolver;
    const-class v3, Lcom/android/server/display/DisplayTransformManager;

    #@7
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Lcom/android/server/display/DisplayTransformManager;

    #@d
    .line 87
    .local v1, "dtm":Lcom/android/server/display/DisplayTransformManager;
    const-string/jumbo v3, "accessibility_display_inversion_enabled"

    #@10
    .line 86
    invoke-static {v0, v3, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_0

    #@16
    const/4 v2, 0x1

    #@17
    .line 89
    .local v2, "invertColors":Z
    :cond_0
    if-eqz v2, :cond_1

    #@19
    sget-object v3, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->MATRIX_INVERT_COLOR:[F

    #@1b
    .line 88
    :goto_0
    const/16 v4, 0x12c

    #@1d
    invoke-virtual {v1, v4, v3}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    #@20
    .line 82
    return-void

    #@21
    .line 89
    :cond_1
    const/4 v3, 0x0

    #@22
    goto :goto_0
.end method
