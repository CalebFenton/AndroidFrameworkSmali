.class public Landroid/graphics/Color;
.super Ljava/lang/Object;
.source "Color.java"


# static fields
.field public static final BLACK:I = -0x1000000

.field public static final BLUE:I = -0xffff01

.field public static final CYAN:I = -0xff0001

.field public static final DKGRAY:I = -0xbbbbbc

.field public static final GRAY:I = -0x777778

.field public static final GREEN:I = -0xff0100

.field public static final LTGRAY:I = -0x333334

.field public static final MAGENTA:I = -0xff01

.field public static final RED:I = -0x10000

.field public static final TRANSPARENT:I = 0x0

.field public static final WHITE:I = -0x1

.field public static final YELLOW:I = -0x100

.field private static final sColorNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const v7, -0x333334

    #@3
    const v6, -0x777778

    #@6
    const v5, -0xbbbbbc

    #@9
    const v4, -0xff0001

    #@c
    const v3, -0xff0100

    #@f
    .line 410
    new-instance v0, Ljava/util/HashMap;

    #@11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@14
    sput-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    #@16
    .line 411
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    #@18
    const-string/jumbo v1, "black"

    #@1b
    const/high16 v2, -0x1000000

    #@1d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    .line 412
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    #@26
    const-string/jumbo v1, "darkgray"

    #@29
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    .line 413
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    #@32
    const-string/jumbo v1, "gray"

    #@35
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    .line 414
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    #@3e
    const-string/jumbo v1, "lightgray"

    #@41
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    .line 415
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    #@4a
    const-string/jumbo v1, "white"

    #@4d
    const/4 v2, -0x1

    #@4e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@51
    move-result-object v2

    #@52
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@55
    .line 416
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    #@57
    const-string/jumbo v1, "red"

    #@5a
    const/high16 v2, -0x10000

    #@5c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5f
    move-result-object v2

    #@60
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@63
    .line 417
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    #@65
    const-string/jumbo v1, "green"

    #@68
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6b
    move-result-object v2

    #@6c
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6f
    .line 418
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    #@71
    const-string/jumbo v1, "blue"

    #@74
    const v2, -0xffff01

    #@77
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7a
    move-result-object v2

    #@7b
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7e
    .line 419
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    #@80
    const-string/jumbo v1, "yellow"

    #@83
    const/16 v2, -0x100

    #@85
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@88
    move-result-object v2

    #@89
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8c
    .line 420
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    #@8e
    const-string/jumbo v1, "cyan"

    #@91
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@94
    move-result-object v2

    #@95
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@98
    .line 421
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    #@9a
    const-string/jumbo v1, "magenta"

    #@9d
    const v2, -0xff01

    #@a0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a3
    move-result-object v2

    #@a4
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a7
    .line 422
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    #@a9
    const-string/jumbo v1, "aqua"

    #@ac
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@af
    move-result-object v2

    #@b0
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b3
    .line 423
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    #@b5
    const-string/jumbo v1, "fuchsia"

    #@b8
    const v2, -0xff01

    #@bb
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@be
    move-result-object v2

    #@bf
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c2
    .line 424
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    #@c4
    const-string/jumbo v1, "darkgrey"

    #@c7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ca
    move-result-object v2

    #@cb
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ce
    .line 425
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    #@d0
    const-string/jumbo v1, "grey"

    #@d3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d6
    move-result-object v2

    #@d7
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@da
    .line 426
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    #@dc
    const-string/jumbo v1, "lightgrey"

    #@df
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e2
    move-result-object v2

    #@e3
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e6
    .line 427
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    #@e8
    const-string/jumbo v1, "lime"

    #@eb
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ee
    move-result-object v2

    #@ef
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f2
    .line 428
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    #@f4
    const-string/jumbo v1, "maroon"

    #@f7
    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    #@f9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@fc
    move-result-object v2

    #@fd
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@100
    .line 429
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    #@102
    const-string/jumbo v1, "navy"

    #@105
    const v2, -0xffff80

    #@108
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10b
    move-result-object v2

    #@10c
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10f
    .line 430
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    #@111
    const-string/jumbo v1, "olive"

    #@114
    const v2, -0x7f8000

    #@117
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11a
    move-result-object v2

    #@11b
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11e
    .line 431
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    #@120
    const-string/jumbo v1, "purple"

    #@123
    const v2, -0x7fff80

    #@126
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@129
    move-result-object v2

    #@12a
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12d
    .line 432
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    #@12f
    const-string/jumbo v1, "silver"

    #@132
    const v2, -0x3f3f40

    #@135
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@138
    move-result-object v2

    #@139
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@13c
    .line 433
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    #@13e
    const-string/jumbo v1, "teal"

    #@141
    const v2, -0xff7f80

    #@144
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@147
    move-result-object v2

    #@148
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14b
    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static HSBtoColor(FFF)I
    .locals 13
    .param p0, "h"    # F
    .param p1, "s"    # F
    .param p2, "b"    # F

    #@0
    .prologue
    const/high16 v12, 0x437f0000    # 255.0f

    #@2
    const/4 v9, 0x0

    #@3
    const/high16 v11, 0x3f800000    # 1.0f

    #@5
    .line 269
    invoke-static {p0, v9, v11}, Landroid/util/MathUtils;->constrain(FFF)F

    #@8
    move-result p0

    #@9
    .line 270
    invoke-static {p1, v9, v11}, Landroid/util/MathUtils;->constrain(FFF)F

    #@c
    move-result p1

    #@d
    .line 271
    invoke-static {p2, v9, v11}, Landroid/util/MathUtils;->constrain(FFF)F

    #@10
    move-result p2

    #@11
    .line 273
    const/4 v7, 0x0

    #@12
    .line 274
    .local v7, "red":F
    const/4 v2, 0x0

    #@13
    .line 275
    .local v2, "green":F
    const/4 v0, 0x0

    #@14
    .line 277
    .local v0, "blue":F
    float-to-int v9, p0

    #@15
    int-to-float v9, v9

    #@16
    sub-float v9, p0, v9

    #@18
    const/high16 v10, 0x40c00000    # 6.0f

    #@1a
    mul-float v3, v9, v10

    #@1c
    .line 278
    .local v3, "hf":F
    float-to-int v4, v3

    #@1d
    .line 279
    .local v4, "ihf":I
    int-to-float v9, v4

    #@1e
    sub-float v1, v3, v9

    #@20
    .line 280
    .local v1, "f":F
    sub-float v9, v11, p1

    #@22
    mul-float v5, p2, v9

    #@24
    .line 281
    .local v5, "pv":F
    mul-float v9, p1, v1

    #@26
    sub-float v9, v11, v9

    #@28
    mul-float v6, p2, v9

    #@2a
    .line 282
    .local v6, "qv":F
    sub-float v9, v11, v1

    #@2c
    mul-float/2addr v9, p1

    #@2d
    sub-float v9, v11, v9

    #@2f
    mul-float v8, p2, v9

    #@31
    .line 284
    .local v8, "tv":F
    packed-switch v4, :pswitch_data_0

    #@34
    .line 317
    :goto_0
    mul-float v9, v7, v12

    #@36
    float-to-int v9, v9

    #@37
    shl-int/lit8 v9, v9, 0x10

    #@39
    const/high16 v10, -0x1000000

    #@3b
    or-int/2addr v9, v10

    #@3c
    .line 318
    mul-float v10, v2, v12

    #@3e
    float-to-int v10, v10

    #@3f
    shl-int/lit8 v10, v10, 0x8

    #@41
    .line 317
    or-int/2addr v9, v10

    #@42
    .line 318
    mul-float v10, v0, v12

    #@44
    float-to-int v10, v10

    #@45
    .line 317
    or-int/2addr v9, v10

    #@46
    return v9

    #@47
    .line 286
    :pswitch_0
    move v7, p2

    #@48
    .line 287
    move v2, v8

    #@49
    .line 288
    move v0, v5

    #@4a
    .line 289
    goto :goto_0

    #@4b
    .line 291
    :pswitch_1
    move v7, v6

    #@4c
    .line 292
    move v2, p2

    #@4d
    .line 293
    move v0, v5

    #@4e
    .line 294
    goto :goto_0

    #@4f
    .line 296
    :pswitch_2
    move v7, v5

    #@50
    .line 297
    move v2, p2

    #@51
    .line 298
    move v0, v8

    #@52
    .line 299
    goto :goto_0

    #@53
    .line 301
    :pswitch_3
    move v7, v5

    #@54
    .line 302
    move v2, v6

    #@55
    .line 303
    move v0, p2

    #@56
    .line 304
    goto :goto_0

    #@57
    .line 306
    :pswitch_4
    move v7, v8

    #@58
    .line 307
    move v2, v5

    #@59
    .line 308
    move v0, p2

    #@5a
    .line 309
    goto :goto_0

    #@5b
    .line 311
    :pswitch_5
    move v7, p2

    #@5c
    .line 312
    move v2, v5

    #@5d
    .line 313
    move v0, v6

    #@5e
    .line 314
    goto :goto_0

    #@5f
    .line 284
    nop

    #@60
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static HSBtoColor([F)I
    .locals 3
    .param p0, "hsb"    # [F

    #@0
    .prologue
    .line 251
    const/4 v0, 0x0

    #@1
    aget v0, p0, v0

    #@3
    const/4 v1, 0x1

    #@4
    aget v1, p0, v1

    #@6
    const/4 v2, 0x2

    #@7
    aget v2, p0, v2

    #@9
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->HSBtoColor(FFF)I

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public static HSVToColor(I[F)I
    .locals 2
    .param p0, "alpha"    # I
    .param p1, "hsv"    # [F

    #@0
    .prologue
    .line 375
    array-length v0, p1

    #@1
    const/4 v1, 0x3

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 376
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "3 components required for hsv"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 378
    :cond_0
    invoke-static {p0, p1}, Landroid/graphics/Color;->nativeHSVToColor(I[F)I

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public static HSVToColor([F)I
    .locals 1
    .param p0, "hsv"    # [F

    #@0
    .prologue
    .line 360
    const/16 v0, 0xff

    #@2
    invoke-static {v0, p0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static RGBToHSV(III[F)V
    .locals 2
    .param p0, "red"    # I
    .param p1, "green"    # I
    .param p2, "blue"    # I
    .param p3, "hsv"    # [F

    #@0
    .prologue
    .line 332
    array-length v0, p3

    #@1
    const/4 v1, 0x3

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 333
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "3 components required for hsv"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 335
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/Color;->nativeRGBToHSV(III[F)V

    #@10
    .line 331
    return-void
.end method

.method public static alpha(I)I
    .locals 1
    .param p0, "color"    # I

    #@0
    .prologue
    .line 59
    ushr-int/lit8 v0, p0, 0x18

    #@2
    return v0
.end method

.method public static argb(IIII)I
    .locals 2
    .param p0, "alpha"    # I
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I

    #@0
    .prologue
    .line 116
    shl-int/lit8 v0, p0, 0x18

    #@2
    shl-int/lit8 v1, p1, 0x10

    #@4
    or-int/2addr v0, v1

    #@5
    shl-int/lit8 v1, p2, 0x8

    #@7
    or-int/2addr v0, v1

    #@8
    or-int/2addr v0, p3

    #@9
    return v0
.end method

.method public static blue(I)I
    .locals 1
    .param p0, "color"    # I

    #@0
    .prologue
    .line 86
    and-int/lit16 v0, p0, 0xff

    #@2
    return v0
.end method

.method public static brightness(I)F
    .locals 6
    .param p0, "color"    # I

    #@0
    .prologue
    .line 196
    shr-int/lit8 v4, p0, 0x10

    #@2
    and-int/lit16 v3, v4, 0xff

    #@4
    .line 197
    .local v3, "r":I
    shr-int/lit8 v4, p0, 0x8

    #@6
    and-int/lit16 v2, v4, 0xff

    #@8
    .line 198
    .local v2, "g":I
    and-int/lit16 v1, p0, 0xff

    #@a
    .line 200
    .local v1, "b":I
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    #@d
    move-result v4

    #@e
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    #@11
    move-result v0

    #@12
    .line 202
    .local v0, "V":I
    int-to-float v4, v0

    #@13
    const/high16 v5, 0x437f0000    # 255.0f

    #@15
    div-float/2addr v4, v5

    #@16
    return v4
.end method

.method public static colorToHSV(I[F)V
    .locals 3
    .param p0, "color"    # I
    .param p1, "hsv"    # [F

    #@0
    .prologue
    .line 347
    shr-int/lit8 v0, p0, 0x10

    #@2
    and-int/lit16 v0, v0, 0xff

    #@4
    shr-int/lit8 v1, p0, 0x8

    #@6
    and-int/lit16 v1, v1, 0xff

    #@8
    and-int/lit16 v2, p0, 0xff

    #@a
    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    #@d
    .line 346
    return-void
.end method

.method public static getHtmlColor(Ljava/lang/String;)I
    .locals 5
    .param p0, "color"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 395
    sget-object v2, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    #@3
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@5
    invoke-virtual {p0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@8
    move-result-object v3

    #@9
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Ljava/lang/Integer;

    #@f
    .line 396
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    #@11
    .line 397
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@14
    move-result v2

    #@15
    return v2

    #@16
    .line 400
    :cond_0
    const/4 v2, -0x1

    #@17
    :try_start_0
    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->convertValueToInt(Ljava/lang/CharSequence;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    move-result v2

    #@1b
    return v2

    #@1c
    .line 401
    :catch_0
    move-exception v1

    #@1d
    .line 402
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    return v4
.end method

.method public static green(I)I
    .locals 1
    .param p0, "color"    # I

    #@0
    .prologue
    .line 77
    shr-int/lit8 v0, p0, 0x8

    #@2
    and-int/lit16 v0, v0, 0xff

    #@4
    return v0
.end method

.method public static hue(I)F
    .locals 11
    .param p0, "color"    # I

    #@0
    .prologue
    .line 127
    shr-int/lit8 v10, p0, 0x10

    #@2
    and-int/lit16 v7, v10, 0xff

    #@4
    .line 128
    .local v7, "r":I
    shr-int/lit8 v10, p0, 0x8

    #@6
    and-int/lit16 v6, v10, 0xff

    #@8
    .line 129
    .local v6, "g":I
    and-int/lit16 v2, p0, 0xff

    #@a
    .line 131
    .local v2, "b":I
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    #@d
    move-result v10

    #@e
    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    #@11
    move-result v1

    #@12
    .line 132
    .local v1, "V":I
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    #@15
    move-result v10

    #@16
    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    #@19
    move-result v8

    #@1a
    .line 136
    .local v8, "temp":I
    if-ne v1, v8, :cond_1

    #@1c
    .line 137
    const/4 v0, 0x0

    #@1d
    .line 158
    .local v0, "H":F
    :cond_0
    :goto_0
    return v0

    #@1e
    .line 139
    .end local v0    # "H":F
    :cond_1
    sub-int v10, v1, v8

    #@20
    int-to-float v9, v10

    #@21
    .line 140
    .local v9, "vtemp":F
    sub-int v10, v1, v7

    #@23
    int-to-float v10, v10

    #@24
    div-float v5, v10, v9

    #@26
    .line 141
    .local v5, "cr":F
    sub-int v10, v1, v6

    #@28
    int-to-float v10, v10

    #@29
    div-float v4, v10, v9

    #@2b
    .line 142
    .local v4, "cg":F
    sub-int v10, v1, v2

    #@2d
    int-to-float v10, v10

    #@2e
    div-float v3, v10, v9

    #@30
    .line 144
    .local v3, "cb":F
    if-ne v7, v1, :cond_2

    #@32
    .line 145
    sub-float v0, v3, v4

    #@34
    .line 152
    .restart local v0    # "H":F
    :goto_1
    const/high16 v10, 0x40c00000    # 6.0f

    #@36
    div-float/2addr v0, v10

    #@37
    .line 153
    const/4 v10, 0x0

    #@38
    cmpg-float v10, v0, v10

    #@3a
    if-gez v10, :cond_0

    #@3c
    .line 154
    const/high16 v10, 0x3f800000    # 1.0f

    #@3e
    add-float/2addr v0, v10

    #@3f
    goto :goto_0

    #@40
    .line 146
    .end local v0    # "H":F
    :cond_2
    if-ne v6, v1, :cond_3

    #@42
    .line 147
    const/high16 v10, 0x40000000    # 2.0f

    #@44
    add-float/2addr v10, v5

    #@45
    sub-float v0, v10, v3

    #@47
    .restart local v0    # "H":F
    goto :goto_1

    #@48
    .line 149
    .end local v0    # "H":F
    :cond_3
    const/high16 v10, 0x40800000    # 4.0f

    #@4a
    add-float/2addr v10, v4

    #@4b
    sub-float v0, v10, v5

    #@4d
    .restart local v0    # "H":F
    goto :goto_1
.end method

.method private static native nativeHSVToColor(I[F)I
.end method

.method private static native nativeRGBToHSV(III[F)V
.end method

.method public static parseColor(Ljava/lang/String;)I
    .locals 6
    .param p0, "colorString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 219
    const/4 v3, 0x0

    #@1
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@4
    move-result v3

    #@5
    const/16 v4, 0x23

    #@7
    if-ne v3, v4, :cond_2

    #@9
    .line 221
    const/4 v3, 0x1

    #@a
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    const/16 v4, 0x10

    #@10
    invoke-static {v3, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    #@13
    move-result-wide v0

    #@14
    .line 222
    .local v0, "color":J
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@17
    move-result v3

    #@18
    const/4 v4, 0x7

    #@19
    if-ne v3, v4, :cond_1

    #@1b
    .line 224
    const-wide/32 v4, -0x1000000

    #@1e
    or-long/2addr v0, v4

    #@1f
    .line 228
    :cond_0
    long-to-int v3, v0

    #@20
    return v3

    #@21
    .line 225
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@24
    move-result v3

    #@25
    const/16 v4, 0x9

    #@27
    if-eq v3, v4, :cond_0

    #@29
    .line 226
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@2b
    const-string/jumbo v4, "Unknown color"

    #@2e
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@31
    throw v3

    #@32
    .line 230
    .end local v0    # "color":J
    :cond_2
    sget-object v3, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    #@34
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@36
    invoke-virtual {p0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3d
    move-result-object v2

    #@3e
    check-cast v2, Ljava/lang/Integer;

    #@40
    .line 231
    .local v2, "color":Ljava/lang/Integer;
    if-eqz v2, :cond_3

    #@42
    .line 232
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@45
    move-result v3

    #@46
    return v3

    #@47
    .line 235
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@49
    const-string/jumbo v4, "Unknown color"

    #@4c
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v3
.end method

.method public static red(I)I
    .locals 1
    .param p0, "color"    # I

    #@0
    .prologue
    .line 68
    shr-int/lit8 v0, p0, 0x10

    #@2
    and-int/lit16 v0, v0, 0xff

    #@4
    return v0
.end method

.method public static rgb(III)I
    .locals 2
    .param p0, "red"    # I
    .param p1, "green"    # I
    .param p2, "blue"    # I

    #@0
    .prologue
    .line 101
    shl-int/lit8 v0, p0, 0x10

    #@2
    const/high16 v1, -0x1000000

    #@4
    or-int/2addr v0, v1

    #@5
    shl-int/lit8 v1, p1, 0x8

    #@7
    or-int/2addr v0, v1

    #@8
    or-int/2addr v0, p2

    #@9
    return v0
.end method

.method public static saturation(I)F
    .locals 8
    .param p0, "color"    # I

    #@0
    .prologue
    .line 169
    shr-int/lit8 v6, p0, 0x10

    #@2
    and-int/lit16 v4, v6, 0xff

    #@4
    .line 170
    .local v4, "r":I
    shr-int/lit8 v6, p0, 0x8

    #@6
    and-int/lit16 v3, v6, 0xff

    #@8
    .line 171
    .local v3, "g":I
    and-int/lit16 v2, p0, 0xff

    #@a
    .line 174
    .local v2, "b":I
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    #@d
    move-result v6

    #@e
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    #@11
    move-result v1

    #@12
    .line 175
    .local v1, "V":I
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    #@15
    move-result v6

    #@16
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    #@19
    move-result v5

    #@1a
    .line 179
    .local v5, "temp":I
    if-ne v1, v5, :cond_0

    #@1c
    .line 180
    const/4 v0, 0x0

    #@1d
    .line 185
    .local v0, "S":F
    :goto_0
    return v0

    #@1e
    .line 182
    .end local v0    # "S":F
    :cond_0
    sub-int v6, v1, v5

    #@20
    int-to-float v6, v6

    #@21
    int-to-float v7, v1

    #@22
    div-float v0, v6, v7

    #@24
    .restart local v0    # "S":F
    goto :goto_0
.end method
