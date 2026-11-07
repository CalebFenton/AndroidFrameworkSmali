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
.field public static final whitelist ALL_BUT_NUL_AND_ANGLE_BRACKETS_LEGAL:I = 0x59f

.field public static final whitelist ALL_BUT_NUL_LEGAL:I = 0x5ff

.field public static final whitelist ALL_BUT_WHITESPACE_LEGAL:I = 0x5fc

.field public static final whitelist ALL_ILLEGAL:I = 0x0

.field public static final whitelist ALL_OK:I = 0x7ff

.field public static final whitelist ALL_WHITESPACE_OK:I = 0x3

.field public static final whitelist AMP_AND_SPACE_LEGAL:I = 0x81

.field public static final whitelist AMP_LEGAL:I = 0x80

.field public static final whitelist AMP_OK:I = 0x80

.field public static final whitelist DQUOTE_OK:I = 0x8

.field public static final whitelist GT_OK:I = 0x40

.field private static final greylist-max-o JAVASCRIPT_PREFIX:Ljava/lang/String; = "javascript:"

.field public static final whitelist LT_OK:I = 0x20

.field private static final greylist-max-o MIN_SCRIPT_PREFIX_LENGTH:I

.field public static final whitelist NON_7_BIT_ASCII_OK:I = 0x4

.field public static final whitelist NUL_OK:I = 0x200

.field public static final whitelist OTHER_WHITESPACE_OK:I = 0x2

.field public static final whitelist PCT_OK:I = 0x100

.field public static final whitelist SCRIPT_URL_OK:I = 0x400

.field public static final whitelist SPACE_LEGAL:I = 0x1

.field public static final whitelist SPACE_OK:I = 0x1

.field public static final whitelist SQUOTE_OK:I = 0x10

.field public static final whitelist URL_AND_SPACE_LEGAL:I = 0x195

.field public static final whitelist URL_LEGAL:I = 0x194

.field private static final greylist-max-o VBSCRIPT_PREFIX:Ljava/lang/String; = "vbscript:"


# instance fields
.field private greylist-max-o mFlags:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 278
    nop

    .line 279
    const-string/jumbo v0, "javascript:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string/jumbo v1, "vbscript:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 278
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->MIN_SCRIPT_PREFIX_LENGTH:I

    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 2
    .param p1, "flags"    # I

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput p1, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    .line 289
    return-void
.end method

.method private greylist-max-o characterIsLegal(C)Z
    .registers 6
    .param p1, "c"    # C

    .line 395
    const/16 v0, 0x20

    const/16 v1, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_60

    .line 406
    if-lt p1, v0, :cond_55

    const/16 v0, 0x7f

    if-lt p1, v0, :cond_5d

    goto :goto_55

    .line 402
    :sswitch_10
    iget v0, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_17

    move v2, v3

    :cond_17
    return v2

    .line 401
    :sswitch_18
    iget v1, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1e

    move v2, v3

    :cond_1e
    return v2

    .line 400
    :sswitch_1f
    iget v0, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_26

    move v2, v3

    :cond_26
    return v2

    .line 403
    :sswitch_27
    iget v0, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2d

    move v2, v3

    :cond_2d
    return v2

    .line 404
    :sswitch_2e
    iget v0, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_35

    move v2, v3

    :cond_35
    return v2

    .line 399
    :sswitch_36
    iget v0, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3d

    move v2, v3

    :cond_3d
    return v2

    .line 396
    :sswitch_3e
    iget v0, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_44

    move v2, v3

    :cond_44
    return v2

    .line 398
    :sswitch_45
    iget v0, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4c

    move v2, v3

    :cond_4c
    return v2

    .line 405
    :sswitch_4d
    iget v0, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_54

    move v2, v3

    :cond_54
    return v2

    .line 406
    :cond_55
    :goto_55
    if-lt p1, v1, :cond_5e

    iget v0, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5e

    :cond_5d
    move v2, v3

    :cond_5e
    return v2

    nop

    :sswitch_data_60
    .sparse-switch
        0x0 -> :sswitch_4d
        0x9 -> :sswitch_45
        0xa -> :sswitch_45
        0xb -> :sswitch_45
        0xc -> :sswitch_45
        0xd -> :sswitch_45
        0x20 -> :sswitch_3e
        0x22 -> :sswitch_36
        0x25 -> :sswitch_2e
        0x26 -> :sswitch_27
        0x27 -> :sswitch_1f
        0x3c -> :sswitch_18
        0x3e -> :sswitch_10
    .end sparse-switch
.end method

.method private greylist-max-o isWhitespace(C)Z
    .registers 3
    .param p1, "c"    # C

    .line 375
    sparse-switch p1, :sswitch_data_8

    .line 384
    const/4 v0, 0x0

    return v0

    .line 382
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x9 -> :sswitch_5
        0xa -> :sswitch_5
        0xb -> :sswitch_5
        0xc -> :sswitch_5
        0xd -> :sswitch_5
        0x20 -> :sswitch_5
    .end sparse-switch
.end method

.method private greylist-max-o trimWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 354
    const/4 v0, 0x0

    .line 355
    .local v0, "start":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 356
    .local v1, "last":I
    move v2, v1

    .line 357
    .local v2, "end":I
    :goto_8
    if-gt v0, v2, :cond_17

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 360
    :cond_17
    :goto_17
    if-lt v2, v0, :cond_26

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 361
    add-int/lit8 v2, v2, -0x1

    goto :goto_17

    .line 363
    :cond_26
    if-nez v0, :cond_2b

    if-ne v2, v1, :cond_2b

    .line 364
    return-object p1

    .line 366
    :cond_2b
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public whitelist sanitize(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "value"    # Ljava/lang/String;

    .line 306
    if-nez p1, :cond_4

    .line 307
    const/4 v0, 0x0

    return-object v0

    .line 309
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 310
    .local v0, "length":I
    iget v1, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_2d

    .line 311
    sget v1, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->MIN_SCRIPT_PREFIX_LENGTH:I

    if-lt v0, v1, :cond_2d

    .line 312
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "asLower":Ljava/lang/String;
    const-string/jumbo v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 314
    const-string/jumbo v2, "vbscript:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 315
    :cond_2a
    const-string v2, ""

    return-object v2

    .line 322
    .end local v1    # "asLower":Ljava/lang/String;
    :cond_2d
    iget v1, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v1, v1, 0x3

    if-nez v1, :cond_3b

    .line 323
    invoke-direct {p0, p1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->trimWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 326
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 329
    :cond_3b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 330
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_41
    if-ge v2, v0, :cond_5e

    .line 331
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 332
    .local v3, "c":C
    invoke-direct {p0, v3}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->characterIsLegal(C)Z

    move-result v4

    if-nez v4, :cond_58

    .line 333
    iget v4, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_56

    .line 334
    const/16 v3, 0x20

    goto :goto_58

    .line 337
    :cond_56
    const/16 v3, 0x5f

    .line 340
    :cond_58
    :goto_58
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 330
    .end local v3    # "c":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 342
    .end local v2    # "i":I
    :cond_5e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
