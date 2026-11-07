.class public final Landroid/icu/impl/CharacterPropertiesImpl;
.super Ljava/lang/Object;
.source "CharacterPropertiesImpl.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist NUM_INCLUSIONS:I = 0x2f

.field private static final blacklist inclusions:[Landroid/icu/text/UnicodeSet;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 15
    nop

    .line 25
    const/16 v0, 0x2f

    new-array v0, v0, [Landroid/icu/text/UnicodeSet;

    sput-object v0, Landroid/icu/impl/CharacterPropertiesImpl;->inclusions:[Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized blacklist clear()V
    .registers 4

    const-class v0, Landroid/icu/impl/CharacterPropertiesImpl;

    monitor-enter v0

    .line 29
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    sget-object v2, Landroid/icu/impl/CharacterPropertiesImpl;->inclusions:[Landroid/icu/text/UnicodeSet;

    array-length v2, v2

    if-ge v1, v2, :cond_11

    .line 30
    sget-object v2, Landroid/icu/impl/CharacterPropertiesImpl;->inclusions:[Landroid/icu/text/UnicodeSet;

    const/4 v3, 0x0

    aput-object v3, v2, v1
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 29
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 32
    .end local v1    # "i":I
    :cond_11
    monitor-exit v0

    return-void

    .line 28
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public static declared-synchronized blacklist getInclusionsForProperty(I)Landroid/icu/text/UnicodeSet;
    .registers 4
    .param p0, "prop"    # I

    const-class v0, Landroid/icu/impl/CharacterPropertiesImpl;

    monitor-enter v0

    .line 136
    const/16 v1, 0x1000

    if-gt v1, p0, :cond_11

    const/16 v1, 0x101b

    if-ge p0, v1, :cond_11

    .line 137
    :try_start_b
    invoke-static {p0}, Landroid/icu/impl/CharacterPropertiesImpl;->getIntPropInclusions(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_1d

    monitor-exit v0

    return-object v1

    .line 139
    :cond_11
    :try_start_11
    sget-object v1, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {v1, p0}, Landroid/icu/impl/UCharacterProperty;->getSource(I)I

    move-result v1

    .line 140
    .local v1, "src":I
    invoke-static {v1}, Landroid/icu/impl/CharacterPropertiesImpl;->getInclusionsForSource(I)Landroid/icu/text/UnicodeSet;

    move-result-object v2
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_1d

    monitor-exit v0

    return-object v2

    .line 135
    .end local v1    # "src":I
    .end local p0    # "prop":I
    :catchall_1d
    move-exception p0

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method private static blacklist getInclusionsForSource(I)Landroid/icu/text/UnicodeSet;
    .registers 5
    .param p0, "src"    # I

    .line 35
    sget-object v0, Landroid/icu/impl/CharacterPropertiesImpl;->inclusions:[Landroid/icu/text/UnicodeSet;

    aget-object v0, v0, p0

    if-nez v0, :cond_b5

    .line 36
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 37
    .local v0, "incl":Landroid/icu/text/UnicodeSet;
    packed-switch p0, :pswitch_data_ba

    .line 94
    :pswitch_e
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInclusions(unknown src "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :pswitch_2d
    invoke-static {v0}, Landroid/icu/impl/UCharacterProperty;->mcm_addPropertyStarts(Landroid/icu/text/UnicodeSet;)V

    .line 89
    goto/16 :goto_ad

    .line 91
    :pswitch_32
    sget-object v1, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {v1, v0}, Landroid/icu/impl/UCharacterProperty;->ublock_addPropertyStarts(Landroid/icu/text/UnicodeSet;)V

    .line 92
    goto/16 :goto_ad

    .line 85
    :pswitch_39
    invoke-static {v0}, Landroid/icu/impl/UCharacterProperty;->mathCompat_addPropertyStarts(Landroid/icu/text/UnicodeSet;)V

    .line 86
    goto/16 :goto_ad

    .line 81
    :pswitch_3e
    const/16 v1, 0x2ffe

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 82
    const/16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 83
    goto :goto_ad

    .line 76
    :pswitch_49
    sget-object v1, Landroid/icu/impl/EmojiProps;->INSTANCE:Landroid/icu/impl/EmojiProps;

    invoke-virtual {v1, v0}, Landroid/icu/impl/EmojiProps;->addPropertyStarts(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 77
    goto :goto_ad

    .line 73
    :pswitch_4f
    invoke-static {p0, v0}, Landroid/icu/impl/UCharacterProperty;->ulayout_addPropertyStarts(ILandroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 74
    goto :goto_ad

    .line 62
    :pswitch_53
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v1

    iget-object v1, v1, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v1, v0}, Landroid/icu/impl/Normalizer2Impl;->addCanonIterPropertyStarts(Landroid/icu/text/UnicodeSet;)V

    .line 63
    goto :goto_ad

    .line 59
    :pswitch_5d
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFKC_CFInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v1

    iget-object v1, v1, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v1, v0}, Landroid/icu/impl/Normalizer2Impl;->addPropertyStarts(Landroid/icu/text/UnicodeSet;)V

    .line 60
    goto :goto_ad

    .line 56
    :pswitch_67
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFKCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v1

    iget-object v1, v1, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v1, v0}, Landroid/icu/impl/Normalizer2Impl;->addPropertyStarts(Landroid/icu/text/UnicodeSet;)V

    .line 57
    goto :goto_ad

    .line 53
    :pswitch_71
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v1

    iget-object v1, v1, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v1, v0}, Landroid/icu/impl/Normalizer2Impl;->addPropertyStarts(Landroid/icu/text/UnicodeSet;)V

    .line 54
    goto :goto_ad

    .line 49
    :pswitch_7b
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v1

    iget-object v1, v1, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v1, v0}, Landroid/icu/impl/Normalizer2Impl;->addPropertyStarts(Landroid/icu/text/UnicodeSet;)V

    .line 50
    sget-object v1, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    invoke-virtual {v1, v0}, Landroid/icu/impl/UCaseProps;->addPropertyStarts(Landroid/icu/text/UnicodeSet;)V

    .line 51
    goto :goto_ad

    .line 45
    :pswitch_8a
    sget-object v1, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {v1, v0}, Landroid/icu/impl/UCharacterProperty;->addPropertyStarts(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 46
    sget-object v1, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {v1, v0}, Landroid/icu/impl/UCharacterProperty;->upropsvec_addPropertyStarts(Landroid/icu/text/UnicodeSet;)V

    .line 47
    goto :goto_ad

    .line 68
    :pswitch_95
    sget-object v1, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    invoke-virtual {v1, v0}, Landroid/icu/impl/UBiDiProps;->addPropertyStarts(Landroid/icu/text/UnicodeSet;)V

    .line 69
    goto :goto_ad

    .line 65
    :pswitch_9b
    sget-object v1, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    invoke-virtual {v1, v0}, Landroid/icu/impl/UCaseProps;->addPropertyStarts(Landroid/icu/text/UnicodeSet;)V

    .line 66
    goto :goto_ad

    .line 42
    :pswitch_a1
    sget-object v1, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {v1, v0}, Landroid/icu/impl/UCharacterProperty;->upropsvec_addPropertyStarts(Landroid/icu/text/UnicodeSet;)V

    .line 43
    goto :goto_ad

    .line 39
    :pswitch_a7
    sget-object v1, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {v1, v0}, Landroid/icu/impl/UCharacterProperty;->addPropertyStarts(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 40
    nop

    .line 99
    :goto_ad
    sget-object v1, Landroid/icu/impl/CharacterPropertiesImpl;->inclusions:[Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->compact()Landroid/icu/text/UnicodeSet;

    move-result-object v2

    aput-object v2, v1, p0

    .line 101
    .end local v0    # "incl":Landroid/icu/text/UnicodeSet;
    :cond_b5
    sget-object v0, Landroid/icu/impl/CharacterPropertiesImpl;->inclusions:[Landroid/icu/text/UnicodeSet;

    aget-object v0, v0, p0

    return-object v0

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_a7
        :pswitch_a1
        :pswitch_e
        :pswitch_9b
        :pswitch_95
        :pswitch_8a
        :pswitch_7b
        :pswitch_71
        :pswitch_67
        :pswitch_5d
        :pswitch_53
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_49
        :pswitch_3e
        :pswitch_39
        :pswitch_32
        :pswitch_2d
    .end packed-switch
.end method

.method private static blacklist getIntPropInclusions(I)Landroid/icu/text/UnicodeSet;
    .registers 11
    .param p0, "prop"    # I

    .line 105
    nop

    .line 106
    add-int/lit8 v0, p0, 0x14

    add-int/lit16 v0, v0, -0x1000

    .line 107
    .local v0, "inclIndex":I
    sget-object v1, Landroid/icu/impl/CharacterPropertiesImpl;->inclusions:[Landroid/icu/text/UnicodeSet;

    aget-object v1, v1, v0

    if-eqz v1, :cond_10

    .line 108
    sget-object v1, Landroid/icu/impl/CharacterPropertiesImpl;->inclusions:[Landroid/icu/text/UnicodeSet;

    aget-object v1, v1, v0

    return-object v1

    .line 110
    :cond_10
    sget-object v1, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {v1, p0}, Landroid/icu/impl/UCharacterProperty;->getSource(I)I

    move-result v1

    .line 111
    .local v1, "src":I
    invoke-static {v1}, Landroid/icu/impl/CharacterPropertiesImpl;->getInclusionsForSource(I)Landroid/icu/text/UnicodeSet;

    move-result-object v2

    .line 113
    .local v2, "incl":Landroid/icu/text/UnicodeSet;
    new-instance v3, Landroid/icu/text/UnicodeSet;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    .line 114
    .local v3, "intPropIncl":Landroid/icu/text/UnicodeSet;
    invoke-virtual {v2}, Landroid/icu/text/UnicodeSet;->getRangeCount()I

    move-result v4

    .line 115
    .local v4, "numRanges":I
    const/4 v5, 0x0

    .line 116
    .local v5, "prevValue":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_26
    if-ge v6, v4, :cond_42

    .line 117
    invoke-virtual {v2, v6}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v7

    .line 118
    .local v7, "rangeEnd":I
    invoke-virtual {v2, v6}, Landroid/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v8

    .local v8, "c":I
    :goto_30
    if-gt v8, v7, :cond_3f

    .line 120
    invoke-static {v8, p0}, Landroid/icu/lang/UCharacter;->getIntPropertyValue(II)I

    move-result v9

    .line 121
    .local v9, "value":I
    if-eq v9, v5, :cond_3c

    .line 122
    invoke-virtual {v3, v8}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 123
    move v5, v9

    .line 118
    .end local v9    # "value":I
    :cond_3c
    add-int/lit8 v8, v8, 0x1

    goto :goto_30

    .line 116
    .end local v7    # "rangeEnd":I
    .end local v8    # "c":I
    :cond_3f
    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    .line 129
    .end local v6    # "i":I
    :cond_42
    sget-object v6, Landroid/icu/impl/CharacterPropertiesImpl;->inclusions:[Landroid/icu/text/UnicodeSet;

    invoke-virtual {v3}, Landroid/icu/text/UnicodeSet;->compact()Landroid/icu/text/UnicodeSet;

    move-result-object v7

    aput-object v7, v6, v0

    return-object v7
.end method
