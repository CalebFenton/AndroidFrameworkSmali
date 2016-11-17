.class Landroid/icu/lang/UCharacterNameIterator;
.super Ljava/lang/Object;
.source "UCharacterNameIterator.java"

# interfaces
.implements Landroid/icu/util/ValueIterator;


# static fields
.field private static GROUP_LENGTHS_:[C

.field private static GROUP_OFFSETS_:[C


# instance fields
.field private m_algorithmIndex_:I

.field private m_choice_:I

.field private m_current_:I

.field private m_groupIndex_:I

.field private m_limit_:I

.field private m_name_:Landroid/icu/impl/UCharacterName;

.field private m_start_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0x21

    #@2
    .line 216
    new-array v0, v1, [C

    #@4
    .line 215
    sput-object v0, Landroid/icu/lang/UCharacterNameIterator;->GROUP_OFFSETS_:[C

    #@6
    .line 218
    new-array v0, v1, [C

    #@8
    .line 217
    sput-object v0, Landroid/icu/lang/UCharacterNameIterator;->GROUP_LENGTHS_:[C

    #@a
    .line 22
    return-void
.end method

.method protected constructor <init>(Landroid/icu/impl/UCharacterName;I)V
    .locals 2
    .param p1, "name"    # Landroid/icu/impl/UCharacterName;
    .param p2, "choice"    # I

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 207
    iput v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    #@6
    .line 211
    iput v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    #@8
    .line 171
    if-nez p1, :cond_0

    #@a
    .line 172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v1, "UCharacterName name argument cannot be null. Missing unames.icu?"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 174
    :cond_0
    iput-object p1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    #@15
    .line 176
    iput p2, p0, Landroid/icu/lang/UCharacterNameIterator;->m_choice_:I

    #@17
    .line 177
    const/4 v0, 0x0

    #@18
    iput v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_start_:I

    #@1a
    .line 178
    const/high16 v0, 0x110000

    #@1c
    iput v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_limit_:I

    #@1e
    .line 179
    iget v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_start_:I

    #@20
    iput v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    #@22
    .line 169
    return-void
.end method

.method private iterateExtended(Landroid/icu/util/ValueIterator$Element;I)Z
    .locals 4
    .param p1, "result"    # Landroid/icu/util/ValueIterator$Element;
    .param p2, "limit"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 325
    :goto_0
    iget v1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    #@3
    if-ge v1, p2, :cond_1

    #@5
    .line 326
    iget-object v1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    #@7
    iget v2, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    #@9
    invoke-virtual {v1, v2}, Landroid/icu/impl/UCharacterName;->getExtendedOr10Name(I)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 327
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@12
    move-result v1

    #@13
    if-lez v1, :cond_0

    #@15
    .line 328
    iget v1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    #@17
    iput v1, p1, Landroid/icu/util/ValueIterator$Element;->integer:I

    #@19
    .line 329
    iput-object v0, p1, Landroid/icu/util/ValueIterator$Element;->value:Ljava/lang/Object;

    #@1b
    .line 330
    return v3

    #@1c
    .line 332
    :cond_0
    iget v1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    #@1e
    add-int/lit8 v1, v1, 0x1

    #@20
    iput v1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    #@22
    goto :goto_0

    #@23
    .line 334
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    #@24
    return v1
.end method

.method private iterateGroup(Landroid/icu/util/ValueIterator$Element;I)Z
    .locals 6
    .param p1, "result"    # Landroid/icu/util/ValueIterator$Element;
    .param p2, "limit"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 269
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    #@3
    if-gez v3, :cond_0

    #@5
    .line 270
    iget-object v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    #@7
    iget v4, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    #@9
    invoke-virtual {v3, v4}, Landroid/icu/impl/UCharacterName;->getGroup(I)I

    #@c
    move-result v3

    #@d
    iput v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    #@f
    .line 273
    :cond_0
    :goto_0
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    #@11
    iget-object v4, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    #@13
    iget v4, v4, Landroid/icu/impl/UCharacterName;->m_groupcount_:I

    #@15
    if-ge v3, v4, :cond_7

    #@17
    .line 274
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    #@19
    if-ge v3, p2, :cond_7

    #@1b
    .line 276
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    #@1d
    invoke-static {v3}, Landroid/icu/impl/UCharacterName;->getCodepointMSB(I)I

    #@20
    move-result v2

    #@21
    .line 277
    .local v2, "startMSB":I
    iget-object v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    #@23
    iget v4, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    #@25
    invoke-virtual {v3, v4}, Landroid/icu/impl/UCharacterName;->getGroupMSB(I)I

    #@28
    move-result v1

    #@29
    .line 278
    .local v1, "gMSB":I
    if-ne v2, v1, :cond_3

    #@2b
    .line 279
    add-int/lit8 v3, p2, -0x1

    #@2d
    invoke-static {v3}, Landroid/icu/impl/UCharacterName;->getCodepointMSB(I)I

    #@30
    move-result v3

    #@31
    if-ne v2, v3, :cond_1

    #@33
    .line 282
    invoke-direct {p0, p1, p2}, Landroid/icu/lang/UCharacterNameIterator;->iterateSingleGroup(Landroid/icu/util/ValueIterator$Element;I)Z

    #@36
    move-result v3

    #@37
    return v3

    #@38
    .line 287
    :cond_1
    invoke-static {v1}, Landroid/icu/impl/UCharacterName;->getGroupLimit(I)I

    #@3b
    move-result v3

    #@3c
    .line 286
    invoke-direct {p0, p1, v3}, Landroid/icu/lang/UCharacterNameIterator;->iterateSingleGroup(Landroid/icu/util/ValueIterator$Element;I)Z

    #@3f
    move-result v3

    #@40
    if-nez v3, :cond_2

    #@42
    .line 288
    return v5

    #@43
    .line 290
    :cond_2
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    #@45
    add-int/lit8 v3, v3, 0x1

    #@47
    iput v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    #@49
    goto :goto_0

    #@4a
    .line 292
    :cond_3
    if-le v2, v1, :cond_4

    #@4c
    .line 295
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    #@4e
    add-int/lit8 v3, v3, 0x1

    #@50
    iput v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    #@52
    goto :goto_0

    #@53
    .line 298
    :cond_4
    invoke-static {v1}, Landroid/icu/impl/UCharacterName;->getGroupMin(I)I

    #@56
    move-result v0

    #@57
    .line 299
    .local v0, "gMIN":I
    if-le v0, p2, :cond_5

    #@59
    .line 300
    move v0, p2

    #@5a
    .line 302
    :cond_5
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_choice_:I

    #@5c
    const/4 v4, 0x2

    #@5d
    if-ne v3, v4, :cond_6

    #@5f
    .line 303
    invoke-direct {p0, p1, v0}, Landroid/icu/lang/UCharacterNameIterator;->iterateExtended(Landroid/icu/util/ValueIterator$Element;I)Z

    #@62
    move-result v3

    #@63
    if-nez v3, :cond_6

    #@65
    .line 304
    return v5

    #@66
    .line 307
    :cond_6
    iput v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    #@68
    goto :goto_0

    #@69
    .line 311
    .end local v0    # "gMIN":I
    .end local v1    # "gMSB":I
    .end local v2    # "startMSB":I
    :cond_7
    const/4 v3, 0x1

    #@6a
    return v3
.end method

.method private iterateSingleGroup(Landroid/icu/util/ValueIterator$Element;I)Z
    .locals 10
    .param p1, "result"    # Landroid/icu/util/ValueIterator$Element;
    .param p2, "limit"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 233
    sget-object v4, Landroid/icu/lang/UCharacterNameIterator;->GROUP_OFFSETS_:[C

    #@3
    monitor-enter v4

    #@4
    .line 234
    :try_start_0
    sget-object v5, Landroid/icu/lang/UCharacterNameIterator;->GROUP_LENGTHS_:[C

    #@6
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@7
    .line 235
    :try_start_1
    iget-object v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    #@9
    iget v6, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    #@b
    sget-object v7, Landroid/icu/lang/UCharacterNameIterator;->GROUP_OFFSETS_:[C

    #@d
    .line 236
    sget-object v8, Landroid/icu/lang/UCharacterNameIterator;->GROUP_LENGTHS_:[C

    #@f
    .line 235
    invoke-virtual {v3, v6, v7, v8}, Landroid/icu/impl/UCharacterName;->getGroupLengths(I[C[C)I

    #@12
    move-result v0

    #@13
    .line 237
    .local v0, "index":I
    :goto_0
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    #@15
    if-ge v3, p2, :cond_3

    #@17
    .line 238
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    #@19
    invoke-static {v3}, Landroid/icu/impl/UCharacterName;->getGroupOffset(I)I

    #@1c
    move-result v2

    #@1d
    .line 239
    .local v2, "offset":I
    iget-object v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    #@1f
    .line 240
    sget-object v6, Landroid/icu/lang/UCharacterNameIterator;->GROUP_OFFSETS_:[C

    #@21
    aget-char v6, v6, v2

    #@23
    add-int/2addr v6, v0

    #@24
    .line 241
    sget-object v7, Landroid/icu/lang/UCharacterNameIterator;->GROUP_LENGTHS_:[C

    #@26
    aget-char v7, v7, v2

    #@28
    iget v8, p0, Landroid/icu/lang/UCharacterNameIterator;->m_choice_:I

    #@2a
    .line 239
    invoke-virtual {v3, v6, v7, v8}, Landroid/icu/impl/UCharacterName;->getGroupName(III)Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    .line 242
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@30
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@33
    move-result v3

    #@34
    if-nez v3, :cond_1

    #@36
    .line 243
    :cond_0
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_choice_:I

    #@38
    const/4 v6, 0x2

    #@39
    if-ne v3, v6, :cond_1

    #@3b
    .line 244
    iget-object v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    #@3d
    iget v6, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    #@3f
    invoke-virtual {v3, v6}, Landroid/icu/impl/UCharacterName;->getExtendedName(I)Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    .line 246
    :cond_1
    if-eqz v1, :cond_2

    #@45
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@48
    move-result v3

    #@49
    if-lez v3, :cond_2

    #@4b
    .line 247
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    #@4d
    iput v3, p1, Landroid/icu/util/ValueIterator$Element;->integer:I

    #@4f
    .line 248
    iput-object v1, p1, Landroid/icu/util/ValueIterator$Element;->value:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@51
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@52
    monitor-exit v4

    #@53
    .line 249
    return v9

    #@54
    .line 251
    :cond_2
    :try_start_3
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    #@56
    add-int/lit8 v3, v3, 0x1

    #@58
    iput v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@5a
    goto :goto_0

    #@5b
    .line 234
    .end local v0    # "index":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "offset":I
    :catchall_0
    move-exception v3

    #@5c
    :try_start_4
    monitor-exit v5

    #@5d
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@5e
    .line 233
    :catchall_1
    move-exception v3

    #@5f
    monitor-exit v4

    #@60
    throw v3

    #@61
    .restart local v0    # "index":I
    :cond_3
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@62
    monitor-exit v4

    #@63
    .line 255
    const/4 v3, 0x1

    #@64
    return v3
.end method


# virtual methods
.method public next(Landroid/icu/util/ValueIterator$Element;)Z
    .locals 8
    .param p1, "element"    # Landroid/icu/util/ValueIterator$Element;

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 37
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    #@5
    iget v4, p0, Landroid/icu/lang/UCharacterNameIterator;->m_limit_:I

    #@7
    if-lt v3, v4, :cond_0

    #@9
    .line 38
    return v5

    #@a
    .line 41
    :cond_0
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_choice_:I

    #@c
    if-eqz v3, :cond_1

    #@e
    .line 42
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_choice_:I

    #@10
    if-ne v3, v7, :cond_7

    #@12
    .line 44
    :cond_1
    iget-object v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    #@14
    invoke-virtual {v3}, Landroid/icu/impl/UCharacterName;->getAlgorithmLength()I

    #@17
    move-result v1

    #@18
    .line 45
    .local v1, "length":I
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    #@1a
    if-ge v3, v1, :cond_7

    #@1c
    .line 46
    :goto_0
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    #@1e
    if-ge v3, v1, :cond_3

    #@20
    .line 48
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    #@22
    if-ltz v3, :cond_2

    #@24
    .line 49
    iget-object v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    #@26
    iget v4, p0, Landroid/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    #@28
    invoke-virtual {v3, v4}, Landroid/icu/impl/UCharacterName;->getAlgorithmEnd(I)I

    #@2b
    move-result v3

    #@2c
    .line 50
    iget v4, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    #@2e
    .line 49
    if-ge v3, v4, :cond_3

    #@30
    .line 51
    :cond_2
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    #@32
    add-int/lit8 v3, v3, 0x1

    #@34
    iput v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    #@36
    goto :goto_0

    #@37
    .line 58
    :cond_3
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    #@39
    if-ge v3, v1, :cond_7

    #@3b
    .line 62
    iget-object v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    #@3d
    iget v4, p0, Landroid/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    #@3f
    invoke-virtual {v3, v4}, Landroid/icu/impl/UCharacterName;->getAlgorithmStart(I)I

    #@42
    move-result v2

    #@43
    .line 63
    .local v2, "start":I
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    #@45
    if-ge v3, v2, :cond_5

    #@47
    .line 66
    move v0, v2

    #@48
    .line 67
    .local v0, "end":I
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_limit_:I

    #@4a
    if-gt v3, v2, :cond_4

    #@4c
    .line 68
    iget v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_limit_:I

    #@4e
    .line 70
    :cond_4
    invoke-direct {p0, p1, v0}, Landroid/icu/lang/UCharacterNameIterator;->iterateGroup(Landroid/icu/util/ValueIterator$Element;I)Z

    #@51
    move-result v3

    #@52
    if-nez v3, :cond_5

    #@54
    .line 71
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    #@56
    add-int/lit8 v3, v3, 0x1

    #@58
    iput v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    #@5a
    .line 72
    return v6

    #@5b
    .line 81
    .end local v0    # "end":I
    :cond_5
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    #@5d
    iget v4, p0, Landroid/icu/lang/UCharacterNameIterator;->m_limit_:I

    #@5f
    if-lt v3, v4, :cond_6

    #@61
    .line 84
    return v5

    #@62
    .line 87
    :cond_6
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    #@64
    iput v3, p1, Landroid/icu/util/ValueIterator$Element;->integer:I

    #@66
    .line 88
    iget-object v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    #@68
    iget v4, p0, Landroid/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    #@6a
    .line 89
    iget v5, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    #@6c
    .line 88
    invoke-virtual {v3, v4, v5}, Landroid/icu/impl/UCharacterName;->getAlgorithmName(II)Ljava/lang/String;

    #@6f
    move-result-object v3

    #@70
    iput-object v3, p1, Landroid/icu/util/ValueIterator$Element;->value:Ljava/lang/Object;

    #@72
    .line 91
    const/4 v3, -0x1

    #@73
    iput v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    #@75
    .line 92
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    #@77
    add-int/lit8 v3, v3, 0x1

    #@79
    iput v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    #@7b
    .line 93
    return v6

    #@7c
    .line 98
    .end local v1    # "length":I
    .end local v2    # "start":I
    :cond_7
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_limit_:I

    #@7e
    invoke-direct {p0, p1, v3}, Landroid/icu/lang/UCharacterNameIterator;->iterateGroup(Landroid/icu/util/ValueIterator$Element;I)Z

    #@81
    move-result v3

    #@82
    if-nez v3, :cond_8

    #@84
    .line 99
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    #@86
    add-int/lit8 v3, v3, 0x1

    #@88
    iput v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    #@8a
    .line 100
    return v6

    #@8b
    .line 102
    :cond_8
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_choice_:I

    #@8d
    if-ne v3, v7, :cond_9

    #@8f
    .line 103
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_limit_:I

    #@91
    invoke-direct {p0, p1, v3}, Landroid/icu/lang/UCharacterNameIterator;->iterateExtended(Landroid/icu/util/ValueIterator$Element;I)Z

    #@94
    move-result v3

    #@95
    if-nez v3, :cond_9

    #@97
    .line 104
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    #@99
    add-int/lit8 v3, v3, 0x1

    #@9b
    iput v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    #@9d
    .line 105
    return v6

    #@9e
    .line 109
    :cond_9
    return v5
.end method

.method public reset()V
    .locals 2

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 119
    iget v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_start_:I

    #@3
    iput v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    #@5
    .line 120
    iput v1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    #@7
    .line 121
    iput v1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    #@9
    .line 117
    return-void
.end method

.method public setRange(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    const/high16 v1, 0x110000

    #@2
    const/4 v0, 0x0

    #@3
    .line 141
    if-lt p1, p2, :cond_0

    #@5
    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    .line 143
    const-string/jumbo v1, "start or limit has to be valid Unicode codepoints and start < limit"

    #@a
    .line 142
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 145
    :cond_0
    if-gez p1, :cond_1

    #@10
    .line 146
    iput v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_start_:I

    #@12
    .line 152
    :goto_0
    if-le p2, v1, :cond_2

    #@14
    .line 153
    iput v1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_limit_:I

    #@16
    .line 158
    :goto_1
    iget v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_start_:I

    #@18
    iput v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    #@1a
    .line 139
    return-void

    #@1b
    .line 149
    :cond_1
    iput p1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_start_:I

    #@1d
    goto :goto_0

    #@1e
    .line 156
    :cond_2
    iput p2, p0, Landroid/icu/lang/UCharacterNameIterator;->m_limit_:I

    #@20
    goto :goto_1
.end method
