.class public Landroid/text/format/Formatter$RoundedBytesResult;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/format/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RoundedBytesResult"
.end annotation


# instance fields
.field public final blacklist fractionDigits:I

.field public final blacklist roundedBytes:J

.field public final blacklist units:Landroid/icu/util/MeasureUnit;

.field public final blacklist value:F


# direct methods
.method private constructor blacklist <init>(FLandroid/icu/util/MeasureUnit;IJ)V
    .registers 6
    .param p1, "value"    # F
    .param p2, "units"    # Landroid/icu/util/MeasureUnit;
    .param p3, "fractionDigits"    # I
    .param p4, "roundedBytes"    # J

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput p1, p0, Landroid/text/format/Formatter$RoundedBytesResult;->value:F

    .line 192
    iput-object p2, p0, Landroid/text/format/Formatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    .line 193
    iput p3, p0, Landroid/text/format/Formatter$RoundedBytesResult;->fractionDigits:I

    .line 194
    iput-wide p4, p0, Landroid/text/format/Formatter$RoundedBytesResult;->roundedBytes:J

    .line 195
    return-void
.end method

.method public static blacklist roundBytes(JI)Landroid/text/format/Formatter$RoundedBytesResult;
    .registers 19
    .param p0, "sizeBytes"    # J
    .param p2, "flags"    # I

    .line 202
    move-wide/from16 v0, p0

    and-int/lit8 v2, p2, 0x8

    if-eqz v2, :cond_9

    const/16 v2, 0x400

    goto :goto_b

    :cond_9
    const/16 v2, 0x3e8

    .line 203
    .local v2, "unit":I
    :goto_b
    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gez v5, :cond_13

    const/4 v5, 0x1

    goto :goto_14

    :cond_13
    const/4 v5, 0x0

    .line 204
    .local v5, "isNegative":Z
    :goto_14
    if-eqz v5, :cond_19

    neg-long v6, v0

    long-to-float v6, v6

    goto :goto_1a

    :cond_19
    long-to-float v6, v0

    .line 205
    .local v6, "result":F
    :goto_1a
    sget-object v7, Landroid/icu/util/MeasureUnit;->BYTE:Landroid/icu/util/MeasureUnit;

    .line 206
    .local v7, "units":Landroid/icu/util/MeasureUnit;
    const-wide/16 v8, 0x1

    .line 207
    .local v8, "mult":J
    const/high16 v10, 0x44610000    # 900.0f

    cmpl-float v11, v6, v10

    if-lez v11, :cond_29

    .line 208
    sget-object v7, Landroid/icu/util/MeasureUnit;->KILOBYTE:Landroid/icu/util/MeasureUnit;

    .line 209
    int-to-long v8, v2

    .line 210
    int-to-float v11, v2

    div-float/2addr v6, v11

    .line 212
    :cond_29
    cmpl-float v11, v6, v10

    if-lez v11, :cond_33

    .line 213
    sget-object v7, Landroid/icu/util/MeasureUnit;->MEGABYTE:Landroid/icu/util/MeasureUnit;

    .line 214
    int-to-long v11, v2

    mul-long/2addr v8, v11

    .line 215
    int-to-float v11, v2

    div-float/2addr v6, v11

    .line 217
    :cond_33
    cmpl-float v11, v6, v10

    if-lez v11, :cond_3d

    .line 218
    sget-object v7, Landroid/icu/util/MeasureUnit;->GIGABYTE:Landroid/icu/util/MeasureUnit;

    .line 219
    int-to-long v11, v2

    mul-long/2addr v8, v11

    .line 220
    int-to-float v11, v2

    div-float/2addr v6, v11

    .line 222
    :cond_3d
    cmpl-float v11, v6, v10

    if-lez v11, :cond_47

    .line 223
    sget-object v7, Landroid/icu/util/MeasureUnit;->TERABYTE:Landroid/icu/util/MeasureUnit;

    .line 224
    int-to-long v11, v2

    mul-long/2addr v8, v11

    .line 225
    int-to-float v11, v2

    div-float/2addr v6, v11

    .line 227
    :cond_47
    cmpl-float v10, v6, v10

    if-lez v10, :cond_54

    .line 228
    sget-object v7, Landroid/icu/util/MeasureUnit;->PETABYTE:Landroid/icu/util/MeasureUnit;

    .line 229
    int-to-long v10, v2

    mul-long/2addr v8, v10

    .line 230
    int-to-float v10, v2

    div-float/2addr v6, v10

    move-wide v13, v8

    move-object v9, v7

    goto :goto_56

    .line 227
    :cond_54
    move-wide v13, v8

    move-object v9, v7

    .line 237
    .end local v7    # "units":Landroid/icu/util/MeasureUnit;
    .end local v8    # "mult":J
    .local v9, "units":Landroid/icu/util/MeasureUnit;
    .local v13, "mult":J
    :goto_56
    const-wide/16 v7, 0x1

    cmp-long v7, v13, v7

    if-eqz v7, :cond_94

    const/high16 v7, 0x42c80000    # 100.0f

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_63

    goto :goto_94

    .line 240
    :cond_63
    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v7, v6, v7

    if-gez v7, :cond_6f

    .line 241
    const/16 v7, 0x64

    .line 242
    .local v7, "roundFactor":I
    const/4 v8, 0x2

    move v15, v7

    move v10, v8

    .local v8, "roundDigits":I
    goto :goto_98

    .line 243
    .end local v7    # "roundFactor":I
    .end local v8    # "roundDigits":I
    :cond_6f
    const/high16 v7, 0x41200000    # 10.0f

    cmpg-float v7, v6, v7

    if-gez v7, :cond_85

    .line 244
    and-int/lit8 v7, p2, 0x1

    if-eqz v7, :cond_7f

    .line 245
    const/16 v7, 0xa

    .line 246
    .restart local v7    # "roundFactor":I
    const/4 v8, 0x1

    move v15, v7

    move v10, v8

    .restart local v8    # "roundDigits":I
    goto :goto_98

    .line 248
    .end local v7    # "roundFactor":I
    .end local v8    # "roundDigits":I
    :cond_7f
    const/16 v7, 0x64

    .line 249
    .restart local v7    # "roundFactor":I
    const/4 v8, 0x2

    move v15, v7

    move v10, v8

    .restart local v8    # "roundDigits":I
    goto :goto_98

    .line 252
    .end local v7    # "roundFactor":I
    .end local v8    # "roundDigits":I
    :cond_85
    and-int/lit8 v7, p2, 0x1

    if-eqz v7, :cond_8e

    .line 253
    const/4 v7, 0x1

    .line 254
    .restart local v7    # "roundFactor":I
    const/4 v8, 0x0

    move v15, v7

    move v10, v8

    .restart local v8    # "roundDigits":I
    goto :goto_98

    .line 256
    .end local v7    # "roundFactor":I
    .end local v8    # "roundDigits":I
    :cond_8e
    const/16 v7, 0x64

    .line 257
    .restart local v7    # "roundFactor":I
    const/4 v8, 0x2

    move v15, v7

    move v10, v8

    .restart local v8    # "roundDigits":I
    goto :goto_98

    .line 238
    .end local v7    # "roundFactor":I
    .end local v8    # "roundDigits":I
    :cond_94
    :goto_94
    const/4 v7, 0x1

    .line 239
    .restart local v7    # "roundFactor":I
    const/4 v8, 0x0

    move v15, v7

    move v10, v8

    .line 261
    .end local v7    # "roundFactor":I
    .local v10, "roundDigits":I
    .local v15, "roundFactor":I
    :goto_98
    if-eqz v5, :cond_9d

    .line 262
    neg-float v6, v6

    move v8, v6

    goto :goto_9e

    .line 261
    :cond_9d
    move v8, v6

    .line 268
    .end local v6    # "result":F
    .local v8, "result":F
    :goto_9e
    and-int/lit8 v6, p2, 0x2

    if-nez v6, :cond_a4

    move-wide v11, v3

    goto :goto_af

    .line 269
    :cond_a4
    int-to-float v3, v15

    mul-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v3, v13

    int-to-long v6, v15

    div-long/2addr v3, v6

    move-wide v11, v3

    :goto_af
    nop

    .line 271
    .local v11, "roundedBytes":J
    new-instance v7, Landroid/text/format/Formatter$RoundedBytesResult;

    invoke-direct/range {v7 .. v12}, Landroid/text/format/Formatter$RoundedBytesResult;-><init>(FLandroid/icu/util/MeasureUnit;IJ)V

    return-object v7
.end method
