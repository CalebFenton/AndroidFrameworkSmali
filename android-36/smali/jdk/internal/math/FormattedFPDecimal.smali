.class public final Ljdk/internal/math/FormattedFPDecimal;
.super Ljava/lang/Object;
.source "FormattedFPDecimal.java"


# static fields
.field public static final blacklist GENERAL:C = 'g'

.field public static final blacklist PLAIN:C = 'f'

.field public static final blacklist SCIENTIFIC:C = 'e'


# instance fields
.field private blacklist digits:[C

.field private blacklist e:I

.field private blacklist exp:[C

.field private blacklist f:J

.field private blacklist n:I


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method private blacklist expChars()V
    .registers 7

    .line 182
    invoke-virtual {p0}, Ljdk/internal/math/FormattedFPDecimal;->getExponentRounded()I

    move-result v0

    .line 183
    .local v0, "er":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 184
    .local v1, "aer":I
    const/4 v2, 0x3

    const/16 v3, 0x64

    if-lt v1, v3, :cond_f

    const/4 v4, 0x4

    goto :goto_10

    :cond_f
    move v4, v2

    :goto_10
    new-array v4, v4, [C

    iput-object v4, p0, Ljdk/internal/math/FormattedFPDecimal;->exp:[C

    .line 186
    if-lt v1, v3, :cond_25

    .line 187
    div-int/lit8 v3, v1, 0xa

    .line 188
    .local v3, "q":I
    iget-object v4, p0, Ljdk/internal/math/FormattedFPDecimal;->exp:[C

    mul-int/lit8 v5, v3, 0xa

    sub-int v5, v1, v5

    invoke-static {v5}, Ljdk/internal/math/FormattedFPDecimal;->toDigit(I)C

    move-result v5

    aput-char v5, v4, v2

    .line 189
    move v1, v3

    .line 191
    .end local v3    # "q":I
    :cond_25
    div-int/lit8 v2, v1, 0xa

    .line 192
    .local v2, "q":I
    iget-object v3, p0, Ljdk/internal/math/FormattedFPDecimal;->exp:[C

    mul-int/lit8 v4, v2, 0xa

    sub-int v4, v1, v4

    invoke-static {v4}, Ljdk/internal/math/FormattedFPDecimal;->toDigit(I)C

    move-result v4

    const/4 v5, 0x2

    aput-char v4, v3, v5

    .line 193
    iget-object v3, p0, Ljdk/internal/math/FormattedFPDecimal;->exp:[C

    const/4 v4, 0x1

    invoke-static {v2}, Ljdk/internal/math/FormattedFPDecimal;->toDigit(I)C

    move-result v5

    aput-char v5, v3, v4

    .line 194
    iget-object v3, p0, Ljdk/internal/math/FormattedFPDecimal;->exp:[C

    if-ltz v0, :cond_44

    const/16 v4, 0x2b

    goto :goto_46

    :cond_44
    const/16 v4, 0x2d

    :goto_46
    const/4 v5, 0x0

    aput-char v4, v3, v5

    .line 195
    return-void
.end method

.method private blacklist fillWithDigits(JII)J
    .registers 10
    .param p1, "x"    # J
    .param p3, "from"    # I
    .param p4, "to"    # I

    .line 295
    nop

    :goto_1
    if-le p4, p3, :cond_16

    .line 296
    const-wide/16 v0, 0xa

    div-long v2, p1, v0

    .line 297
    .local v2, "q":J
    iget-object v4, p0, Ljdk/internal/math/FormattedFPDecimal;->digits:[C

    add-int/lit8 p4, p4, -0x1

    mul-long/2addr v0, v2

    sub-long v0, p1, v0

    invoke-static {v0, v1}, Ljdk/internal/math/FormattedFPDecimal;->toDigit(J)C

    move-result v0

    aput-char v0, v4, p4

    .line 298
    move-wide p1, v2

    .line 299
    .end local v2    # "q":J
    goto :goto_1

    .line 300
    :cond_16
    return-wide p1
.end method

.method private blacklist fillWithZeros(II)V
    .registers 5
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 307
    nop

    :goto_1
    if-le p2, p1, :cond_c

    .line 308
    iget-object v0, p0, Ljdk/internal/math/FormattedFPDecimal;->digits:[C

    add-int/lit8 p2, p2, -0x1

    const/16 v1, 0x30

    aput-char v1, v0, p2

    goto :goto_1

    .line 310
    :cond_c
    return-void
.end method

.method private blacklist general(I)Ljdk/internal/math/FormattedFPDecimal;
    .registers 4
    .param p1, "prec"    # I

    .line 171
    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Ljdk/internal/math/FormattedFPDecimal;->round(J)V

    .line 172
    invoke-virtual {p0}, Ljdk/internal/math/FormattedFPDecimal;->getExponentRounded()I

    move-result v0

    .line 173
    .local v0, "er":I
    const/4 v1, -0x4

    if-gt v1, v0, :cond_11

    if-ge v0, p1, :cond_11

    .line 174
    invoke-direct {p0}, Ljdk/internal/math/FormattedFPDecimal;->plainChars()Ljdk/internal/math/FormattedFPDecimal;

    goto :goto_16

    .line 176
    :cond_11
    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v1}, Ljdk/internal/math/FormattedFPDecimal;->scientificChars(I)Ljdk/internal/math/FormattedFPDecimal;

    .line 178
    :goto_16
    return-object p0
.end method

.method private blacklist plain(I)Ljdk/internal/math/FormattedFPDecimal;
    .registers 6
    .param p1, "prec"    # I

    .line 97
    iget v0, p0, Ljdk/internal/math/FormattedFPDecimal;->n:I

    iget v1, p0, Ljdk/internal/math/FormattedFPDecimal;->e:I

    add-int/2addr v0, v1

    int-to-long v0, v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Ljdk/internal/math/FormattedFPDecimal;->round(J)V

    .line 98
    invoke-direct {p0}, Ljdk/internal/math/FormattedFPDecimal;->plainChars()Ljdk/internal/math/FormattedFPDecimal;

    move-result-object v0

    return-object v0
.end method

.method private blacklist plainChars()Ljdk/internal/math/FormattedFPDecimal;
    .registers 3

    .line 102
    iget v0, p0, Ljdk/internal/math/FormattedFPDecimal;->e:I

    if-ltz v0, :cond_8

    .line 103
    invoke-direct {p0}, Ljdk/internal/math/FormattedFPDecimal;->plainCharsPureInteger()V

    goto :goto_16

    .line 104
    :cond_8
    iget v0, p0, Ljdk/internal/math/FormattedFPDecimal;->n:I

    iget v1, p0, Ljdk/internal/math/FormattedFPDecimal;->e:I

    add-int/2addr v0, v1

    if-lez v0, :cond_13

    .line 105
    invoke-direct {p0}, Ljdk/internal/math/FormattedFPDecimal;->plainCharsMixed()V

    goto :goto_16

    .line 107
    :cond_13
    invoke-direct {p0}, Ljdk/internal/math/FormattedFPDecimal;->plainCharsPureFraction()V

    .line 109
    :goto_16
    return-object p0
.end method

.method private blacklist plainCharsMixed()V
    .registers 6

    .line 119
    iget v0, p0, Ljdk/internal/math/FormattedFPDecimal;->n:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Ljdk/internal/math/FormattedFPDecimal;->digits:[C

    .line 120
    iget-wide v0, p0, Ljdk/internal/math/FormattedFPDecimal;->f:J

    iget v2, p0, Ljdk/internal/math/FormattedFPDecimal;->n:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Ljdk/internal/math/FormattedFPDecimal;->e:I

    add-int/2addr v2, v3

    iget v3, p0, Ljdk/internal/math/FormattedFPDecimal;->n:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Ljdk/internal/math/FormattedFPDecimal;->fillWithDigits(JII)J

    move-result-wide v0

    .line 121
    .local v0, "x":J
    iget-object v2, p0, Ljdk/internal/math/FormattedFPDecimal;->digits:[C

    iget v3, p0, Ljdk/internal/math/FormattedFPDecimal;->n:I

    iget v4, p0, Ljdk/internal/math/FormattedFPDecimal;->e:I

    add-int/2addr v3, v4

    const/16 v4, 0x2e

    aput-char v4, v2, v3

    .line 122
    iget v2, p0, Ljdk/internal/math/FormattedFPDecimal;->n:I

    iget v3, p0, Ljdk/internal/math/FormattedFPDecimal;->e:I

    add-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Ljdk/internal/math/FormattedFPDecimal;->fillWithDigits(JII)J

    .line 123
    return-void
.end method

.method private blacklist plainCharsPureFraction()V
    .registers 6

    .line 126
    iget v0, p0, Ljdk/internal/math/FormattedFPDecimal;->e:I

    rsub-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    iput-object v0, p0, Ljdk/internal/math/FormattedFPDecimal;->digits:[C

    .line 127
    iget-wide v0, p0, Ljdk/internal/math/FormattedFPDecimal;->f:J

    .line 128
    .local v0, "x":J
    iget v2, p0, Ljdk/internal/math/FormattedFPDecimal;->e:I

    rsub-int/lit8 v2, v2, 0x2

    iget v3, p0, Ljdk/internal/math/FormattedFPDecimal;->n:I

    sub-int/2addr v2, v3

    iget v3, p0, Ljdk/internal/math/FormattedFPDecimal;->e:I

    rsub-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v0, v1, v2, v3}, Ljdk/internal/math/FormattedFPDecimal;->fillWithDigits(JII)J

    .line 129
    iget v2, p0, Ljdk/internal/math/FormattedFPDecimal;->e:I

    rsub-int/lit8 v2, v2, 0x2

    iget v3, p0, Ljdk/internal/math/FormattedFPDecimal;->n:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Ljdk/internal/math/FormattedFPDecimal;->fillWithZeros(II)V

    .line 130
    iget-object v2, p0, Ljdk/internal/math/FormattedFPDecimal;->digits:[C

    const/4 v3, 0x1

    const/16 v4, 0x2e

    aput-char v4, v2, v3

    .line 131
    return-void
.end method

.method private blacklist plainCharsPureInteger()V
    .registers 5

    .line 113
    iget v0, p0, Ljdk/internal/math/FormattedFPDecimal;->n:I

    iget v1, p0, Ljdk/internal/math/FormattedFPDecimal;->e:I

    add-int/2addr v0, v1

    new-array v0, v0, [C

    iput-object v0, p0, Ljdk/internal/math/FormattedFPDecimal;->digits:[C

    .line 114
    iget v0, p0, Ljdk/internal/math/FormattedFPDecimal;->n:I

    iget v1, p0, Ljdk/internal/math/FormattedFPDecimal;->n:I

    iget v2, p0, Ljdk/internal/math/FormattedFPDecimal;->e:I

    add-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Ljdk/internal/math/FormattedFPDecimal;->fillWithZeros(II)V

    .line 115
    iget-wide v0, p0, Ljdk/internal/math/FormattedFPDecimal;->f:J

    const/4 v2, 0x0

    iget v3, p0, Ljdk/internal/math/FormattedFPDecimal;->n:I

    invoke-direct {p0, v0, v1, v2, v3}, Ljdk/internal/math/FormattedFPDecimal;->fillWithDigits(JII)J

    .line 116
    return-void
.end method

.method private blacklist round(J)V
    .registers 14
    .param p1, "pp"    # J

    .line 229
    iget v0, p0, Ljdk/internal/math/FormattedFPDecimal;->n:I

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_53

    cmp-long v0, p1, v2

    if-gez v0, :cond_d

    goto :goto_53

    .line 242
    :cond_d
    iget v0, p0, Ljdk/internal/math/FormattedFPDecimal;->n:I

    int-to-long v5, v0

    cmp-long v0, p1, v5

    if-ltz v0, :cond_15

    .line 243
    return-void

    .line 266
    :cond_15
    long-to-int v0, p1

    .line 267
    .local v0, "p":I
    iget v5, p0, Ljdk/internal/math/FormattedFPDecimal;->e:I

    iget v6, p0, Ljdk/internal/math/FormattedFPDecimal;->n:I

    sub-int/2addr v6, v0

    add-int/2addr v5, v6

    iput v5, p0, Ljdk/internal/math/FormattedFPDecimal;->e:I

    .line 268
    iget v5, p0, Ljdk/internal/math/FormattedFPDecimal;->n:I

    sub-int/2addr v5, v0

    invoke-static {v5}, Ljdk/internal/math/MathUtils;->pow10(I)J

    move-result-wide v5

    .line 269
    .local v5, "pow10":J
    iget-wide v7, p0, Ljdk/internal/math/FormattedFPDecimal;->f:J

    shr-long v9, v5, v4

    add-long/2addr v7, v9

    div-long/2addr v7, v5

    iput-wide v7, p0, Ljdk/internal/math/FormattedFPDecimal;->f:J

    .line 270
    if-nez v0, :cond_3a

    .line 271
    iput v4, p0, Ljdk/internal/math/FormattedFPDecimal;->n:I

    .line 272
    iget-wide v7, p0, Ljdk/internal/math/FormattedFPDecimal;->f:J

    cmp-long v2, v7, v2

    if-nez v2, :cond_39

    .line 273
    iput v1, p0, Ljdk/internal/math/FormattedFPDecimal;->e:I

    .line 275
    :cond_39
    return-void

    .line 278
    :cond_3a
    iput v0, p0, Ljdk/internal/math/FormattedFPDecimal;->n:I

    .line 279
    iget-wide v1, p0, Ljdk/internal/math/FormattedFPDecimal;->f:J

    invoke-static {v0}, Ljdk/internal/math/MathUtils;->pow10(I)J

    move-result-wide v7

    cmp-long v1, v1, v7

    if-nez v1, :cond_52

    .line 284
    iget-wide v1, p0, Ljdk/internal/math/FormattedFPDecimal;->f:J

    const-wide/16 v7, 0xa

    div-long/2addr v1, v7

    iput-wide v1, p0, Ljdk/internal/math/FormattedFPDecimal;->f:J

    .line 285
    iget v1, p0, Ljdk/internal/math/FormattedFPDecimal;->e:I

    add-int/2addr v1, v4

    iput v1, p0, Ljdk/internal/math/FormattedFPDecimal;->e:I

    .line 287
    :cond_52
    return-void

    .line 230
    .end local v0    # "p":I
    .end local v5    # "pow10":J
    :cond_53
    :goto_53
    iput-wide v2, p0, Ljdk/internal/math/FormattedFPDecimal;->f:J

    .line 231
    iput v1, p0, Ljdk/internal/math/FormattedFPDecimal;->e:I

    .line 232
    iput v4, p0, Ljdk/internal/math/FormattedFPDecimal;->n:I

    .line 233
    return-void
.end method

.method private blacklist scientific(I)Ljdk/internal/math/FormattedFPDecimal;
    .registers 6
    .param p1, "prec"    # I

    .line 138
    int-to-long v0, p1

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Ljdk/internal/math/FormattedFPDecimal;->round(J)V

    .line 139
    invoke-direct {p0, p1}, Ljdk/internal/math/FormattedFPDecimal;->scientificChars(I)Ljdk/internal/math/FormattedFPDecimal;

    move-result-object v0

    return-object v0
.end method

.method private blacklist scientificChars(I)Ljdk/internal/math/FormattedFPDecimal;
    .registers 2
    .param p1, "prec"    # I

    .line 143
    if-eqz p1, :cond_6

    .line 144
    invoke-direct {p0}, Ljdk/internal/math/FormattedFPDecimal;->scientificCharsWithFraction()V

    goto :goto_9

    .line 146
    :cond_6
    invoke-direct {p0}, Ljdk/internal/math/FormattedFPDecimal;->scientificCharsNoFraction()V

    .line 148
    :goto_9
    invoke-direct {p0}, Ljdk/internal/math/FormattedFPDecimal;->expChars()V

    .line 149
    return-object p0
.end method

.method private blacklist scientificCharsNoFraction()V
    .registers 4

    .line 160
    const/4 v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Ljdk/internal/math/FormattedFPDecimal;->digits:[C

    .line 161
    iget-object v0, p0, Ljdk/internal/math/FormattedFPDecimal;->digits:[C

    iget-wide v1, p0, Ljdk/internal/math/FormattedFPDecimal;->f:J

    invoke-static {v1, v2}, Ljdk/internal/math/FormattedFPDecimal;->toDigit(J)C

    move-result v1

    const/4 v2, 0x0

    aput-char v1, v0, v2

    .line 162
    return-void
.end method

.method private blacklist scientificCharsWithFraction()V
    .registers 6

    .line 153
    iget v0, p0, Ljdk/internal/math/FormattedFPDecimal;->n:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [C

    iput-object v0, p0, Ljdk/internal/math/FormattedFPDecimal;->digits:[C

    .line 154
    iget-wide v2, p0, Ljdk/internal/math/FormattedFPDecimal;->f:J

    iget v0, p0, Ljdk/internal/math/FormattedFPDecimal;->n:I

    add-int/2addr v0, v1

    const/4 v4, 0x2

    invoke-direct {p0, v2, v3, v4, v0}, Ljdk/internal/math/FormattedFPDecimal;->fillWithDigits(JII)J

    move-result-wide v2

    .line 155
    .local v2, "x":J
    iget-object v0, p0, Ljdk/internal/math/FormattedFPDecimal;->digits:[C

    const/16 v4, 0x2e

    aput-char v4, v0, v1

    .line 156
    iget-object v0, p0, Ljdk/internal/math/FormattedFPDecimal;->digits:[C

    const/4 v1, 0x0

    invoke-static {v2, v3}, Ljdk/internal/math/FormattedFPDecimal;->toDigit(J)C

    move-result v4

    aput-char v4, v0, v1

    .line 157
    return-void
.end method

.method private static blacklist toDigit(I)C
    .registers 2
    .param p0, "d"    # I

    .line 317
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    return v0
.end method

.method private static blacklist toDigit(J)C
    .registers 3
    .param p0, "d"    # J

    .line 313
    long-to-int v0, p0

    invoke-static {v0}, Ljdk/internal/math/FormattedFPDecimal;->toDigit(I)C

    move-result v0

    return v0
.end method

.method public static blacklist valueOf(DIC)Ljdk/internal/math/FormattedFPDecimal;
    .registers 8
    .param p0, "v"    # D
    .param p2, "prec"    # I
    .param p3, "form"    # C

    .line 60
    new-instance v0, Ljdk/internal/math/FormattedFPDecimal;

    invoke-direct {v0}, Ljdk/internal/math/FormattedFPDecimal;-><init>()V

    .line 61
    .local v0, "fd":Ljdk/internal/math/FormattedFPDecimal;
    invoke-static {p0, p1, v0}, Ljdk/internal/math/DoubleToDecimal;->split(DLjdk/internal/math/FormattedFPDecimal;)V

    .line 62
    packed-switch p3, :pswitch_data_2e

    .line 66
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 67
    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "unsupported form \'%c\'"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    :pswitch_1f
    invoke-direct {v0, p2}, Ljdk/internal/math/FormattedFPDecimal;->general(I)Ljdk/internal/math/FormattedFPDecimal;

    move-result-object v1

    goto :goto_2d

    .line 64
    :pswitch_24
    invoke-direct {v0, p2}, Ljdk/internal/math/FormattedFPDecimal;->plain(I)Ljdk/internal/math/FormattedFPDecimal;

    move-result-object v1

    goto :goto_2d

    .line 63
    :pswitch_29
    invoke-direct {v0, p2}, Ljdk/internal/math/FormattedFPDecimal;->scientific(I)Ljdk/internal/math/FormattedFPDecimal;

    move-result-object v1

    .line 62
    :goto_2d
    return-object v1

    :pswitch_data_2e
    .packed-switch 0x65
        :pswitch_29
        :pswitch_24
        :pswitch_1f
    .end packed-switch
.end method


# virtual methods
.method public blacklist getExponent()[C
    .registers 2

    .line 80
    iget-object v0, p0, Ljdk/internal/math/FormattedFPDecimal;->exp:[C

    return-object v0
.end method

.method public blacklist getExponentRounded()I
    .registers 3

    .line 88
    iget v0, p0, Ljdk/internal/math/FormattedFPDecimal;->n:I

    iget v1, p0, Ljdk/internal/math/FormattedFPDecimal;->e:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public blacklist getMantissa()[C
    .registers 2

    .line 84
    iget-object v0, p0, Ljdk/internal/math/FormattedFPDecimal;->digits:[C

    return-object v0
.end method

.method public blacklist set(JII)V
    .registers 5
    .param p1, "f"    # J
    .param p3, "e"    # I
    .param p4, "n"    # I

    .line 74
    iput-wide p1, p0, Ljdk/internal/math/FormattedFPDecimal;->f:J

    .line 75
    iput p3, p0, Ljdk/internal/math/FormattedFPDecimal;->e:I

    .line 76
    iput p4, p0, Ljdk/internal/math/FormattedFPDecimal;->n:I

    .line 77
    return-void
.end method
