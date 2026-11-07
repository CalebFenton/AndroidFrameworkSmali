.class Landroid/icu/lang/UCharacterNameIterator;
.super Ljava/lang/Object;
.source "UCharacterNameIterator.java"

# interfaces
.implements Landroid/icu/util/ValueIterator;


# static fields
.field private static blacklist GROUP_LENGTHS_:[C

.field private static blacklist GROUP_OFFSETS_:[C


# instance fields
.field private blacklist m_algorithmIndex_:I

.field private blacklist m_choice_:I

.field private blacklist m_current_:I

.field private blacklist m_groupIndex_:I

.field private blacklist m_limit_:I

.field private blacklist m_name_:Landroid/icu/impl/UCharacterName;

.field private blacklist m_start_:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 220
    const/16 v0, 0x21

    new-array v1, v0, [C

    sput-object v1, Landroid/icu/lang/UCharacterNameIterator;->GROUP_OFFSETS_:[C

    .line 222
    new-array v0, v0, [C

    sput-object v0, Landroid/icu/lang/UCharacterNameIterator;->GROUP_LENGTHS_:[C

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/icu/impl/UCharacterName;I)V
    .registers 5
    .param p1, "name"    # Landroid/icu/impl/UCharacterName;
    .param p2, "choice"    # I

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    .line 216
    iput v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    .line 176
    if-eqz p1, :cond_1a

    .line 179
    iput-object p1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    .line 181
    iput p2, p0, Landroid/icu/lang/UCharacterNameIterator;->m_choice_:I

    .line 182
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_start_:I

    .line 183
    const/high16 v0, 0x110000

    iput v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_limit_:I

    .line 184
    iget v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_start_:I

    iput v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    .line 185
    return-void

    .line 177
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "UCharacterName name argument cannot be null. Missing unames.icu?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist iterateExtended(Landroid/icu/util/ValueIterator$Element;I)Z
    .registers 6
    .param p1, "result"    # Landroid/icu/util/ValueIterator$Element;
    .param p2, "limit"    # I

    .line 330
    nop

    :goto_1
    iget v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    const/4 v1, 0x1

    if-ge v0, p2, :cond_24

    .line 331
    iget-object v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    iget v2, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    invoke-virtual {v0, v2}, Landroid/icu/impl/UCharacterName;->getExtendedOr10Name(I)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1e

    .line 333
    iget v1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    iput v1, p1, Landroid/icu/util/ValueIterator$Element;->integer:I

    .line 334
    iput-object v0, p1, Landroid/icu/util/ValueIterator$Element;->value:Ljava/lang/Object;

    .line 335
    const/4 v1, 0x0

    return v1

    .line 337
    :cond_1e
    iget v2, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    .line 338
    .end local v0    # "name":Ljava/lang/String;
    goto :goto_1

    .line 339
    :cond_24
    return v1
.end method

.method private blacklist iterateGroup(Landroid/icu/util/ValueIterator$Element;I)Z
    .registers 9
    .param p1, "result"    # Landroid/icu/util/ValueIterator$Element;
    .param p2, "limit"    # I

    .line 274
    iget v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    if-gez v0, :cond_e

    .line 275
    iget-object v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    iget v1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    invoke-virtual {v0, v1}, Landroid/icu/impl/UCharacterName;->getGroup(I)I

    move-result v0

    iput v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    .line 278
    :cond_e
    :goto_e
    iget v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    iget-object v1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    iget v1, v1, Landroid/icu/impl/UCharacterName;->m_groupcount_:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_69

    iget v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    if-ge v0, p2, :cond_69

    .line 281
    iget v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    invoke-static {v0}, Landroid/icu/impl/UCharacterName;->getCodepointMSB(I)I

    move-result v0

    .line 282
    .local v0, "startMSB":I
    iget-object v1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    invoke-virtual {v1, v3}, Landroid/icu/impl/UCharacterName;->getGroupMSB(I)I

    move-result v1

    .line 283
    .local v1, "gMSB":I
    const/4 v3, 0x0

    if-ne v0, v1, :cond_4b

    .line 284
    add-int/lit8 v4, p2, -0x1

    invoke-static {v4}, Landroid/icu/impl/UCharacterName;->getCodepointMSB(I)I

    move-result v4

    if-ne v0, v4, :cond_39

    .line 287
    invoke-direct {p0, p1, p2}, Landroid/icu/lang/UCharacterNameIterator;->iterateSingleGroup(Landroid/icu/util/ValueIterator$Element;I)Z

    move-result v2

    return v2

    .line 291
    :cond_39
    nop

    .line 292
    invoke-static {v1}, Landroid/icu/impl/UCharacterName;->getGroupLimit(I)I

    move-result v4

    .line 291
    invoke-direct {p0, p1, v4}, Landroid/icu/lang/UCharacterNameIterator;->iterateSingleGroup(Landroid/icu/util/ValueIterator$Element;I)Z

    move-result v4

    if-nez v4, :cond_45

    .line 293
    return v3

    .line 295
    :cond_45
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    add-int/2addr v3, v2

    iput v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    goto :goto_68

    .line 297
    :cond_4b
    if-le v0, v1, :cond_53

    .line 300
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    add-int/2addr v3, v2

    iput v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    goto :goto_68

    .line 303
    :cond_53
    invoke-static {v1}, Landroid/icu/impl/UCharacterName;->getGroupMin(I)I

    move-result v2

    .line 304
    .local v2, "gMIN":I
    if-le v2, p2, :cond_5a

    .line 305
    move v2, p2

    .line 307
    :cond_5a
    iget v4, p0, Landroid/icu/lang/UCharacterNameIterator;->m_choice_:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_66

    .line 308
    invoke-direct {p0, p1, v2}, Landroid/icu/lang/UCharacterNameIterator;->iterateExtended(Landroid/icu/util/ValueIterator$Element;I)Z

    move-result v4

    if-nez v4, :cond_66

    .line 309
    return v3

    .line 312
    :cond_66
    iput v2, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    .line 314
    .end local v0    # "startMSB":I
    .end local v1    # "gMSB":I
    .end local v2    # "gMIN":I
    :goto_68
    goto :goto_e

    .line 316
    :cond_69
    return v2
.end method

.method private blacklist iterateSingleGroup(Landroid/icu/util/ValueIterator$Element;I)Z
    .registers 12
    .param p1, "result"    # Landroid/icu/util/ValueIterator$Element;
    .param p2, "limit"    # I

    .line 238
    sget-object v0, Landroid/icu/lang/UCharacterNameIterator;->GROUP_OFFSETS_:[C

    monitor-enter v0

    .line 239
    :try_start_3
    sget-object v1, Landroid/icu/lang/UCharacterNameIterator;->GROUP_LENGTHS_:[C

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_62

    .line 240
    :try_start_6
    iget-object v2, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    sget-object v4, Landroid/icu/lang/UCharacterNameIterator;->GROUP_OFFSETS_:[C

    sget-object v5, Landroid/icu/lang/UCharacterNameIterator;->GROUP_LENGTHS_:[C

    invoke-virtual {v2, v3, v4, v5}, Landroid/icu/impl/UCharacterName;->getGroupLengths(I[C[C)I

    move-result v2

    .line 242
    .local v2, "index":I
    :goto_12
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    const/4 v4, 0x1

    if-ge v3, p2, :cond_5c

    .line 243
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    invoke-static {v3}, Landroid/icu/impl/UCharacterName;->getGroupOffset(I)I

    move-result v3

    .line 244
    .local v3, "offset":I
    iget-object v5, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    sget-object v6, Landroid/icu/lang/UCharacterNameIterator;->GROUP_OFFSETS_:[C

    aget-char v6, v6, v3

    add-int/2addr v6, v2

    sget-object v7, Landroid/icu/lang/UCharacterNameIterator;->GROUP_LENGTHS_:[C

    aget-char v7, v7, v3

    iget v8, p0, Landroid/icu/lang/UCharacterNameIterator;->m_choice_:I

    invoke-virtual {v5, v6, v7, v8}, Landroid/icu/impl/UCharacterName;->getGroupName(III)Ljava/lang/String;

    move-result-object v5

    .line 247
    .local v5, "name":Ljava/lang/String;
    if-eqz v5, :cond_36

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_44

    :cond_36
    iget v6, p0, Landroid/icu/lang/UCharacterNameIterator;->m_choice_:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_44

    .line 249
    iget-object v6, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    iget v7, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    invoke-virtual {v6, v7}, Landroid/icu/impl/UCharacterName;->getExtendedName(I)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 251
    :cond_44
    if-eqz v5, :cond_56

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_56

    .line 252
    iget v4, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    iput v4, p1, Landroid/icu/util/ValueIterator$Element;->integer:I

    .line 253
    iput-object v5, p1, Landroid/icu/util/ValueIterator$Element;->value:Ljava/lang/Object;

    .line 254
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_6 .. :try_end_53} :catchall_5f

    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_62

    const/4 v0, 0x0

    return v0

    .line 256
    :cond_56
    :try_start_56
    iget v6, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    add-int/2addr v6, v4

    iput v6, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    .line 257
    .end local v3    # "offset":I
    .end local v5    # "name":Ljava/lang/String;
    goto :goto_12

    .line 258
    .end local v2    # "index":I
    :cond_5c
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_5f

    .line 259
    :try_start_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_62

    .line 260
    return v4

    .line 258
    :catchall_5f
    move-exception v2

    :try_start_60
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    .end local p0    # "this":Landroid/icu/lang/UCharacterNameIterator;
    .end local p1    # "result":Landroid/icu/util/ValueIterator$Element;
    .end local p2    # "limit":I
    :try_start_61
    throw v2

    .line 259
    .restart local p0    # "this":Landroid/icu/lang/UCharacterNameIterator;
    .restart local p1    # "result":Landroid/icu/util/ValueIterator$Element;
    .restart local p2    # "limit":I
    :catchall_62
    move-exception v1

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_62

    throw v1
.end method


# virtual methods
.method public whitelist test-api next(Landroid/icu/util/ValueIterator$Element;)Z
    .registers 8
    .param p1, "element"    # Landroid/icu/util/ValueIterator$Element;

    .line 40
    iget v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    iget v1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_limit_:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_8

    .line 41
    return v2

    .line 44
    :cond_8
    iget v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_choice_:I

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_12

    iget v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_choice_:I

    if-ne v0, v1, :cond_79

    .line 47
    :cond_12
    iget-object v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    invoke-virtual {v0}, Landroid/icu/impl/UCharacterName;->getAlgorithmLength()I

    move-result v0

    .line 48
    .local v0, "length":I
    iget v4, p0, Landroid/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    if-ge v4, v0, :cond_79

    .line 49
    :goto_1c
    iget v4, p0, Landroid/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    if-ge v4, v0, :cond_36

    .line 51
    iget v4, p0, Landroid/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    if-ltz v4, :cond_30

    iget-object v4, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    iget v5, p0, Landroid/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    .line 52
    invoke-virtual {v4, v5}, Landroid/icu/impl/UCharacterName;->getAlgorithmEnd(I)I

    move-result v4

    iget v5, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    if-ge v4, v5, :cond_36

    .line 54
    :cond_30
    iget v4, p0, Landroid/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    add-int/2addr v4, v3

    iput v4, p0, Landroid/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    goto :goto_1c

    .line 61
    :cond_36
    iget v4, p0, Landroid/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    if-ge v4, v0, :cond_79

    .line 65
    iget-object v1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    iget v4, p0, Landroid/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    invoke-virtual {v1, v4}, Landroid/icu/impl/UCharacterName;->getAlgorithmStart(I)I

    move-result v1

    .line 66
    .local v1, "start":I
    iget v4, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    if-ge v4, v1, :cond_59

    .line 69
    move v4, v1

    .line 70
    .local v4, "end":I
    iget v5, p0, Landroid/icu/lang/UCharacterNameIterator;->m_limit_:I

    if-gt v5, v1, :cond_4d

    .line 71
    iget v4, p0, Landroid/icu/lang/UCharacterNameIterator;->m_limit_:I

    .line 73
    :cond_4d
    invoke-direct {p0, p1, v4}, Landroid/icu/lang/UCharacterNameIterator;->iterateGroup(Landroid/icu/util/ValueIterator$Element;I)Z

    move-result v5

    if-nez v5, :cond_59

    .line 74
    iget v2, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    .line 75
    return v3

    .line 84
    .end local v4    # "end":I
    :cond_59
    iget v4, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    iget v5, p0, Landroid/icu/lang/UCharacterNameIterator;->m_limit_:I

    if-lt v4, v5, :cond_60

    .line 87
    return v2

    .line 90
    :cond_60
    iget v2, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    iput v2, p1, Landroid/icu/util/ValueIterator$Element;->integer:I

    .line 91
    iget-object v2, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    iget v4, p0, Landroid/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    iget v5, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    invoke-virtual {v2, v4, v5}, Landroid/icu/impl/UCharacterName;->getAlgorithmName(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Landroid/icu/util/ValueIterator$Element;->value:Ljava/lang/Object;

    .line 94
    const/4 v2, -0x1

    iput v2, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    .line 95
    iget v2, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    .line 96
    return v3

    .line 101
    .end local v0    # "length":I
    .end local v1    # "start":I
    :cond_79
    iget v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_limit_:I

    invoke-direct {p0, p1, v0}, Landroid/icu/lang/UCharacterNameIterator;->iterateGroup(Landroid/icu/util/ValueIterator$Element;I)Z

    move-result v0

    if-nez v0, :cond_87

    .line 102
    iget v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    add-int/2addr v0, v3

    iput v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    .line 103
    return v3

    .line 105
    :cond_87
    iget v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_choice_:I

    if-ne v0, v1, :cond_99

    .line 106
    iget v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_limit_:I

    invoke-direct {p0, p1, v0}, Landroid/icu/lang/UCharacterNameIterator;->iterateExtended(Landroid/icu/util/ValueIterator$Element;I)Z

    move-result v0

    if-nez v0, :cond_99

    .line 107
    iget v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    add-int/2addr v0, v3

    iput v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    .line 108
    return v3

    .line 112
    :cond_99
    return v2
.end method

.method public whitelist test-api reset()V
    .registers 2

    .line 123
    iget v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_start_:I

    iput v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    .line 125
    iput v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    .line 126
    return-void
.end method

.method public whitelist test-api setRange(II)V
    .registers 5
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .line 146
    if-ge p1, p2, :cond_18

    .line 150
    if-gez p1, :cond_8

    .line 151
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_start_:I

    goto :goto_a

    .line 154
    :cond_8
    iput p1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_start_:I

    .line 157
    :goto_a
    const/high16 v0, 0x110000

    if-le p2, v0, :cond_11

    .line 158
    iput v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_limit_:I

    goto :goto_13

    .line 161
    :cond_11
    iput p2, p0, Landroid/icu/lang/UCharacterNameIterator;->m_limit_:I

    .line 163
    :goto_13
    iget v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_start_:I

    iput v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    .line 164
    return-void

    .line 147
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start or limit has to be valid Unicode codepoints and start < limit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
