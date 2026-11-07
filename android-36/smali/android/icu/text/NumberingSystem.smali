.class public Landroid/icu/text/NumberingSystem;
.super Ljava/lang/Object;
.source "NumberingSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/NumberingSystem$LocaleLookupData;
    }
.end annotation


# static fields
.field public static final whitelist test-api LATIN:Landroid/icu/text/NumberingSystem;

.field private static final greylist-max-o OTHER_NS_KEYWORDS:[Ljava/lang/String;

.field private static greylist-max-o cachedLocaleData:Landroid/icu/impl/CacheBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/CacheBase<",
            "Ljava/lang/String;",
            "Landroid/icu/text/NumberingSystem;",
            "Landroid/icu/text/NumberingSystem$LocaleLookupData;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o cachedStringData:Landroid/icu/impl/CacheBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/CacheBase<",
            "Ljava/lang/String;",
            "Landroid/icu/text/NumberingSystem;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o algorithmic:Z

.field private greylist-max-o desc:Ljava/lang/String;

.field private greylist-max-o name:Ljava/lang/String;

.field private greylist-max-o radix:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smlookupInstanceByName(Ljava/lang/String;)Landroid/icu/text/NumberingSystem;
    .registers 1

    invoke-static {p0}, Landroid/icu/text/NumberingSystem;->lookupInstanceByName(Ljava/lang/String;)Landroid/icu/text/NumberingSystem;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 37
    const-string v0, "traditional"

    const-string v1, "finance"

    const-string v2, "native"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/NumberingSystem;->OTHER_NS_KEYWORDS:[Ljava/lang/String;

    .line 43
    const-string v0, "latn"

    invoke-static {v0}, Landroid/icu/text/NumberingSystem;->lookupInstanceByName(Ljava/lang/String;)Landroid/icu/text/NumberingSystem;

    move-result-object v0

    sput-object v0, Landroid/icu/text/NumberingSystem;->LATIN:Landroid/icu/text/NumberingSystem;

    .line 325
    new-instance v0, Landroid/icu/text/NumberingSystem$1;

    invoke-direct {v0}, Landroid/icu/text/NumberingSystem$1;-><init>()V

    sput-object v0, Landroid/icu/text/NumberingSystem;->cachedLocaleData:Landroid/icu/impl/CacheBase;

    .line 336
    new-instance v0, Landroid/icu/text/NumberingSystem$2;

    invoke-direct {v0}, Landroid/icu/text/NumberingSystem$2;-><init>()V

    sput-object v0, Landroid/icu/text/NumberingSystem;->cachedStringData:Landroid/icu/impl/CacheBase;

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/16 v0, 0xa

    iput v0, p0, Landroid/icu/text/NumberingSystem;->radix:I

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/text/NumberingSystem;->algorithmic:Z

    .line 52
    const-string v0, "0123456789"

    iput-object v0, p0, Landroid/icu/text/NumberingSystem;->desc:Ljava/lang/String;

    .line 53
    const-string v0, "latn"

    iput-object v0, p0, Landroid/icu/text/NumberingSystem;->name:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public static whitelist test-api getAvailableNames()[Ljava/lang/String;
    .registers 6

    .line 256
    const-string v0, "android/icu/impl/data/icudata"

    const-string v1, "numberingSystems"

    invoke-static {v0, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 257
    .local v0, "numberingSystemsInfo":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    .line 261
    .local v1, "nsCurrent":Landroid/icu/util/UResourceBundle;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v2, "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v3

    .line 263
    .local v3, "it":Landroid/icu/util/UResourceBundleIterator;
    :goto_15
    invoke-virtual {v3}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 264
    invoke-virtual {v3}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v4

    .line 265
    .local v4, "temp":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v4}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 266
    .local v5, "nsName":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 268
    .end local v4    # "temp":Landroid/icu/util/UResourceBundle;
    .end local v5    # "nsName":Ljava/lang/String;
    :cond_27
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method public static whitelist test-api getInstance()Landroid/icu/text/NumberingSystem;
    .registers 1

    .line 206
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getInstance(IZLjava/lang/String;)Landroid/icu/text/NumberingSystem;
    .registers 4
    .param p0, "radix_in"    # I
    .param p1, "isAlgorithmic_in"    # Z
    .param p2, "desc_in"    # Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Landroid/icu/text/NumberingSystem;->getInstance(Ljava/lang/String;IZLjava/lang/String;)Landroid/icu/text/NumberingSystem;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;
    .registers 8
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    .line 118
    const/4 v0, 0x1

    .line 119
    .local v0, "nsResolved":Z
    const-string v1, "numbers"

    invoke-virtual {p0, v1}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "numbersKeyword":Ljava/lang/String;
    if-eqz v1, :cond_1d

    .line 121
    sget-object v2, Landroid/icu/text/NumberingSystem;->OTHER_NS_KEYWORDS:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v3, :cond_1c

    aget-object v5, v2, v4

    .line 122
    .local v5, "keyword":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 123
    const/4 v0, 0x0

    .line 124
    goto :goto_1c

    .line 121
    .end local v5    # "keyword":Ljava/lang/String;
    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_1c
    :goto_1c
    goto :goto_20

    .line 128
    :cond_1d
    const-string v1, "default"

    .line 129
    const/4 v0, 0x0

    .line 132
    :goto_20
    if-eqz v0, :cond_2b

    .line 133
    invoke-static {v1}, Landroid/icu/text/NumberingSystem;->getInstanceByName(Ljava/lang/String;)Landroid/icu/text/NumberingSystem;

    move-result-object v2

    .line 134
    .local v2, "ns":Landroid/icu/text/NumberingSystem;
    if-eqz v2, :cond_29

    .line 135
    return-object v2

    .line 139
    :cond_29
    const-string v1, "default"

    .line 143
    .end local v2    # "ns":Landroid/icu/text/NumberingSystem;
    :cond_2b
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "baseName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@numbers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "key":Ljava/lang/String;
    new-instance v4, Landroid/icu/text/NumberingSystem$LocaleLookupData;

    invoke-direct {v4, p0, v1}, Landroid/icu/text/NumberingSystem$LocaleLookupData;-><init>(Landroid/icu/util/ULocale;Ljava/lang/String;)V

    .line 150
    .local v4, "localeLookupData":Landroid/icu/text/NumberingSystem$LocaleLookupData;
    sget-object v5, Landroid/icu/text/NumberingSystem;->cachedLocaleData:Landroid/icu/impl/CacheBase;

    invoke-virtual {v5, v3, v4}, Landroid/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/text/NumberingSystem;

    return-object v5
.end method

.method private static greylist-max-o getInstance(Ljava/lang/String;IZLjava/lang/String;)Landroid/icu/text/NumberingSystem;
    .registers 6
    .param p0, "name_in"    # Ljava/lang/String;
    .param p1, "radix_in"    # I
    .param p2, "isAlgorithmic_in"    # Z
    .param p3, "desc_in"    # Ljava/lang/String;

    .line 89
    const/4 v0, 0x2

    if-lt p1, v0, :cond_2d

    .line 93
    if-nez p2, :cond_1f

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    if-ne v0, p1, :cond_17

    invoke-static {p3}, Landroid/icu/text/NumberingSystem;->isValidDigitString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_1f

    .line 95
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid digit string for numbering system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_1f
    :goto_1f
    new-instance v0, Landroid/icu/text/NumberingSystem;

    invoke-direct {v0}, Landroid/icu/text/NumberingSystem;-><init>()V

    .line 99
    .local v0, "ns":Landroid/icu/text/NumberingSystem;
    iput p1, v0, Landroid/icu/text/NumberingSystem;->radix:I

    .line 100
    iput-boolean p2, v0, Landroid/icu/text/NumberingSystem;->algorithmic:Z

    .line 101
    iput-object p3, v0, Landroid/icu/text/NumberingSystem;->desc:Ljava/lang/String;

    .line 102
    iput-object p0, v0, Landroid/icu/text/NumberingSystem;->name:Ljava/lang/String;

    .line 103
    return-object v0

    .line 90
    .end local v0    # "ns":Landroid/icu/text/NumberingSystem;
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid radix for numbering system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api getInstance(Ljava/util/Locale;)Landroid/icu/text/NumberingSystem;
    .registers 2
    .param p0, "inLocale"    # Ljava/util/Locale;

    .line 110
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getInstanceByName(Ljava/lang/String;)Landroid/icu/text/NumberingSystem;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 221
    sget-object v0, Landroid/icu/text/NumberingSystem;->cachedStringData:Landroid/icu/impl/CacheBase;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/NumberingSystem;

    return-object v0
.end method

.method public static whitelist test-api isValidDigitString(Ljava/lang/String;)Z
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .line 277
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    .line 278
    .local v0, "numCodepoints":I
    const/16 v2, 0xa

    if-ne v0, v2, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1
.end method

.method static greylist-max-o lookupInstanceByLocale(Landroid/icu/text/NumberingSystem$LocaleLookupData;)Landroid/icu/text/NumberingSystem;
    .registers 7
    .param p0, "localeLookupData"    # Landroid/icu/text/NumberingSystem$LocaleLookupData;

    .line 164
    iget-object v0, p0, Landroid/icu/text/NumberingSystem$LocaleLookupData;->locale:Landroid/icu/util/ULocale;

    .line 167
    .local v0, "locale":Landroid/icu/util/ULocale;
    :try_start_2
    const-string v1, "android/icu/impl/data/icudata"

    invoke-static {v1, v0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    .line 168
    .local v1, "rb":Landroid/icu/impl/ICUResourceBundle;
    const-string v2, "NumberElements"

    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v2
    :try_end_10
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_10} :catch_4b

    .line 171
    .end local v1    # "rb":Landroid/icu/impl/ICUResourceBundle;
    .local v2, "rb":Landroid/icu/impl/ICUResourceBundle;
    nop

    .line 173
    iget-object v1, p0, Landroid/icu/text/NumberingSystem$LocaleLookupData;->numbersKeyword:Ljava/lang/String;

    .line 174
    .local v1, "numbersKeyword":Ljava/lang/String;
    const/4 v3, 0x0

    .line 177
    .local v3, "resolvedNumberingSystem":Ljava/lang/String;
    :goto_14
    :try_start_14
    invoke-virtual {v2, v1}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_18
    .catch Ljava/util/MissingResourceException; {:try_start_14 .. :try_end_18} :catch_1a

    move-object v3, v4

    .line 178
    goto :goto_38

    .line 179
    :catch_1a
    move-exception v4

    .line 180
    .local v4, "ex":Ljava/util/MissingResourceException;
    const-string v5, "native"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_48

    const-string v5, "finance"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    goto :goto_48

    .line 182
    :cond_2c
    const-string v5, "traditional"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 183
    const-string v1, "native"

    goto :goto_4a

    .line 185
    :cond_37
    nop

    .line 190
    .end local v4    # "ex":Ljava/util/MissingResourceException;
    :goto_38
    const/4 v4, 0x0

    .line 191
    .local v4, "ns":Landroid/icu/text/NumberingSystem;
    if-eqz v3, :cond_3f

    .line 192
    invoke-static {v3}, Landroid/icu/text/NumberingSystem;->getInstanceByName(Ljava/lang/String;)Landroid/icu/text/NumberingSystem;

    move-result-object v4

    .line 195
    :cond_3f
    if-nez v4, :cond_47

    .line 196
    new-instance v5, Landroid/icu/text/NumberingSystem;

    invoke-direct {v5}, Landroid/icu/text/NumberingSystem;-><init>()V

    move-object v4, v5

    .line 198
    :cond_47
    return-object v4

    .line 181
    .local v4, "ex":Ljava/util/MissingResourceException;
    :cond_48
    :goto_48
    const-string v1, "default"

    .line 187
    .end local v4    # "ex":Ljava/util/MissingResourceException;
    :goto_4a
    goto :goto_14

    .line 169
    .end local v1    # "numbersKeyword":Ljava/lang/String;
    .end local v2    # "rb":Landroid/icu/impl/ICUResourceBundle;
    .end local v3    # "resolvedNumberingSystem":Ljava/lang/String;
    :catch_4b
    move-exception v1

    .line 170
    .local v1, "ex":Ljava/util/MissingResourceException;
    new-instance v2, Landroid/icu/text/NumberingSystem;

    invoke-direct {v2}, Landroid/icu/text/NumberingSystem;-><init>()V

    return-object v2
.end method

.method private static greylist-max-o lookupInstanceByName(Ljava/lang/String;)Landroid/icu/text/NumberingSystem;
    .registers 10
    .param p0, "name"    # Ljava/lang/String;

    .line 229
    const-string v0, "numberingSystems"

    :try_start_2
    const-string v1, "android/icu/impl/data/icudata"

    invoke-static {v1, v0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    .line 230
    .local v1, "numberingSystemsInfo":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v1, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 231
    .local v0, "nsCurrent":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v0, p0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    .line 233
    .local v2, "nsTop":Landroid/icu/util/UResourceBundle;
    const-string v3, "desc"

    invoke-virtual {v2, v3}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, "description":Ljava/lang/String;
    const-string v4, "radix"

    invoke-virtual {v2, v4}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v4

    .line 235
    .local v4, "nsRadixBundle":Landroid/icu/util/UResourceBundle;
    const-string v5, "algorithmic"

    invoke-virtual {v2, v5}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v5

    .line 236
    .local v5, "nsAlgBundle":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v4}, Landroid/icu/util/UResourceBundle;->getInt()I

    move-result v6

    .line 237
    .local v6, "radix":I
    invoke-virtual {v5}, Landroid/icu/util/UResourceBundle;->getInt()I

    move-result v7
    :try_end_2a
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2a} :catch_35

    .line 239
    .local v7, "algorithmic":I
    const/4 v8, 0x1

    if-ne v7, v8, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 v8, 0x0

    .line 243
    .end local v0    # "nsCurrent":Landroid/icu/util/UResourceBundle;
    .end local v1    # "numberingSystemsInfo":Landroid/icu/util/UResourceBundle;
    .end local v2    # "nsTop":Landroid/icu/util/UResourceBundle;
    .end local v4    # "nsRadixBundle":Landroid/icu/util/UResourceBundle;
    .end local v5    # "nsAlgBundle":Landroid/icu/util/UResourceBundle;
    .end local v7    # "algorithmic":I
    .local v8, "isAlgorithmic":Z
    :goto_2f
    nop

    .line 245
    invoke-static {p0, v6, v8, v3}, Landroid/icu/text/NumberingSystem;->getInstance(Ljava/lang/String;IZLjava/lang/String;)Landroid/icu/text/NumberingSystem;

    move-result-object v0

    return-object v0

    .line 241
    .end local v3    # "description":Ljava/lang/String;
    .end local v6    # "radix":I
    .end local v8    # "isAlgorithmic":Z
    :catch_35
    move-exception v0

    .line 242
    .local v0, "ex":Ljava/util/MissingResourceException;
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public whitelist test-api getDescription()Ljava/lang/String;
    .registers 2

    .line 298
    iget-object v0, p0, Landroid/icu/text/NumberingSystem;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 2

    .line 305
    iget-object v0, p0, Landroid/icu/text/NumberingSystem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getRadix()I
    .registers 2

    .line 285
    iget v0, p0, Landroid/icu/text/NumberingSystem;->radix:I

    return v0
.end method

.method public whitelist test-api isAlgorithmic()Z
    .registers 2

    .line 314
    iget-boolean v0, p0, Landroid/icu/text/NumberingSystem;->algorithmic:Z

    return v0
.end method
