.class public Landroid/opengl/GLU;
.super Ljava/lang/Object;
.source "GLU.java"


# static fields
.field private static final greylist-max-o sScratch:[F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 244
    const/16 v0, 0x20

    new-array v0, v0, [F

    sput-object v0, Landroid/opengl/GLU;->sScratch:[F

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist gluErrorString(I)Ljava/lang/String;
    .registers 2
    .param p0, "error"    # I

    .line 36
    sparse-switch p0, :sswitch_data_22

    .line 52
    const/4 v0, 0x0

    return-object v0

    .line 50
    :sswitch_5
    const-string/jumbo v0, "out of memory"

    return-object v0

    .line 48
    :sswitch_9
    const-string/jumbo v0, "stack underflow"

    return-object v0

    .line 46
    :sswitch_d
    const-string/jumbo v0, "stack overflow"

    return-object v0

    .line 44
    :sswitch_11
    const-string/jumbo v0, "invalid operation"

    return-object v0

    .line 42
    :sswitch_15
    const-string/jumbo v0, "invalid value"

    return-object v0

    .line 40
    :sswitch_19
    const-string/jumbo v0, "invalid enum"

    return-object v0

    .line 38
    :sswitch_1d
    const-string/jumbo v0, "no error"

    return-object v0

    nop

    :sswitch_data_22
    .sparse-switch
        0x0 -> :sswitch_1d
        0x500 -> :sswitch_19
        0x501 -> :sswitch_15
        0x502 -> :sswitch_11
        0x503 -> :sswitch_d
        0x504 -> :sswitch_9
        0x505 -> :sswitch_5
    .end sparse-switch
.end method

.method public static whitelist gluLookAt(Ljavax/microedition/khronos/opengles/GL10;FFFFFFFFF)V
    .registers 22
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

    .line 75
    sget-object v1, Landroid/opengl/GLU;->sScratch:[F

    .line 76
    .local v1, "scratch":[F
    monitor-enter v1

    .line 77
    const/4 v2, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    :try_start_13
    invoke-static/range {v1 .. v11}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 79
    const/4 v0, 0x0

    invoke-interface {p0, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    .line 80
    monitor-exit v1

    .line 81
    return-void

    .line 80
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public static whitelist gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V
    .registers 12
    .param p0, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "bottom"    # F
    .param p4, "top"    # F

    .line 94
    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p0    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .end local p1    # "left":F
    .end local p2    # "right":F
    .end local p3    # "bottom":F
    .end local p4    # "top":F
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL10;
    .local v1, "left":F
    .local v2, "right":F
    .local v3, "bottom":F
    .local v4, "top":F
    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    .line 95
    return-void
.end method

.method public static whitelist gluPerspective(Ljavax/microedition/khronos/opengles/GL10;FFFF)V
    .registers 13
    .param p0, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p1, "fovy"    # F
    .param p2, "aspect"    # F
    .param p3, "zNear"    # F
    .param p4, "zFar"    # F

    .line 113
    float-to-double v0, p1

    const-wide v2, 0x3f81df46a2529d39L    # 0.008726646259971648

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v5, p3, v0

    .line 114
    .local v5, "top":F
    neg-float v4, v5

    .line 115
    .local v4, "bottom":F
    mul-float v2, v4, p2

    .line 116
    .local v2, "left":F
    mul-float v3, v5, p2

    .line 117
    .local v3, "right":F
    move-object v1, p0

    move v6, p3

    move v7, p4

    .end local p0    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .end local p3    # "zNear":F
    .end local p4    # "zFar":F
    .local v1, "gl":Ljavax/microedition/khronos/opengles/GL10;
    .local v6, "zNear":F
    .local v7, "zFar":F
    invoke-interface/range {v1 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    .line 118
    return-void
.end method

.method public static whitelist gluProject(FFF[FI[FI[II[FI)I
    .registers 23
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

    .line 150
    sget-object v1, Landroid/opengl/GLU;->sScratch:[F

    .line 151
    .local v1, "scratch":[F
    monitor-enter v1

    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "M_OFFSET":I
    const/16 v7, 0x10

    .line 154
    .local v7, "V_OFFSET":I
    const/16 v8, 0x14

    .line 155
    .local v8, "V2_OFFSET":I
    const/4 v2, 0x0

    move-object v5, p3

    move/from16 v6, p4

    move-object/from16 v3, p5

    move/from16 v4, p6

    :try_start_10
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 158
    const/16 v2, 0x10

    aput p0, v1, v2

    .line 159
    const/16 v2, 0x11

    aput p1, v1, v2

    .line 160
    const/16 v2, 0x12

    aput p2, v1, v2

    .line 161
    const/16 v2, 0x13

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v1, v2

    .line 163
    const/4 v4, 0x0

    const/16 v6, 0x10

    const/16 v2, 0x14

    move-object v3, v1

    move-object v5, v1

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 166
    const/16 v2, 0x17

    aget v2, v1, v2

    .line 167
    .local v2, "w":F
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_3b

    .line 168
    monitor-exit v1

    const/4 v3, 0x0

    return v3

    .line 171
    :cond_3b
    div-float v3, v9, v2

    .line 173
    .local v3, "rw":F
    aget v4, p7, p8

    int-to-float v4, v4

    add-int/lit8 v5, p8, 0x2

    aget v5, p7, v5

    int-to-float v5, v5

    const/16 v6, 0x14

    aget v6, v1, v6

    mul-float/2addr v6, v3

    add-float/2addr v6, v9

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, p9, p10

    .line 177
    add-int/lit8 v4, p10, 0x1

    add-int/lit8 v5, p8, 0x1

    aget v5, p7, v5

    int-to-float v5, v5

    add-int/lit8 v10, p8, 0x3

    aget v10, p7, v10

    int-to-float v10, v10

    const/16 v11, 0x15

    aget v11, v1, v11

    mul-float/2addr v11, v3

    add-float/2addr v11, v9

    mul-float/2addr v10, v11

    mul-float/2addr v10, v6

    add-float/2addr v5, v10

    aput v5, p9, v4

    .line 180
    add-int/lit8 v4, p10, 0x2

    const/16 v5, 0x16

    aget v5, v1, v5

    mul-float/2addr v5, v3

    add-float/2addr v5, v9

    mul-float/2addr v5, v6

    aput v5, p9, v4

    .line 181
    .end local v0    # "M_OFFSET":I
    .end local v2    # "w":F
    .end local v3    # "rw":F
    .end local v7    # "V_OFFSET":I
    .end local v8    # "V2_OFFSET":I
    monitor-exit v1

    .line 183
    const/4 v0, 0x1

    return v0

    .line 181
    :catchall_77
    move-exception v0

    monitor-exit v1
    :try_end_79
    .catchall {:try_start_10 .. :try_end_79} :catchall_77

    throw v0
.end method

.method public static whitelist gluUnProject(FFF[FI[FI[II[FI)I
    .registers 21
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

    .line 216
    sget-object v1, Landroid/opengl/GLU;->sScratch:[F

    .line 217
    .local v1, "scratch":[F
    monitor-enter v1

    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, "PM_OFFSET":I
    const/16 v7, 0x10

    .line 220
    .local v7, "INVPM_OFFSET":I
    const/4 v8, 0x0

    .line 221
    .local v8, "V_OFFSET":I
    const/4 v2, 0x0

    move-object v5, p3

    move v6, p4

    move-object v3, p5

    move/from16 v4, p6

    :try_start_d
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 224
    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-static {v1, v2, v1, v3}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 225
    monitor-exit v1

    return v3

    .line 228
    :cond_1b
    add-int/lit8 v2, p8, 0x0

    aget v2, p7, v2

    int-to-float v2, v2

    sub-float v2, p0, v2

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    add-int/lit8 v5, p8, 0x2

    aget v5, p7, v5

    int-to-float v5, v5

    div-float/2addr v2, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v2, v5

    aput v2, v1, v3

    .line 231
    add-int/lit8 v2, p8, 0x1

    aget v2, p7, v2

    int-to-float v2, v2

    sub-float v2, p1, v2

    mul-float/2addr v2, v4

    add-int/lit8 v3, p8, 0x3

    aget v3, p7, v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float/2addr v2, v5

    const/4 v9, 0x1

    aput v2, v1, v9

    .line 234
    mul-float/2addr v4, p2

    sub-float/2addr v4, v5

    const/4 v2, 0x2

    aput v4, v1, v2

    .line 235
    const/4 v2, 0x3

    aput v5, v1, v2
    :try_end_4a
    .catchall {:try_start_d .. :try_end_4a} :catchall_5c

    .line 237
    const/16 v4, 0x10

    const/4 v6, 0x0

    move-object v5, v1

    move/from16 v2, p10

    move-object v3, v1

    move-object/from16 v1, p9

    .end local v1    # "scratch":[F
    .local v3, "scratch":[F
    :try_start_53
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_59

    move-object v1, v3

    .line 239
    .end local v0    # "PM_OFFSET":I
    .end local v3    # "scratch":[F
    .end local v7    # "INVPM_OFFSET":I
    .end local v8    # "V_OFFSET":I
    .restart local v1    # "scratch":[F
    :try_start_57
    monitor-exit v1

    .line 241
    return v9

    .line 239
    .end local v1    # "scratch":[F
    .restart local v3    # "scratch":[F
    :catchall_59
    move-exception v0

    move-object v1, v3

    .end local v3    # "scratch":[F
    .restart local v1    # "scratch":[F
    goto :goto_5d

    :catchall_5c
    move-exception v0

    :goto_5d
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_57 .. :try_end_5e} :catchall_5c

    throw v0
.end method
