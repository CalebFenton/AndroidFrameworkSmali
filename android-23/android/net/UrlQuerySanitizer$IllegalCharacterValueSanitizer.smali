.class public Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;
.super Ljava/lang/Object;
.source "UrlQuerySanitizer.java"

# interfaces
.implements Landroid/net/UrlQuerySanitizer$ValueSanitizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/UrlQuerySanitizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IllegalCharacterValueSanitizer"
.end annotation


# static fields
.field public static final ALL_BUT_NUL_AND_ANGLE_BRACKETS_LEGAL:I = 0x59f

.field public static final ALL_BUT_NUL_LEGAL:I = 0x5ff

.field public static final ALL_BUT_WHITESPACE_LEGAL:I = 0x5fc

.field public static final ALL_ILLEGAL:I = 0x0

.field public static final ALL_OK:I = 0x7ff

.field public static final ALL_WHITESPACE_OK:I = 0x3

.field public static final AMP_AND_SPACE_LEGAL:I = 0x81

.field public static final AMP_LEGAL:I = 0x80

.field public static final AMP_OK:I = 0x80

.field public static final DQUOTE_OK:I = 0x8

.field public static final GT_OK:I = 0x40

.field private static final JAVASCRIPT_PREFIX:Ljava/lang/String; = "javascript:"

.field public static final LT_OK:I = 0x20

.field private static final MIN_SCRIPT_PREFIX_LENGTH:I

.field public static final NON_7_BIT_ASCII_OK:I = 0x4

.field public static final NUL_OK:I = 0x200

.field public static final OTHER_WHITESPACE_OK:I = 0x2

.field public static final PCT_OK:I = 0x100

.field public static final SCRIPT_URL_OK:I = 0x400

.field public static final SPACE_LEGAL:I = 0x1

.field public static final SPACE_OK:I = 0x1

.field public static final SQUOTE_OK:I = 0x10

.field public static final URL_AND_SPACE_LEGAL:I = 0x195

.field public static final URL_LEGAL:I = 0x194

.field private static final VBSCRIPT_PREFIX:Ljava/lang/String; = "vbscript:"


# instance fields
.field private mFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 276
    const-string/jumbo v0, "javascript:"

    #@3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    const-string/jumbo v1, "vbscript:"

    #@a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@d
    move-result v1

    #@e
    .line 275
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@11
    move-result v0

    #@12
    sput v0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->MIN_SCRIPT_PREFIX_LENGTH:I

    #@14
    .line 118
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 285
    iput p1, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    #@5
    .line 284
    return-void
.end method

.method private characterIsLegal(C)Z
    .locals 3
    .param p1, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 392
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 403
    const/16 v2, 0x20

    #@7
    if-lt p1, v2, :cond_a

    #@9
    const/16 v2, 0x7f

    #@b
    if-ge p1, v2, :cond_a

    #@d
    :cond_0
    :goto_0
    return v0

    #@e
    .line 393
    :sswitch_0
    iget v2, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    #@10
    and-int/lit8 v2, v2, 0x1

    #@12
    if-eqz v2, :cond_1

    #@14
    :goto_1
    return v0

    #@15
    :cond_1
    move v0, v1

    #@16
    goto :goto_1

    #@17
    .line 395
    :sswitch_1
    iget v2, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    #@19
    and-int/lit8 v2, v2, 0x2

    #@1b
    if-eqz v2, :cond_2

    #@1d
    :goto_2
    return v0

    #@1e
    :cond_2
    move v0, v1

    #@1f
    goto :goto_2

    #@20
    .line 396
    :sswitch_2
    iget v2, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    #@22
    and-int/lit8 v2, v2, 0x8

    #@24
    if-eqz v2, :cond_3

    #@26
    :goto_3
    return v0

    #@27
    :cond_3
    move v0, v1

    #@28
    goto :goto_3

    #@29
    .line 397
    :sswitch_3
    iget v2, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    #@2b
    and-int/lit8 v2, v2, 0x10

    #@2d
    if-eqz v2, :cond_4

    #@2f
    :goto_4
    return v0

    #@30
    :cond_4
    move v0, v1

    #@31
    goto :goto_4

    #@32
    .line 398
    :sswitch_4
    iget v2, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    #@34
    and-int/lit8 v2, v2, 0x20

    #@36
    if-eqz v2, :cond_5

    #@38
    :goto_5
    return v0

    #@39
    :cond_5
    move v0, v1

    #@3a
    goto :goto_5

    #@3b
    .line 399
    :sswitch_5
    iget v2, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    #@3d
    and-int/lit8 v2, v2, 0x40

    #@3f
    if-eqz v2, :cond_6

    #@41
    :goto_6
    return v0

    #@42
    :cond_6
    move v0, v1

    #@43
    goto :goto_6

    #@44
    .line 400
    :sswitch_6
    iget v2, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    #@46
    and-int/lit16 v2, v2, 0x80

    #@48
    if-eqz v2, :cond_7

    #@4a
    :goto_7
    return v0

    #@4b
    :cond_7
    move v0, v1

    #@4c
    goto :goto_7

    #@4d
    .line 401
    :sswitch_7
    iget v2, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    #@4f
    and-int/lit16 v2, v2, 0x100

    #@51
    if-eqz v2, :cond_8

    #@53
    :goto_8
    return v0

    #@54
    :cond_8
    move v0, v1

    #@55
    goto :goto_8

    #@56
    .line 402
    :sswitch_8
    iget v2, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    #@58
    and-int/lit16 v2, v2, 0x200

    #@5a
    if-eqz v2, :cond_9

    #@5c
    :goto_9
    return v0

    #@5d
    :cond_9
    move v0, v1

    #@5e
    goto :goto_9

    #@5f
    .line 404
    :cond_a
    const/16 v2, 0x80

    #@61
    if-lt p1, v2, :cond_b

    #@63
    iget v2, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    #@65
    and-int/lit8 v2, v2, 0x4

    #@67
    if-nez v2, :cond_0

    #@69
    :cond_b
    move v0, v1

    #@6a
    goto :goto_0

    #@6b
    .line 392
    nop

    #@6c
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_8
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xb -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_0
        0x22 -> :sswitch_2
        0x25 -> :sswitch_7
        0x26 -> :sswitch_6
        0x27 -> :sswitch_3
        0x3c -> :sswitch_4
        0x3e -> :sswitch_5
    .end sparse-switch
.end method

.method private isWhitespace(C)Z
    .locals 1
    .param p1, "c"    # C

    #@0
    .prologue
    .line 372
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 381
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 379
    :sswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 372
    nop

    #@8
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private trimWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 351
    const/4 v2, 0x0

    #@1
    .line 352
    .local v2, "start":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v3

    #@5
    add-int/lit8 v1, v3, -0x1

    #@7
    .line 353
    .local v1, "last":I
    move v0, v1

    #@8
    .line 354
    .local v0, "end":I
    :goto_0
    if-gt v2, v0, :cond_0

    #@a
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@d
    move-result v3

    #@e
    invoke-direct {p0, v3}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->isWhitespace(C)Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 355
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_0

    #@17
    .line 357
    :cond_0
    :goto_1
    if-lt v0, v2, :cond_1

    #@19
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@1c
    move-result v3

    #@1d
    invoke-direct {p0, v3}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->isWhitespace(C)Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_1

    #@23
    .line 358
    add-int/lit8 v0, v0, -0x1

    #@25
    goto :goto_1

    #@26
    .line 360
    :cond_1
    if-nez v2, :cond_2

    #@28
    if-ne v0, v1, :cond_2

    #@2a
    .line 361
    return-object p1

    #@2b
    .line 363
    :cond_2
    add-int/lit8 v3, v0, 0x1

    #@2d
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    return-object v3
.end method


# virtual methods
.method public sanitize(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 303
    if-nez p1, :cond_0

    #@3
    .line 304
    return-object v5

    #@4
    .line 306
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@7
    move-result v3

    #@8
    .line 307
    .local v3, "length":I
    iget v5, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    #@a
    and-int/lit16 v5, v5, 0x400

    #@c
    if-eqz v5, :cond_2

    #@e
    .line 308
    sget v5, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->MIN_SCRIPT_PREFIX_LENGTH:I

    #@10
    if-lt v3, v5, :cond_2

    #@12
    .line 309
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@14
    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    .line 310
    .local v0, "asLower":Ljava/lang/String;
    const-string/jumbo v5, "javascript:"

    #@1b
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1e
    move-result v5

    #@1f
    if-nez v5, :cond_1

    #@21
    .line 311
    const-string/jumbo v5, "vbscript:"

    #@24
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@27
    move-result v5

    #@28
    .line 310
    if-eqz v5, :cond_2

    #@2a
    .line 312
    :cond_1
    const-string/jumbo v5, ""

    #@2d
    return-object v5

    #@2e
    .line 319
    .end local v0    # "asLower":Ljava/lang/String;
    :cond_2
    iget v5, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    #@30
    and-int/lit8 v5, v5, 0x3

    #@32
    if-nez v5, :cond_3

    #@34
    .line 320
    invoke-direct {p0, p1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->trimWhitespace(Ljava/lang/String;)Ljava/lang/String;

    #@37
    move-result-object p1

    #@38
    .line 323
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3b
    move-result v3

    #@3c
    .line 326
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@41
    .line 327
    .local v4, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    #@42
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_6

    #@44
    .line 328
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@47
    move-result v1

    #@48
    .line 329
    .local v1, "c":C
    invoke-direct {p0, v1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->characterIsLegal(C)Z

    #@4b
    move-result v5

    #@4c
    if-nez v5, :cond_4

    #@4e
    .line 330
    iget v5, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    #@50
    and-int/lit8 v5, v5, 0x1

    #@52
    if-eqz v5, :cond_5

    #@54
    .line 331
    const/16 v1, 0x20

    #@56
    .line 337
    .end local v1    # "c":C
    :cond_4
    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@59
    .line 327
    add-int/lit8 v2, v2, 0x1

    #@5b
    goto :goto_0

    #@5c
    .line 334
    .restart local v1    # "c":C
    :cond_5
    const/16 v1, 0x5f

    #@5e
    .local v1, "c":C
    goto :goto_1

    #@5f
    .line 339
    .end local v1    # "c":C
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v5

    #@63
    return-object v5
.end method
