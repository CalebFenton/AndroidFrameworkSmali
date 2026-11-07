.class public Lsun/security/util/ManifestDigester;
.super Ljava/lang/Object;
.source "ManifestDigester.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/util/ManifestDigester$Position;,
        Lsun/security/util/ManifestDigester$Entry;
    }
.end annotation


# static fields
.field public static final blacklist MF_MAIN_ATTRS:Ljava/lang/String; = "Manifest-Main-Attributes"


# instance fields
.field private greylist-max-o entries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lsun/security/util/ManifestDigester$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o rawBytes:[B


# direct methods
.method public constructor greylist <init>([B)V
    .registers 15
    .param p1, "bytes"    # [B

    .line 111
    const-string v0, "UTF8"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lsun/security/util/ManifestDigester;->rawBytes:[B

    .line 113
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lsun/security/util/ManifestDigester;->entries:Ljava/util/HashMap;

    .line 115
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 117
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Lsun/security/util/ManifestDigester$Position;

    invoke-direct {v2}, Lsun/security/util/ManifestDigester$Position;-><init>()V

    .line 119
    .local v2, "pos":Lsun/security/util/ManifestDigester$Position;
    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Lsun/security/util/ManifestDigester;->findSection(ILsun/security/util/ManifestDigester$Position;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 120
    return-void

    .line 123
    :cond_20
    iget-object v4, p0, Lsun/security/util/ManifestDigester;->entries:Ljava/util/HashMap;

    new-instance v5, Lsun/security/util/ManifestDigester$Entry;

    iget v6, v2, Lsun/security/util/ManifestDigester$Position;->endOfSection:I

    add-int/lit8 v6, v6, 0x1

    iget v7, v2, Lsun/security/util/ManifestDigester$Position;->startOfNext:I

    iget-object v8, p0, Lsun/security/util/ManifestDigester;->rawBytes:[B

    invoke-direct {v5, v3, v6, v7, v8}, Lsun/security/util/ManifestDigester$Entry;-><init>(III[B)V

    const-string v3, "Manifest-Main-Attributes"

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget v3, v2, Lsun/security/util/ManifestDigester$Position;->startOfNext:I

    .line 127
    .local v3, "start":I
    :goto_36
    invoke-direct {p0, v3, v2}, Lsun/security/util/ManifestDigester;->findSection(ILsun/security/util/ManifestDigester$Position;)Z

    move-result v4

    if-eqz v4, :cond_d0

    .line 128
    iget v4, v2, Lsun/security/util/ManifestDigester$Position;->endOfFirstLine:I

    sub-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x1

    .line 129
    .local v4, "len":I
    iget v5, v2, Lsun/security/util/ManifestDigester$Position;->endOfSection:I

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x1

    .line 130
    .local v5, "sectionLen":I
    iget v6, v2, Lsun/security/util/ManifestDigester$Position;->startOfNext:I

    sub-int/2addr v6, v3

    .line 132
    .local v6, "sectionLenWithBlank":I
    const/4 v7, 0x6

    if-le v4, v7, :cond_cc

    .line 133
    invoke-direct {p0, p1, v3}, Lsun/security/util/ManifestDigester;->isNameAttr([BI)Z

    move-result v7

    if-eqz v7, :cond_cc

    .line 134
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 137
    .local v7, "nameBuf":Ljava/lang/StringBuilder;
    :try_start_57
    new-instance v8, Ljava/lang/String;

    add-int/lit8 v9, v3, 0x6

    add-int/lit8 v10, v4, -0x6

    invoke-direct {v8, p1, v9, v10, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    add-int v8, v3, v4

    .line 141
    .local v8, "i":I
    sub-int v9, v8, v3

    const/16 v10, 0xd

    if-ge v9, v5, :cond_74

    .line 142
    aget-byte v9, p1, v8

    if-ne v9, v10, :cond_72

    .line 143
    add-int/lit8 v8, v8, 0x2

    goto :goto_74

    .line 145
    :cond_72
    add-int/lit8 v8, v8, 0x1

    .line 149
    :cond_74
    :goto_74
    sub-int v9, v8, v3

    if-ge v9, v5, :cond_b1

    .line 150
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .local v9, "i":I
    aget-byte v8, p1, v8

    const/16 v11, 0x20

    if-ne v8, v11, :cond_b0

    .line 152
    move v8, v9

    .line 153
    .local v8, "wrapStart":I
    :goto_81
    sub-int v11, v9, v3

    const/16 v12, 0xa

    if-ge v11, v5, :cond_90

    add-int/lit8 v11, v9, 0x1

    .end local v9    # "i":I
    .local v11, "i":I
    aget-byte v9, p1, v9

    if-eq v9, v12, :cond_8f

    .line 154
    move v9, v11

    goto :goto_81

    .line 153
    :cond_8f
    move v9, v11

    .line 155
    .end local v11    # "i":I
    .restart local v9    # "i":I
    :cond_90
    add-int/lit8 v11, v9, -0x1

    aget-byte v11, p1, v11

    if-eq v11, v12, :cond_97

    .line 156
    return-void

    .line 158
    :cond_97
    add-int/lit8 v11, v9, -0x2

    aget-byte v11, p1, v11

    if-ne v11, v10, :cond_a2

    .line 159
    sub-int v11, v9, v8

    add-int/lit8 v11, v11, -0x2

    .local v11, "wrapLen":I
    goto :goto_a6

    .line 161
    .end local v11    # "wrapLen":I
    :cond_a2
    sub-int v11, v9, v8

    add-int/lit8 v11, v11, -0x1

    .line 163
    .restart local v11    # "wrapLen":I
    :goto_a6
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, p1, v8, v11, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    move v8, v9

    .end local v8    # "wrapStart":I
    .end local v11    # "wrapLen":I
    goto :goto_74

    .line 150
    :cond_b0
    move v8, v9

    .line 170
    .end local v9    # "i":I
    .local v8, "i":I
    :cond_b1
    iget-object v9, p0, Lsun/security/util/ManifestDigester;->entries:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lsun/security/util/ManifestDigester$Entry;

    iget-object v12, p0, Lsun/security/util/ManifestDigester;->rawBytes:[B

    invoke-direct {v11, v3, v5, v6, v12}, Lsun/security/util/ManifestDigester$Entry;-><init>(III[B)V

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_57 .. :try_end_c1} :catch_c3

    .line 177
    nop

    .end local v8    # "i":I
    goto :goto_cc

    .line 174
    :catch_c3
    move-exception v0

    .line 175
    .local v0, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "UTF8 not available on platform"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 180
    .end local v0    # "uee":Ljava/io/UnsupportedEncodingException;
    .end local v7    # "nameBuf":Ljava/lang/StringBuilder;
    :cond_cc
    :goto_cc
    iget v3, v2, Lsun/security/util/ManifestDigester$Position;->startOfNext:I

    .line 181
    .end local v4    # "len":I
    .end local v5    # "sectionLen":I
    .end local v6    # "sectionLenWithBlank":I
    goto/16 :goto_36

    .line 182
    :cond_d0
    return-void
.end method

.method private greylist-max-o findSection(ILsun/security/util/ManifestDigester$Position;)Z
    .registers 12
    .param p1, "offset"    # I
    .param p2, "pos"    # Lsun/security/util/ManifestDigester$Position;

    .line 68
    move v0, p1

    .local v0, "i":I
    iget-object v1, p0, Lsun/security/util/ManifestDigester;->rawBytes:[B

    array-length v1, v1

    .line 69
    .local v1, "len":I
    move v2, p1

    .line 71
    .local v2, "last":I
    const/4 v3, 0x1

    .line 73
    .local v3, "allBlank":Z
    const/4 v4, -0x1

    iput v4, p2, Lsun/security/util/ManifestDigester$Position;->endOfFirstLine:I

    .line 75
    :goto_9
    if-ge v0, v1, :cond_4e

    .line 76
    iget-object v5, p0, Lsun/security/util/ManifestDigester;->rawBytes:[B

    aget-byte v5, v5, v0

    .line 77
    .local v5, "b":B
    const/4 v6, 0x1

    sparse-switch v5, :sswitch_data_50

    .line 102
    const/4 v3, 0x0

    goto :goto_4b

    .line 79
    :sswitch_15
    iget v7, p2, Lsun/security/util/ManifestDigester$Position;->endOfFirstLine:I

    if-ne v7, v4, :cond_1d

    .line 80
    add-int/lit8 v7, v0, -0x1

    iput v7, p2, Lsun/security/util/ManifestDigester$Position;->endOfFirstLine:I

    .line 81
    :cond_1d
    if-ge v0, v1, :cond_2b

    iget-object v7, p0, Lsun/security/util/ManifestDigester;->rawBytes:[B

    add-int/lit8 v8, v0, 0x1

    aget-byte v7, v7, v8

    const/16 v8, 0xa

    if-ne v7, v8, :cond_2b

    .line 82
    add-int/lit8 v0, v0, 0x1

    .line 85
    :cond_2b
    :sswitch_2b
    iget v7, p2, Lsun/security/util/ManifestDigester$Position;->endOfFirstLine:I

    if-ne v7, v4, :cond_33

    .line 86
    add-int/lit8 v7, v0, -0x1

    iput v7, p2, Lsun/security/util/ManifestDigester$Position;->endOfFirstLine:I

    .line 87
    :cond_33
    if-nez v3, :cond_3d

    add-int/lit8 v7, v1, -0x1

    if-ne v0, v7, :cond_3a

    goto :goto_3d

    .line 97
    :cond_3a
    move v2, v0

    .line 98
    const/4 v3, 0x1

    .line 100
    goto :goto_4b

    .line 88
    :cond_3d
    :goto_3d
    add-int/lit8 v4, v1, -0x1

    if-ne v0, v4, :cond_44

    .line 89
    iput v0, p2, Lsun/security/util/ManifestDigester$Position;->endOfSection:I

    goto :goto_46

    .line 91
    :cond_44
    iput v2, p2, Lsun/security/util/ManifestDigester$Position;->endOfSection:I

    .line 92
    :goto_46
    add-int/lit8 v4, v0, 0x1

    iput v4, p2, Lsun/security/util/ManifestDigester$Position;->startOfNext:I

    .line 93
    return v6

    .line 105
    :goto_4b
    nop

    .end local v5    # "b":B
    add-int/2addr v0, v6

    .line 106
    goto :goto_9

    .line 107
    :cond_4e
    const/4 v4, 0x0

    return v4

    :sswitch_data_50
    .sparse-switch
        0xa -> :sswitch_2b
        0xd -> :sswitch_15
    .end sparse-switch
.end method

.method private greylist-max-o isNameAttr([BI)Z
    .registers 5
    .param p1, "bytes"    # [B
    .param p2, "start"    # I

    .line 186
    aget-byte v0, p1, p2

    const/16 v1, 0x4e

    if-eq v0, v1, :cond_c

    aget-byte v0, p1, p2

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_4e

    :cond_c
    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    const/16 v1, 0x61

    if-eq v0, v1, :cond_1c

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    const/16 v1, 0x41

    if-ne v0, v1, :cond_4e

    :cond_1c
    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    const/16 v1, 0x6d

    if-eq v0, v1, :cond_2c

    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    const/16 v1, 0x4d

    if-ne v0, v1, :cond_4e

    :cond_2c
    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    const/16 v1, 0x65

    if-eq v0, v1, :cond_3c

    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    const/16 v1, 0x45

    if-ne v0, v1, :cond_4e

    :cond_3c
    add-int/lit8 v0, p2, 0x4

    aget-byte v0, p1, v0

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_4e

    add-int/lit8 v0, p2, 0x5

    aget-byte v0, p1, v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_4e

    const/4 v0, 0x1

    goto :goto_4f

    :cond_4e
    const/4 v0, 0x0

    :goto_4f
    return v0
.end method


# virtual methods
.method public greylist get(Ljava/lang/String;Z)Lsun/security/util/ManifestDigester$Entry;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "oldStyle"    # Z

    .line 258
    iget-object v0, p0, Lsun/security/util/ManifestDigester;->entries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/util/ManifestDigester$Entry;

    .line 259
    .local v0, "e":Lsun/security/util/ManifestDigester$Entry;
    if-eqz v0, :cond_c

    .line 260
    iput-boolean p2, v0, Lsun/security/util/ManifestDigester$Entry;->oldStyle:Z

    .line 261
    :cond_c
    return-object v0
.end method

.method public greylist manifestDigest(Ljava/security/MessageDigest;)[B
    .registers 5
    .param p1, "md"    # Ljava/security/MessageDigest;

    .line 266
    invoke-virtual {p1}, Ljava/security/MessageDigest;->reset()V

    .line 267
    iget-object v0, p0, Lsun/security/util/ManifestDigester;->rawBytes:[B

    iget-object v1, p0, Lsun/security/util/ManifestDigester;->rawBytes:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 268
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method
