.class Ljava/nio/charset/Charset$3;
.super Ljava/lang/Object;
.source "Charset.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/nio/charset/Charset;->availableCharsets()Ljava/util/SortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/util/SortedMap<",
        "Ljava/lang/String;",
        "Ljava/nio/charset/Charset;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 623
    invoke-virtual {p0}, Ljava/nio/charset/Charset$3;->run()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/util/SortedMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation

    .line 625
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 634
    .local v0, "m":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/nio/charset/Charset;>;"
    invoke-static {}, Lcom/android/icu/charset/CharsetFactory;->getAvailableCharsetNames()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_1f

    aget-object v4, v1, v3

    .line 635
    .local v4, "charsetName":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/icu/charset/CharsetFactory;->create(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    .line 636
    .local v5, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    .end local v4    # "charsetName":Ljava/lang/String;
    .end local v5    # "charset":Ljava/nio/charset/Charset;
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 638
    :cond_1f
    invoke-static {}, Ljava/nio/charset/Charset;->-$$Nest$smproviders()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/charset/spi/CharsetProvider;>;"
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 639
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/charset/spi/CharsetProvider;

    .line 640
    .local v2, "cp":Ljava/nio/charset/spi/CharsetProvider;
    invoke-virtual {v2}, Ljava/nio/charset/spi/CharsetProvider;->charsets()Ljava/util/Iterator;

    move-result-object v3

    invoke-static {v3, v0}, Ljava/nio/charset/Charset;->-$$Nest$smput(Ljava/util/Iterator;Ljava/util/Map;)V

    .line 641
    .end local v2    # "cp":Ljava/nio/charset/spi/CharsetProvider;
    goto :goto_23

    .line 642
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/charset/spi/CharsetProvider;>;"
    :cond_37
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v1

    return-object v1
.end method
