.class public Landroid/text/method/DigitsKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "DigitsKeyListener.java"


# static fields
.field private static final greylist-max-o COMPATIBILITY_CHARACTERS:[[C

.field private static final greylist-max-o DECIMAL:I = 0x2

.field private static final greylist-max-o DEFAULT_DECIMAL_POINT_CHARS:Ljava/lang/String; = "."

.field private static final greylist-max-o DEFAULT_SIGN_CHARS:Ljava/lang/String; = "-+"

.field private static final greylist-max-o EN_DASH:C = '\u2013'

.field private static final greylist-max-o HYPHEN_MINUS:C = '-'

.field private static final greylist-max-o MINUS_SIGN:C = '\u2212'

.field private static final greylist-max-o SIGN:I = 0x1

.field private static final greylist-max-o sLocaleCacheLock:Ljava/lang/Object;

.field private static final greylist-max-o sLocaleInstanceCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/util/Locale;",
            "[",
            "Landroid/text/method/DigitsKeyListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sStringCacheLock:Ljava/lang/Object;

.field private static final greylist-max-o sStringInstanceCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/text/method/DigitsKeyListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mAccepted:[C

.field private final greylist-max-o mDecimal:Z

.field private greylist-max-o mDecimalPointChars:Ljava/lang/String;

.field private final greylist-max-o mLocale:Ljava/util/Locale;

.field private greylist-max-o mNeedsAdvancedInput:Z

.field private final greylist-max-o mSign:Z

.field private greylist-max-o mSignChars:Ljava/lang/String;

.field private final greylist-max-o mStringMode:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 80
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_40

    const/16 v1, 0xc

    new-array v1, v1, [C

    fill-array-data v1, :array_4e

    const/16 v2, 0xb

    new-array v2, v2, [C

    fill-array-data v2, :array_5e

    const/16 v3, 0xd

    new-array v3, v3, [C

    fill-array-data v3, :array_6e

    filled-new-array {v0, v1, v2, v3}, [[C

    move-result-object v0

    sput-object v0, Landroid/text/method/DigitsKeyListener;->COMPATIBILITY_CHARACTERS:[[C

    .line 254
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/method/DigitsKeyListener;->sLocaleCacheLock:Ljava/lang/Object;

    .line 256
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/text/method/DigitsKeyListener;->sLocaleInstanceCache:Ljava/util/HashMap;

    .line 281
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/method/DigitsKeyListener;->sStringCacheLock:Ljava/lang/Object;

    .line 283
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/text/method/DigitsKeyListener;->sStringInstanceCache:Ljava/util/HashMap;

    return-void

    nop

    :array_40
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

    :array_4e
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

    :array_5e
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

    nop

    :array_6e
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

.method public constructor whitelist <init>()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 102
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroid/text/method/DigitsKeyListener;-><init>(Ljava/util/Locale;ZZ)V

    .line 103
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "accepted"    # Ljava/lang/String;

    .line 210
    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    .line 63
    const-string v0, "."

    iput-object v0, p0, Landroid/text/method/DigitsKeyListener;->mDecimalPointChars:Ljava/lang/String;

    .line 64
    const-string v0, "-+"

    iput-object v0, p0, Landroid/text/method/DigitsKeyListener;->mSignChars:Ljava/lang/String;

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    .line 212
    iput-boolean v0, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    .line 213
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mStringMode:Z

    .line 214
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/method/DigitsKeyListener;->mLocale:Ljava/util/Locale;

    .line 215
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [C

    iput-object v1, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    .line 216
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    invoke-virtual {p1, v0, v1, v2, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 219
    iput-boolean v0, p0, Landroid/text/method/DigitsKeyListener;->mNeedsAdvancedInput:Z

    .line 220
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/Locale;)V
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/text/method/DigitsKeyListener;-><init>(Ljava/util/Locale;ZZ)V

    .line 119
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/Locale;ZZ)V
    .registers 16
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "sign"    # Z
    .param p3, "decimal"    # Z

    .line 156
    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    .line 63
    const-string v0, "."

    iput-object v0, p0, Landroid/text/method/DigitsKeyListener;->mDecimalPointChars:Ljava/lang/String;

    .line 64
    const-string v0, "-+"

    iput-object v0, p0, Landroid/text/method/DigitsKeyListener;->mSignChars:Ljava/lang/String;

    .line 157
    iput-boolean p2, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    .line 158
    iput-boolean p3, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/method/DigitsKeyListener;->mStringMode:Z

    .line 160
    iput-object p1, p0, Landroid/text/method/DigitsKeyListener;->mLocale:Ljava/util/Locale;

    .line 161
    if-nez p1, :cond_1a

    .line 162
    invoke-direct {p0}, Landroid/text/method/DigitsKeyListener;->setToCompat()V

    .line 163
    return-void

    .line 165
    :cond_1a
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 166
    .local v1, "chars":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Character;>;"
    invoke-static {v1, p1}, Landroid/text/method/NumberKeyListener;->addDigits(Ljava/util/Collection;Ljava/util/Locale;)Z

    move-result v2

    .line 167
    .local v2, "success":Z
    if-nez v2, :cond_29

    .line 168
    invoke-direct {p0}, Landroid/text/method/DigitsKeyListener;->setToCompat()V

    .line 169
    return-void

    .line 171
    :cond_29
    if-nez p2, :cond_2d

    if-eqz p3, :cond_cc

    .line 172
    :cond_2d
    invoke-static {p1}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v3

    .line 173
    .local v3, "symbols":Landroid/icu/text/DecimalFormatSymbols;
    const/4 v4, 0x1

    if-eqz p2, :cond_ab

    .line 174
    invoke-virtual {v3}, Landroid/icu/text/DecimalFormatSymbols;->getMinusSignString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/method/DigitsKeyListener;->stripBidiControls(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 175
    .local v5, "minusString":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/icu/text/DecimalFormatSymbols;->getPlusSignString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/method/DigitsKeyListener;->stripBidiControls(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 176
    .local v6, "plusString":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v4, :cond_a7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v4, :cond_51

    goto :goto_a7

    .line 181
    :cond_51
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 182
    .local v7, "minus":C
    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 183
    .local v8, "plus":C
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/text/method/DigitsKeyListener;->mSignChars:Ljava/lang/String;

    .line 187
    const/16 v9, 0x2212

    if-eq v7, v9, :cond_88

    const/16 v9, 0x2013

    if-ne v7, v9, :cond_ab

    .line 190
    :cond_88
    const/16 v9, 0x2d

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Landroid/text/method/DigitsKeyListener;->mSignChars:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/text/method/DigitsKeyListener;->mSignChars:Ljava/lang/String;

    goto :goto_ab

    .line 178
    .end local v7    # "minus":C
    .end local v8    # "plus":C
    :cond_a7
    :goto_a7
    invoke-direct {p0}, Landroid/text/method/DigitsKeyListener;->setToCompat()V

    .line 179
    return-void

    .line 194
    .end local v5    # "minusString":Ljava/lang/String;
    .end local v6    # "plusString":Ljava/lang/String;
    :cond_ab
    :goto_ab
    if-eqz p3, :cond_cc

    .line 195
    invoke-virtual {v3}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparatorString()Ljava/lang/String;

    move-result-object v5

    .line 196
    .local v5, "separatorString":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v4, :cond_bb

    .line 198
    invoke-direct {p0}, Landroid/text/method/DigitsKeyListener;->setToCompat()V

    .line 199
    return-void

    .line 201
    :cond_bb
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 202
    .local v0, "separatorChar":Ljava/lang/Character;
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/text/method/DigitsKeyListener;->mDecimalPointChars:Ljava/lang/String;

    .line 206
    .end local v0    # "separatorChar":Ljava/lang/Character;
    .end local v3    # "symbols":Landroid/icu/text/DecimalFormatSymbols;
    .end local v5    # "separatorString":Ljava/lang/String;
    :cond_cc
    invoke-static {v1}, Landroid/text/method/NumberKeyListener;->collectionToArray(Ljava/util/Collection;)[C

    move-result-object v0

    iput-object v0, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    .line 207
    invoke-direct {p0}, Landroid/text/method/DigitsKeyListener;->calculateNeedForAdvancedInput()V

    .line 208
    return-void
.end method

.method public constructor whitelist <init>(ZZ)V
    .registers 4
    .param p1, "sign"    # Z
    .param p2, "decimal"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/DigitsKeyListener;-><init>(Ljava/util/Locale;ZZ)V

    .line 115
    return-void
.end method

.method private greylist-max-o calculateNeedForAdvancedInput()V
    .registers 4

    .line 130
    iget-boolean v0, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    iget-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x2

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    or-int/2addr v0, v1

    .line 131
    .local v0, "kind":I
    sget-object v1, Landroid/text/method/DigitsKeyListener;->COMPATIBILITY_CHARACTERS:[[C

    aget-object v1, v1, v0

    iget-object v2, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->containsAll([C[C)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mNeedsAdvancedInput:Z

    .line 132
    return-void
.end method

.method public static whitelist getInstance()Landroid/text/method/DigitsKeyListener;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 230
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;
    .registers 4
    .param p0, "accepted"    # Ljava/lang/String;

    .line 293
    sget-object v0, Landroid/text/method/DigitsKeyListener;->sStringCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 294
    :try_start_3
    sget-object v1, Landroid/text/method/DigitsKeyListener;->sStringInstanceCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/method/DigitsKeyListener;

    .line 295
    .local v1, "result":Landroid/text/method/DigitsKeyListener;
    if-nez v1, :cond_18

    .line 296
    new-instance v2, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v2, p0}, Landroid/text/method/DigitsKeyListener;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 297
    sget-object v2, Landroid/text/method/DigitsKeyListener;->sStringInstanceCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_18
    monitor-exit v0

    .line 300
    return-object v1

    .line 299
    .end local v1    # "result":Landroid/text/method/DigitsKeyListener;
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public static whitelist getInstance(Ljava/util/Locale;)Landroid/text/method/DigitsKeyListener;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 251
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/util/Locale;ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getInstance(Ljava/util/Locale;Landroid/text/method/DigitsKeyListener;)Landroid/text/method/DigitsKeyListener;
    .registers 4
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "listener"    # Landroid/text/method/DigitsKeyListener;

    .line 313
    iget-boolean v0, p1, Landroid/text/method/DigitsKeyListener;->mStringMode:Z

    if-eqz v0, :cond_5

    .line 314
    return-object p1

    .line 316
    :cond_5
    iget-boolean v0, p1, Landroid/text/method/DigitsKeyListener;->mSign:Z

    iget-boolean v1, p1, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    invoke-static {p0, v0, v1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/util/Locale;ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getInstance(Ljava/util/Locale;ZZ)Landroid/text/method/DigitsKeyListener;
    .registers 7
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "sign"    # Z
    .param p2, "decimal"    # Z

    .line 267
    if-eqz p2, :cond_4

    const/4 v0, 0x2

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    or-int/2addr v0, p1

    .line 268
    .local v0, "kind":I
    sget-object v1, Landroid/text/method/DigitsKeyListener;->sLocaleCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 269
    :try_start_9
    sget-object v2, Landroid/text/method/DigitsKeyListener;->sLocaleInstanceCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/method/DigitsKeyListener;

    .line 270
    .local v2, "cachedValue":[Landroid/text/method/DigitsKeyListener;
    if-eqz v2, :cond_1b

    aget-object v3, v2, v0

    if-eqz v3, :cond_1b

    .line 271
    aget-object v3, v2, v0

    monitor-exit v1

    return-object v3

    .line 273
    :cond_1b
    if-nez v2, :cond_26

    .line 274
    const/4 v3, 0x4

    new-array v3, v3, [Landroid/text/method/DigitsKeyListener;

    move-object v2, v3

    .line 275
    sget-object v3, Landroid/text/method/DigitsKeyListener;->sLocaleInstanceCache:Ljava/util/HashMap;

    invoke-virtual {v3, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    :cond_26
    new-instance v3, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v3, p0, p1, p2}, Landroid/text/method/DigitsKeyListener;-><init>(Ljava/util/Locale;ZZ)V

    aput-object v3, v2, v0

    monitor-exit v1

    return-object v3

    .line 278
    .end local v2    # "cachedValue":[Landroid/text/method/DigitsKeyListener;
    :catchall_2f
    move-exception v2

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_9 .. :try_end_31} :catchall_2f

    throw v2
.end method

.method public static whitelist getInstance(ZZ)Landroid/text/method/DigitsKeyListener;
    .registers 3
    .param p0, "sign"    # Z
    .param p1, "decimal"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 243
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/util/Locale;ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o isDecimalPointChar(C)Z
    .registers 4
    .param p1, "c"    # C

    .line 92
    iget-object v0, p0, Landroid/text/method/DigitsKeyListener;->mDecimalPointChars:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private greylist-max-o isSignChar(C)Z
    .registers 4
    .param p1, "c"    # C

    .line 88
    iget-object v0, p0, Landroid/text/method/DigitsKeyListener;->mSignChars:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private greylist-max-o setToCompat()V
    .registers 4

    .line 122
    const-string v0, "."

    iput-object v0, p0, Landroid/text/method/DigitsKeyListener;->mDecimalPointChars:Ljava/lang/String;

    .line 123
    const-string v0, "-+"

    iput-object v0, p0, Landroid/text/method/DigitsKeyListener;->mSignChars:Ljava/lang/String;

    .line 124
    iget-boolean v0, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    iget-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    const/4 v1, 0x2

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    or-int/2addr v0, v1

    .line 125
    .local v0, "kind":I
    sget-object v1, Landroid/text/method/DigitsKeyListener;->COMPATIBILITY_CHARACTERS:[[C

    aget-object v1, v1, v0

    iput-object v1, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    .line 126
    iput-boolean v2, p0, Landroid/text/method/DigitsKeyListener;->mNeedsAdvancedInput:Z

    .line 127
    return-void
.end method

.method private static greylist-max-o stripBidiControls(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "sign"    # Ljava/lang/String;

    .line 140
    const-string v0, ""

    .line 141
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 142
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 143
    .local v2, "c":C
    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v3

    if-nez v3, :cond_30

    .line 144
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 145
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    .line 149
    :cond_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    .end local v2    # "c":C
    :cond_30
    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 153
    .end local v1    # "i":I
    :cond_33
    return-object v0
.end method


# virtual methods
.method public whitelist filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 24
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .line 342
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 344
    .local v3, "out":Ljava/lang/CharSequence;
    iget-boolean v4, v0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    if-nez v4, :cond_13

    iget-boolean v4, v0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    if-nez v4, :cond_13

    .line 345
    return-object v3

    .line 348
    :cond_13
    if-eqz v3, :cond_1c

    .line 349
    move-object v4, v3

    .line 350
    .end local p1    # "source":Ljava/lang/CharSequence;
    .local v4, "source":Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 351
    .end local p2    # "start":I
    .local v5, "start":I
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .end local p3    # "end":I
    .local v6, "end":I
    goto :goto_22

    .line 348
    .end local v4    # "source":Ljava/lang/CharSequence;
    .end local v5    # "start":I
    .end local v6    # "end":I
    .restart local p1    # "source":Ljava/lang/CharSequence;
    .restart local p2    # "start":I
    .restart local p3    # "end":I
    :cond_1c
    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    .line 354
    .end local p1    # "source":Ljava/lang/CharSequence;
    .end local p2    # "start":I
    .end local p3    # "end":I
    .restart local v4    # "source":Ljava/lang/CharSequence;
    .restart local v5    # "start":I
    .restart local v6    # "end":I
    :goto_22
    const/4 v7, -0x1

    .line 355
    .local v7, "sign":I
    const/4 v8, -0x1

    .line 356
    .local v8, "decimal":I
    invoke-interface {v1}, Landroid/text/Spanned;->length()I

    move-result v9

    .line 362
    .local v9, "dlen":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_29
    if-ge v10, v2, :cond_41

    .line 363
    invoke-interface {v1, v10}, Landroid/text/Spanned;->charAt(I)C

    move-result v11

    .line 365
    .local v11, "c":C
    invoke-direct {v0, v11}, Landroid/text/method/DigitsKeyListener;->isSignChar(C)Z

    move-result v12

    if-eqz v12, :cond_37

    .line 366
    move v7, v10

    goto :goto_3e

    .line 367
    :cond_37
    invoke-direct {v0, v11}, Landroid/text/method/DigitsKeyListener;->isDecimalPointChar(C)Z

    move-result v12

    if-eqz v12, :cond_3e

    .line 368
    move v8, v10

    .line 362
    .end local v11    # "c":C
    :cond_3e
    :goto_3e
    add-int/lit8 v10, v10, 0x1

    goto :goto_29

    .line 371
    .end local v10    # "i":I
    :cond_41
    move/from16 v10, p6

    .restart local v10    # "i":I
    :goto_43
    const-string v11, ""

    if-ge v10, v9, :cond_5c

    .line 372
    invoke-interface {v1, v10}, Landroid/text/Spanned;->charAt(I)C

    move-result v12

    .line 374
    .local v12, "c":C
    invoke-direct {v0, v12}, Landroid/text/method/DigitsKeyListener;->isSignChar(C)Z

    move-result v13

    if-eqz v13, :cond_52

    .line 375
    return-object v11

    .line 376
    :cond_52
    invoke-direct {v0, v12}, Landroid/text/method/DigitsKeyListener;->isDecimalPointChar(C)Z

    move-result v11

    if-eqz v11, :cond_59

    .line 377
    move v8, v10

    .line 371
    .end local v12    # "c":C
    :cond_59
    add-int/lit8 v10, v10, 0x1

    goto :goto_43

    .line 388
    .end local v10    # "i":I
    :cond_5c
    const/4 v10, 0x0

    .line 390
    .local v10, "stripped":Landroid/text/SpannableStringBuilder;
    add-int/lit8 v12, v6, -0x1

    .local v12, "i":I
    :goto_5f
    if-lt v12, v5, :cond_a1

    .line 391
    invoke-interface {v4, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    .line 392
    .local v13, "c":C
    const/4 v14, 0x0

    .line 394
    .local v14, "strip":Z
    invoke-direct {v0, v13}, Landroid/text/method/DigitsKeyListener;->isSignChar(C)Z

    move-result v15

    if-eqz v15, :cond_79

    .line 395
    if-ne v12, v5, :cond_77

    if-eqz v2, :cond_71

    goto :goto_77

    .line 397
    :cond_71
    if-ltz v7, :cond_75

    .line 398
    const/4 v14, 0x1

    goto :goto_84

    .line 400
    :cond_75
    move v7, v12

    goto :goto_84

    .line 396
    :cond_77
    :goto_77
    const/4 v14, 0x1

    goto :goto_84

    .line 402
    :cond_79
    invoke-direct {v0, v13}, Landroid/text/method/DigitsKeyListener;->isDecimalPointChar(C)Z

    move-result v15

    if-eqz v15, :cond_84

    .line 403
    if-ltz v8, :cond_83

    .line 404
    const/4 v14, 0x1

    goto :goto_84

    .line 406
    :cond_83
    move v8, v12

    .line 410
    :cond_84
    :goto_84
    if-eqz v14, :cond_9c

    .line 411
    add-int/lit8 v15, v5, 0x1

    if-ne v6, v15, :cond_8b

    .line 412
    return-object v11

    .line 415
    :cond_8b
    if-nez v10, :cond_93

    .line 416
    new-instance v15, Landroid/text/SpannableStringBuilder;

    invoke-direct {v15, v4, v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    move-object v10, v15

    .line 419
    :cond_93
    sub-int v15, v12, v5

    add-int/lit8 v16, v12, 0x1

    sub-int v0, v16, v5

    invoke-virtual {v10, v15, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 390
    .end local v13    # "c":C
    .end local v14    # "strip":Z
    :cond_9c
    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    goto :goto_5f

    .line 423
    .end local v12    # "i":I
    :cond_a1
    if-eqz v10, :cond_a4

    .line 424
    return-object v10

    .line 425
    :cond_a4
    if-eqz v3, :cond_a7

    .line 426
    return-object v3

    .line 428
    :cond_a7
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist getAcceptedChars()[C
    .registers 2

    .line 71
    iget-object v0, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    return-object v0
.end method

.method public whitelist getInputType()I
    .registers 3

    .line 325
    iget-boolean v0, p0, Landroid/text/method/DigitsKeyListener;->mNeedsAdvancedInput:Z

    if-eqz v0, :cond_6

    .line 326
    const/4 v0, 0x1

    .local v0, "contentType":I
    goto :goto_13

    .line 328
    .end local v0    # "contentType":I
    :cond_6
    const/4 v0, 0x2

    .line 329
    .restart local v0    # "contentType":I
    iget-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    if-eqz v1, :cond_d

    .line 330
    or-int/lit16 v0, v0, 0x1000

    .line 332
    :cond_d
    iget-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    if-eqz v1, :cond_13

    .line 333
    or-int/lit16 v0, v0, 0x2000

    .line 336
    :cond_13
    :goto_13
    return v0
.end method
