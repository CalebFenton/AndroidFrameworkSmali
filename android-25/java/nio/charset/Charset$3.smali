.class final Ljava/nio/charset/Charset$3;
.super Ljava/lang/Object;
.source "Charset.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/nio/charset/Charset;->availableCharsets()Ljava/util/SortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/util/SortedMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/nio/charset/Charset;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 629
    invoke-virtual {p0}, Ljava/nio/charset/Charset$3;->run()Ljava/util/SortedMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/util/SortedMap;
    .locals 9
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
    .line 631
    new-instance v4, Ljava/util/TreeMap;

    #@2
    .line 632
    sget-object v5, Lsun/misc/ASCIICaseInsensitiveComparator;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    #@4
    .line 631
    invoke-direct {v4, v5}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    #@7
    .line 633
    .local v4, "m":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/nio/charset/Charset;>;"
    invoke-static {}, Llibcore/icu/NativeConverter;->getAvailableCharsetNames()[Ljava/lang/String;

    #@a
    move-result-object v6

    #@b
    const/4 v5, 0x0

    #@c
    array-length v7, v6

    #@d
    :goto_0
    if-ge v5, v7, :cond_0

    #@f
    aget-object v1, v6, v5

    #@11
    .line 634
    .local v1, "charsetName":Ljava/lang/String;
    invoke-static {v1}, Llibcore/icu/NativeConverter;->charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@14
    move-result-object v0

    #@15
    .line 635
    .local v0, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@18
    move-result-object v8

    #@19
    invoke-virtual {v4, v8, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 633
    add-int/lit8 v5, v5, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 639
    .end local v0    # "charset":Ljava/nio/charset/Charset;
    .end local v1    # "charsetName":Ljava/lang/String;
    :cond_0
    invoke-static {}, Ljava/nio/charset/Charset;->-wrap0()Ljava/util/Iterator;

    #@22
    move-result-object v3

    #@23
    .local v3, "i":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@26
    move-result v5

    #@27
    if-eqz v5, :cond_1

    #@29
    .line 640
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2c
    move-result-object v2

    #@2d
    check-cast v2, Ljava/nio/charset/spi/CharsetProvider;

    #@2f
    .line 641
    .local v2, "cp":Ljava/nio/charset/spi/CharsetProvider;
    invoke-virtual {v2}, Ljava/nio/charset/spi/CharsetProvider;->charsets()Ljava/util/Iterator;

    #@32
    move-result-object v5

    #@33
    invoke-static {v5, v4}, Ljava/nio/charset/Charset;->-wrap1(Ljava/util/Iterator;Ljava/util/Map;)V

    #@36
    goto :goto_1

    #@37
    .line 643
    .end local v2    # "cp":Ljava/nio/charset/spi/CharsetProvider;
    :cond_1
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    #@3a
    move-result-object v5

    #@3b
    return-object v5
.end method
