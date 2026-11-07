.class public final Ljava/time/format/DecimalStyle;
.super Ljava/lang/Object;
.source "DecimalStyle.java"


# static fields
.field private static final greylist-max-o CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/util/Locale;",
            "Ljava/time/format/DecimalStyle;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist test-api STANDARD:Ljava/time/format/DecimalStyle;


# instance fields
.field private final greylist-max-o decimalSeparator:C

.field private final greylist-max-o negativeSign:C

.field private final greylist-max-o positiveSign:C

.field private final greylist-max-o zeroDigit:C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 91
    new-instance v0, Ljava/time/format/DecimalStyle;

    const/16 v1, 0x2d

    const/16 v2, 0x2e

    const/16 v3, 0x30

    const/16 v4, 0x2b

    invoke-direct {v0, v3, v4, v1, v2}, Ljava/time/format/DecimalStyle;-><init>(CCCC)V

    sput-object v0, Ljava/time/format/DecimalStyle;->STANDARD:Ljava/time/format/DecimalStyle;

    .line 95
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x2

    const/16 v3, 0x10

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Ljava/time/format/DecimalStyle;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private constructor greylist-max-o <init>(CCCC)V
    .registers 5
    .param p1, "zeroChar"    # C
    .param p2, "positiveSignChar"    # C
    .param p3, "negativeSignChar"    # C
    .param p4, "decimalPointChar"    # C

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-char p1, p0, Ljava/time/format/DecimalStyle;->zeroDigit:C

    .line 193
    iput-char p2, p0, Ljava/time/format/DecimalStyle;->positiveSign:C

    .line 194
    iput-char p3, p0, Ljava/time/format/DecimalStyle;->negativeSign:C

    .line 195
    iput-char p4, p0, Ljava/time/format/DecimalStyle;->decimalSeparator:C

    .line 196
    return-void
.end method

.method private static greylist-max-o create(Ljava/util/Locale;)Ljava/time/format/DecimalStyle;
    .registers 7
    .param p0, "locale"    # Ljava/util/Locale;

    .line 171
    invoke-static {p0}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    .line 172
    .local v0, "oldSymbols":Ljava/text/DecimalFormatSymbols;
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v1

    .line 173
    .local v1, "zeroDigit":C
    const/16 v2, 0x2b

    .line 174
    .local v2, "positiveSign":C
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v3

    .line 175
    .local v3, "negativeSign":C
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v4

    .line 176
    .local v4, "decimalSeparator":C
    const/16 v5, 0x30

    if-ne v1, v5, :cond_21

    const/16 v5, 0x2d

    if-ne v3, v5, :cond_21

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_21

    .line 177
    sget-object v5, Ljava/time/format/DecimalStyle;->STANDARD:Ljava/time/format/DecimalStyle;

    return-object v5

    .line 179
    :cond_21
    new-instance v5, Ljava/time/format/DecimalStyle;

    invoke-direct {v5, v1, v2, v3, v4}, Ljava/time/format/DecimalStyle;-><init>(CCCC)V

    return-object v5
.end method

.method public static whitelist test-api getAvailableLocales()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 123
    invoke-static {}, Ljava/text/DecimalFormatSymbols;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    .line 124
    .local v0, "l":[Ljava/util/Locale;
    new-instance v1, Ljava/util/HashSet;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 125
    .local v1, "locales":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Locale;>;"
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 126
    return-object v1
.end method

.method public static whitelist test-api of(Ljava/util/Locale;)Ljava/time/format/DecimalStyle;
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;

    .line 160
    const-string v0, "locale"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 161
    sget-object v0, Ljava/time/format/DecimalStyle;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/format/DecimalStyle;

    .line 162
    .local v0, "info":Ljava/time/format/DecimalStyle;
    if-nez v0, :cond_21

    .line 163
    invoke-static {p0}, Ljava/time/format/DecimalStyle;->create(Ljava/util/Locale;)Ljava/time/format/DecimalStyle;

    move-result-object v0

    .line 164
    sget-object v1, Ljava/time/format/DecimalStyle;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v1, Ljava/time/format/DecimalStyle;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/time/format/DecimalStyle;

    .line 167
    :cond_21
    return-object v0
.end method

.method public static whitelist test-api ofDefaultLocale()Ljava/time/format/DecimalStyle;
    .registers 1

    .line 143
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/time/format/DecimalStyle;->of(Ljava/util/Locale;)Ljava/time/format/DecimalStyle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method greylist-max-o convertNumberToI18N(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "numericText"    # Ljava/lang/String;

    .line 333
    iget-char v0, p0, Ljava/time/format/DecimalStyle;->zeroDigit:C

    const/16 v1, 0x30

    if-ne v0, v1, :cond_7

    .line 334
    return-object p1

    .line 336
    :cond_7
    iget-char v0, p0, Ljava/time/format/DecimalStyle;->zeroDigit:C

    sub-int/2addr v0, v1

    .line 337
    .local v0, "diff":I
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 338
    .local v1, "array":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    array-length v3, v1

    if-ge v2, v3, :cond_1b

    .line 339
    aget-char v3, v1, v2

    add-int/2addr v3, v0

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 338
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 341
    .end local v2    # "i":I
    :cond_1b
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method greylist-max-o convertToDigit(C)I
    .registers 4
    .param p1, "ch"    # C

    .line 322
    iget-char v0, p0, Ljava/time/format/DecimalStyle;->zeroDigit:C

    sub-int v0, p1, v0

    .line 323
    .local v0, "val":I
    if-ltz v0, :cond_c

    const/16 v1, 0x9

    if-gt v0, v1, :cond_c

    move v1, v0

    goto :goto_d

    :cond_c
    const/4 v1, -0x1

    :goto_d
    return v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 353
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 354
    return v0

    .line 360
    :cond_4
    instance-of v1, p1, Ljava/time/format/DecimalStyle;

    if-eqz v1, :cond_24

    .line 356
    move-object v1, p1

    check-cast v1, Ljava/time/format/DecimalStyle;

    .local v1, "other":Ljava/time/format/DecimalStyle;
    iget-char v2, p0, Ljava/time/format/DecimalStyle;->zeroDigit:C

    iget-char v3, v1, Ljava/time/format/DecimalStyle;->zeroDigit:C

    if-ne v2, v3, :cond_24

    iget-char v2, p0, Ljava/time/format/DecimalStyle;->positiveSign:C

    iget-char v3, v1, Ljava/time/format/DecimalStyle;->positiveSign:C

    if-ne v2, v3, :cond_24

    iget-char v2, p0, Ljava/time/format/DecimalStyle;->negativeSign:C

    iget-char v3, v1, Ljava/time/format/DecimalStyle;->negativeSign:C

    if-ne v2, v3, :cond_24

    iget-char v2, p0, Ljava/time/format/DecimalStyle;->decimalSeparator:C

    iget-char v3, v1, Ljava/time/format/DecimalStyle;->decimalSeparator:C

    if-ne v2, v3, :cond_24

    goto :goto_25

    .end local v1    # "other":Ljava/time/format/DecimalStyle;
    :cond_24
    const/4 v0, 0x0

    :goto_25
    return v0
.end method

.method public whitelist test-api getDecimalSeparator()C
    .registers 2

    .line 295
    iget-char v0, p0, Ljava/time/format/DecimalStyle;->decimalSeparator:C

    return v0
.end method

.method public whitelist test-api getNegativeSign()C
    .registers 2

    .line 266
    iget-char v0, p0, Ljava/time/format/DecimalStyle;->negativeSign:C

    return v0
.end method

.method public whitelist test-api getPositiveSign()C
    .registers 2

    .line 237
    iget-char v0, p0, Ljava/time/format/DecimalStyle;->positiveSign:C

    return v0
.end method

.method public whitelist test-api getZeroDigit()C
    .registers 2

    .line 208
    iget-char v0, p0, Ljava/time/format/DecimalStyle;->zeroDigit:C

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 370
    iget-char v0, p0, Ljava/time/format/DecimalStyle;->zeroDigit:C

    iget-char v1, p0, Ljava/time/format/DecimalStyle;->positiveSign:C

    add-int/2addr v0, v1

    iget-char v1, p0, Ljava/time/format/DecimalStyle;->negativeSign:C

    add-int/2addr v0, v1

    iget-char v1, p0, Ljava/time/format/DecimalStyle;->decimalSeparator:C

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DecimalStyle["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Ljava/time/format/DecimalStyle;->zeroDigit:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Ljava/time/format/DecimalStyle;->positiveSign:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Ljava/time/format/DecimalStyle;->negativeSign:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Ljava/time/format/DecimalStyle;->decimalSeparator:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api withDecimalSeparator(C)Ljava/time/format/DecimalStyle;
    .registers 6
    .param p1, "decimalSeparator"    # C

    .line 308
    iget-char v0, p0, Ljava/time/format/DecimalStyle;->decimalSeparator:C

    if-ne p1, v0, :cond_5

    .line 309
    return-object p0

    .line 311
    :cond_5
    new-instance v0, Ljava/time/format/DecimalStyle;

    iget-char v1, p0, Ljava/time/format/DecimalStyle;->zeroDigit:C

    iget-char v2, p0, Ljava/time/format/DecimalStyle;->positiveSign:C

    iget-char v3, p0, Ljava/time/format/DecimalStyle;->negativeSign:C

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/time/format/DecimalStyle;-><init>(CCCC)V

    return-object v0
.end method

.method public whitelist test-api withNegativeSign(C)Ljava/time/format/DecimalStyle;
    .registers 6
    .param p1, "negativeSign"    # C

    .line 279
    iget-char v0, p0, Ljava/time/format/DecimalStyle;->negativeSign:C

    if-ne p1, v0, :cond_5

    .line 280
    return-object p0

    .line 282
    :cond_5
    new-instance v0, Ljava/time/format/DecimalStyle;

    iget-char v1, p0, Ljava/time/format/DecimalStyle;->zeroDigit:C

    iget-char v2, p0, Ljava/time/format/DecimalStyle;->positiveSign:C

    iget-char v3, p0, Ljava/time/format/DecimalStyle;->decimalSeparator:C

    invoke-direct {v0, v1, v2, p1, v3}, Ljava/time/format/DecimalStyle;-><init>(CCCC)V

    return-object v0
.end method

.method public whitelist test-api withPositiveSign(C)Ljava/time/format/DecimalStyle;
    .registers 6
    .param p1, "positiveSign"    # C

    .line 250
    iget-char v0, p0, Ljava/time/format/DecimalStyle;->positiveSign:C

    if-ne p1, v0, :cond_5

    .line 251
    return-object p0

    .line 253
    :cond_5
    new-instance v0, Ljava/time/format/DecimalStyle;

    iget-char v1, p0, Ljava/time/format/DecimalStyle;->zeroDigit:C

    iget-char v2, p0, Ljava/time/format/DecimalStyle;->negativeSign:C

    iget-char v3, p0, Ljava/time/format/DecimalStyle;->decimalSeparator:C

    invoke-direct {v0, v1, p1, v2, v3}, Ljava/time/format/DecimalStyle;-><init>(CCCC)V

    return-object v0
.end method

.method public whitelist test-api withZeroDigit(C)Ljava/time/format/DecimalStyle;
    .registers 6
    .param p1, "zeroDigit"    # C

    .line 221
    iget-char v0, p0, Ljava/time/format/DecimalStyle;->zeroDigit:C

    if-ne p1, v0, :cond_5

    .line 222
    return-object p0

    .line 224
    :cond_5
    new-instance v0, Ljava/time/format/DecimalStyle;

    iget-char v1, p0, Ljava/time/format/DecimalStyle;->positiveSign:C

    iget-char v2, p0, Ljava/time/format/DecimalStyle;->negativeSign:C

    iget-char v3, p0, Ljava/time/format/DecimalStyle;->decimalSeparator:C

    invoke-direct {v0, p1, v1, v2, v3}, Ljava/time/format/DecimalStyle;-><init>(CCCC)V

    return-object v0
.end method
