.class public Landroid/icu/impl/StaticUnicodeSets;
.super Ljava/lang/Object;
.source "StaticUnicodeSets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/StaticUnicodeSets$Key;,
        Landroid/icu/impl/StaticUnicodeSets$ParseDataSink;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field private static final blacklist unicodeSets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/icu/impl/StaticUnicodeSets$Key;",
            "Landroid/icu/text/UnicodeSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smsaveSet(Landroid/icu/impl/StaticUnicodeSets$Key;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/impl/StaticUnicodeSets;->saveSet(Landroid/icu/impl/StaticUnicodeSets$Key;Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 7

    .line 25
    nop

    .line 73
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroid/icu/impl/StaticUnicodeSets$Key;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Landroid/icu/impl/StaticUnicodeSets;->unicodeSets:Ljava/util/Map;

    .line 238
    sget-object v0, Landroid/icu/impl/StaticUnicodeSets;->unicodeSets:Ljava/util/Map;

    sget-object v1, Landroid/icu/impl/StaticUnicodeSets$Key;->EMPTY:Landroid/icu/impl/StaticUnicodeSets$Key;

    new-instance v2, Landroid/icu/text/UnicodeSet;

    const-string v3, "[]"

    invoke-direct {v2, v3}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Landroid/icu/impl/StaticUnicodeSets;->unicodeSets:Ljava/util/Map;

    sget-object v1, Landroid/icu/impl/StaticUnicodeSets$Key;->DEFAULT_IGNORABLES:Landroid/icu/impl/StaticUnicodeSets$Key;

    new-instance v2, Landroid/icu/text/UnicodeSet;

    const-string v3, "[[:Zs:][\\u0009][:Bidi_Control:][:Variation_Selector:]]"

    invoke-direct {v2, v3}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v2}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v2

    .line 241
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Landroid/icu/impl/StaticUnicodeSets;->unicodeSets:Ljava/util/Map;

    sget-object v1, Landroid/icu/impl/StaticUnicodeSets$Key;->STRICT_IGNORABLES:Landroid/icu/impl/StaticUnicodeSets$Key;

    new-instance v2, Landroid/icu/text/UnicodeSet;

    const-string v3, "[[:Bidi_Control:]]"

    invoke-direct {v2, v3}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    .line 247
    const-string v1, "android/icu/impl/data/icudata"

    invoke-static {v1, v0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 248
    .local v0, "rb":Landroid/icu/impl/ICUResourceBundle;
    new-instance v1, Landroid/icu/impl/StaticUnicodeSets$ParseDataSink;

    invoke-direct {v1}, Landroid/icu/impl/StaticUnicodeSets$ParseDataSink;-><init>()V

    const-string v2, "parse"

    invoke-virtual {v0, v2, v1}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 251
    nop

    .line 252
    nop

    .line 253
    nop

    .line 254
    nop

    .line 255
    nop

    .line 257
    new-instance v1, Landroid/icu/text/UnicodeSet;

    const-string v2, "[\u066c\u2018\\u0020\\u00A0\\u2000-\\u200A\\u202F\\u205F\\u3000]"

    invoke-direct {v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    .line 259
    .local v1, "otherGrouping":Landroid/icu/text/UnicodeSet;
    sget-object v2, Landroid/icu/impl/StaticUnicodeSets;->unicodeSets:Ljava/util/Map;

    sget-object v3, Landroid/icu/impl/StaticUnicodeSets$Key;->APOSTROPHE_SIGN:Landroid/icu/impl/StaticUnicodeSets$Key;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 260
    sget-object v2, Landroid/icu/impl/StaticUnicodeSets;->unicodeSets:Ljava/util/Map;

    sget-object v3, Landroid/icu/impl/StaticUnicodeSets$Key;->OTHER_GROUPING_SEPARATORS:Landroid/icu/impl/StaticUnicodeSets$Key;

    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v2, Landroid/icu/impl/StaticUnicodeSets;->unicodeSets:Ljava/util/Map;

    sget-object v3, Landroid/icu/impl/StaticUnicodeSets$Key;->ALL_SEPARATORS:Landroid/icu/impl/StaticUnicodeSets$Key;

    sget-object v4, Landroid/icu/impl/StaticUnicodeSets$Key;->COMMA:Landroid/icu/impl/StaticUnicodeSets$Key;

    sget-object v5, Landroid/icu/impl/StaticUnicodeSets$Key;->PERIOD:Landroid/icu/impl/StaticUnicodeSets$Key;

    sget-object v6, Landroid/icu/impl/StaticUnicodeSets$Key;->OTHER_GROUPING_SEPARATORS:Landroid/icu/impl/StaticUnicodeSets$Key;

    .line 262
    invoke-static {v4, v5, v6}, Landroid/icu/impl/StaticUnicodeSets;->computeUnion(Landroid/icu/impl/StaticUnicodeSets$Key;Landroid/icu/impl/StaticUnicodeSets$Key;Landroid/icu/impl/StaticUnicodeSets$Key;)Landroid/icu/text/UnicodeSet;

    move-result-object v4

    .line 261
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v2, Landroid/icu/impl/StaticUnicodeSets;->unicodeSets:Ljava/util/Map;

    sget-object v3, Landroid/icu/impl/StaticUnicodeSets$Key;->STRICT_ALL_SEPARATORS:Landroid/icu/impl/StaticUnicodeSets$Key;

    sget-object v4, Landroid/icu/impl/StaticUnicodeSets$Key;->STRICT_COMMA:Landroid/icu/impl/StaticUnicodeSets$Key;

    sget-object v5, Landroid/icu/impl/StaticUnicodeSets$Key;->STRICT_PERIOD:Landroid/icu/impl/StaticUnicodeSets$Key;

    sget-object v6, Landroid/icu/impl/StaticUnicodeSets$Key;->OTHER_GROUPING_SEPARATORS:Landroid/icu/impl/StaticUnicodeSets$Key;

    .line 264
    invoke-static {v4, v5, v6}, Landroid/icu/impl/StaticUnicodeSets;->computeUnion(Landroid/icu/impl/StaticUnicodeSets$Key;Landroid/icu/impl/StaticUnicodeSets$Key;Landroid/icu/impl/StaticUnicodeSets$Key;)Landroid/icu/text/UnicodeSet;

    move-result-object v4

    .line 263
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    nop

    .line 267
    nop

    .line 268
    nop

    .line 269
    nop

    .line 271
    sget-object v2, Landroid/icu/impl/StaticUnicodeSets;->unicodeSets:Ljava/util/Map;

    sget-object v3, Landroid/icu/impl/StaticUnicodeSets$Key;->INFINITY_SIGN:Landroid/icu/impl/StaticUnicodeSets$Key;

    new-instance v4, Landroid/icu/text/UnicodeSet;

    const-string v5, "[\u221e]"

    invoke-direct {v4, v5}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    nop

    .line 274
    nop

    .line 275
    nop

    .line 276
    nop

    .line 277
    nop

    .line 279
    sget-object v2, Landroid/icu/impl/StaticUnicodeSets;->unicodeSets:Ljava/util/Map;

    sget-object v3, Landroid/icu/impl/StaticUnicodeSets$Key;->DIGITS:Landroid/icu/impl/StaticUnicodeSets$Key;

    new-instance v4, Landroid/icu/text/UnicodeSet;

    const-string v5, "[:digit:]"

    invoke-direct {v4, v5}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v2, Landroid/icu/impl/StaticUnicodeSets;->unicodeSets:Ljava/util/Map;

    sget-object v3, Landroid/icu/impl/StaticUnicodeSets$Key;->DIGITS_OR_ALL_SEPARATORS:Landroid/icu/impl/StaticUnicodeSets$Key;

    sget-object v4, Landroid/icu/impl/StaticUnicodeSets$Key;->DIGITS:Landroid/icu/impl/StaticUnicodeSets$Key;

    sget-object v5, Landroid/icu/impl/StaticUnicodeSets$Key;->ALL_SEPARATORS:Landroid/icu/impl/StaticUnicodeSets$Key;

    invoke-static {v4, v5}, Landroid/icu/impl/StaticUnicodeSets;->computeUnion(Landroid/icu/impl/StaticUnicodeSets$Key;Landroid/icu/impl/StaticUnicodeSets$Key;)Landroid/icu/text/UnicodeSet;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v2, Landroid/icu/impl/StaticUnicodeSets;->unicodeSets:Ljava/util/Map;

    sget-object v3, Landroid/icu/impl/StaticUnicodeSets$Key;->DIGITS_OR_STRICT_ALL_SEPARATORS:Landroid/icu/impl/StaticUnicodeSets$Key;

    sget-object v4, Landroid/icu/impl/StaticUnicodeSets$Key;->DIGITS:Landroid/icu/impl/StaticUnicodeSets$Key;

    sget-object v5, Landroid/icu/impl/StaticUnicodeSets$Key;->STRICT_ALL_SEPARATORS:Landroid/icu/impl/StaticUnicodeSets$Key;

    .line 283
    invoke-static {v4, v5}, Landroid/icu/impl/StaticUnicodeSets;->computeUnion(Landroid/icu/impl/StaticUnicodeSets$Key;Landroid/icu/impl/StaticUnicodeSets$Key;)Landroid/icu/text/UnicodeSet;

    move-result-object v4

    .line 282
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .end local v0    # "rb":Landroid/icu/impl/ICUResourceBundle;
    .end local v1    # "otherGrouping":Landroid/icu/text/UnicodeSet;
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist chooseCurrency(Ljava/lang/String;)Landroid/icu/impl/StaticUnicodeSets$Key;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 127
    sget-object v0, Landroid/icu/impl/StaticUnicodeSets$Key;->DOLLAR_SIGN:Landroid/icu/impl/StaticUnicodeSets$Key;

    invoke-static {v0}, Landroid/icu/impl/StaticUnicodeSets;->get(Landroid/icu/impl/StaticUnicodeSets$Key;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 128
    sget-object v0, Landroid/icu/impl/StaticUnicodeSets$Key;->DOLLAR_SIGN:Landroid/icu/impl/StaticUnicodeSets$Key;

    return-object v0

    .line 129
    :cond_f
    sget-object v0, Landroid/icu/impl/StaticUnicodeSets$Key;->POUND_SIGN:Landroid/icu/impl/StaticUnicodeSets$Key;

    invoke-static {v0}, Landroid/icu/impl/StaticUnicodeSets;->get(Landroid/icu/impl/StaticUnicodeSets$Key;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 130
    sget-object v0, Landroid/icu/impl/StaticUnicodeSets$Key;->POUND_SIGN:Landroid/icu/impl/StaticUnicodeSets$Key;

    return-object v0

    .line 131
    :cond_1e
    sget-object v0, Landroid/icu/impl/StaticUnicodeSets$Key;->RUPEE_SIGN:Landroid/icu/impl/StaticUnicodeSets$Key;

    invoke-static {v0}, Landroid/icu/impl/StaticUnicodeSets;->get(Landroid/icu/impl/StaticUnicodeSets$Key;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 132
    sget-object v0, Landroid/icu/impl/StaticUnicodeSets$Key;->RUPEE_SIGN:Landroid/icu/impl/StaticUnicodeSets$Key;

    return-object v0

    .line 133
    :cond_2d
    sget-object v0, Landroid/icu/impl/StaticUnicodeSets$Key;->YEN_SIGN:Landroid/icu/impl/StaticUnicodeSets$Key;

    invoke-static {v0}, Landroid/icu/impl/StaticUnicodeSets;->get(Landroid/icu/impl/StaticUnicodeSets$Key;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 134
    sget-object v0, Landroid/icu/impl/StaticUnicodeSets$Key;->YEN_SIGN:Landroid/icu/impl/StaticUnicodeSets$Key;

    return-object v0

    .line 135
    :cond_3c
    sget-object v0, Landroid/icu/impl/StaticUnicodeSets$Key;->WON_SIGN:Landroid/icu/impl/StaticUnicodeSets$Key;

    invoke-static {v0}, Landroid/icu/impl/StaticUnicodeSets;->get(Landroid/icu/impl/StaticUnicodeSets$Key;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 136
    sget-object v0, Landroid/icu/impl/StaticUnicodeSets$Key;->WON_SIGN:Landroid/icu/impl/StaticUnicodeSets$Key;

    return-object v0

    .line 138
    :cond_4b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist chooseFrom(Ljava/lang/String;Landroid/icu/impl/StaticUnicodeSets$Key;)Landroid/icu/impl/StaticUnicodeSets$Key;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "key1"    # Landroid/icu/impl/StaticUnicodeSets$Key;

    .line 101
    invoke-static {p1}, Landroid/icu/impl/StaticUnicodeSets;->get(Landroid/icu/impl/StaticUnicodeSets$Key;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v0, p1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return-object v0
.end method

.method public static blacklist chooseFrom(Ljava/lang/String;Landroid/icu/impl/StaticUnicodeSets$Key;Landroid/icu/impl/StaticUnicodeSets$Key;)Landroid/icu/impl/StaticUnicodeSets$Key;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "key1"    # Landroid/icu/impl/StaticUnicodeSets$Key;
    .param p2, "key2"    # Landroid/icu/impl/StaticUnicodeSets$Key;

    .line 119
    invoke-static {p1}, Landroid/icu/impl/StaticUnicodeSets;->get(Landroid/icu/impl/StaticUnicodeSets$Key;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v0, p1

    goto :goto_10

    :cond_c
    invoke-static {p0, p2}, Landroid/icu/impl/StaticUnicodeSets;->chooseFrom(Ljava/lang/String;Landroid/icu/impl/StaticUnicodeSets$Key;)Landroid/icu/impl/StaticUnicodeSets$Key;

    move-result-object v0

    :goto_10
    return-object v0
.end method

.method private static blacklist computeUnion(Landroid/icu/impl/StaticUnicodeSets$Key;Landroid/icu/impl/StaticUnicodeSets$Key;)Landroid/icu/text/UnicodeSet;
    .registers 4
    .param p0, "k1"    # Landroid/icu/impl/StaticUnicodeSets$Key;
    .param p1, "k2"    # Landroid/icu/impl/StaticUnicodeSets$Key;

    .line 143
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    invoke-static {p0}, Landroid/icu/impl/StaticUnicodeSets;->get(Landroid/icu/impl/StaticUnicodeSets$Key;)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    invoke-static {p1}, Landroid/icu/impl/StaticUnicodeSets;->get(Landroid/icu/impl/StaticUnicodeSets$Key;)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist computeUnion(Landroid/icu/impl/StaticUnicodeSets$Key;Landroid/icu/impl/StaticUnicodeSets$Key;Landroid/icu/impl/StaticUnicodeSets$Key;)Landroid/icu/text/UnicodeSet;
    .registers 5
    .param p0, "k1"    # Landroid/icu/impl/StaticUnicodeSets$Key;
    .param p1, "k2"    # Landroid/icu/impl/StaticUnicodeSets$Key;
    .param p2, "k3"    # Landroid/icu/impl/StaticUnicodeSets$Key;

    .line 147
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    invoke-static {p0}, Landroid/icu/impl/StaticUnicodeSets;->get(Landroid/icu/impl/StaticUnicodeSets$Key;)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    invoke-static {p1}, Landroid/icu/impl/StaticUnicodeSets;->get(Landroid/icu/impl/StaticUnicodeSets$Key;)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    invoke-static {p2}, Landroid/icu/impl/StaticUnicodeSets;->get(Landroid/icu/impl/StaticUnicodeSets$Key;)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist get(Landroid/icu/impl/StaticUnicodeSets$Key;)Landroid/icu/text/UnicodeSet;
    .registers 3
    .param p0, "key"    # Landroid/icu/impl/StaticUnicodeSets$Key;

    .line 84
    sget-object v0, Landroid/icu/impl/StaticUnicodeSets;->unicodeSets:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/UnicodeSet;

    .line 85
    .local v0, "candidate":Landroid/icu/text/UnicodeSet;
    if-nez v0, :cond_d

    .line 86
    sget-object v1, Landroid/icu/text/UnicodeSet;->EMPTY:Landroid/icu/text/UnicodeSet;

    return-object v1

    .line 88
    :cond_d
    return-object v0
.end method

.method private static blacklist saveSet(Landroid/icu/impl/StaticUnicodeSets$Key;Ljava/lang/String;)V
    .registers 4
    .param p0, "key"    # Landroid/icu/impl/StaticUnicodeSets$Key;
    .param p1, "unicodeSetPattern"    # Ljava/lang/String;

    .line 151
    nop

    .line 152
    sget-object v0, Landroid/icu/impl/StaticUnicodeSets;->unicodeSets:Ljava/util/Map;

    new-instance v1, Landroid/icu/text/UnicodeSet;

    invoke-direct {v1, p1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    return-void
.end method
