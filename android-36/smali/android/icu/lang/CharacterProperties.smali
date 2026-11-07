.class public final Landroid/icu/lang/CharacterProperties;
.super Ljava/lang/Object;
.source "CharacterProperties.java"


# static fields
.field private static final blacklist maps:[Landroid/icu/util/CodePointMap;

.field private static final blacklist sets:[Landroid/icu/text/UnicodeSet;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 29
    const/16 v0, 0x4c

    new-array v0, v0, [Landroid/icu/text/UnicodeSet;

    sput-object v0, Landroid/icu/lang/CharacterProperties;->sets:[Landroid/icu/text/UnicodeSet;

    .line 30
    const/16 v0, 0x1b

    new-array v0, v0, [Landroid/icu/util/CodePointMap;

    sput-object v0, Landroid/icu/lang/CharacterProperties;->maps:[Landroid/icu/util/CodePointMap;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist getBinaryPropertySet(I)Landroid/icu/text/UnicodeSet;
    .registers 5
    .param p0, "property"    # I

    .line 127
    if-ltz p0, :cond_1d

    const/16 v0, 0x4c

    if-le v0, p0, :cond_1d

    .line 131
    sget-object v0, Landroid/icu/lang/CharacterProperties;->sets:[Landroid/icu/text/UnicodeSet;

    monitor-enter v0

    .line 132
    :try_start_9
    sget-object v1, Landroid/icu/lang/CharacterProperties;->sets:[Landroid/icu/text/UnicodeSet;

    aget-object v1, v1, p0

    .line 133
    .local v1, "set":Landroid/icu/text/UnicodeSet;
    if-nez v1, :cond_18

    .line 134
    sget-object v2, Landroid/icu/lang/CharacterProperties;->sets:[Landroid/icu/text/UnicodeSet;

    invoke-static {p0}, Landroid/icu/lang/CharacterProperties;->makeSet(I)Landroid/icu/text/UnicodeSet;

    move-result-object v3

    move-object v1, v3

    aput-object v3, v2, p0

    .line 136
    :cond_18
    monitor-exit v0

    return-object v1

    .line 137
    .end local v1    # "set":Landroid/icu/text/UnicodeSet;
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_1a

    throw v1

    .line 128
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a constant for a UProperty binary property"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final blacklist getIntPropertyMap(I)Landroid/icu/util/CodePointMap;
    .registers 6
    .param p0, "property"    # I

    .line 156
    const/16 v0, 0x1000

    if-lt p0, v0, :cond_23

    const/16 v0, 0x101b

    if-le v0, p0, :cond_23

    .line 160
    sget-object v0, Landroid/icu/lang/CharacterProperties;->maps:[Landroid/icu/util/CodePointMap;

    monitor-enter v0

    .line 161
    :try_start_b
    sget-object v1, Landroid/icu/lang/CharacterProperties;->maps:[Landroid/icu/util/CodePointMap;

    add-int/lit16 v2, p0, -0x1000

    aget-object v1, v1, v2

    .line 162
    .local v1, "map":Landroid/icu/util/CodePointMap;
    if-nez v1, :cond_1e

    .line 163
    sget-object v2, Landroid/icu/lang/CharacterProperties;->maps:[Landroid/icu/util/CodePointMap;

    add-int/lit16 v3, p0, -0x1000

    invoke-static {p0}, Landroid/icu/lang/CharacterProperties;->makeMap(I)Landroid/icu/util/CodePointMap;

    move-result-object v4

    move-object v1, v4

    aput-object v4, v2, v3

    .line 165
    :cond_1e
    monitor-exit v0

    return-object v1

    .line 166
    .end local v1    # "map":Landroid/icu/util/CodePointMap;
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_20

    throw v1

    .line 157
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a constant for a UProperty int property"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist makeMap(I)Landroid/icu/util/CodePointMap;
    .registers 12
    .param p0, "property"    # I

    .line 71
    const/16 v0, 0x100a

    if-ne p0, v0, :cond_7

    const/16 v0, 0x67

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 72
    .local v0, "nullValue":I
    :goto_8
    new-instance v1, Landroid/icu/util/MutableCodePointTrie;

    invoke-direct {v1, v0, v0}, Landroid/icu/util/MutableCodePointTrie;-><init>(II)V

    .line 73
    .local v1, "mutableTrie":Landroid/icu/util/MutableCodePointTrie;
    invoke-static {p0}, Landroid/icu/impl/CharacterPropertiesImpl;->getInclusionsForProperty(I)Landroid/icu/text/UnicodeSet;

    move-result-object v2

    .line 74
    .local v2, "inclusions":Landroid/icu/text/UnicodeSet;
    invoke-virtual {v2}, Landroid/icu/text/UnicodeSet;->getRangeCount()I

    move-result v3

    .line 75
    .local v3, "numRanges":I
    const/4 v4, 0x0

    .line 76
    .local v4, "start":I
    move v5, v0

    .line 78
    .local v5, "value":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_18
    if-ge v6, v3, :cond_39

    .line 79
    invoke-virtual {v2, v6}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v7

    .line 80
    .local v7, "rangeEnd":I
    invoke-virtual {v2, v6}, Landroid/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v8

    .local v8, "c":I
    :goto_22
    if-gt v8, v7, :cond_36

    .line 82
    invoke-static {v8, p0}, Landroid/icu/lang/UCharacter;->getIntPropertyValue(II)I

    move-result v9

    .line 83
    .local v9, "nextValue":I
    if-eq v5, v9, :cond_33

    .line 84
    if-eq v5, v0, :cond_31

    .line 85
    add-int/lit8 v10, v8, -0x1

    invoke-virtual {v1, v4, v10, v5}, Landroid/icu/util/MutableCodePointTrie;->setRange(III)V

    .line 87
    :cond_31
    move v4, v8

    .line 88
    move v5, v9

    .line 80
    .end local v9    # "nextValue":I
    :cond_33
    add-int/lit8 v8, v8, 0x1

    goto :goto_22

    .line 78
    .end local v7    # "rangeEnd":I
    .end local v8    # "c":I
    :cond_36
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    .line 92
    .end local v6    # "i":I
    :cond_39
    if-eqz v5, :cond_41

    .line 93
    const v6, 0x10ffff

    invoke-virtual {v1, v4, v6, v5}, Landroid/icu/util/MutableCodePointTrie;->setRange(III)V

    .line 97
    :cond_41
    const/16 v6, 0x1000

    if-eq p0, v6, :cond_4d

    const/16 v6, 0x1005

    if-ne p0, v6, :cond_4a

    goto :goto_4d

    .line 100
    :cond_4a
    sget-object v6, Landroid/icu/util/CodePointTrie$Type;->SMALL:Landroid/icu/util/CodePointTrie$Type;

    .local v6, "type":Landroid/icu/util/CodePointTrie$Type;
    goto :goto_4f

    .line 98
    .end local v6    # "type":Landroid/icu/util/CodePointTrie$Type;
    :cond_4d
    :goto_4d
    sget-object v6, Landroid/icu/util/CodePointTrie$Type;->FAST:Landroid/icu/util/CodePointTrie$Type;

    .line 104
    .restart local v6    # "type":Landroid/icu/util/CodePointTrie$Type;
    :goto_4f
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getIntPropertyMaxValue(I)I

    move-result v7

    .line 105
    .local v7, "max":I
    const/16 v8, 0xff

    if-gt v7, v8, :cond_5a

    .line 106
    sget-object v8, Landroid/icu/util/CodePointTrie$ValueWidth;->BITS_8:Landroid/icu/util/CodePointTrie$ValueWidth;

    .local v8, "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    goto :goto_64

    .line 107
    .end local v8    # "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    :cond_5a
    const v8, 0xffff

    if-gt v7, v8, :cond_62

    .line 108
    sget-object v8, Landroid/icu/util/CodePointTrie$ValueWidth;->BITS_16:Landroid/icu/util/CodePointTrie$ValueWidth;

    .restart local v8    # "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    goto :goto_64

    .line 110
    .end local v8    # "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    :cond_62
    sget-object v8, Landroid/icu/util/CodePointTrie$ValueWidth;->BITS_32:Landroid/icu/util/CodePointTrie$ValueWidth;

    .line 112
    .restart local v8    # "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    :goto_64
    invoke-virtual {v1, v6, v8}, Landroid/icu/util/MutableCodePointTrie;->buildImmutable(Landroid/icu/util/CodePointTrie$Type;Landroid/icu/util/CodePointTrie$ValueWidth;)Landroid/icu/util/CodePointTrie;

    move-result-object v9

    return-object v9
.end method

.method private static blacklist makeSet(I)Landroid/icu/text/UnicodeSet;
    .registers 9
    .param p0, "property"    # I

    .line 33
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 34
    .local v0, "set":Landroid/icu/text/UnicodeSet;
    const/16 v1, 0x41

    if-gt v1, p0, :cond_1b

    const/16 v2, 0x47

    if-gt p0, v2, :cond_1b

    .line 36
    sget-object v3, Landroid/icu/impl/EmojiProps;->INSTANCE:Landroid/icu/impl/EmojiProps;

    invoke-virtual {v3, p0, v0}, Landroid/icu/impl/EmojiProps;->addStrings(ILandroid/icu/text/UnicodeSet;)V

    .line 37
    if-eq p0, v1, :cond_1b

    if-eq p0, v2, :cond_1b

    .line 39
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v1

    return-object v1

    .line 43
    :cond_1b
    invoke-static {p0}, Landroid/icu/impl/CharacterPropertiesImpl;->getInclusionsForProperty(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    .line 44
    .local v1, "inclusions":Landroid/icu/text/UnicodeSet;
    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->getRangeCount()I

    move-result v2

    .line 45
    .local v2, "numRanges":I
    const/4 v3, -0x1

    .line 47
    .local v3, "startHasProperty":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_25
    if-ge v4, v2, :cond_49

    .line 48
    invoke-virtual {v1, v4}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v5

    .line 49
    .local v5, "rangeEnd":I
    invoke-virtual {v1, v4}, Landroid/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v6

    .local v6, "c":I
    :goto_2f
    if-gt v6, v5, :cond_46

    .line 51
    invoke-static {v6, p0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 52
    if-gez v3, :cond_43

    .line 54
    move v3, v6

    goto :goto_43

    .line 56
    :cond_3b
    if-ltz v3, :cond_43

    .line 58
    add-int/lit8 v7, v6, -0x1

    invoke-virtual {v0, v3, v7}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    .line 59
    const/4 v3, -0x1

    .line 49
    :cond_43
    :goto_43
    add-int/lit8 v6, v6, 0x1

    goto :goto_2f

    .line 47
    .end local v5    # "rangeEnd":I
    .end local v6    # "c":I
    :cond_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 63
    .end local v4    # "i":I
    :cond_49
    if-ltz v3, :cond_51

    .line 64
    const v4, 0x10ffff

    invoke-virtual {v0, v3, v4}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    .line 67
    :cond_51
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v4

    return-object v4
.end method
