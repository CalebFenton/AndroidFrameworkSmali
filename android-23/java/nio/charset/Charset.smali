.class public abstract Ljava/nio/charset/Charset;
.super Ljava/lang/Object;
.source "Charset.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/charset/Charset;",
        ">;"
    }
.end annotation


# static fields
.field private static final CACHED_CHARSETS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;


# instance fields
.field private final aliasesSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final canonicalName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 156
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    sput-object v0, Ljava/nio/charset/Charset;->CACHED_CHARSETS:Ljava/util/HashMap;

    #@7
    .line 158
    invoke-static {}, Ljava/nio/charset/Charset;->getDefaultCharset()Ljava/nio/charset/Charset;

    #@a
    move-result-object v0

    #@b
    sput-object v0, Ljava/nio/charset/Charset;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    #@d
    .line 155
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "canonicalName"    # Ljava/lang/String;
    .param p2, "aliases"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 179
    invoke-static {p1}, Ljava/nio/charset/Charset;->checkCharsetName(Ljava/lang/String;)V

    #@6
    .line 180
    iput-object p1, p0, Ljava/nio/charset/Charset;->canonicalName:Ljava/lang/String;

    #@8
    .line 183
    new-instance v1, Ljava/util/HashSet;

    #@a
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@d
    iput-object v1, p0, Ljava/nio/charset/Charset;->aliasesSet:Ljava/util/HashSet;

    #@f
    .line 184
    if-eqz p2, :cond_0

    #@11
    .line 185
    const/4 v1, 0x0

    #@12
    array-length v2, p2

    #@13
    :goto_0
    if-ge v1, v2, :cond_0

    #@15
    aget-object v0, p2, v1

    #@17
    .line 186
    .local v0, "alias":Ljava/lang/String;
    invoke-static {v0}, Ljava/nio/charset/Charset;->checkCharsetName(Ljava/lang/String;)V

    #@1a
    .line 187
    iget-object v3, p0, Ljava/nio/charset/Charset;->aliasesSet:Ljava/util/HashSet;

    #@1c
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1f
    .line 185
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 177
    .end local v0    # "alias":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static availableCharsets()Ljava/util/SortedMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 223
    new-instance v4, Ljava/util/TreeMap;

    #@2
    sget-object v7, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    #@4
    invoke-direct {v4, v7}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    #@7
    .line 224
    .local v4, "charsets":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/nio/charset/Charset;>;"
    invoke-static {}, Llibcore/icu/NativeConverter;->getAvailableCharsetNames()[Ljava/lang/String;

    #@a
    move-result-object v8

    #@b
    const/4 v7, 0x0

    #@c
    array-length v9, v8

    #@d
    :goto_0
    if-ge v7, v9, :cond_0

    #@f
    aget-object v1, v8, v7

    #@11
    .line 225
    .local v1, "charsetName":Ljava/lang/String;
    invoke-static {v1}, Llibcore/icu/NativeConverter;->charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@14
    move-result-object v0

    #@15
    .line 226
    .local v0, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@18
    move-result-object v10

    #@19
    invoke-virtual {v4, v10, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 224
    add-int/lit8 v7, v7, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 230
    .end local v0    # "charset":Ljava/nio/charset/Charset;
    .end local v1    # "charsetName":Ljava/lang/String;
    :cond_0
    const-class v7, Ljava/nio/charset/spi/CharsetProvider;

    #@21
    invoke-static {v7}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    #@24
    move-result-object v7

    #@25
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@28
    move-result-object v3

    #@29
    .local v3, "charsetProvider$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@2c
    move-result v7

    #@2d
    if-eqz v7, :cond_3

    #@2f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@32
    move-result-object v2

    #@33
    check-cast v2, Ljava/nio/charset/spi/CharsetProvider;

    #@35
    .line 231
    .local v2, "charsetProvider":Ljava/nio/charset/spi/CharsetProvider;
    invoke-virtual {v2}, Ljava/nio/charset/spi/CharsetProvider;->charsets()Ljava/util/Iterator;

    #@38
    move-result-object v6

    #@39
    .line 232
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/charset/Charset;>;"
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@3c
    move-result v7

    #@3d
    if-eqz v7, :cond_1

    #@3f
    .line 233
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@42
    move-result-object v5

    #@43
    check-cast v5, Ljava/nio/charset/Charset;

    #@45
    .line 235
    .local v5, "cs":Ljava/nio/charset/Charset;
    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@48
    move-result-object v7

    #@49
    invoke-virtual {v4, v7}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    #@4c
    move-result v7

    #@4d
    if-nez v7, :cond_2

    #@4f
    .line 236
    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@52
    move-result-object v7

    #@53
    invoke-virtual {v4, v7, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@56
    goto :goto_1

    #@57
    .line 241
    .end local v2    # "charsetProvider":Ljava/nio/charset/spi/CharsetProvider;
    .end local v5    # "cs":Ljava/nio/charset/Charset;
    .end local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/charset/Charset;>;"
    :cond_3
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    #@5a
    move-result-object v7

    #@5b
    return-object v7
.end method

.method private static cacheCharset(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .locals 6
    .param p0, "charsetName"    # Ljava/lang/String;
    .param p1, "cs"    # Ljava/nio/charset/Charset;

    #@0
    .prologue
    .line 245
    sget-object v5, Ljava/nio/charset/Charset;->CACHED_CHARSETS:Ljava/util/HashMap;

    #@2
    monitor-enter v5

    #@3
    .line 247
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@6
    move-result-object v3

    #@7
    .line 248
    .local v3, "canonicalName":Ljava/lang/String;
    sget-object v4, Ljava/nio/charset/Charset;->CACHED_CHARSETS:Ljava/util/HashMap;

    #@9
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    check-cast v2, Ljava/nio/charset/Charset;

    #@f
    .line 249
    .local v2, "canonicalCharset":Ljava/nio/charset/Charset;
    if-nez v2, :cond_0

    #@11
    .line 250
    move-object v2, p1

    #@12
    .line 254
    :cond_0
    sget-object v4, Ljava/nio/charset/Charset;->CACHED_CHARSETS:Ljava/util/HashMap;

    #@14
    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 260
    sget-object v4, Ljava/nio/charset/Charset;->CACHED_CHARSETS:Ljava/util/HashMap;

    #@19
    invoke-virtual {v4, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 263
    iget-object v4, p1, Ljava/nio/charset/Charset;->aliasesSet:Ljava/util/HashSet;

    #@1e
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object v1

    #@22
    .local v1, "alias$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v4

    #@26
    if-eqz v4, :cond_1

    #@28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Ljava/lang/String;

    #@2e
    .line 264
    .local v0, "alias":Ljava/lang/String;
    sget-object v4, Ljava/nio/charset/Charset;->CACHED_CHARSETS:Ljava/util/HashMap;

    #@30
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    goto :goto_0

    #@34
    .line 245
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "alias$iterator":Ljava/util/Iterator;
    .end local v2    # "canonicalCharset":Ljava/nio/charset/Charset;
    .end local v3    # "canonicalName":Ljava/lang/String;
    :catchall_0
    move-exception v4

    #@35
    monitor-exit v5

    #@36
    throw v4

    #@37
    .restart local v1    # "alias$iterator":Ljava/util/Iterator;
    .restart local v2    # "canonicalCharset":Ljava/nio/charset/Charset;
    .restart local v3    # "canonicalName":Ljava/lang/String;
    :cond_1
    monitor-exit v5

    #@38
    .line 267
    return-object v2
.end method

.method private static checkCharsetName(Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 193
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 194
    new-instance v1, Ljava/nio/charset/IllegalCharsetNameException;

    #@8
    invoke-direct {v1, p0}, Ljava/nio/charset/IllegalCharsetNameException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 196
    :cond_0
    const/4 v1, 0x0

    #@d
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@10
    move-result v1

    #@11
    invoke-static {v1}, Ljava/nio/charset/Charset;->isValidCharsetNameStart(C)Z

    #@14
    move-result v1

    #@15
    if-nez v1, :cond_1

    #@17
    .line 197
    new-instance v1, Ljava/nio/charset/IllegalCharsetNameException;

    #@19
    invoke-direct {v1, p0}, Ljava/nio/charset/IllegalCharsetNameException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v1

    #@1d
    .line 199
    :cond_1
    const/4 v0, 0x1

    #@1e
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@21
    move-result v1

    #@22
    if-ge v0, v1, :cond_3

    #@24
    .line 200
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@27
    move-result v1

    #@28
    invoke-static {v1}, Ljava/nio/charset/Charset;->isValidCharsetNamePart(C)Z

    #@2b
    move-result v1

    #@2c
    if-nez v1, :cond_2

    #@2e
    .line 201
    new-instance v1, Ljava/nio/charset/IllegalCharsetNameException;

    #@30
    invoke-direct {v1, p0}, Ljava/nio/charset/IllegalCharsetNameException;-><init>(Ljava/lang/String;)V

    #@33
    throw v1

    #@34
    .line 199
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@36
    goto :goto_0

    #@37
    .line 192
    :cond_3
    return-void
.end method

.method public static defaultCharset()Ljava/nio/charset/Charset;
    .locals 1

    #@0
    .prologue
    .line 554
    sget-object v0, Ljava/nio/charset/Charset;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    #@2
    return-object v0
.end method

.method public static forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 6
    .param p0, "charsetName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 283
    sget-object v4, Ljava/nio/charset/Charset;->CACHED_CHARSETS:Ljava/util/HashMap;

    #@3
    monitor-enter v4

    #@4
    .line 284
    :try_start_0
    sget-object v3, Ljava/nio/charset/Charset;->CACHED_CHARSETS:Ljava/util/HashMap;

    #@6
    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v2

    #@a
    check-cast v2, Ljava/nio/charset/Charset;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 285
    .local v2, "cs":Ljava/nio/charset/Charset;
    if-eqz v2, :cond_0

    #@e
    monitor-exit v4

    #@f
    .line 286
    return-object v2

    #@10
    :cond_0
    monitor-exit v4

    #@11
    .line 290
    if-nez p0, :cond_1

    #@13
    .line 291
    new-instance v3, Ljava/nio/charset/IllegalCharsetNameException;

    #@15
    invoke-direct {v3, v5}, Ljava/nio/charset/IllegalCharsetNameException;-><init>(Ljava/lang/String;)V

    #@18
    throw v3

    #@19
    .line 283
    .end local v2    # "cs":Ljava/nio/charset/Charset;
    :catchall_0
    move-exception v3

    #@1a
    monitor-exit v4

    #@1b
    throw v3

    #@1c
    .line 295
    .restart local v2    # "cs":Ljava/nio/charset/Charset;
    :cond_1
    invoke-static {p0}, Ljava/nio/charset/Charset;->checkCharsetName(Ljava/lang/String;)V

    #@1f
    .line 296
    invoke-static {p0}, Llibcore/icu/NativeConverter;->charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@22
    move-result-object v2

    #@23
    .line 297
    if-eqz v2, :cond_2

    #@25
    .line 298
    invoke-static {p0, v2}, Ljava/nio/charset/Charset;->cacheCharset(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    #@28
    move-result-object v3

    #@29
    return-object v3

    #@2a
    .line 302
    :cond_2
    const-class v3, Ljava/nio/charset/spi/CharsetProvider;

    #@2c
    invoke-static {v3}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    #@2f
    move-result-object v3

    #@30
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@33
    move-result-object v1

    #@34
    .local v1, "charsetProvider$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@37
    move-result v3

    #@38
    if-eqz v3, :cond_4

    #@3a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3d
    move-result-object v0

    #@3e
    check-cast v0, Ljava/nio/charset/spi/CharsetProvider;

    #@40
    .line 303
    .local v0, "charsetProvider":Ljava/nio/charset/spi/CharsetProvider;
    invoke-virtual {v0, p0}, Ljava/nio/charset/spi/CharsetProvider;->charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@43
    move-result-object v2

    #@44
    .line 304
    if-eqz v2, :cond_3

    #@46
    .line 305
    invoke-static {p0, v2}, Ljava/nio/charset/Charset;->cacheCharset(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    #@49
    move-result-object v3

    #@4a
    return-object v3

    #@4b
    .line 309
    .end local v0    # "charsetProvider":Ljava/nio/charset/spi/CharsetProvider;
    :cond_4
    new-instance v3, Ljava/nio/charset/UnsupportedCharsetException;

    #@4d
    invoke-direct {v3, p0}, Ljava/nio/charset/UnsupportedCharsetException;-><init>(Ljava/lang/String;)V

    #@50
    throw v3
.end method

.method public static forNameUEE(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 3
    .param p0, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 320
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v2

    #@4
    return-object v2

    #@5
    .line 321
    :catch_0
    move-exception v0

    #@6
    .line 322
    .local v0, "cause":Ljava/lang/Exception;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    #@8
    invoke-direct {v1, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    #@b
    .line 323
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1, v0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@e
    .line 324
    throw v1
.end method

.method private static getDefaultCharset()Ljava/nio/charset/Charset;
    .locals 4

    #@0
    .prologue
    .line 558
    const-string/jumbo v2, "file.encoding"

    #@3
    const-string/jumbo v3, "UTF-8"

    #@6
    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 560
    .local v1, "encoding":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v2

    #@e
    return-object v2

    #@f
    .line 561
    :catch_0
    move-exception v0

    #@10
    .line 562
    .local v0, "e":Ljava/nio/charset/UnsupportedCharsetException;
    const-string/jumbo v2, "UTF-8"

    #@13
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@16
    move-result-object v2

    #@17
    return-object v2
.end method

.method public static isSupported(Ljava/lang/String;)Z
    .locals 2
    .param p0, "charsetName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 339
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 340
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 341
    :catch_0
    move-exception v0

    #@6
    .line 342
    .local v0, "ex":Ljava/nio/charset/UnsupportedCharsetException;
    const/4 v1, 0x0

    #@7
    return v1
.end method

.method private static isValidCharsetNamePart(C)Z
    .locals 2
    .param p0, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 211
    const/16 v1, 0x41

    #@3
    if-lt p0, v1, :cond_1

    #@5
    const/16 v1, 0x5a

    #@7
    if-gt p0, v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/16 v1, 0x61

    #@c
    if-lt p0, v1, :cond_2

    #@e
    const/16 v1, 0x7a

    #@10
    if-le p0, v1, :cond_0

    #@12
    :cond_2
    const/16 v1, 0x30

    #@14
    if-lt p0, v1, :cond_3

    #@16
    const/16 v1, 0x39

    #@18
    if-le p0, v1, :cond_0

    #@1a
    .line 212
    :cond_3
    const/16 v1, 0x2d

    #@1c
    if-eq p0, v1, :cond_0

    #@1e
    const/16 v1, 0x2e

    #@20
    if-eq p0, v1, :cond_0

    #@22
    const/16 v1, 0x3a

    #@24
    if-eq p0, v1, :cond_0

    #@26
    const/16 v1, 0x5f

    #@28
    if-eq p0, v1, :cond_0

    #@2a
    const/4 v0, 0x0

    #@2b
    goto :goto_0
.end method

.method private static isValidCharsetNameStart(C)Z
    .locals 3
    .param p0, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 207
    const/16 v2, 0x41

    #@4
    if-lt p0, v2, :cond_1

    #@6
    const/16 v2, 0x5a

    #@8
    if-gt p0, v2, :cond_1

    #@a
    :cond_0
    :goto_0
    return v0

    #@b
    :cond_1
    const/16 v2, 0x61

    #@d
    if-lt p0, v2, :cond_2

    #@f
    const/16 v2, 0x7a

    #@11
    if-le p0, v2, :cond_0

    #@13
    :cond_2
    const/16 v2, 0x30

    #@15
    if-lt p0, v2, :cond_3

    #@17
    const/16 v2, 0x39

    #@19
    if-le p0, v2, :cond_0

    #@1b
    :cond_3
    move v0, v1

    #@1c
    goto :goto_0
.end method


# virtual methods
.method public final aliases()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 390
    iget-object v0, p0, Ljava/nio/charset/Charset;->aliasesSet:Ljava/util/HashSet;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public canEncode()Z
    .locals 1

    #@0
    .prologue
    .line 425
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "charset"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 501
    check-cast p1, Ljava/nio/charset/Charset;

    #@2
    .end local p1    # "charset":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/nio/charset/Charset;->compareTo(Ljava/nio/charset/Charset;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final compareTo(Ljava/nio/charset/Charset;)I
    .locals 2
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    #@0
    .prologue
    .line 502
    iget-object v0, p0, Ljava/nio/charset/Charset;->canonicalName:Ljava/lang/String;

    #@2
    iget-object v1, p1, Ljava/nio/charset/Charset;->canonicalName:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public abstract contains(Ljava/nio/charset/Charset;)Z
.end method

.method public final decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 478
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    #@3
    move-result-object v1

    #@4
    .line 479
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@6
    .line 478
    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    #@9
    move-result-object v1

    #@a
    .line 480
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@c
    .line 478
    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result-object v1

    #@14
    return-object v1

    #@15
    .line 481
    :catch_0
    move-exception v0

    #@16
    .line 482
    .local v0, "ex":Ljava/nio/charset/CharacterCodingException;
    new-instance v1, Ljava/lang/Error;

    #@18
    invoke-virtual {v0}, Ljava/nio/charset/CharacterCodingException;->getMessage()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v1, v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1f
    throw v1
.end method

.method public displayName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 400
    iget-object v0, p0, Ljava/nio/charset/Charset;->canonicalName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public displayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p1, "l"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 410
    iget-object v0, p0, Ljava/nio/charset/Charset;->canonicalName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 462
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "buffer"    # Ljava/nio/CharBuffer;

    #@0
    .prologue
    .line 442
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    #@3
    move-result-object v1

    #@4
    .line 443
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@6
    .line 442
    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    #@9
    move-result-object v1

    #@a
    .line 444
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@c
    .line 442
    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result-object v1

    #@14
    return-object v1

    #@15
    .line 446
    :catch_0
    move-exception v0

    #@16
    .line 447
    .local v0, "ex":Ljava/nio/charset/CharacterCodingException;
    new-instance v1, Ljava/lang/Error;

    #@18
    invoke-virtual {v0}, Ljava/nio/charset/CharacterCodingException;->getMessage()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v1, v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1f
    throw v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 521
    instance-of v1, p1, Ljava/nio/charset/Charset;

    #@2
    if-eqz v1, :cond_0

    #@4
    move-object v0, p1

    #@5
    .line 522
    check-cast v0, Ljava/nio/charset/Charset;

    #@7
    .line 523
    .local v0, "that":Ljava/nio/charset/Charset;
    iget-object v1, p0, Ljava/nio/charset/Charset;->canonicalName:Ljava/lang/String;

    #@9
    iget-object v2, v0, Ljava/nio/charset/Charset;->canonicalName:Ljava/lang/String;

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v1

    #@f
    return v1

    #@10
    .line 525
    .end local v0    # "that":Ljava/nio/charset/Charset;
    :cond_0
    const/4 v1, 0x0

    #@11
    return v1
.end method

.method public final hashCode()I
    .locals 1

    #@0
    .prologue
    .line 535
    iget-object v0, p0, Ljava/nio/charset/Charset;->canonicalName:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final isRegistered()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 418
    iget-object v1, p0, Ljava/nio/charset/Charset;->canonicalName:Ljava/lang/String;

    #@3
    const-string/jumbo v2, "x-"

    #@6
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    iget-object v1, p0, Ljava/nio/charset/Charset;->canonicalName:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "X-"

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    :cond_0
    :goto_0
    return v0

    #@18
    :cond_1
    const/4 v0, 0x1

    #@19
    goto :goto_0
.end method

.method public final name()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 383
    iget-object v0, p0, Ljava/nio/charset/Charset;->canonicalName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public abstract newDecoder()Ljava/nio/charset/CharsetDecoder;
.end method

.method public abstract newEncoder()Ljava/nio/charset/CharsetEncoder;
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string/jumbo v1, "["

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    iget-object v1, p0, Ljava/nio/charset/Charset;->canonicalName:Ljava/lang/String;

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    const-string/jumbo v1, "]"

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    return-object v0
.end method
