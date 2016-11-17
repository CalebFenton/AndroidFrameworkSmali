.class public Landroid/text/method/DigitsKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "DigitsKeyListener.java"


# static fields
.field private static final CHARACTERS:[[C

.field private static final DECIMAL:I = 0x2

.field private static final SIGN:I = 0x1

.field private static sInstance:[Landroid/text/method/DigitsKeyListener;


# instance fields
.field private mAccepted:[C

.field private mDecimal:Z

.field private mSign:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x4

    #@1
    .line 52
    new-array v0, v3, [[C

    #@3
    .line 53
    const/16 v1, 0xa

    #@5
    new-array v1, v1, [C

    #@7
    fill-array-data v1, :array_0

    #@a
    const/4 v2, 0x0

    #@b
    aput-object v1, v0, v2

    #@d
    .line 54
    const/16 v1, 0xc

    #@f
    new-array v1, v1, [C

    #@11
    fill-array-data v1, :array_1

    #@14
    const/4 v2, 0x1

    #@15
    aput-object v1, v0, v2

    #@17
    .line 55
    const/16 v1, 0xb

    #@19
    new-array v1, v1, [C

    #@1b
    fill-array-data v1, :array_2

    #@1e
    const/4 v2, 0x2

    #@1f
    aput-object v1, v0, v2

    #@21
    .line 56
    const/16 v1, 0xd

    #@23
    new-array v1, v1, [C

    #@25
    fill-array-data v1, :array_3

    #@28
    const/4 v2, 0x3

    #@29
    aput-object v1, v0, v2

    #@2b
    .line 52
    sput-object v0, Landroid/text/method/DigitsKeyListener;->CHARACTERS:[[C

    #@2d
    .line 230
    new-array v0, v3, [Landroid/text/method/DigitsKeyListener;

    #@2f
    sput-object v0, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    #@31
    .line 32
    return-void

    #@32
    .line 53
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data

    #@40
    .line 54
    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2ds
        0x2bs
    .end array-data

    #@50
    .line 55
    :array_2
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2es
    .end array-data

    #@5f
    .line 56
    nop

    #@60
    :array_3
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2ds
        0x2bs
        0x2es
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 72
    invoke-direct {p0, v0, v0}, Landroid/text/method/DigitsKeyListener;-><init>(ZZ)V

    #@4
    .line 71
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 3
    .param p1, "sign"    # Z
    .param p2, "decimal"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 80
    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    #@4
    .line 81
    iput-boolean p1, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    #@6
    .line 82
    iput-boolean p2, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    #@8
    .line 84
    if-eqz p1, :cond_1

    #@a
    const/4 v2, 0x1

    #@b
    :goto_0
    if-eqz p2, :cond_0

    #@d
    const/4 v1, 0x2

    #@e
    :cond_0
    or-int v0, v2, v1

    #@10
    .line 85
    .local v0, "kind":I
    sget-object v1, Landroid/text/method/DigitsKeyListener;->CHARACTERS:[[C

    #@12
    aget-object v1, v1, v0

    #@14
    iput-object v1, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    #@16
    .line 80
    return-void

    #@17
    .end local v0    # "kind":I
    :cond_1
    move v2, v1

    #@18
    .line 84
    goto :goto_0
.end method

.method public static getInstance()Landroid/text/method/DigitsKeyListener;
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 92
    invoke-static {v0, v0}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;
    .locals 4
    .param p0, "accepted"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 118
    new-instance v0, Landroid/text/method/DigitsKeyListener;

    #@3
    invoke-direct {v0}, Landroid/text/method/DigitsKeyListener;-><init>()V

    #@6
    .line 120
    .local v0, "dim":Landroid/text/method/DigitsKeyListener;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@9
    move-result v1

    #@a
    new-array v1, v1, [C

    #@c
    iput-object v1, v0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    #@e
    .line 121
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@11
    move-result v1

    #@12
    iget-object v2, v0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    #@14
    invoke-virtual {p0, v3, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    #@17
    .line 123
    return-object v0
.end method

.method public static getInstance(ZZ)Landroid/text/method/DigitsKeyListener;
    .locals 3
    .param p0, "sign"    # Z
    .param p1, "decimal"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 101
    if-eqz p0, :cond_1

    #@3
    const/4 v2, 0x1

    #@4
    :goto_0
    if-eqz p1, :cond_0

    #@6
    const/4 v1, 0x2

    #@7
    :cond_0
    or-int v0, v2, v1

    #@9
    .line 103
    .local v0, "kind":I
    sget-object v1, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    #@b
    aget-object v1, v1, v0

    #@d
    if-eqz v1, :cond_2

    #@f
    .line 104
    sget-object v1, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    #@11
    aget-object v1, v1, v0

    #@13
    return-object v1

    #@14
    .end local v0    # "kind":I
    :cond_1
    move v2, v1

    #@15
    .line 101
    goto :goto_0

    #@16
    .line 106
    .restart local v0    # "kind":I
    :cond_2
    sget-object v1, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    #@18
    new-instance v2, Landroid/text/method/DigitsKeyListener;

    #@1a
    invoke-direct {v2, p0, p1}, Landroid/text/method/DigitsKeyListener;-><init>(ZZ)V

    #@1d
    aput-object v2, v1, v0

    #@1f
    .line 107
    sget-object v1, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    #@21
    aget-object v1, v1, v0

    #@23
    return-object v1
.end method

.method private static isDecimalPointChar(C)Z
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 65
    const/16 v0, 0x2e

    #@2
    if-ne p0, v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method private static isSignChar(C)Z
    .locals 2
    .param p0, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 60
    const/16 v1, 0x2d

    #@3
    if-eq p0, v1, :cond_0

    #@5
    const/16 v1, 0x2b

    #@7
    if-ne p0, v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    #@0
    .prologue
    .line 140
    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    #@3
    move-result-object v4

    #@4
    .line 142
    .local v4, "out":Ljava/lang/CharSequence;
    iget-boolean v8, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    #@6
    if-nez v8, :cond_0

    #@8
    iget-boolean v8, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    #@a
    if-nez v8, :cond_0

    #@c
    .line 143
    return-object v4

    #@d
    .line 146
    :cond_0
    if-eqz v4, :cond_1

    #@f
    .line 147
    move-object p1, v4

    #@10
    .line 148
    const/4 p2, 0x0

    #@11
    .line 149
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    #@14
    move-result p3

    #@15
    .line 152
    :cond_1
    const/4 v5, -0x1

    #@16
    .line 153
    .local v5, "sign":I
    const/4 v1, -0x1

    #@17
    .line 154
    .local v1, "decimal":I
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    #@1a
    move-result v2

    #@1b
    .line 160
    .local v2, "dlen":I
    const/4 v3, 0x0

    #@1c
    .local v3, "i":I
    :goto_0
    if-ge v3, p5, :cond_4

    #@1e
    .line 161
    invoke-interface {p4, v3}, Landroid/text/Spanned;->charAt(I)C

    #@21
    move-result v0

    #@22
    .line 163
    .local v0, "c":C
    invoke-static {v0}, Landroid/text/method/DigitsKeyListener;->isSignChar(C)Z

    #@25
    move-result v8

    #@26
    if-eqz v8, :cond_3

    #@28
    .line 164
    move v5, v3

    #@29
    .line 160
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 165
    :cond_3
    invoke-static {v0}, Landroid/text/method/DigitsKeyListener;->isDecimalPointChar(C)Z

    #@2f
    move-result v8

    #@30
    if-eqz v8, :cond_2

    #@32
    .line 166
    move v1, v3

    #@33
    goto :goto_1

    #@34
    .line 169
    .end local v0    # "c":C
    :cond_4
    move/from16 v3, p6

    #@36
    :goto_2
    if-ge v3, v2, :cond_7

    #@38
    .line 170
    invoke-interface {p4, v3}, Landroid/text/Spanned;->charAt(I)C

    #@3b
    move-result v0

    #@3c
    .line 172
    .restart local v0    # "c":C
    invoke-static {v0}, Landroid/text/method/DigitsKeyListener;->isSignChar(C)Z

    #@3f
    move-result v8

    #@40
    if-eqz v8, :cond_5

    #@42
    .line 173
    const-string/jumbo v8, ""

    #@45
    return-object v8

    #@46
    .line 174
    :cond_5
    invoke-static {v0}, Landroid/text/method/DigitsKeyListener;->isDecimalPointChar(C)Z

    #@49
    move-result v8

    #@4a
    if-eqz v8, :cond_6

    #@4c
    .line 175
    move v1, v3

    #@4d
    .line 169
    :cond_6
    add-int/lit8 v3, v3, 0x1

    #@4f
    goto :goto_2

    #@50
    .line 186
    .end local v0    # "c":C
    :cond_7
    const/4 v7, 0x0

    #@51
    .line 188
    .local v7, "stripped":Landroid/text/SpannableStringBuilder;
    add-int/lit8 v3, p3, -0x1

    #@53
    .end local v7    # "stripped":Landroid/text/SpannableStringBuilder;
    :goto_3
    if-lt v3, p2, :cond_11

    #@55
    .line 189
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@58
    move-result v0

    #@59
    .line 190
    .restart local v0    # "c":C
    const/4 v6, 0x0

    #@5a
    .line 192
    .local v6, "strip":Z
    invoke-static {v0}, Landroid/text/method/DigitsKeyListener;->isSignChar(C)Z

    #@5d
    move-result v8

    #@5e
    if-eqz v8, :cond_c

    #@60
    .line 193
    if-ne v3, p2, :cond_8

    #@62
    if-eqz p5, :cond_a

    #@64
    .line 194
    :cond_8
    const/4 v6, 0x1

    #@65
    .line 208
    :cond_9
    :goto_4
    if-eqz v6, :cond_10

    #@67
    .line 209
    add-int/lit8 v8, p2, 0x1

    #@69
    if-ne p3, v8, :cond_e

    #@6b
    .line 210
    const-string/jumbo v8, ""

    #@6e
    return-object v8

    #@6f
    .line 195
    :cond_a
    if-ltz v5, :cond_b

    #@71
    .line 196
    const/4 v6, 0x1

    #@72
    goto :goto_4

    #@73
    .line 198
    :cond_b
    move v5, v3

    #@74
    goto :goto_4

    #@75
    .line 200
    :cond_c
    invoke-static {v0}, Landroid/text/method/DigitsKeyListener;->isDecimalPointChar(C)Z

    #@78
    move-result v8

    #@79
    if-eqz v8, :cond_9

    #@7b
    .line 201
    if-ltz v1, :cond_d

    #@7d
    .line 202
    const/4 v6, 0x1

    #@7e
    goto :goto_4

    #@7f
    .line 204
    :cond_d
    move v1, v3

    #@80
    goto :goto_4

    #@81
    .line 213
    :cond_e
    if-nez v7, :cond_f

    #@83
    .line 214
    new-instance v7, Landroid/text/SpannableStringBuilder;

    #@85
    invoke-direct {v7, p1, p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    #@88
    .line 217
    :cond_f
    sub-int v8, v3, p2

    #@8a
    add-int/lit8 v9, v3, 0x1

    #@8c
    sub-int/2addr v9, p2

    #@8d
    invoke-virtual {v7, v8, v9}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    #@90
    .line 188
    :cond_10
    add-int/lit8 v3, v3, -0x1

    #@92
    goto :goto_3

    #@93
    .line 221
    .end local v0    # "c":C
    .end local v6    # "strip":Z
    :cond_11
    if-eqz v7, :cond_12

    #@95
    .line 222
    return-object v7

    #@96
    .line 223
    :cond_12
    if-eqz v4, :cond_13

    #@98
    .line 224
    return-object v4

    #@99
    .line 226
    :cond_13
    const/4 v8, 0x0

    #@9a
    return-object v8
.end method

.method protected getAcceptedChars()[C
    .locals 1

    #@0
    .prologue
    .line 43
    iget-object v0, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    #@2
    return-object v0
.end method

.method public getInputType()I
    .locals 2

    #@0
    .prologue
    .line 127
    const/4 v0, 0x2

    #@1
    .line 128
    .local v0, "contentType":I
    iget-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 129
    const/16 v0, 0x1002

    #@7
    .line 131
    :cond_0
    iget-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 132
    or-int/lit16 v0, v0, 0x2000

    #@d
    .line 134
    :cond_1
    return v0
.end method
