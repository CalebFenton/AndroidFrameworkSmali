.class public Landroid/opengl/GLU;
.super Ljava/lang/Object;
.source "GLU.java"


# static fields
.field private static final sScratch:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 244
    const/16 v0, 0x20

    #@2
    new-array v0, v0, [F

    #@4
    sput-object v0, Landroid/opengl/GLU;->sScratch:[F

    #@6
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static gluErrorString(I)Ljava/lang/String;
    .locals 1
    .param p0, "error"    # I

    #@0
    .prologue
    .line 36
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 52
    const/4 v0, 0x0

    #@4
    return-object v0

    #@5
    .line 38
    :sswitch_0
    const-string/jumbo v0, "no error"

    #@8
    return-object v0

    #@9
    .line 40
    :sswitch_1
    const-string/jumbo v0, "invalid enum"

    #@c
    return-object v0

    #@d
    .line 42
    :sswitch_2
    const-string/jumbo v0, "invalid value"

    #@10
    return-object v0

    #@11
    .line 44
    :sswitch_3
    const-string/jumbo v0, "invalid operation"

    #@14
    return-object v0

    #@15
    .line 46
    :sswitch_4
    const-string/jumbo v0, "stack overflow"

    #@18
    return-object v0

    #@19
    .line 48
    :sswitch_5
    const-string/jumbo v0, "stack underflow"

    #@1c
    return-object v0

    #@1d
    .line 50
    :sswitch_6
    const-string/jumbo v0, "out of memory"

    #@20
    return-object v0

    #@21
    .line 36
    nop

    #@22
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x500 -> :sswitch_1
        0x501 -> :sswitch_2
        0x502 -> :sswitch_3
        0x503 -> :sswitch_4
        0x504 -> :sswitch_5
        0x505 -> :sswitch_6
    .end sparse-switch
.end method

.method public static gluLookAt(Ljavax/microedition/khronos/opengles/GL10;FFFFFFFFF)V
    .locals 11
    .param p0, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p1, "eyeX"    # F
    .param p2, "eyeY"    # F
    .param p3, "eyeZ"    # F
    .param p4, "centerX"    # F
    .param p5, "centerY"    # F
    .param p6, "centerZ"    # F
    .param p7, "upX"    # F
    .param p8, "upY"    # F
    .param p9, "upZ"    # F

    #@0
    .prologue
    .line 75
    sget-object v0, Landroid/opengl/GLU;->sScratch:[F

    #@2
    .line 76
    .local v0, "scratch":[F
    monitor-enter v0

    #@3
    .line 77
    const/4 v1, 0x0

    #@4
    move v2, p1

    #@5
    move v3, p2

    #@6
    move v4, p3

    #@7
    move v5, p4

    #@8
    move/from16 v6, p5

    #@a
    move/from16 v7, p6

    #@c
    move/from16 v8, p7

    #@e
    move/from16 v9, p8

    #@10
    move/from16 v10, p9

    #@12
    :try_start_0
    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    #@15
    .line 79
    const/4 v1, 0x0

    #@16
    invoke-interface {p0, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v0

    #@1a
    .line 73
    return-void

    #@1b
    .line 76
    :catchall_0
    move-exception v1

    #@1c
    monitor-exit v0

    #@1d
    throw v1
.end method

.method public static gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V
    .locals 7
    .param p0, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "bottom"    # F
    .param p4, "top"    # F

    #@0
    .prologue
    .line 94
    const/high16 v5, -0x40800000    # -1.0f

    #@2
    const/high16 v6, 0x3f800000    # 1.0f

    #@4
    move-object v0, p0

    #@5
    move v1, p1

    #@6
    move v2, p2

    #@7
    move v3, p3

    #@8
    move v4, p4

    #@9
    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    #@c
    .line 93
    return-void
.end method

.method public static gluPerspective(Ljavax/microedition/khronos/opengles/GL10;FFFF)V
    .locals 10
    .param p0, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p1, "fovy"    # F
    .param p2, "aspect"    # F
    .param p3, "zNear"    # F
    .param p4, "zFar"    # F

    #@0
    .prologue
    .line 113
    float-to-double v6, p1

    #@1
    const-wide v8, 0x3f81df46a2529d39L    # 0.008726646259971648

    #@6
    mul-double/2addr v6, v8

    #@7
    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    #@a
    move-result-wide v6

    #@b
    double-to-float v0, v6

    #@c
    mul-float v4, p3, v0

    #@e
    .line 114
    .local v4, "top":F
    neg-float v3, v4

    #@f
    .line 115
    .local v3, "bottom":F
    mul-float v1, v3, p2

    #@11
    .line 116
    .local v1, "left":F
    mul-float v2, v4, p2

    #@13
    .local v2, "right":F
    move-object v0, p0

    #@14
    move v5, p3

    #@15
    move v6, p4

    #@16
    .line 117
    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    #@19
    .line 112
    return-void
.end method

.method public static gluProject(FFF[FI[FI[II[FI)I
    .locals 11
    .param p0, "objX"    # F
    .param p1, "objY"    # F
    .param p2, "objZ"    # F
    .param p3, "model"    # [F
    .param p4, "modelOffset"    # I
    .param p5, "project"    # [F
    .param p6, "projectOffset"    # I
    .param p7, "view"    # [I
    .param p8, "viewOffset"    # I
    .param p9, "win"    # [F
    .param p10, "winOffset"    # I

    #@0
    .prologue
    .line 150
    sget-object v0, Landroid/opengl/GLU;->sScratch:[F

    #@2
    .line 151
    .local v0, "scratch":[F
    monitor-enter v0

    #@3
    .line 152
    const/4 v6, 0x0

    #@4
    .line 153
    .local v6, "M_OFFSET":I
    const/16 v8, 0x10

    #@6
    .line 154
    .local v8, "V_OFFSET":I
    const/16 v7, 0x14

    #@8
    .line 155
    .local v7, "V2_OFFSET":I
    const/4 v1, 0x0

    #@9
    move-object/from16 v2, p5

    #@b
    move/from16 v3, p6

    #@d
    move-object v4, p3

    #@e
    move v5, p4

    #@f
    :try_start_0
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    #@12
    .line 158
    const/16 v1, 0x10

    #@14
    aput p0, v0, v1

    #@16
    .line 159
    const/16 v1, 0x11

    #@18
    aput p1, v0, v1

    #@1a
    .line 160
    const/16 v1, 0x12

    #@1c
    aput p2, v0, v1

    #@1e
    .line 161
    const/high16 v1, 0x3f800000    # 1.0f

    #@20
    const/16 v2, 0x13

    #@22
    aput v1, v0, v2

    #@24
    .line 163
    const/16 v1, 0x14

    #@26
    .line 164
    const/4 v3, 0x0

    #@27
    const/16 v5, 0x10

    #@29
    move-object v2, v0

    #@2a
    move-object v4, v0

    #@2b
    .line 163
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    #@2e
    .line 166
    const/16 v1, 0x17

    #@30
    aget v10, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    .line 167
    .local v10, "w":F
    const/4 v1, 0x0

    #@33
    cmpl-float v1, v10, v1

    #@35
    if-nez v1, :cond_0

    #@37
    .line 168
    const/4 v1, 0x0

    #@38
    monitor-exit v0

    #@39
    return v1

    #@3a
    .line 171
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    #@3c
    div-float v9, v1, v10

    #@3e
    .line 174
    .local v9, "rw":F
    :try_start_1
    aget v1, p7, p8

    #@40
    int-to-float v1, v1

    #@41
    add-int/lit8 v2, p8, 0x2

    #@43
    aget v2, p7, v2

    #@45
    int-to-float v2, v2

    #@46
    .line 175
    const/16 v3, 0x14

    #@48
    aget v3, v0, v3

    #@4a
    mul-float/2addr v3, v9

    #@4b
    const/high16 v4, 0x3f800000    # 1.0f

    #@4d
    add-float/2addr v3, v4

    #@4e
    .line 174
    mul-float/2addr v2, v3

    #@4f
    .line 176
    const/high16 v3, 0x3f000000    # 0.5f

    #@51
    .line 174
    mul-float/2addr v2, v3

    #@52
    add-float/2addr v1, v2

    #@53
    .line 173
    aput v1, p9, p10

    #@55
    .line 177
    add-int/lit8 v1, p10, 0x1

    #@57
    .line 178
    add-int/lit8 v2, p8, 0x1

    #@59
    aget v2, p7, v2

    #@5b
    int-to-float v2, v2

    #@5c
    add-int/lit8 v3, p8, 0x3

    #@5e
    aget v3, p7, v3

    #@60
    int-to-float v3, v3

    #@61
    .line 179
    const/16 v4, 0x15

    #@63
    aget v4, v0, v4

    #@65
    mul-float/2addr v4, v9

    #@66
    const/high16 v5, 0x3f800000    # 1.0f

    #@68
    add-float/2addr v4, v5

    #@69
    .line 178
    mul-float/2addr v3, v4

    #@6a
    .line 179
    const/high16 v4, 0x3f000000    # 0.5f

    #@6c
    .line 178
    mul-float/2addr v3, v4

    #@6d
    add-float/2addr v2, v3

    #@6e
    .line 177
    aput v2, p9, v1

    #@70
    .line 180
    add-int/lit8 v1, p10, 0x2

    #@72
    const/16 v2, 0x16

    #@74
    aget v2, v0, v2

    #@76
    mul-float/2addr v2, v9

    #@77
    const/high16 v3, 0x3f800000    # 1.0f

    #@79
    add-float/2addr v2, v3

    #@7a
    const/high16 v3, 0x3f000000    # 0.5f

    #@7c
    mul-float/2addr v2, v3

    #@7d
    aput v2, p9, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7f
    monitor-exit v0

    #@80
    .line 183
    const/4 v1, 0x1

    #@81
    return v1

    #@82
    .line 151
    .end local v9    # "rw":F
    .end local v10    # "w":F
    :catchall_0
    move-exception v1

    #@83
    monitor-exit v0

    #@84
    throw v1
.end method

.method public static gluUnProject(FFF[FI[FI[II[FI)I
    .locals 10
    .param p0, "winX"    # F
    .param p1, "winY"    # F
    .param p2, "winZ"    # F
    .param p3, "model"    # [F
    .param p4, "modelOffset"    # I
    .param p5, "project"    # [F
    .param p6, "projectOffset"    # I
    .param p7, "view"    # [I
    .param p8, "viewOffset"    # I
    .param p9, "obj"    # [F
    .param p10, "objOffset"    # I

    #@0
    .prologue
    .line 216
    sget-object v0, Landroid/opengl/GLU;->sScratch:[F

    #@2
    .line 217
    .local v0, "scratch":[F
    monitor-enter v0

    #@3
    .line 218
    const/4 v8, 0x0

    #@4
    .line 219
    .local v8, "PM_OFFSET":I
    const/16 v7, 0x10

    #@6
    .line 220
    .local v7, "INVPM_OFFSET":I
    const/4 v9, 0x0

    #@7
    .line 221
    .local v9, "V_OFFSET":I
    const/4 v1, 0x0

    #@8
    move-object v2, p5

    #@9
    move/from16 v3, p6

    #@b
    move-object v4, p3

    #@c
    move v5, p4

    #@d
    :try_start_0
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    #@10
    .line 224
    const/16 v1, 0x10

    #@12
    const/4 v2, 0x0

    #@13
    invoke-static {v0, v1, v0, v2}, Landroid/opengl/Matrix;->invertM([FI[FI)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_0

    #@19
    .line 225
    const/4 v1, 0x0

    #@1a
    monitor-exit v0

    #@1b
    return v1

    #@1c
    .line 229
    :cond_0
    add-int/lit8 v1, p8, 0x0

    #@1e
    :try_start_1
    aget v1, p7, v1

    #@20
    int-to-float v1, v1

    #@21
    sub-float v1, p0, v1

    #@23
    const/high16 v2, 0x40000000    # 2.0f

    #@25
    mul-float/2addr v1, v2

    #@26
    add-int/lit8 v2, p8, 0x2

    #@28
    aget v2, p7, v2

    #@2a
    int-to-float v2, v2

    #@2b
    div-float/2addr v1, v2

    #@2c
    .line 230
    const/high16 v2, 0x3f800000    # 1.0f

    #@2e
    .line 229
    sub-float/2addr v1, v2

    #@2f
    .line 228
    const/4 v2, 0x0

    #@30
    aput v1, v0, v2

    #@32
    .line 232
    add-int/lit8 v1, p8, 0x1

    #@34
    aget v1, p7, v1

    #@36
    int-to-float v1, v1

    #@37
    sub-float v1, p1, v1

    #@39
    const/high16 v2, 0x40000000    # 2.0f

    #@3b
    mul-float/2addr v1, v2

    #@3c
    add-int/lit8 v2, p8, 0x3

    #@3e
    aget v2, p7, v2

    #@40
    int-to-float v2, v2

    #@41
    div-float/2addr v1, v2

    #@42
    .line 233
    const/high16 v2, 0x3f800000    # 1.0f

    #@44
    .line 232
    sub-float/2addr v1, v2

    #@45
    .line 231
    const/4 v2, 0x1

    #@46
    aput v1, v0, v2

    #@48
    .line 234
    const/high16 v1, 0x40000000    # 2.0f

    #@4a
    mul-float/2addr v1, p2

    #@4b
    const/high16 v2, 0x3f800000    # 1.0f

    #@4d
    sub-float/2addr v1, v2

    #@4e
    const/4 v2, 0x2

    #@4f
    aput v1, v0, v2

    #@51
    .line 235
    const/high16 v1, 0x3f800000    # 1.0f

    #@53
    const/4 v2, 0x3

    #@54
    aput v1, v0, v2

    #@56
    .line 237
    const/16 v4, 0x10

    #@58
    .line 238
    const/4 v6, 0x0

    #@59
    move-object/from16 v1, p9

    #@5b
    move/from16 v2, p10

    #@5d
    move-object v3, v0

    #@5e
    move-object v5, v0

    #@5f
    .line 237
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@62
    monitor-exit v0

    #@63
    .line 241
    const/4 v1, 0x1

    #@64
    return v1

    #@65
    .line 217
    :catchall_0
    move-exception v1

    #@66
    monitor-exit v0

    #@67
    throw v1
.end method
