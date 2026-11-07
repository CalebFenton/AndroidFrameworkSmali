.class public final Landroid/icu/impl/locale/LikelySubtags$Data;
.super Ljava/lang/Object;
.source "LikelySubtags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/LikelySubtags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Data"
.end annotation


# instance fields
.field public final blacklist languageAliases:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist lsrs:[Landroid/icu/impl/locale/LSR;

.field public final blacklist regionAliases:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist trie:[B


# direct methods
.method public constructor blacklist <init>(Ljava/util/Map;Ljava/util/Map;[B[Landroid/icu/impl/locale/LSR;)V
    .registers 5
    .param p3, "trie"    # [B
    .param p4, "lsrs"    # [Landroid/icu/impl/locale/LSR;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B[",
            "Landroid/icu/impl/locale/LSR;",
            ")V"
        }
    .end annotation

    .line 45
    .local p1, "languageAliases":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "regionAliases":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/icu/impl/locale/LikelySubtags$Data;->languageAliases:Ljava/util/Map;

    .line 47
    iput-object p2, p0, Landroid/icu/impl/locale/LikelySubtags$Data;->regionAliases:Ljava/util/Map;

    .line 48
    iput-object p3, p0, Landroid/icu/impl/locale/LikelySubtags$Data;->trie:[B

    .line 49
    iput-object p4, p0, Landroid/icu/impl/locale/LikelySubtags$Data;->lsrs:[Landroid/icu/impl/locale/LSR;

    .line 50
    return-void
.end method

.method private static blacklist getValue(Landroid/icu/impl/UResource$Table;Ljava/lang/String;Landroid/icu/impl/UResource$Value;)Landroid/icu/impl/UResource$Value;
    .registers 7
    .param p0, "table"    # Landroid/icu/impl/UResource$Table;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;

    .line 54
    invoke-interface {p0, p1, p2}, Landroid/icu/impl/UResource$Table;->findValue(Ljava/lang/CharSequence;Landroid/icu/impl/UResource$Value;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 58
    return-object p2

    .line 55
    :cond_7
    new-instance v0, Ljava/util/MissingResourceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "likely/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "langInfo.res missing data"

    const-string v3, ""

    invoke-direct {v0, v2, v3, v1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist load()Landroid/icu/impl/locale/LikelySubtags$Data;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .line 63
    sget-object v0, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    sget-object v1, Landroid/icu/impl/ICUResourceBundle$OpenType;->DIRECT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    const-string v2, "android/icu/impl/data/icudata"

    const-string v3, "langInfo"

    invoke-static {v2, v3, v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    .line 66
    .local v0, "langInfo":Landroid/icu/impl/ICUResourceBundle;
    const-string v1, "likely"

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getValueWithFallback(Ljava/lang/String;)Landroid/icu/impl/UResource$Value;

    move-result-object v1

    .line 67
    .local v1, "value":Landroid/icu/impl/UResource$Value;
    invoke-virtual {v1}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v2

    .line 70
    .local v2, "likelyTable":Landroid/icu/impl/UResource$Table;
    const-string v3, "languageAliases"

    invoke-interface {v2, v3, v1}, Landroid/icu/impl/UResource$Table;->findValue(Ljava/lang/CharSequence;Landroid/icu/impl/UResource$Value;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 71
    invoke-virtual {v1}, Landroid/icu/impl/UResource$Value;->getStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "pairs":[Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    array-length v5, v3

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 73
    .local v4, "languageAliases":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2b
    array-length v6, v3

    if-ge v5, v6, :cond_3a

    .line 74
    aget-object v6, v3, v5

    add-int/lit8 v7, v5, 0x1

    aget-object v7, v3, v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    add-int/lit8 v5, v5, 0x2

    goto :goto_2b

    .line 76
    .end local v3    # "pairs":[Ljava/lang/String;
    .end local v5    # "i":I
    :cond_3a
    goto :goto_3f

    .line 77
    .end local v4    # "languageAliases":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3b
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    .line 81
    .restart local v4    # "languageAliases":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_3f
    const-string v3, "regionAliases"

    invoke-interface {v2, v3, v1}, Landroid/icu/impl/UResource$Table;->findValue(Ljava/lang/CharSequence;Landroid/icu/impl/UResource$Value;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 82
    invoke-virtual {v1}, Landroid/icu/impl/UResource$Value;->getStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 83
    .restart local v3    # "pairs":[Ljava/lang/String;
    new-instance v5, Ljava/util/HashMap;

    array-length v6, v3

    div-int/lit8 v6, v6, 0x2

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 84
    .local v5, "regionAliases":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_54
    array-length v7, v3

    if-ge v6, v7, :cond_63

    .line 85
    aget-object v7, v3, v6

    add-int/lit8 v8, v6, 0x1

    aget-object v8, v3, v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    add-int/lit8 v6, v6, 0x2

    goto :goto_54

    .line 87
    .end local v3    # "pairs":[Ljava/lang/String;
    .end local v6    # "i":I
    :cond_63
    goto :goto_68

    .line 88
    .end local v5    # "regionAliases":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_64
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    .line 91
    .restart local v5    # "regionAliases":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_68
    const-string v3, "trie"

    invoke-static {v2, v3, v1}, Landroid/icu/impl/locale/LikelySubtags$Data;->getValue(Landroid/icu/impl/UResource$Table;Ljava/lang/String;Landroid/icu/impl/UResource$Value;)Landroid/icu/impl/UResource$Value;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/impl/UResource$Value;->getBinary()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 92
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    new-array v6, v6, [B

    .line 93
    .local v6, "trie":[B
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 95
    const-string v7, "m49"

    invoke-static {v2, v7, v1}, Landroid/icu/impl/locale/LikelySubtags$Data;->getValue(Landroid/icu/impl/UResource$Table;Ljava/lang/String;Landroid/icu/impl/UResource$Value;)Landroid/icu/impl/UResource$Value;

    move-result-object v7

    invoke-virtual {v7}, Landroid/icu/impl/UResource$Value;->getStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 96
    .local v7, "m49":[Ljava/lang/String;
    const-string v8, "lsrnum"

    invoke-static {v2, v8, v1}, Landroid/icu/impl/locale/LikelySubtags$Data;->getValue(Landroid/icu/impl/UResource$Table;Ljava/lang/String;Landroid/icu/impl/UResource$Value;)Landroid/icu/impl/UResource$Value;

    move-result-object v8

    invoke-virtual {v8}, Landroid/icu/impl/UResource$Value;->getIntVector()[I

    move-result-object v8

    invoke-static {v8, v7}, Landroid/icu/impl/locale/LSR;->decodeInts([I[Ljava/lang/String;)[Landroid/icu/impl/locale/LSR;

    move-result-object v8

    .line 97
    .local v8, "lsrs":[Landroid/icu/impl/locale/LSR;
    new-instance v9, Landroid/icu/impl/locale/LikelySubtags$Data;

    invoke-direct {v9, v4, v5, v6, v8}, Landroid/icu/impl/locale/LikelySubtags$Data;-><init>(Ljava/util/Map;Ljava/util/Map;[B[Landroid/icu/impl/locale/LSR;)V

    return-object v9
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 102
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 103
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_44

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_44

    .line 104
    :cond_16
    move-object v2, p1

    check-cast v2, Landroid/icu/impl/locale/LikelySubtags$Data;

    .line 105
    .local v2, "od":Landroid/icu/impl/locale/LikelySubtags$Data;
    iget-object v3, p0, Landroid/icu/impl/locale/LikelySubtags$Data;->languageAliases:Ljava/util/Map;

    iget-object v4, v2, Landroid/icu/impl/locale/LikelySubtags$Data;->languageAliases:Ljava/util/Map;

    .line 106
    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    iget-object v3, p0, Landroid/icu/impl/locale/LikelySubtags$Data;->regionAliases:Ljava/util/Map;

    iget-object v4, v2, Landroid/icu/impl/locale/LikelySubtags$Data;->regionAliases:Ljava/util/Map;

    .line 107
    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    iget-object v3, p0, Landroid/icu/impl/locale/LikelySubtags$Data;->trie:[B

    iget-object v4, v2, Landroid/icu/impl/locale/LikelySubtags$Data;->trie:[B

    .line 108
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_42

    iget-object v3, p0, Landroid/icu/impl/locale/LikelySubtags$Data;->lsrs:[Landroid/icu/impl/locale/LSR;

    iget-object v4, v2, Landroid/icu/impl/locale/LikelySubtags$Data;->lsrs:[Landroid/icu/impl/locale/LSR;

    .line 109
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    goto :goto_43

    :cond_42
    move v0, v1

    .line 105
    :goto_43
    return v0

    .line 103
    .end local v2    # "od":Landroid/icu/impl/locale/LikelySubtags$Data;
    :cond_44
    :goto_44
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 114
    const/4 v0, 0x1

    return v0
.end method
