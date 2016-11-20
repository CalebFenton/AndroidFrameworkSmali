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
    .line 255
    new-instance v0, Ljava/util/HashMap;

    #@11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@14
    sput-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    #@16
    .line 256
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
    .line 257
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
    .line 258
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
    .line 259
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
    .line 260
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
    .line 261
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
    .line 262
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
    .line 263
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
    .line 264
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
    .line 265
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
    .line 266
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
    .line 267
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
    .line 268
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
    .line 269
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
    .line 270
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
    .line 271
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
    .line 272
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
    .line 273
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
    .line 274
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
    .line 275
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
    .line 276
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
    .line 277
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
    .line 278
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

.method public static HSVToColor(I[F)I
    .locals 2
    .param p0, "alpha"    # I
    .param p1, "hsv"    # [F

    #@0
    .prologue
    .line 220
    array-length v0, p1

    #@1
    const/4 v1, 0x3

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 221
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "3 components required for hsv"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 223
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
    .line 205
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
    .line 177
    array-length v0, p3

    #@1
    const/4 v1, 0x3

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 178
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "3 components required for hsv"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 180
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/Color;->nativeRGBToHSV(III[F)V

    #@10
    .line 176
    return-void
.end method

.method public static alpha(I)I
    .locals 1
    .param p0, "color"    # I

    #@0
    .prologue
    .line 58
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
    .line 112
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
    .line 82
    and-int/lit16 v0, p0, 0xff

    #@2
    return v0
.end method

.method public static colorToHSV(I[F)V
    .locals 3
    .param p0, "color"    # I
    .param p1, "hsv"    # [F

    #@0
    .prologue
    .line 192
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
    .line 191
    return-void
.end method

.method public static getHtmlColor(Ljava/lang/String;)I
    .locals 5
    .param p0, "color"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 240
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
    .line 241
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    #@11
    .line 242
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@14
    move-result v2

    #@15
    return v2

    #@16
    .line 245
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
    .line 246
    :catch_0
    move-exception v1

    #@1d
    .line 247
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    return v4
.end method

.method public static green(I)I
    .locals 1
    .param p0, "color"    # I

    #@0
    .prologue
    .line 74
    shr-int/lit8 v0, p0, 0x8

    #@2
    and-int/lit16 v0, v0, 0xff

    #@4
    return v0
.end method

.method public static luminance(I)F
    .locals 10
    .param p0, "color"    # I

    #@0
    .prologue
    .line 124
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    #@3
    move-result v6

    #@4
    int-to-double v6, v6

    #@5
    const-wide v8, 0x406fe00000000000L    # 255.0

    #@a
    div-double v4, v6, v8

    #@c
    .line 125
    .local v4, "red":D
    const-wide v6, 0x3fa41c8216c61523L    # 0.03928

    #@11
    cmpg-double v6, v4, v6

    #@13
    if-gez v6, :cond_0

    #@15
    const-wide v6, 0x4029d70a3d70a3d7L    # 12.92

    #@1a
    div-double/2addr v4, v6

    #@1b
    .line 126
    :goto_0
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    #@1e
    move-result v6

    #@1f
    int-to-double v6, v6

    #@20
    const-wide v8, 0x406fe00000000000L    # 255.0

    #@25
    div-double v2, v6, v8

    #@27
    .line 127
    .local v2, "green":D
    const-wide v6, 0x3fa41c8216c61523L    # 0.03928

    #@2c
    cmpg-double v6, v2, v6

    #@2e
    if-gez v6, :cond_1

    #@30
    const-wide v6, 0x4029d70a3d70a3d7L    # 12.92

    #@35
    div-double/2addr v2, v6

    #@36
    .line 128
    :goto_1
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    #@39
    move-result v6

    #@3a
    int-to-double v6, v6

    #@3b
    const-wide v8, 0x406fe00000000000L    # 255.0

    #@40
    div-double v0, v6, v8

    #@42
    .line 129
    .local v0, "blue":D
    const-wide v6, 0x3fa41c8216c61523L    # 0.03928

    #@47
    cmpg-double v6, v0, v6

    #@49
    if-gez v6, :cond_2

    #@4b
    const-wide v6, 0x4029d70a3d70a3d7L    # 12.92

    #@50
    div-double/2addr v0, v6

    #@51
    .line 130
    :goto_2
    const-wide v6, 0x3fcb367a0f9096bcL    # 0.2126

    #@56
    mul-double/2addr v6, v4

    #@57
    const-wide v8, 0x3fe6e2eb1c432ca5L    # 0.7152

    #@5c
    mul-double/2addr v8, v2

    #@5d
    add-double/2addr v6, v8

    #@5e
    const-wide v8, 0x3fb27bb2fec56d5dL    # 0.0722

    #@63
    mul-double/2addr v8, v0

    #@64
    add-double/2addr v6, v8

    #@65
    double-to-float v6, v6

    #@66
    return v6

    #@67
    .line 125
    .end local v0    # "blue":D
    .end local v2    # "green":D
    :cond_0
    const-wide v6, 0x3fac28f5c28f5c29L    # 0.055

    #@6c
    add-double/2addr v6, v4

    #@6d
    const-wide v8, 0x3ff0e147ae147ae1L    # 1.055

    #@72
    div-double/2addr v6, v8

    #@73
    const-wide v8, 0x4003333333333333L    # 2.4

    #@78
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    #@7b
    move-result-wide v4

    #@7c
    goto :goto_0

    #@7d
    .line 127
    .restart local v2    # "green":D
    :cond_1
    const-wide v6, 0x3fac28f5c28f5c29L    # 0.055

    #@82
    add-double/2addr v6, v2

    #@83
    const-wide v8, 0x3ff0e147ae147ae1L    # 1.055

    #@88
    div-double/2addr v6, v8

    #@89
    const-wide v8, 0x4003333333333333L    # 2.4

    #@8e
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    #@91
    move-result-wide v2

    #@92
    goto :goto_1

    #@93
    .line 129
    .restart local v0    # "blue":D
    :cond_2
    const-wide v6, 0x3fac28f5c28f5c29L    # 0.055

    #@98
    add-double/2addr v6, v0

    #@99
    const-wide v8, 0x3ff0e147ae147ae1L    # 1.055

    #@9e
    div-double/2addr v6, v8

    #@9f
    const-wide v8, 0x4003333333333333L    # 2.4

    #@a4
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    #@a7
    move-result-wide v0

    #@a8
    goto :goto_2
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
    .line 147
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
    .line 149
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
    .line 150
    .local v0, "color":J
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@17
    move-result v3

    #@18
    const/4 v4, 0x7

    #@19
    if-ne v3, v4, :cond_1

    #@1b
    .line 152
    const-wide/32 v4, -0x1000000

    #@1e
    or-long/2addr v0, v4

    #@1f
    .line 156
    :cond_0
    long-to-int v3, v0

    #@20
    return v3

    #@21
    .line 153
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@24
    move-result v3

    #@25
    const/16 v4, 0x9

    #@27
    if-eq v3, v4, :cond_0

    #@29
    .line 154
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@2b
    const-string/jumbo v4, "Unknown color"

    #@2e
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@31
    throw v3

    #@32
    .line 158
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
    .line 159
    .local v2, "color":Ljava/lang/Integer;
    if-eqz v2, :cond_3

    #@42
    .line 160
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@45
    move-result v3

    #@46
    return v3

    #@47
    .line 163
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
    .line 66
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
    .line 97
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
