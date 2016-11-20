.class public Lsun/security/util/ManifestDigester;
.super Ljava/lang/Object;
.source "ManifestDigester.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/util/ManifestDigester$Entry;,
        Lsun/security/util/ManifestDigester$Position;
    }
.end annotation


# static fields
.field public static final MF_MAIN_ATTRS:Ljava/lang/String; = "Manifest-Main-Attributes"


# instance fields
.field private entries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lsun/security/util/ManifestDigester$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private rawBytes:[B


# direct methods
.method public constructor <init>([B)V
    .locals 24
    .param p1, "bytes"    # [B

    #@0
    .prologue
    .line 108
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 110
    move-object/from16 v0, p1

    #@5
    move-object/from16 v1, p0

    #@7
    iput-object v0, v1, Lsun/security/util/ManifestDigester;->rawBytes:[B

    #@9
    .line 111
    new-instance v17, Ljava/util/HashMap;

    #@b
    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    #@e
    move-object/from16 v0, v17

    #@10
    move-object/from16 v1, p0

    #@12
    iput-object v0, v1, Lsun/security/util/ManifestDigester;->entries:Ljava/util/HashMap;

    #@14
    .line 113
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    #@16
    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@19
    .line 115
    .local v5, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v10, Lsun/security/util/ManifestDigester$Position;

    #@1b
    invoke-direct {v10}, Lsun/security/util/ManifestDigester$Position;-><init>()V

    #@1e
    .line 117
    .local v10, "pos":Lsun/security/util/ManifestDigester$Position;
    const/16 v17, 0x0

    #@20
    move-object/from16 v0, p0

    #@22
    move/from16 v1, v17

    #@24
    invoke-direct {v0, v1, v10}, Lsun/security/util/ManifestDigester;->findSection(ILsun/security/util/ManifestDigester$Position;)Z

    #@27
    move-result v17

    #@28
    if-nez v17, :cond_0

    #@2a
    .line 118
    return-void

    #@2b
    .line 121
    :cond_0
    move-object/from16 v0, p0

    #@2d
    iget-object v0, v0, Lsun/security/util/ManifestDigester;->entries:Ljava/util/HashMap;

    #@2f
    move-object/from16 v17, v0

    #@31
    const-string/jumbo v18, "Manifest-Main-Attributes"

    #@34
    .line 122
    new-instance v19, Lsun/security/util/ManifestDigester$Entry;

    #@36
    iget v0, v10, Lsun/security/util/ManifestDigester$Position;->endOfSection:I

    #@38
    move/from16 v20, v0

    #@3a
    add-int/lit8 v20, v20, 0x1

    #@3c
    iget v0, v10, Lsun/security/util/ManifestDigester$Position;->startOfNext:I

    #@3e
    move/from16 v21, v0

    #@40
    move-object/from16 v0, p0

    #@42
    iget-object v0, v0, Lsun/security/util/ManifestDigester;->rawBytes:[B

    #@44
    move-object/from16 v22, v0

    #@46
    const/16 v23, 0x0

    #@48
    move-object/from16 v0, v19

    #@4a
    move/from16 v1, v23

    #@4c
    move/from16 v2, v20

    #@4e
    move/from16 v3, v21

    #@50
    move-object/from16 v4, v22

    #@52
    invoke-direct {v0, v1, v2, v3, v4}, Lsun/security/util/ManifestDigester$Entry;-><init>(III[B)V

    #@55
    .line 121
    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@58
    .line 124
    iget v13, v10, Lsun/security/util/ManifestDigester$Position;->startOfNext:I

    #@5a
    .line 125
    .local v13, "start":I
    :goto_0
    move-object/from16 v0, p0

    #@5c
    invoke-direct {v0, v13, v10}, Lsun/security/util/ManifestDigester;->findSection(ILsun/security/util/ManifestDigester$Position;)Z

    #@5f
    move-result v17

    #@60
    if-eqz v17, :cond_a

    #@62
    .line 126
    iget v0, v10, Lsun/security/util/ManifestDigester$Position;->endOfFirstLine:I

    #@64
    move/from16 v17, v0

    #@66
    sub-int v17, v17, v13

    #@68
    add-int/lit8 v8, v17, 0x1

    #@6a
    .line 127
    .local v8, "len":I
    iget v0, v10, Lsun/security/util/ManifestDigester$Position;->endOfSection:I

    #@6c
    move/from16 v17, v0

    #@6e
    sub-int v17, v17, v13

    #@70
    add-int/lit8 v11, v17, 0x1

    #@72
    .line 128
    .local v11, "sectionLen":I
    iget v0, v10, Lsun/security/util/ManifestDigester$Position;->startOfNext:I

    #@74
    move/from16 v17, v0

    #@76
    sub-int v12, v17, v13

    #@78
    .line 130
    .local v12, "sectionLenWithBlank":I
    const/16 v17, 0x6

    #@7a
    move/from16 v0, v17

    #@7c
    if-le v8, v0, :cond_9

    #@7e
    .line 131
    move-object/from16 v0, p0

    #@80
    move-object/from16 v1, p1

    #@82
    invoke-direct {v0, v1, v13}, Lsun/security/util/ManifestDigester;->isNameAttr([BI)Z

    #@85
    move-result v17

    #@86
    if-eqz v17, :cond_9

    #@88
    .line 132
    new-instance v9, Ljava/lang/StringBuilder;

    #@8a
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    #@8d
    .line 136
    .local v9, "nameBuf":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v17, Ljava/lang/String;

    #@8f
    add-int/lit8 v18, v13, 0x6

    #@91
    add-int/lit8 v19, v8, -0x6

    #@93
    const-string/jumbo v20, "UTF8"

    #@96
    move-object/from16 v0, v17

    #@98
    move-object/from16 v1, p1

    #@9a
    move/from16 v2, v18

    #@9c
    move/from16 v3, v19

    #@9e
    move-object/from16 v4, v20

    #@a0
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #@a3
    .line 135
    move-object/from16 v0, v17

    #@a5
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    .line 138
    add-int v6, v13, v8

    #@aa
    .line 139
    .local v6, "i":I
    sub-int v17, v6, v13

    #@ac
    move/from16 v0, v17

    #@ae
    if-ge v0, v11, :cond_5

    #@b0
    .line 140
    aget-byte v17, p1, v6

    #@b2
    const/16 v18, 0xd

    #@b4
    move/from16 v0, v17

    #@b6
    move/from16 v1, v18

    #@b8
    if-ne v0, v1, :cond_1

    #@ba
    .line 141
    add-int/lit8 v6, v6, 0x2

    #@bc
    move v7, v6

    #@bd
    .line 147
    .end local v6    # "i":I
    .local v7, "i":I
    :goto_1
    sub-int v17, v7, v13

    #@bf
    move/from16 v0, v17

    #@c1
    if-ge v0, v11, :cond_7

    #@c3
    .line 148
    add-int/lit8 v6, v7, 0x1

    #@c5
    .end local v7    # "i":I
    .restart local v6    # "i":I
    aget-byte v17, p1, v7

    #@c7
    const/16 v18, 0x20

    #@c9
    move/from16 v0, v17

    #@cb
    move/from16 v1, v18

    #@cd
    if-ne v0, v1, :cond_8

    #@cf
    .line 150
    move/from16 v16, v6

    #@d1
    .local v16, "wrapStart":I
    move v7, v6

    #@d2
    .line 151
    .end local v6    # "i":I
    .restart local v7    # "i":I
    :goto_2
    sub-int v17, v7, v13

    #@d4
    move/from16 v0, v17

    #@d6
    if-ge v0, v11, :cond_2

    #@d8
    .line 152
    add-int/lit8 v6, v7, 0x1

    #@da
    .end local v7    # "i":I
    .restart local v6    # "i":I
    aget-byte v17, p1, v7

    #@dc
    const/16 v18, 0xa

    #@de
    move/from16 v0, v17

    #@e0
    move/from16 v1, v18

    #@e2
    if-eq v0, v1, :cond_3

    #@e4
    move v7, v6

    #@e5
    .end local v6    # "i":I
    .restart local v7    # "i":I
    goto :goto_2

    #@e6
    .line 143
    .end local v7    # "i":I
    .end local v16    # "wrapStart":I
    .restart local v6    # "i":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    #@e8
    move v7, v6

    #@e9
    .end local v6    # "i":I
    .restart local v7    # "i":I
    goto :goto_1

    #@ea
    .restart local v16    # "wrapStart":I
    :cond_2
    move v6, v7

    #@eb
    .line 153
    .end local v7    # "i":I
    .restart local v6    # "i":I
    :cond_3
    add-int/lit8 v17, v6, -0x1

    #@ed
    aget-byte v17, p1, v17

    #@ef
    const/16 v18, 0xa

    #@f1
    move/from16 v0, v17

    #@f3
    move/from16 v1, v18

    #@f5
    if-eq v0, v1, :cond_4

    #@f7
    .line 154
    return-void

    #@f8
    .line 156
    :cond_4
    add-int/lit8 v17, v6, -0x2

    #@fa
    aget-byte v17, p1, v17

    #@fc
    const/16 v18, 0xd

    #@fe
    move/from16 v0, v17

    #@100
    move/from16 v1, v18

    #@102
    if-ne v0, v1, :cond_6

    #@104
    .line 157
    sub-int v17, v6, v16

    #@106
    add-int/lit8 v15, v17, -0x2

    #@108
    .line 161
    .local v15, "wrapLen":I
    :goto_3
    new-instance v17, Ljava/lang/String;

    #@10a
    .line 162
    const-string/jumbo v18, "UTF8"

    #@10d
    .line 161
    move-object/from16 v0, v17

    #@10f
    move-object/from16 v1, p1

    #@111
    move/from16 v2, v16

    #@113
    move-object/from16 v3, v18

    #@115
    invoke-direct {v0, v1, v2, v15, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #@118
    move-object/from16 v0, v17

    #@11a
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    .end local v15    # "wrapLen":I
    .end local v16    # "wrapStart":I
    :cond_5
    move v7, v6

    #@11e
    .end local v6    # "i":I
    .restart local v7    # "i":I
    goto :goto_1

    #@11f
    .line 159
    .end local v7    # "i":I
    .restart local v6    # "i":I
    .restart local v16    # "wrapStart":I
    :cond_6
    sub-int v17, v6, v16

    #@121
    add-int/lit8 v15, v17, -0x1

    #@123
    .restart local v15    # "wrapLen":I
    goto :goto_3

    #@124
    .end local v6    # "i":I
    .end local v15    # "wrapLen":I
    .end local v16    # "wrapStart":I
    .restart local v7    # "i":I
    :cond_7
    move v6, v7

    #@125
    .line 168
    .end local v7    # "i":I
    .restart local v6    # "i":I
    :cond_8
    move-object/from16 v0, p0

    #@127
    iget-object v0, v0, Lsun/security/util/ManifestDigester;->entries:Ljava/util/HashMap;

    #@129
    move-object/from16 v17, v0

    #@12b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12e
    move-result-object v18

    #@12f
    .line 169
    new-instance v19, Lsun/security/util/ManifestDigester$Entry;

    #@131
    .line 170
    move-object/from16 v0, p0

    #@133
    iget-object v0, v0, Lsun/security/util/ManifestDigester;->rawBytes:[B

    #@135
    move-object/from16 v20, v0

    #@137
    .line 169
    move-object/from16 v0, v19

    #@139
    move-object/from16 v1, v20

    #@13b
    invoke-direct {v0, v13, v11, v12, v1}, Lsun/security/util/ManifestDigester$Entry;-><init>(III[B)V

    #@13e
    .line 168
    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@141
    .line 178
    .end local v6    # "i":I
    .end local v9    # "nameBuf":Ljava/lang/StringBuilder;
    :cond_9
    iget v13, v10, Lsun/security/util/ManifestDigester$Position;->startOfNext:I

    #@143
    goto/16 :goto_0

    #@145
    .line 172
    .restart local v9    # "nameBuf":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v14

    #@146
    .line 173
    .local v14, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v17, Ljava/lang/IllegalStateException;

    #@148
    .line 174
    const-string/jumbo v18, "UTF8 not available on platform"

    #@14b
    .line 173
    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@14e
    throw v17

    #@14f
    .line 108
    .end local v8    # "len":I
    .end local v9    # "nameBuf":Ljava/lang/StringBuilder;
    .end local v11    # "sectionLen":I
    .end local v12    # "sectionLenWithBlank":I
    .end local v14    # "uee":Ljava/io/UnsupportedEncodingException;
    :cond_a
    return-void
.end method

.method private findSection(ILsun/security/util/ManifestDigester$Position;)Z
    .locals 8
    .param p1, "offset"    # I
    .param p2, "pos"    # Lsun/security/util/ManifestDigester$Position;

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    .line 67
    move v2, p1

    #@2
    .local v2, "i":I
    iget-object v5, p0, Lsun/security/util/ManifestDigester;->rawBytes:[B

    #@4
    array-length v4, v5

    #@5
    .line 68
    .local v4, "len":I
    move v3, p1

    #@6
    .line 70
    .local v3, "last":I
    const/4 v0, 0x1

    #@7
    .line 72
    .local v0, "allBlank":Z
    iput v7, p2, Lsun/security/util/ManifestDigester$Position;->endOfFirstLine:I

    #@9
    .line 74
    :goto_0
    if-ge v2, v4, :cond_6

    #@b
    .line 75
    iget-object v5, p0, Lsun/security/util/ManifestDigester;->rawBytes:[B

    #@d
    aget-byte v1, v5, v2

    #@f
    .line 76
    .local v1, "b":B
    packed-switch v1, :pswitch_data_0

    #@12
    .line 100
    :pswitch_0
    const/4 v0, 0x0

    #@13
    .line 103
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@15
    goto :goto_0

    #@16
    .line 78
    :pswitch_1
    iget v5, p2, Lsun/security/util/ManifestDigester$Position;->endOfFirstLine:I

    #@18
    if-ne v5, v7, :cond_0

    #@1a
    .line 79
    add-int/lit8 v5, v2, -0x1

    #@1c
    iput v5, p2, Lsun/security/util/ManifestDigester$Position;->endOfFirstLine:I

    #@1e
    .line 80
    :cond_0
    if-ge v2, v4, :cond_1

    #@20
    iget-object v5, p0, Lsun/security/util/ManifestDigester;->rawBytes:[B

    #@22
    add-int/lit8 v6, v2, 0x1

    #@24
    aget-byte v5, v5, v6

    #@26
    const/16 v6, 0xa

    #@28
    if-ne v5, v6, :cond_1

    #@2a
    .line 81
    add-int/lit8 v2, v2, 0x1

    #@2c
    .line 83
    :cond_1
    :pswitch_2
    iget v5, p2, Lsun/security/util/ManifestDigester$Position;->endOfFirstLine:I

    #@2e
    if-ne v5, v7, :cond_2

    #@30
    .line 84
    add-int/lit8 v5, v2, -0x1

    #@32
    iput v5, p2, Lsun/security/util/ManifestDigester$Position;->endOfFirstLine:I

    #@34
    .line 85
    :cond_2
    if-nez v0, :cond_3

    #@36
    add-int/lit8 v5, v4, -0x1

    #@38
    if-ne v2, v5, :cond_5

    #@3a
    .line 86
    :cond_3
    add-int/lit8 v5, v4, -0x1

    #@3c
    if-ne v2, v5, :cond_4

    #@3e
    .line 87
    iput v2, p2, Lsun/security/util/ManifestDigester$Position;->endOfSection:I

    #@40
    .line 90
    :goto_2
    add-int/lit8 v5, v2, 0x1

    #@42
    iput v5, p2, Lsun/security/util/ManifestDigester$Position;->startOfNext:I

    #@44
    .line 91
    const/4 v5, 0x1

    #@45
    return v5

    #@46
    .line 89
    :cond_4
    iput v3, p2, Lsun/security/util/ManifestDigester$Position;->endOfSection:I

    #@48
    goto :goto_2

    #@49
    .line 95
    :cond_5
    move v3, v2

    #@4a
    .line 96
    const/4 v0, 0x1

    #@4b
    goto :goto_1

    #@4c
    .line 105
    .end local v1    # "b":B
    :cond_6
    const/4 v5, 0x0

    #@4d
    return v5

    #@4e
    .line 76
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isNameAttr([BI)Z
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "start"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 184
    aget-byte v1, p1, p2

    #@3
    const/16 v2, 0x4e

    #@5
    if-eq v1, v2, :cond_0

    #@7
    aget-byte v1, p1, p2

    #@9
    const/16 v2, 0x6e

    #@b
    if-ne v1, v2, :cond_4

    #@d
    .line 185
    :cond_0
    add-int/lit8 v1, p2, 0x1

    #@f
    aget-byte v1, p1, v1

    #@11
    const/16 v2, 0x61

    #@13
    if-eq v1, v2, :cond_1

    #@15
    add-int/lit8 v1, p2, 0x1

    #@17
    aget-byte v1, p1, v1

    #@19
    const/16 v2, 0x41

    #@1b
    if-ne v1, v2, :cond_4

    #@1d
    .line 186
    :cond_1
    add-int/lit8 v1, p2, 0x2

    #@1f
    aget-byte v1, p1, v1

    #@21
    const/16 v2, 0x6d

    #@23
    if-eq v1, v2, :cond_2

    #@25
    add-int/lit8 v1, p2, 0x2

    #@27
    aget-byte v1, p1, v1

    #@29
    const/16 v2, 0x4d

    #@2b
    if-ne v1, v2, :cond_4

    #@2d
    .line 187
    :cond_2
    add-int/lit8 v1, p2, 0x3

    #@2f
    aget-byte v1, p1, v1

    #@31
    const/16 v2, 0x65

    #@33
    if-eq v1, v2, :cond_3

    #@35
    add-int/lit8 v1, p2, 0x3

    #@37
    aget-byte v1, p1, v1

    #@39
    const/16 v2, 0x45

    #@3b
    if-ne v1, v2, :cond_4

    #@3d
    .line 188
    :cond_3
    add-int/lit8 v1, p2, 0x4

    #@3f
    aget-byte v1, p1, v1

    #@41
    const/16 v2, 0x3a

    #@43
    if-ne v1, v2, :cond_4

    #@45
    .line 189
    add-int/lit8 v1, p2, 0x5

    #@47
    aget-byte v1, p1, v1

    #@49
    const/16 v2, 0x20

    #@4b
    if-ne v1, v2, :cond_4

    #@4d
    const/4 v0, 0x1

    #@4e
    .line 184
    :cond_4
    return v0
.end method


# virtual methods
.method public get(Ljava/lang/String;Z)Lsun/security/util/ManifestDigester$Entry;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "oldStyle"    # Z

    #@0
    .prologue
    .line 256
    iget-object v1, p0, Lsun/security/util/ManifestDigester;->entries:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lsun/security/util/ManifestDigester$Entry;

    #@8
    .line 257
    .local v0, "e":Lsun/security/util/ManifestDigester$Entry;
    if-eqz v0, :cond_0

    #@a
    .line 258
    iput-boolean p2, v0, Lsun/security/util/ManifestDigester$Entry;->oldStyle:Z

    #@c
    .line 259
    :cond_0
    return-object v0
.end method

.method public manifestDigest(Ljava/security/MessageDigest;)[B
    .locals 3
    .param p1, "md"    # Ljava/security/MessageDigest;

    #@0
    .prologue
    .line 264
    invoke-virtual {p1}, Ljava/security/MessageDigest;->reset()V

    #@3
    .line 265
    iget-object v0, p0, Lsun/security/util/ManifestDigester;->rawBytes:[B

    #@5
    iget-object v1, p0, Lsun/security/util/ManifestDigester;->rawBytes:[B

    #@7
    array-length v1, v1

    #@8
    const/4 v2, 0x0

    #@9
    invoke-virtual {p1, v0, v2, v1}, Ljava/security/MessageDigest;->update([BII)V

    #@c
    .line 266
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method
