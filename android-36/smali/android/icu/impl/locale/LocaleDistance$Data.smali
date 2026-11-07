.class public final Landroid/icu/impl/locale/LocaleDistance$Data;
.super Ljava/lang/Object;
.source "LocaleDistance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/LocaleDistance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Data"
.end annotation


# instance fields
.field public blacklist distances:[I

.field public blacklist paradigmLSRs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/icu/impl/locale/LSR;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist partitionArrays:[Ljava/lang/String;

.field public blacklist regionToPartitionsIndex:[B

.field public blacklist trie:[B


# direct methods
.method public constructor blacklist <init>([B[B[Ljava/lang/String;Ljava/util/Set;[I)V
    .registers 6
    .param p1, "trie"    # [B
    .param p2, "regionToPartitionsIndex"    # [B
    .param p3, "partitionArrays"    # [Ljava/lang/String;
    .param p5, "distances"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/icu/impl/locale/LSR;",
            ">;[I)V"
        }
    .end annotation

    .line 119
    .local p4, "paradigmLSRs":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/impl/locale/LSR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Landroid/icu/impl/locale/LocaleDistance$Data;->trie:[B

    .line 121
    iput-object p2, p0, Landroid/icu/impl/locale/LocaleDistance$Data;->regionToPartitionsIndex:[B

    .line 122
    iput-object p3, p0, Landroid/icu/impl/locale/LocaleDistance$Data;->partitionArrays:[Ljava/lang/String;

    .line 123
    iput-object p4, p0, Landroid/icu/impl/locale/LocaleDistance$Data;->paradigmLSRs:Ljava/util/Set;

    .line 124
    iput-object p5, p0, Landroid/icu/impl/locale/LocaleDistance$Data;->distances:[I

    .line 125
    return-void
.end method

.method private static blacklist getValue(Landroid/icu/impl/UResource$Table;Ljava/lang/String;Landroid/icu/impl/UResource$Value;)Landroid/icu/impl/UResource$Value;
    .registers 7
    .param p0, "table"    # Landroid/icu/impl/UResource$Table;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;

    .line 129
    invoke-interface {p0, p1, p2}, Landroid/icu/impl/UResource$Table;->findValue(Ljava/lang/CharSequence;Landroid/icu/impl/UResource$Value;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 133
    return-object p2

    .line 130
    :cond_7
    new-instance v0, Ljava/util/MissingResourceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "match/"

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

.method public static blacklist load()Landroid/icu/impl/locale/LocaleDistance$Data;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .line 138
    sget-object v0, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    sget-object v1, Landroid/icu/impl/ICUResourceBundle$OpenType;->DIRECT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    const-string v2, "android/icu/impl/data/icudata"

    const-string v3, "langInfo"

    invoke-static {v2, v3, v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    .line 141
    .local v0, "langInfo":Landroid/icu/impl/ICUResourceBundle;
    const-string v1, "match"

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getValueWithFallback(Ljava/lang/String;)Landroid/icu/impl/UResource$Value;

    move-result-object v1

    .line 142
    .local v1, "value":Landroid/icu/impl/UResource$Value;
    invoke-virtual {v1}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v2

    .line 144
    .local v2, "matchTable":Landroid/icu/impl/UResource$Table;
    const-string v3, "trie"

    invoke-static {v2, v3, v1}, Landroid/icu/impl/locale/LocaleDistance$Data;->getValue(Landroid/icu/impl/UResource$Table;Ljava/lang/String;Landroid/icu/impl/UResource$Value;)Landroid/icu/impl/UResource$Value;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/impl/UResource$Value;->getBinary()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 145
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v6, v4, [B

    .line 146
    .local v6, "trie":[B
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 148
    const-string v4, "regionToPartitions"

    invoke-static {v2, v4, v1}, Landroid/icu/impl/locale/LocaleDistance$Data;->getValue(Landroid/icu/impl/UResource$Table;Ljava/lang/String;Landroid/icu/impl/UResource$Value;)Landroid/icu/impl/UResource$Value;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/impl/UResource$Value;->getBinary()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 149
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v7, v4, [B

    .line 150
    .local v7, "regionToPartitions":[B
    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 151
    array-length v4, v7

    const/16 v5, 0x68d

    const-string v8, ""

    if-lt v4, v5, :cond_a4

    .line 156
    const-string v4, "partitions"

    invoke-static {v2, v4, v1}, Landroid/icu/impl/locale/LocaleDistance$Data;->getValue(Landroid/icu/impl/UResource$Table;Ljava/lang/String;Landroid/icu/impl/UResource$Value;)Landroid/icu/impl/UResource$Value;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/impl/UResource$Value;->getStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 159
    .local v4, "partitions":[Ljava/lang/String;
    const-string v5, "paradigmnum"

    invoke-interface {v2, v5, v1}, Landroid/icu/impl/UResource$Table;->findValue(Ljava/lang/CharSequence;Landroid/icu/impl/UResource$Value;)Z

    move-result v9

    if-eqz v9, :cond_80

    .line 160
    const-string v9, "likely"

    invoke-virtual {v0, v9}, Landroid/icu/impl/ICUResourceBundle;->getValueWithFallback(Ljava/lang/String;)Landroid/icu/impl/UResource$Value;

    move-result-object v9

    invoke-virtual {v9}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v9

    const-string v10, "m49"

    invoke-static {v9, v10, v1}, Landroid/icu/impl/locale/LocaleDistance$Data;->getValue(Landroid/icu/impl/UResource$Table;Ljava/lang/String;Landroid/icu/impl/UResource$Value;)Landroid/icu/impl/UResource$Value;

    move-result-object v9

    .line 161
    invoke-virtual {v9}, Landroid/icu/impl/UResource$Value;->getStringArray()[Ljava/lang/String;

    move-result-object v9

    .line 162
    .local v9, "m49":[Ljava/lang/String;
    invoke-static {v2, v5, v1}, Landroid/icu/impl/locale/LocaleDistance$Data;->getValue(Landroid/icu/impl/UResource$Table;Ljava/lang/String;Landroid/icu/impl/UResource$Value;)Landroid/icu/impl/UResource$Value;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/impl/UResource$Value;->getIntVector()[I

    move-result-object v5

    invoke-static {v5, v9}, Landroid/icu/impl/locale/LSR;->decodeInts([I[Ljava/lang/String;)[Landroid/icu/impl/locale/LSR;

    move-result-object v5

    .line 164
    .local v5, "paradigms":[Landroid/icu/impl/locale/LSR;
    new-instance v10, Ljava/util/LinkedHashSet;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 165
    .end local v5    # "paradigms":[Landroid/icu/impl/locale/LSR;
    .end local v9    # "m49":[Ljava/lang/String;
    .local v10, "paradigmLSRs":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/impl/locale/LSR;>;"
    move-object v9, v10

    goto :goto_85

    .line 166
    .end local v10    # "paradigmLSRs":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/impl/locale/LSR;>;"
    :cond_80
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v10

    move-object v9, v10

    .line 169
    .local v9, "paradigmLSRs":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/impl/locale/LSR;>;"
    :goto_85
    const-string v5, "distances"

    invoke-static {v2, v5, v1}, Landroid/icu/impl/locale/LocaleDistance$Data;->getValue(Landroid/icu/impl/UResource$Table;Ljava/lang/String;Landroid/icu/impl/UResource$Value;)Landroid/icu/impl/UResource$Value;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/impl/UResource$Value;->getIntVector()[I

    move-result-object v10

    .line 170
    .local v10, "distances":[I
    array-length v5, v10

    const/4 v11, 0x4

    if-lt v5, v11, :cond_9a

    .line 175
    new-instance v5, Landroid/icu/impl/locale/LocaleDistance$Data;

    move-object v8, v4

    .end local v4    # "partitions":[Ljava/lang/String;
    .local v8, "partitions":[Ljava/lang/String;
    invoke-direct/range {v5 .. v10}, Landroid/icu/impl/locale/LocaleDistance$Data;-><init>([B[B[Ljava/lang/String;Ljava/util/Set;[I)V

    .end local v8    # "partitions":[Ljava/lang/String;
    .restart local v4    # "partitions":[Ljava/lang/String;
    return-object v5

    .line 171
    :cond_9a
    new-instance v5, Ljava/util/MissingResourceException;

    const-string v11, "langInfo.res intvector too short"

    const-string v12, "match/distances"

    invoke-direct {v5, v11, v8, v12}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v5

    .line 152
    .end local v4    # "partitions":[Ljava/lang/String;
    .end local v9    # "paradigmLSRs":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/impl/locale/LSR;>;"
    .end local v10    # "distances":[I
    :cond_a4
    new-instance v4, Ljava/util/MissingResourceException;

    const-string v5, "langInfo.res binary data too short"

    const-string v9, "match/regionToPartitions"

    invoke-direct {v4, v5, v8, v9}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 180
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 181
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_4e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_4e

    .line 182
    :cond_16
    move-object v2, p1

    check-cast v2, Landroid/icu/impl/locale/LocaleDistance$Data;

    .line 183
    .local v2, "od":Landroid/icu/impl/locale/LocaleDistance$Data;
    iget-object v3, p0, Landroid/icu/impl/locale/LocaleDistance$Data;->trie:[B

    iget-object v4, v2, Landroid/icu/impl/locale/LocaleDistance$Data;->trie:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_4c

    iget-object v3, p0, Landroid/icu/impl/locale/LocaleDistance$Data;->regionToPartitionsIndex:[B

    iget-object v4, v2, Landroid/icu/impl/locale/LocaleDistance$Data;->regionToPartitionsIndex:[B

    .line 184
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_4c

    iget-object v3, p0, Landroid/icu/impl/locale/LocaleDistance$Data;->partitionArrays:[Ljava/lang/String;

    iget-object v4, v2, Landroid/icu/impl/locale/LocaleDistance$Data;->partitionArrays:[Ljava/lang/String;

    .line 185
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    iget-object v3, p0, Landroid/icu/impl/locale/LocaleDistance$Data;->paradigmLSRs:Ljava/util/Set;

    iget-object v4, v2, Landroid/icu/impl/locale/LocaleDistance$Data;->paradigmLSRs:Ljava/util/Set;

    .line 186
    invoke-interface {v3, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    iget-object v3, p0, Landroid/icu/impl/locale/LocaleDistance$Data;->distances:[I

    iget-object v4, v2, Landroid/icu/impl/locale/LocaleDistance$Data;->distances:[I

    .line 187
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_4c

    goto :goto_4d

    :cond_4c
    move v0, v1

    .line 183
    :goto_4d
    return v0

    .line 181
    .end local v2    # "od":Landroid/icu/impl/locale/LocaleDistance$Data;
    :cond_4e
    :goto_4e
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 192
    const/4 v0, 0x1

    return v0
.end method
