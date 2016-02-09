.class Lcom/android/server/accessibility/DisplayAdjustmentUtils;
.super Ljava/lang/Object;
.source "DisplayAdjustmentUtils.java"


# static fields
.field private static final DEFAULT_DISPLAY_DALTONIZER:I = 0xc

.field private static final GRAYSCALE_MATRIX:[F

.field private static final INVERSION_MATRIX_VALUE_ONLY:[F

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0x10

    #@2
    .line 34
    const-class v0, Lcom/android/server/accessibility/DisplayAdjustmentUtils;

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    sput-object v0, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->LOG_TAG:Ljava/lang/String;

    #@a
    .line 37
    new-array v0, v1, [F

    #@c
    fill-array-data v0, :array_0

    #@f
    sput-object v0, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->GRAYSCALE_MATRIX:[F

    #@11
    .line 51
    new-array v0, v1, [F

    #@13
    fill-array-data v0, :array_1

    #@16
    sput-object v0, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->INVERSION_MATRIX_VALUE_ONLY:[F

    #@18
    .line 33
    return-void

    #@19
    .line 37
    nop

    #@1a
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

    #@3e
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
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static applyAdjustments(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v1

    #@6
    .line 87
    .local v1, "cr":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    #@7
    .line 90
    .local v0, "colorMatrix":[F
    const-string/jumbo v3, "accessibility_display_inversion_enabled"

    #@a
    .line 89
    invoke-static {v1, v3, v4, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_0

    #@10
    .line 91
    sget-object v3, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->INVERSION_MATRIX_VALUE_ONLY:[F

    #@12
    invoke-static {v0, v3}, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->multiply([F[F)[F

    #@15
    move-result-object v0

    #@16
    .line 95
    .end local v0    # "colorMatrix":[F
    :cond_0
    const-string/jumbo v3, "accessibility_display_daltonizer_enabled"

    #@19
    .line 94
    invoke-static {v1, v3, v4, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_2

    #@1f
    .line 97
    const-string/jumbo v3, "accessibility_display_daltonizer"

    #@22
    const/16 v4, 0xc

    #@24
    .line 96
    invoke-static {v1, v3, v4, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@27
    move-result v2

    #@28
    .line 100
    .local v2, "daltonizerMode":I
    if-nez v2, :cond_1

    #@2a
    .line 101
    sget-object v3, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->GRAYSCALE_MATRIX:[F

    #@2c
    invoke-static {v0, v3}, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->multiply([F[F)[F

    #@2f
    move-result-object v0

    #@30
    .line 102
    .local v0, "colorMatrix":[F
    invoke-static {v5}, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->setDaltonizerMode(I)V

    #@33
    .line 110
    .end local v0    # "colorMatrix":[F
    .end local v2    # "daltonizerMode":I
    :goto_0
    invoke-static {v0}, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->setColorTransform([F)V

    #@36
    .line 85
    return-void

    #@37
    .line 104
    .restart local v2    # "daltonizerMode":I
    :cond_1
    invoke-static {v2}, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->setDaltonizerMode(I)V

    #@3a
    goto :goto_0

    #@3b
    .line 107
    .end local v2    # "daltonizerMode":I
    :cond_2
    invoke-static {v5}, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->setDaltonizerMode(I)V

    #@3e
    goto :goto_0
.end method

.method public static hasAdjustments(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    .line 70
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v1, "accessibility_display_inversion_enabled"

    #@9
    .line 69
    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 71
    return v3

    #@10
    .line 75
    :cond_0
    const-string/jumbo v1, "accessibility_display_daltonizer_enabled"

    #@13
    .line 74
    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 76
    return v3

    #@1a
    .line 79
    :cond_1
    return v2
.end method

.method private static multiply([F[F)[F
    .locals 6
    .param p0, "matrix"    # [F
    .param p1, "other"    # [F

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 114
    if-nez p0, :cond_0

    #@3
    .line 115
    return-object p1

    #@4
    .line 117
    :cond_0
    const/16 v2, 0x10

    #@6
    new-array v0, v2, [F

    #@8
    .local v0, "result":[F
    move-object v2, p0

    #@9
    move v3, v1

    #@a
    move-object v4, p1

    #@b
    move v5, v1

    #@c
    .line 118
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    #@f
    .line 119
    return-object v0
.end method

.method private static setColorTransform([F)V
    .locals 7
    .param p0, "m"    # [F

    #@0
    .prologue
    .line 152
    :try_start_0
    const-string/jumbo v4, "SurfaceFlinger"

    #@3
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v2

    #@7
    .line 153
    .local v2, "flinger":Landroid/os/IBinder;
    if-eqz v2, :cond_2

    #@9
    .line 154
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@c
    move-result-object v0

    #@d
    .line 155
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v4, "android.ui.ISurfaceComposer"

    #@10
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@13
    .line 156
    if-eqz p0, :cond_0

    #@15
    .line 157
    const/4 v4, 0x1

    #@16
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 158
    const/4 v3, 0x0

    #@1a
    .local v3, "i":I
    :goto_0
    const/16 v4, 0x10

    #@1c
    if-ge v3, v4, :cond_1

    #@1e
    .line 159
    aget v4, p0, v3

    #@20
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeFloat(F)V

    #@23
    .line 158
    add-int/lit8 v3, v3, 0x1

    #@25
    goto :goto_0

    #@26
    .line 162
    .end local v3    # "i":I
    :cond_0
    const/4 v4, 0x0

    #@27
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 164
    :cond_1
    const/16 v4, 0x3f7

    #@2c
    const/4 v5, 0x0

    #@2d
    const/4 v6, 0x0

    #@2e
    invoke-interface {v2, v4, v0, v5, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@31
    .line 165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    .line 150
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v2    # "flinger":Landroid/os/IBinder;
    :cond_2
    :goto_1
    return-void

    #@35
    .line 167
    :catch_0
    move-exception v1

    #@36
    .line 168
    .local v1, "ex":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->LOG_TAG:Ljava/lang/String;

    #@38
    const-string/jumbo v5, "Failed to set color transform"

    #@3b
    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3e
    goto :goto_1
.end method

.method private static setDaltonizerMode(I)V
    .locals 6
    .param p0, "mode"    # I

    #@0
    .prologue
    .line 130
    :try_start_0
    const-string/jumbo v3, "SurfaceFlinger"

    #@3
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v2

    #@7
    .line 131
    .local v2, "flinger":Landroid/os/IBinder;
    if-eqz v2, :cond_0

    #@9
    .line 132
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@c
    move-result-object v0

    #@d
    .line 133
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v3, "android.ui.ISurfaceComposer"

    #@10
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@13
    .line 134
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 135
    const/16 v3, 0x3f6

    #@18
    const/4 v4, 0x0

    #@19
    const/4 v5, 0x0

    #@1a
    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    .line 136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 128
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v2    # "flinger":Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-void

    #@21
    .line 138
    :catch_0
    move-exception v1

    #@22
    .line 139
    .local v1, "ex":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->LOG_TAG:Ljava/lang/String;

    #@24
    const-string/jumbo v4, "Failed to set Daltonizer mode"

    #@27
    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2a
    goto :goto_0
.end method
