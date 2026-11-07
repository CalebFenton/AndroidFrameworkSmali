.class public Ljdk/internal/math/FormattedFloatingDecimal;
.super Ljava/lang/Object;
.source "FormattedFloatingDecimal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljdk/internal/math/FormattedFloatingDecimal$Form;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field private static final blacklist threadLocalCharBuffer:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist decExponentRounded:I

.field private blacklist exponent:[C

.field private blacklist mantissa:[C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 30
    nop

    .line 45
    new-instance v0, Ljdk/internal/math/FormattedFloatingDecimal$1;

    invoke-direct {v0}, Ljdk/internal/math/FormattedFloatingDecimal$1;-><init>()V

    sput-object v0, Ljdk/internal/math/FormattedFloatingDecimal;->threadLocalCharBuffer:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor blacklist <init>(ILjdk/internal/math/FormattedFloatingDecimal$Form;Ljdk/internal/math/FloatingDecimal$BinaryToASCIIConverter;)V
    .registers 11
    .param p1, "precision"    # I
    .param p2, "form"    # Ljdk/internal/math/FormattedFloatingDecimal$Form;
    .param p3, "fdConverter"    # Ljdk/internal/math/FloatingDecimal$BinaryToASCIIConverter;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-interface {p3}, Ljdk/internal/math/FloatingDecimal$BinaryToASCIIConverter;->isExceptional()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 59
    invoke-interface {p3}, Ljdk/internal/math/FloatingDecimal$BinaryToASCIIConverter;->toJavaFormatString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Ljdk/internal/math/FormattedFloatingDecimal;->exponent:[C

    .line 61
    return-void

    .line 63
    :cond_17
    invoke-static {}, Ljdk/internal/math/FormattedFloatingDecimal;->getBuffer()[C

    move-result-object v3

    .line 64
    .local v3, "digits":[C
    invoke-interface {p3, v3}, Ljdk/internal/math/FloatingDecimal$BinaryToASCIIConverter;->getDigits([C)I

    move-result v4

    .line 65
    .local v4, "nDigits":I
    invoke-interface {p3}, Ljdk/internal/math/FloatingDecimal$BinaryToASCIIConverter;->getDecimalExponent()I

    move-result v0

    .line 67
    .local v0, "decExp":I
    invoke-interface {p3}, Ljdk/internal/math/FloatingDecimal$BinaryToASCIIConverter;->isNegative()Z

    move-result v6

    .line 68
    .local v6, "isNegative":Z
    invoke-virtual {p2}, Ljdk/internal/math/FormattedFloatingDecimal$Form;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_78

    .line 100
    move-object v1, p0

    move v2, p1

    .end local p1    # "precision":I
    .local v2, "precision":I
    goto :goto_76

    .line 85
    .end local v2    # "precision":I
    .restart local p1    # "precision":I
    :pswitch_31
    invoke-static {v0, v3, v4, p1}, Ljdk/internal/math/FormattedFloatingDecimal;->applyPrecision(I[CII)I

    move-result v5

    .line 88
    .local v5, "exp":I
    add-int/lit8 v1, v5, -0x1

    const/4 v2, -0x4

    if-lt v1, v2, :cond_47

    add-int/lit8 v1, v5, -0x1

    if-lt v1, p1, :cond_3f

    goto :goto_47

    .line 94
    :cond_3f
    sub-int v2, p1, v5

    .line 95
    .end local p1    # "precision":I
    .restart local v2    # "precision":I
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Ljdk/internal/math/FormattedFloatingDecimal;->fillDecimal(I[CIIZ)V

    move p1, v2

    goto :goto_4e

    .line 90
    .end local v2    # "precision":I
    .restart local p1    # "precision":I
    :cond_47
    :goto_47
    add-int/lit8 v2, p1, -0x1

    .line 91
    .end local p1    # "precision":I
    .restart local v2    # "precision":I
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Ljdk/internal/math/FormattedFloatingDecimal;->fillScientific(I[CIIZ)V

    move p1, v2

    .line 97
    .end local v2    # "precision":I
    .restart local p1    # "precision":I
    :goto_4e
    iput v5, v1, Ljdk/internal/math/FormattedFloatingDecimal;->decExponentRounded:I

    .line 98
    goto :goto_77

    .line 75
    .end local v5    # "exp":I
    :pswitch_51
    move-object v1, p0

    add-int v2, v0, p1

    invoke-static {v0, v3, v4, v2}, Ljdk/internal/math/FormattedFloatingDecimal;->applyPrecision(I[CII)I

    move-result v5

    .line 76
    .restart local v5    # "exp":I
    move v2, p1

    .end local p1    # "precision":I
    .restart local v2    # "precision":I
    invoke-direct/range {v1 .. v6}, Ljdk/internal/math/FormattedFloatingDecimal;->fillDecimal(I[CIIZ)V

    .line 77
    iput v5, v1, Ljdk/internal/math/FormattedFloatingDecimal;->decExponentRounded:I

    .line 78
    goto :goto_76

    .line 70
    .end local v2    # "precision":I
    .end local v5    # "exp":I
    .restart local p1    # "precision":I
    :pswitch_5f
    move-object v1, p0

    move v2, p1

    .end local p1    # "precision":I
    .restart local v2    # "precision":I
    move v5, v0

    .line 71
    .restart local v5    # "exp":I
    iput v5, v1, Ljdk/internal/math/FormattedFloatingDecimal;->decExponentRounded:I

    .line 72
    invoke-direct/range {v1 .. v6}, Ljdk/internal/math/FormattedFloatingDecimal;->fillCompatible(I[CIIZ)V

    .line 73
    goto :goto_76

    .line 80
    .end local v2    # "precision":I
    .end local v5    # "exp":I
    .restart local p1    # "precision":I
    :pswitch_68
    move v2, p1

    .end local p1    # "precision":I
    .restart local v2    # "precision":I
    add-int/lit8 p1, v2, 0x1

    invoke-static {v0, v3, v4, p1}, Ljdk/internal/math/FormattedFloatingDecimal;->applyPrecision(I[CII)I

    move-result v5

    .line 81
    .restart local v5    # "exp":I
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Ljdk/internal/math/FormattedFloatingDecimal;->fillScientific(I[CIIZ)V

    .line 82
    iput v5, v1, Ljdk/internal/math/FormattedFloatingDecimal;->decExponentRounded:I

    .line 83
    nop

    .line 102
    .end local v5    # "exp":I
    :goto_76
    move p1, v2

    .end local v2    # "precision":I
    .restart local p1    # "precision":I
    :goto_77
    return-void

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_68
        :pswitch_5f
        :pswitch_51
        :pswitch_31
    .end packed-switch
.end method

.method private static blacklist applyPrecision(I[CII)I
    .registers 11
    .param p0, "decExp"    # I
    .param p1, "digits"    # [C
    .param p2, "nDigits"    # I
    .param p3, "prec"    # I

    .line 139
    if-ge p3, p2, :cond_4e

    if-gez p3, :cond_5

    goto :goto_4e

    .line 143
    :cond_5
    const/16 v0, 0x31

    const/16 v1, 0x35

    const/4 v2, 0x0

    const/16 v3, 0x30

    const/4 v4, 0x1

    if-nez p3, :cond_1f

    .line 146
    aget-char v5, p1, v2

    if-lt v5, v1, :cond_1b

    .line 147
    aput-char v0, p1, v2

    .line 148
    invoke-static {p1, v4, p2, v3}, Ljava/util/Arrays;->fill([CIIC)V

    .line 149
    add-int/lit8 v0, p0, 0x1

    return v0

    .line 151
    :cond_1b
    invoke-static {p1, v2, p2, v3}, Ljava/util/Arrays;->fill([CIIC)V

    .line 152
    return p0

    .line 155
    :cond_1f
    aget-char v5, p1, p3

    .line 156
    .local v5, "q":I
    if-lt v5, v1, :cond_4a

    .line 157
    move v1, p3

    .line 158
    .local v1, "i":I
    add-int/lit8 v1, v1, -0x1

    aget-char v5, p1, v1

    .line 159
    const/16 v6, 0x39

    if-ne v5, v6, :cond_3f

    .line 160
    :goto_2c
    if-ne v5, v6, :cond_35

    if-lez v1, :cond_35

    .line 161
    add-int/lit8 v1, v1, -0x1

    aget-char v5, p1, v1

    goto :goto_2c

    .line 163
    :cond_35
    if-ne v5, v6, :cond_3f

    .line 165
    aput-char v0, p1, v2

    .line 166
    invoke-static {p1, v4, p2, v3}, Ljava/util/Arrays;->fill([CIIC)V

    .line 167
    add-int/lit8 v0, p0, 0x1

    return v0

    .line 170
    :cond_3f
    add-int/lit8 v0, v5, 0x1

    int-to-char v0, v0

    aput-char v0, p1, v1

    .line 171
    add-int/lit8 v0, v1, 0x1

    invoke-static {p1, v0, p2, v3}, Ljava/util/Arrays;->fill([CIIC)V

    .line 172
    .end local v1    # "i":I
    goto :goto_4d

    .line 173
    :cond_4a
    invoke-static {p1, p3, p2, v3}, Ljava/util/Arrays;->fill([CIIC)V

    .line 175
    :goto_4d
    return p0

    .line 141
    .end local v5    # "q":I
    :cond_4e
    :goto_4e
    return p0
.end method

.method private static blacklist create(ZI)[C
    .registers 5
    .param p0, "isNegative"    # Z
    .param p1, "size"    # I

    .line 267
    if-eqz p0, :cond_c

    .line 268
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [C

    .line 269
    .local v0, "r":[C
    const/4 v1, 0x0

    const/16 v2, 0x2d

    aput-char v2, v0, v1

    .line 270
    return-object v0

    .line 272
    .end local v0    # "r":[C
    :cond_c
    new-array v0, p1, [C

    return-object v0
.end method

.method private blacklist fillCompatible(I[CIIZ)V
    .registers 15
    .param p1, "precision"    # I
    .param p2, "digits"    # [C
    .param p3, "nDigits"    # I
    .param p4, "exp"    # I
    .param p5, "isNegative"    # Z

    .line 182
    move v0, p5

    .line 183
    .local v0, "startIndex":I
    const/16 v1, 0x2e

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x30

    const/4 v5, 0x1

    if-lez p4, :cond_7d

    const/16 v6, 0x8

    if-ge p4, v6, :cond_7d

    .line 185
    if-ge p3, p4, :cond_3b

    .line 186
    sub-int v6, p4, p3

    .line 187
    .local v6, "extraZeros":I
    add-int v7, p3, v6

    add-int/2addr v7, v3

    invoke-static {p5, v7}, Ljdk/internal/math/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v3

    iput-object v3, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    .line 188
    iget-object v3, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    invoke-static {p2, v2, v3, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    iget-object v2, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    add-int v3, v0, p3

    add-int v7, v0, p3

    add-int/2addr v7, v6

    invoke-static {v2, v3, v7, v4}, Ljava/util/Arrays;->fill([CIIC)V

    .line 190
    iget-object v2, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    add-int v3, v0, p3

    add-int/2addr v3, v6

    aput-char v1, v2, v3

    .line 191
    iget-object v1, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    add-int v2, v0, p3

    add-int/2addr v2, v6

    add-int/2addr v2, v5

    aput-char v4, v1, v2

    .line 192
    .end local v6    # "extraZeros":I
    goto/16 :goto_180

    :cond_3b
    if-ge p4, p3, :cond_61

    .line 193
    sub-int v3, p3, p4

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 194
    .local v3, "t":I
    add-int/lit8 v4, p4, 0x1

    add-int/2addr v4, v3

    invoke-static {p5, v4}, Ljdk/internal/math/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v4

    iput-object v4, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    .line 195
    iget-object v4, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    invoke-static {p2, v2, v4, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    iget-object v2, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    add-int v4, v0, p4

    aput-char v1, v2, v4

    .line 197
    iget-object v1, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    add-int v2, v0, p4

    add-int/2addr v2, v5

    invoke-static {p2, p4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    .end local v3    # "t":I
    goto/16 :goto_180

    .line 199
    :cond_61
    add-int/lit8 v3, p3, 0x2

    invoke-static {p5, v3}, Ljdk/internal/math/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v3

    iput-object v3, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    .line 200
    iget-object v3, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    invoke-static {p2, v2, v3, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    iget-object v2, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    add-int v3, v0, p3

    aput-char v1, v2, v3

    .line 202
    iget-object v1, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    add-int v2, v0, p3

    add-int/2addr v2, v5

    aput-char v4, v1, v2

    goto/16 :goto_180

    .line 204
    :cond_7d
    if-gtz p4, :cond_e8

    const/4 v6, -0x3

    if-le p4, v6, :cond_e8

    .line 205
    neg-int v3, p4

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 206
    .local v3, "zeros":I
    add-int v6, p1, p4

    invoke-static {p3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 208
    .local v6, "t":I
    if-lez v3, :cond_bf

    .line 209
    add-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v6

    invoke-static {p5, v5}, Ljdk/internal/math/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v5

    iput-object v5, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    .line 210
    iget-object v5, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    aput-char v4, v5, v0

    .line 211
    iget-object v5, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v7, v0, 0x1

    aput-char v1, v5, v7

    .line 212
    iget-object v1, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v5, v0, 0x2

    add-int/lit8 v7, v0, 0x2

    add-int/2addr v7, v3

    invoke-static {v1, v5, v7, v4}, Ljava/util/Arrays;->fill([CIIC)V

    .line 213
    if-lez v6, :cond_e6

    .line 215
    iget-object v1, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v4, v0, 0x2

    add-int/2addr v4, v3

    invoke-static {p2, v2, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_e6

    .line 217
    :cond_bf
    if-lez v6, :cond_dc

    .line 218
    add-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v6

    invoke-static {p5, v5}, Ljdk/internal/math/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v5

    iput-object v5, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    .line 219
    iget-object v5, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    aput-char v4, v5, v0

    .line 220
    iget-object v4, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v5, v0, 0x1

    aput-char v1, v4, v5

    .line 222
    iget-object v1, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v4, v0, 0x2

    invoke-static {p2, v2, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_e6

    .line 224
    :cond_dc
    invoke-static {p5, v5}, Ljdk/internal/math/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v1

    iput-object v1, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    .line 225
    iget-object v1, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    aput-char v4, v1, v0

    .line 227
    .end local v3    # "zeros":I
    .end local v6    # "t":I
    :cond_e6
    :goto_e6
    goto/16 :goto_180

    .line 228
    :cond_e8
    const/4 v6, 0x3

    if-le p3, v5, :cond_109

    .line 229
    add-int/lit8 v7, p3, 0x1

    invoke-static {p5, v7}, Ljdk/internal/math/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v7

    iput-object v7, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    .line 230
    iget-object v7, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    aget-char v8, p2, v2

    aput-char v8, v7, v0

    .line 231
    iget-object v7, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v8, v0, 0x1

    aput-char v1, v7, v8

    .line 232
    iget-object v1, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v7, v0, 0x2

    add-int/lit8 v8, p3, -0x1

    invoke-static {p2, v5, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_121

    .line 234
    :cond_109
    invoke-static {p5, v6}, Ljdk/internal/math/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v7

    iput-object v7, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    .line 235
    iget-object v7, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    aget-char v8, p2, v2

    aput-char v8, v7, v0

    .line 236
    iget-object v7, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v8, v0, 0x1

    aput-char v1, v7, v8

    .line 237
    iget-object v1, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v7, v0, 0x2

    aput-char v4, v1, v7

    .line 240
    :goto_121
    if-gtz p4, :cond_124

    move v2, v5

    .line 241
    .local v2, "isNegExp":Z
    :cond_124
    if-eqz v2, :cond_12a

    .line 242
    neg-int v1, p4

    add-int/2addr v1, v5

    .line 243
    .local v1, "e":I
    const/4 v7, 0x1

    .local v7, "expStartIntex":I
    goto :goto_12d

    .line 245
    .end local v1    # "e":I
    .end local v7    # "expStartIntex":I
    :cond_12a
    add-int/lit8 v1, p4, -0x1

    .line 246
    .restart local v1    # "e":I
    const/4 v7, 0x0

    .line 249
    .restart local v7    # "expStartIntex":I
    :goto_12d
    const/16 v8, 0x9

    if-gt v1, v8, :cond_13f

    .line 250
    invoke-static {v2, v5}, Ljdk/internal/math/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v3

    iput-object v3, p0, Ljdk/internal/math/FormattedFloatingDecimal;->exponent:[C

    .line 251
    iget-object v3, p0, Ljdk/internal/math/FormattedFloatingDecimal;->exponent:[C

    add-int/lit8 v4, v1, 0x30

    int-to-char v4, v4

    aput-char v4, v3, v7

    goto :goto_180

    .line 252
    :cond_13f
    const/16 v5, 0x63

    if-gt v1, v5, :cond_15c

    .line 253
    invoke-static {v2, v3}, Ljdk/internal/math/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v3

    iput-object v3, p0, Ljdk/internal/math/FormattedFloatingDecimal;->exponent:[C

    .line 254
    iget-object v3, p0, Ljdk/internal/math/FormattedFloatingDecimal;->exponent:[C

    div-int/lit8 v5, v1, 0xa

    add-int/2addr v5, v4

    int-to-char v5, v5

    aput-char v5, v3, v7

    .line 255
    iget-object v3, p0, Ljdk/internal/math/FormattedFloatingDecimal;->exponent:[C

    add-int/lit8 v5, v7, 0x1

    rem-int/lit8 v6, v1, 0xa

    add-int/2addr v6, v4

    int-to-char v4, v6

    aput-char v4, v3, v5

    goto :goto_180

    .line 257
    :cond_15c
    invoke-static {v2, v6}, Ljdk/internal/math/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v3

    iput-object v3, p0, Ljdk/internal/math/FormattedFloatingDecimal;->exponent:[C

    .line 258
    iget-object v3, p0, Ljdk/internal/math/FormattedFloatingDecimal;->exponent:[C

    div-int/lit8 v5, v1, 0x64

    add-int/2addr v5, v4

    int-to-char v5, v5

    aput-char v5, v3, v7

    .line 259
    rem-int/lit8 v1, v1, 0x64

    .line 260
    iget-object v3, p0, Ljdk/internal/math/FormattedFloatingDecimal;->exponent:[C

    add-int/lit8 v5, v7, 0x1

    div-int/lit8 v6, v1, 0xa

    add-int/2addr v6, v4

    int-to-char v6, v6

    aput-char v6, v3, v5

    .line 261
    iget-object v3, p0, Ljdk/internal/math/FormattedFloatingDecimal;->exponent:[C

    add-int/lit8 v5, v7, 0x2

    rem-int/lit8 v6, v1, 0xa

    add-int/2addr v6, v4

    int-to-char v4, v6

    aput-char v4, v3, v5

    .line 264
    .end local v1    # "e":I
    .end local v2    # "isNegExp":Z
    .end local v7    # "expStartIntex":I
    :goto_180
    return-void
.end method

.method private blacklist fillDecimal(I[CIIZ)V
    .registers 14
    .param p1, "precision"    # I
    .param p2, "digits"    # [C
    .param p3, "nDigits"    # I
    .param p4, "exp"    # I
    .param p5, "isNegative"    # Z

    .line 281
    move v0, p5

    .line 282
    .local v0, "startIndex":I
    const/16 v1, 0x2e

    const/4 v2, 0x1

    const/16 v3, 0x30

    const/4 v4, 0x0

    if-lez p4, :cond_4a

    .line 284
    if-ge p3, p4, :cond_21

    .line 285
    invoke-static {p5, p4}, Ljdk/internal/math/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v1

    iput-object v1, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    .line 286
    iget-object v1, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    invoke-static {p2, v4, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 287
    iget-object v1, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    add-int v2, v0, p3

    add-int v4, v0, p4

    invoke-static {v1, v2, v4, v3}, Ljava/util/Arrays;->fill([CIIC)V

    goto/16 :goto_b0

    .line 292
    :cond_21
    sub-int v3, p3, p4

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 293
    .local v3, "t":I
    if-lez v3, :cond_2c

    add-int/lit8 v5, v3, 0x1

    goto :goto_2d

    :cond_2c
    move v5, v4

    :goto_2d
    add-int/2addr v5, p4

    invoke-static {p5, v5}, Ljdk/internal/math/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v5

    iput-object v5, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    .line 294
    iget-object v5, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    invoke-static {p2, v4, v5, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    if-lez v3, :cond_49

    .line 299
    iget-object v4, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    add-int v5, v0, p4

    aput-char v1, v4, v5

    .line 300
    iget-object v1, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    add-int v4, v0, p4

    add-int/2addr v4, v2

    invoke-static {p2, p4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    .end local v3    # "t":I
    :cond_49
    goto :goto_b0

    .line 303
    :cond_4a
    if-gtz p4, :cond_b0

    .line 304
    neg-int v5, p4

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 305
    .local v5, "zeros":I
    add-int v6, p1, p4

    invoke-static {p3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 307
    .local v6, "t":I
    if-lez v5, :cond_89

    .line 308
    add-int/lit8 v2, v5, 0x2

    add-int/2addr v2, v6

    invoke-static {p5, v2}, Ljdk/internal/math/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v2

    iput-object v2, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    .line 309
    iget-object v2, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    aput-char v3, v2, v0

    .line 310
    iget-object v2, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v7, v0, 0x1

    aput-char v1, v2, v7

    .line 311
    iget-object v1, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v2, v0, 0x2

    add-int/lit8 v7, v0, 0x2

    add-int/2addr v7, v5

    invoke-static {v1, v2, v7, v3}, Ljava/util/Arrays;->fill([CIIC)V

    .line 312
    if-lez v6, :cond_b0

    .line 314
    iget-object v1, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v5

    invoke-static {p2, v4, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_b0

    .line 316
    :cond_89
    if-lez v6, :cond_a6

    .line 317
    add-int/lit8 v2, v5, 0x2

    add-int/2addr v2, v6

    invoke-static {p5, v2}, Ljdk/internal/math/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v2

    iput-object v2, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    .line 318
    iget-object v2, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    aput-char v3, v2, v0

    .line 319
    iget-object v2, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v3, v0, 0x1

    aput-char v1, v2, v3

    .line 321
    iget-object v1, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v2, v0, 0x2

    invoke-static {p2, v4, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_b0

    .line 323
    :cond_a6
    invoke-static {p5, v2}, Ljdk/internal/math/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v1

    iput-object v1, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    .line 324
    iget-object v1, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    aput-char v3, v1, v0

    .line 327
    .end local v5    # "zeros":I
    .end local v6    # "t":I
    :cond_b0
    :goto_b0
    return-void
.end method

.method private blacklist fillScientific(I[CIIZ)V
    .registers 23
    .param p1, "precision"    # I
    .param p2, "digits"    # [C
    .param p3, "nDigits"    # I
    .param p4, "exp"    # I
    .param p5, "isNegative"    # Z

    .line 333
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p5

    .line 334
    .local v4, "startIndex":I
    add-int/lit8 v5, p3, -0x1

    move/from16 v6, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v7, 0x0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 335
    .local v5, "t":I
    const/4 v8, 0x1

    if-lez v5, :cond_38

    .line 336
    add-int/lit8 v9, v5, 0x2

    invoke-static {v3, v9}, Ljdk/internal/math/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v9

    iput-object v9, v0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    .line 337
    iget-object v9, v0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    aget-char v10, v1, v7

    aput-char v10, v9, v4

    .line 338
    iget-object v9, v0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v10, v4, 0x1

    const/16 v11, 0x2e

    aput-char v11, v9, v10

    .line 339
    iget-object v9, v0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v10, v4, 0x2

    invoke-static {v1, v8, v9, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_44

    .line 341
    :cond_38
    invoke-static {v3, v8}, Ljdk/internal/math/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v9

    iput-object v9, v0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    .line 342
    iget-object v9, v0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    aget-char v10, v1, v7

    aput-char v10, v9, v4

    .line 346
    :goto_44
    if-gtz v2, :cond_4b

    .line 347
    const/16 v9, 0x2d

    .line 348
    .local v9, "expSign":C
    neg-int v10, v2

    add-int/2addr v10, v8

    .local v10, "e":I
    goto :goto_4f

    .line 350
    .end local v9    # "expSign":C
    .end local v10    # "e":I
    :cond_4b
    const/16 v9, 0x2b

    .line 351
    .restart local v9    # "expSign":C
    add-int/lit8 v10, v2, -0x1

    .line 354
    .restart local v10    # "e":I
    :goto_4f
    const/16 v11, 0x9

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/16 v14, 0x30

    if-gt v10, v11, :cond_65

    .line 355
    add-int/lit8 v11, v10, 0x30

    int-to-char v11, v11

    new-array v12, v12, [C

    aput-char v9, v12, v7

    aput-char v14, v12, v8

    aput-char v11, v12, v13

    iput-object v12, v0, Ljdk/internal/math/FormattedFloatingDecimal;->exponent:[C

    goto :goto_9a

    .line 357
    :cond_65
    const/16 v11, 0x63

    if-gt v10, v11, :cond_7c

    .line 358
    div-int/lit8 v11, v10, 0xa

    add-int/2addr v11, v14

    int-to-char v11, v11

    rem-int/lit8 v15, v10, 0xa

    add-int/2addr v15, v14

    int-to-char v14, v15

    new-array v12, v12, [C

    aput-char v9, v12, v7

    aput-char v11, v12, v8

    aput-char v14, v12, v13

    iput-object v12, v0, Ljdk/internal/math/FormattedFloatingDecimal;->exponent:[C

    goto :goto_9a

    .line 361
    :cond_7c
    div-int/lit8 v11, v10, 0x64

    add-int/2addr v11, v14

    int-to-char v11, v11

    .line 362
    .local v11, "hiExpChar":C
    rem-int/lit8 v10, v10, 0x64

    .line 363
    div-int/lit8 v15, v10, 0xa

    add-int/2addr v15, v14

    int-to-char v15, v15

    rem-int/lit8 v16, v10, 0xa

    add-int/lit8 v14, v16, 0x30

    int-to-char v14, v14

    move/from16 v16, v7

    const/4 v7, 0x4

    new-array v7, v7, [C

    aput-char v9, v7, v16

    aput-char v11, v7, v8

    aput-char v15, v7, v13

    aput-char v14, v7, v12

    iput-object v7, v0, Ljdk/internal/math/FormattedFloatingDecimal;->exponent:[C

    .line 366
    .end local v11    # "hiExpChar":C
    :goto_9a
    return-void
.end method

.method private static blacklist getBuffer()[C
    .registers 1

    .line 54
    sget-object v0, Ljdk/internal/math/FormattedFloatingDecimal;->threadLocalCharBuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static blacklist valueOf(DILjdk/internal/math/FormattedFloatingDecimal$Form;)Ljdk/internal/math/FormattedFloatingDecimal;
    .registers 6
    .param p0, "d"    # D
    .param p2, "precision"    # I
    .param p3, "form"    # Ljdk/internal/math/FormattedFloatingDecimal$Form;

    .line 36
    sget-object v0, Ljdk/internal/math/FormattedFloatingDecimal$Form;->COMPATIBLE:Ljdk/internal/math/FormattedFloatingDecimal$Form;

    if-ne p3, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 37
    :goto_7
    invoke-static {p0, p1, v0}, Ljdk/internal/math/FloatingDecimal;->getBinaryToASCIIConverter(DZ)Ljdk/internal/math/FloatingDecimal$BinaryToASCIIConverter;

    move-result-object v0

    .line 38
    .local v0, "fdConverter":Ljdk/internal/math/FloatingDecimal$BinaryToASCIIConverter;
    new-instance v1, Ljdk/internal/math/FormattedFloatingDecimal;

    invoke-direct {v1, p2, p3, v0}, Ljdk/internal/math/FormattedFloatingDecimal;-><init>(ILjdk/internal/math/FormattedFloatingDecimal$Form;Ljdk/internal/math/FloatingDecimal$BinaryToASCIIConverter;)V

    return-object v1
.end method


# virtual methods
.method public blacklist getExponent()[C
    .registers 2

    .line 132
    iget-object v0, p0, Ljdk/internal/math/FormattedFloatingDecimal;->exponent:[C

    return-object v0
.end method

.method public blacklist getExponentRounded()I
    .registers 2

    .line 106
    iget v0, p0, Ljdk/internal/math/FormattedFloatingDecimal;->decExponentRounded:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public blacklist getMantissa()[C
    .registers 2

    .line 119
    iget-object v0, p0, Ljdk/internal/math/FormattedFloatingDecimal;->mantissa:[C

    return-object v0
.end method
