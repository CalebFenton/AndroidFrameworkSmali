.class public Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;
.super Ljava/lang/Object;
.source "ASN1StreamParser.java"


# instance fields
.field private final _in:Ljava/io/InputStream;

.field private final _limit:I

.field private final tmpBuffers:[[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 19
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->findLimit(Ljava/io/InputStream;)I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    #@7
    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "limit"    # I

    #@0
    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 26
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    #@5
    .line 27
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    #@7
    .line 29
    const/16 v0, 0xb

    #@9
    new-array v0, v0, [[B

    #@b
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->tmpBuffers:[[B

    #@d
    .line 24
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "encoding"    # [B

    #@0
    .prologue
    .line 35
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@2
    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@5
    array-length v1, p1

    #@6
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    #@9
    .line 33
    return-void
.end method

.method private set00Check(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    #@2
    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 227
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    #@8
    check-cast v0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    #@a
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->setEofOn00(Z)V

    #@d
    .line 223
    :cond_0
    return-void
.end method


# virtual methods
.method readImplicit(ZI)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 2
    .param p1, "constructed"    # Z
    .param p2, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    #@2
    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 62
    if-nez p1, :cond_0

    #@8
    .line 64
    new-instance v0, Ljava/io/IOException;

    #@a
    const-string/jumbo v1, "indefinite length primitive encoding encountered"

    #@d
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 67
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readIndef(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@14
    move-result-object v0

    #@15
    return-object v0

    #@16
    .line 70
    :cond_1
    if-eqz p1, :cond_2

    #@18
    .line 72
    sparse-switch p2, :sswitch_data_0

    #@1b
    .line 96
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    #@1d
    const-string/jumbo v1, "implicit tagging not implemented"

    #@20
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 75
    :sswitch_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSetParser;

    #@26
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/DERSetParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    #@29
    return-object v0

    #@2a
    .line 77
    :sswitch_1
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSequenceParser;

    #@2c
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/DERSequenceParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    #@2f
    return-object v0

    #@30
    .line 79
    :sswitch_2
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;

    #@32
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    #@35
    return-object v0

    #@36
    .line 84
    :cond_2
    sparse-switch p2, :sswitch_data_1

    #@39
    goto :goto_0

    #@3a
    .line 91
    :sswitch_3
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DEROctetStringParser;

    #@3c
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    #@3e
    check-cast v0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    #@40
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DEROctetStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)V

    #@43
    return-object v1

    #@44
    .line 87
    :sswitch_4
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    #@46
    const-string/jumbo v1, "sequences must use constructed encoding (see X.690 8.9.1/8.10.1)"

    #@49
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@4c
    throw v0

    #@4d
    .line 89
    :sswitch_5
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    #@4f
    const-string/jumbo v1, "sets must use constructed encoding (see X.690 8.11.1/8.12.1)"

    #@52
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@55
    throw v0

    #@56
    .line 72
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x10 -> :sswitch_1
        0x11 -> :sswitch_0
    .end sparse-switch

    #@64
    .line 84
    :sswitch_data_1
    .sparse-switch
        0x4 -> :sswitch_3
        0x10 -> :sswitch_5
        0x11 -> :sswitch_4
    .end sparse-switch
.end method

.method readIndef(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 3
    .param p1, "tagValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 54
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "unknown BER object encountered: 0x"

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 46
    :sswitch_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERExternalParser;

    #@23
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/DERExternalParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    #@26
    return-object v0

    #@27
    .line 48
    :sswitch_1
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;

    #@29
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    #@2c
    return-object v0

    #@2d
    .line 50
    :sswitch_2
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BERSequenceParser;

    #@2f
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/BERSequenceParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    #@32
    return-object v0

    #@33
    .line 52
    :sswitch_3
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BERSetParser;

    #@35
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/BERSetParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    #@38
    return-object v0

    #@39
    .line 43
    nop

    #@3a
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
        0x10 -> :sswitch_2
        0x11 -> :sswitch_3
    .end sparse-switch
.end method

.method public readObject()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 125
    iget-object v8, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    #@3
    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    #@6
    move-result v6

    #@7
    .line 126
    .local v6, "tag":I
    const/4 v8, -0x1

    #@8
    if-ne v6, v8, :cond_0

    #@a
    .line 128
    const/4 v8, 0x0

    #@b
    return-object v8

    #@c
    .line 134
    :cond_0
    invoke-direct {p0, v9}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->set00Check(Z)V

    #@f
    .line 139
    iget-object v8, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    #@11
    invoke-static {v8, v6}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readTagNumber(Ljava/io/InputStream;I)I

    #@14
    move-result v7

    #@15
    .line 141
    .local v7, "tagNo":I
    and-int/lit8 v8, v6, 0x20

    #@17
    if-eqz v8, :cond_1

    #@19
    const/4 v3, 0x1

    #@1a
    .line 146
    .local v3, "isConstructed":Z
    :goto_0
    iget-object v8, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    #@1c
    iget v9, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    #@1e
    invoke-static {v8, v9}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readLength(Ljava/io/InputStream;I)I

    #@21
    move-result v4

    #@22
    .line 148
    .local v4, "length":I
    if-gez v4, :cond_5

    #@24
    .line 150
    if-nez v3, :cond_2

    #@26
    .line 152
    new-instance v8, Ljava/io/IOException;

    #@28
    const-string/jumbo v9, "indefinite length primitive encoding encountered"

    #@2b
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v8

    #@2f
    .line 141
    .end local v3    # "isConstructed":Z
    .end local v4    # "length":I
    :cond_1
    const/4 v3, 0x0

    #@30
    .restart local v3    # "isConstructed":Z
    goto :goto_0

    #@31
    .line 155
    .restart local v4    # "length":I
    :cond_2
    new-instance v2, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    #@33
    iget-object v8, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    #@35
    iget v9, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    #@37
    invoke-direct {v2, v8, v9}, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    #@3a
    .line 156
    .local v2, "indIn":Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;
    new-instance v5, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    #@3c
    iget v8, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    #@3e
    invoke-direct {v5, v2, v8}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    #@41
    .line 158
    .local v5, "sp":Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;
    and-int/lit8 v8, v6, 0x40

    #@43
    if-eqz v8, :cond_3

    #@45
    .line 160
    new-instance v8, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;

    #@47
    invoke-direct {v8, v7, v5}, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    #@4a
    return-object v8

    #@4b
    .line 163
    :cond_3
    and-int/lit16 v8, v6, 0x80

    #@4d
    if-eqz v8, :cond_4

    #@4f
    .line 165
    new-instance v8, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;

    #@51
    const/4 v9, 0x1

    #@52
    invoke-direct {v8, v9, v7, v5}, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    #@55
    return-object v8

    #@56
    .line 168
    :cond_4
    invoke-virtual {v5, v7}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readIndef(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@59
    move-result-object v8

    #@5a
    return-object v8

    #@5b
    .line 172
    .end local v2    # "indIn":Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;
    .end local v5    # "sp":Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;
    :cond_5
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    #@5d
    iget-object v8, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    #@5f
    invoke-direct {v0, v8, v4}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    #@62
    .line 174
    .local v0, "defIn":Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    and-int/lit8 v8, v6, 0x40

    #@64
    if-eqz v8, :cond_6

    #@66
    .line 176
    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;

    #@68
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    #@6b
    move-result-object v9

    #@6c
    invoke-direct {v8, v3, v7, v9}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;-><init>(ZI[B)V

    #@6f
    return-object v8

    #@70
    .line 179
    :cond_6
    and-int/lit16 v8, v6, 0x80

    #@72
    if-eqz v8, :cond_7

    #@74
    .line 181
    new-instance v8, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;

    #@76
    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    #@78
    invoke-direct {v9, v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    #@7b
    invoke-direct {v8, v3, v7, v9}, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    #@7e
    return-object v8

    #@7f
    .line 184
    :cond_7
    if-eqz v3, :cond_8

    #@81
    .line 187
    sparse-switch v7, :sswitch_data_0

    #@84
    .line 201
    new-instance v8, Ljava/io/IOException;

    #@86
    new-instance v9, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    const-string/jumbo v10, "unknown tag "

    #@8e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v9

    #@92
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@95
    move-result-object v9

    #@96
    const-string/jumbo v10, " encountered"

    #@99
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v9

    #@9d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v9

    #@a1
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@a4
    throw v8

    #@a5
    .line 193
    :sswitch_0
    new-instance v8, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;

    #@a7
    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    #@a9
    invoke-direct {v9, v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    #@ac
    invoke-direct {v8, v9}, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    #@af
    return-object v8

    #@b0
    .line 195
    :sswitch_1
    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERSequenceParser;

    #@b2
    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    #@b4
    invoke-direct {v9, v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    #@b7
    invoke-direct {v8, v9}, Lcom/android/org/bouncycastle/asn1/DERSequenceParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    #@ba
    return-object v8

    #@bb
    .line 197
    :sswitch_2
    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERSetParser;

    #@bd
    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    #@bf
    invoke-direct {v9, v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    #@c2
    invoke-direct {v8, v9}, Lcom/android/org/bouncycastle/asn1/DERSetParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    #@c5
    return-object v8

    #@c6
    .line 199
    :sswitch_3
    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERExternalParser;

    #@c8
    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    #@ca
    invoke-direct {v9, v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    #@cd
    invoke-direct {v8, v9}, Lcom/android/org/bouncycastle/asn1/DERExternalParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    #@d0
    return-object v8

    #@d1
    .line 206
    :cond_8
    packed-switch v7, :pswitch_data_0

    #@d4
    .line 214
    :try_start_0
    iget-object v8, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->tmpBuffers:[[B

    #@d6
    invoke-static {v7, v0, v8}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->createPrimitiveDERObject(ILcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@d9
    move-result-object v8

    #@da
    return-object v8

    #@db
    .line 209
    :pswitch_0
    new-instance v8, Lcom/android/org/bouncycastle/asn1/DEROctetStringParser;

    #@dd
    invoke-direct {v8, v0}, Lcom/android/org/bouncycastle/asn1/DEROctetStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)V

    #@e0
    return-object v8

    #@e1
    .line 217
    :catch_0
    move-exception v1

    #@e2
    .line 218
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v8, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    #@e4
    const-string/jumbo v9, "corrupted stream detected"

    #@e7
    invoke-direct {v8, v9, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@ea
    throw v8

    #@eb
    .line 187
    nop

    #@ec
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_3
        0x10 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch

    #@fe
    .line 206
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method readTaggedObject(ZI)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 6
    .param p1, "constructed"    # Z
    .param p2, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 101
    if-nez p1, :cond_0

    #@4
    .line 104
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    #@6
    check-cast v0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    #@8
    .line 105
    .local v0, "defIn":Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@a
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    #@c
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    #@f
    move-result-object v4

    #@10
    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    #@13
    invoke-direct {v2, v5, p2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@16
    return-object v2

    #@17
    .line 108
    .end local v0    # "defIn":Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readVector()Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@1a
    move-result-object v1

    #@1b
    .line 110
    .local v1, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    #@1d
    instance-of v2, v2, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    #@1f
    if-eqz v2, :cond_2

    #@21
    .line 112
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    #@24
    move-result v2

    #@25
    if-ne v2, v4, :cond_1

    #@27
    .line 113
    new-instance v2, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    #@29
    invoke-virtual {v1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@2c
    move-result-object v3

    #@2d
    invoke-direct {v2, v4, p2, v3}, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@30
    .line 112
    :goto_0
    return-object v2

    #@31
    .line 114
    :cond_1
    new-instance v2, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    #@33
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/BERFactory;->createSequence(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/BERSequence;

    #@36
    move-result-object v3

    #@37
    invoke-direct {v2, v5, p2, v3}, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@3a
    goto :goto_0

    #@3b
    .line 117
    :cond_2
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    #@3e
    move-result v2

    #@3f
    if-ne v2, v4, :cond_3

    #@41
    .line 118
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@43
    invoke-virtual {v1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@46
    move-result-object v3

    #@47
    invoke-direct {v2, v4, p2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@4a
    .line 117
    :goto_1
    return-object v2

    #@4b
    .line 119
    :cond_3
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@4d
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/DERFactory;->createSequence(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@50
    move-result-object v3

    #@51
    invoke-direct {v2, v5, p2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@54
    goto :goto_1
.end method

.method readVector()Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 233
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 236
    .local v1, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :goto_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@8
    move-result-object v0

    #@9
    .local v0, "obj":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    if-eqz v0, :cond_1

    #@b
    .line 238
    instance-of v2, v0, Lcom/android/org/bouncycastle/asn1/InMemoryRepresentable;

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 240
    check-cast v0, Lcom/android/org/bouncycastle/asn1/InMemoryRepresentable;

    #@11
    .end local v0    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/InMemoryRepresentable;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@18
    goto :goto_0

    #@19
    .line 244
    .restart local v0    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_0
    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@20
    goto :goto_0

    #@21
    .line 248
    :cond_1
    return-object v1
.end method
