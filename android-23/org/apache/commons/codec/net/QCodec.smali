.class public Lorg/apache/commons/codec/net/QCodec;
.super Lorg/apache/commons/codec/net/RFC1522Codec;
.source "QCodec.java"

# interfaces
.implements Lorg/apache/commons/codec/StringEncoder;
.implements Lorg/apache/commons/codec/StringDecoder;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static BLANK:B

.field private static final PRINTABLE_CHARS:Ljava/util/BitSet;

.field private static UNDERSCORE:B


# instance fields
.field private charset:Ljava/lang/String;

.field private encodeBlanks:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x20

    #@2
    .line 61
    new-instance v1, Ljava/util/BitSet;

    #@4
    const/16 v2, 0x100

    #@6
    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    #@9
    sput-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    #@b
    .line 65
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    #@d
    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    #@10
    .line 66
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    #@12
    const/16 v2, 0x21

    #@14
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@17
    .line 67
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    #@19
    const/16 v2, 0x22

    #@1b
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@1e
    .line 68
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    #@20
    const/16 v2, 0x23

    #@22
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@25
    .line 69
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    #@27
    const/16 v2, 0x24

    #@29
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@2c
    .line 70
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    #@2e
    const/16 v2, 0x25

    #@30
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@33
    .line 71
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    #@35
    const/16 v2, 0x26

    #@37
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@3a
    .line 72
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    #@3c
    const/16 v2, 0x27

    #@3e
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@41
    .line 73
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    #@43
    const/16 v2, 0x28

    #@45
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@48
    .line 74
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    #@4a
    const/16 v2, 0x29

    #@4c
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@4f
    .line 75
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    #@51
    const/16 v2, 0x2a

    #@53
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@56
    .line 76
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    #@58
    const/16 v2, 0x2b

    #@5a
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@5d
    .line 77
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    #@5f
    const/16 v2, 0x2c

    #@61
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@64
    .line 78
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    #@66
    const/16 v2, 0x2d

    #@68
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@6b
    .line 79
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    #@6d
    const/16 v2, 0x2e

    #@6f
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@72
    .line 80
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    #@74
    const/16 v2, 0x2f

    #@76
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@79
    .line 81
    const/16 v0, 0x30

    #@7b
    .local v0, "i":I
    :goto_0
    const/16 v1, 0x39

    #@7d
    if-gt v0, v1, :cond_0

    #@7f
    .line 82
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    #@81
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    #@84
    .line 81
    add-int/lit8 v0, v0, 0x1

    #@86
    goto :goto_0

    #@87
    .line 84
    :cond_0
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    #@89
    const/16 v2, 0x3a

    #@8b
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@8e
    .line 85
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    #@90
    const/16 v2, 0x3b

    #@92
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@95
    .line 86
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    #@97
    const/16 v2, 0x3c

    #@99
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@9c
    .line 87
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    #@9e
    const/16 v2, 0x3e

    #@a0
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@a3
    .line 88
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    #@a5
    const/16 v2, 0x40

    #@a7
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@aa
    .line 89
    const/16 v0, 0x41

    #@ac
    :goto_1
    const/16 v1, 0x5a

    #@ae
    if-gt v0, v1, :cond_1

    #@b0
    .line 90
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    #@b2
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    #@b5
    .line 89
    add-int/lit8 v0, v0, 0x1

    #@b7
    goto :goto_1

    #@b8
    .line 92
    :cond_1
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    #@ba
    const/16 v2, 0x5b

    #@bc
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@bf
    .line 93
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    #@c1
    const/16 v2, 0x5c

    #@c3
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@c6
    .line 94
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    #@c8
    const/16 v2, 0x5d

    #@ca
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@cd
    .line 95
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    #@cf
    const/16 v2, 0x5e

    #@d1
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@d4
    .line 96
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    #@d6
    const/16 v2, 0x60

    #@d8
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@db
    .line 97
    const/16 v0, 0x61

    #@dd
    :goto_2
    const/16 v1, 0x7a

    #@df
    if-gt v0, v1, :cond_2

    #@e1
    .line 98
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    #@e3
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    #@e6
    .line 97
    add-int/lit8 v0, v0, 0x1

    #@e8
    goto :goto_2

    #@e9
    .line 100
    :cond_2
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    #@eb
    const/16 v2, 0x7b

    #@ed
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@f0
    .line 101
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    #@f2
    const/16 v2, 0x7c

    #@f4
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@f7
    .line 102
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    #@f9
    const/16 v2, 0x7d

    #@fb
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@fe
    .line 103
    sget-object v1, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    #@100
    const/16 v2, 0x7e

    #@102
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@105
    .line 106
    sput-byte v3, Lorg/apache/commons/codec/net/QCodec;->BLANK:B

    #@107
    .line 108
    const/16 v1, 0x5f

    #@109
    sput-byte v1, Lorg/apache/commons/codec/net/QCodec;->UNDERSCORE:B

    #@10b
    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 116
    invoke-direct {p0}, Lorg/apache/commons/codec/net/RFC1522Codec;-><init>()V

    #@3
    .line 56
    const-string/jumbo v0, "UTF-8"

    #@6
    iput-object v0, p0, Lorg/apache/commons/codec/net/QCodec;->charset:Ljava/lang/String;

    #@8
    .line 110
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p0, Lorg/apache/commons/codec/net/QCodec;->encodeBlanks:Z

    #@b
    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "charset"    # Ljava/lang/String;

    #@0
    .prologue
    .line 129
    invoke-direct {p0}, Lorg/apache/commons/codec/net/RFC1522Codec;-><init>()V

    #@3
    .line 56
    const-string/jumbo v0, "UTF-8"

    #@6
    iput-object v0, p0, Lorg/apache/commons/codec/net/QCodec;->charset:Ljava/lang/String;

    #@8
    .line 110
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p0, Lorg/apache/commons/codec/net/QCodec;->encodeBlanks:Z

    #@b
    .line 130
    iput-object p1, p0, Lorg/apache/commons/codec/net/QCodec;->charset:Ljava/lang/String;

    #@d
    .line 128
    return-void
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "pObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 276
    if-nez p1, :cond_0

    #@3
    .line 277
    return-object v0

    #@4
    .line 278
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 279
    check-cast p1, Ljava/lang/String;

    #@a
    .end local p1    # "pObject":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/net/QCodec;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 281
    .restart local p1    # "pObject":Ljava/lang/Object;
    :cond_1
    new-instance v0, Lorg/apache/commons/codec/DecoderException;

    #@11
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v2, "Objects of type "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    .line 282
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    .line 281
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    .line 283
    const-string/jumbo v2, " cannot be decoded using Q codec"

    #@2c
    .line 281
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-direct {v0, v1}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    #@37
    throw v0
.end method

.method public decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "pString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 231
    if-nez p1, :cond_0

    #@3
    .line 232
    return-object v1

    #@4
    .line 235
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/net/QCodec;->decodeText(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 236
    :catch_0
    move-exception v0

    #@a
    .line 237
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lorg/apache/commons/codec/DecoderException;

    #@c
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-direct {v1, v2}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    #@13
    throw v1
.end method

.method protected doDecoding([B)[B
    .locals 6
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 153
    if-nez p1, :cond_0

    #@3
    .line 154
    return-object v4

    #@4
    .line 156
    :cond_0
    const/4 v1, 0x0

    #@5
    .line 157
    .local v1, "hasUnderscores":Z
    const/4 v2, 0x0

    #@6
    .local v2, "i":I
    :goto_0
    array-length v4, p1

    #@7
    if-ge v2, v4, :cond_1

    #@9
    .line 158
    aget-byte v4, p1, v2

    #@b
    sget-byte v5, Lorg/apache/commons/codec/net/QCodec;->UNDERSCORE:B

    #@d
    if-ne v4, v5, :cond_2

    #@f
    .line 159
    const/4 v1, 0x1

    #@10
    .line 163
    :cond_1
    if-eqz v1, :cond_5

    #@12
    .line 164
    array-length v4, p1

    #@13
    new-array v3, v4, [B

    #@15
    .line 165
    .local v3, "tmp":[B
    const/4 v2, 0x0

    #@16
    :goto_1
    array-length v4, p1

    #@17
    if-ge v2, v4, :cond_4

    #@19
    .line 166
    aget-byte v0, p1, v2

    #@1b
    .line 167
    .local v0, "b":B
    sget-byte v4, Lorg/apache/commons/codec/net/QCodec;->UNDERSCORE:B

    #@1d
    if-eq v0, v4, :cond_3

    #@1f
    .line 168
    aput-byte v0, v3, v2

    #@21
    .line 165
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@23
    goto :goto_1

    #@24
    .line 157
    .end local v0    # "b":B
    .end local v3    # "tmp":[B
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@26
    goto :goto_0

    #@27
    .line 170
    .restart local v0    # "b":B
    .restart local v3    # "tmp":[B
    :cond_3
    sget-byte v4, Lorg/apache/commons/codec/net/QCodec;->BLANK:B

    #@29
    aput-byte v4, v3, v2

    #@2b
    goto :goto_2

    #@2c
    .line 173
    .end local v0    # "b":B
    :cond_4
    invoke-static {v3}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->decodeQuotedPrintable([B)[B

    #@2f
    move-result-object v4

    #@30
    return-object v4

    #@31
    .line 175
    .end local v3    # "tmp":[B
    :cond_5
    invoke-static {p1}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->decodeQuotedPrintable([B)[B

    #@34
    move-result-object v4

    #@35
    return-object v4
.end method

.method protected doEncoding([B)[B
    .locals 4
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 138
    if-nez p1, :cond_0

    #@3
    .line 139
    return-object v2

    #@4
    .line 141
    :cond_0
    sget-object v2, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    #@6
    invoke-static {v2, p1}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->encodeQuotedPrintable(Ljava/util/BitSet;[B)[B

    #@9
    move-result-object v0

    #@a
    .line 142
    .local v0, "data":[B
    iget-boolean v2, p0, Lorg/apache/commons/codec/net/QCodec;->encodeBlanks:Z

    #@c
    if-eqz v2, :cond_2

    #@e
    .line 143
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@10
    if-ge v1, v2, :cond_2

    #@12
    .line 144
    aget-byte v2, v0, v1

    #@14
    sget-byte v3, Lorg/apache/commons/codec/net/QCodec;->BLANK:B

    #@16
    if-ne v2, v3, :cond_1

    #@18
    .line 145
    sget-byte v2, Lorg/apache/commons/codec/net/QCodec;->UNDERSCORE:B

    #@1a
    aput-byte v2, v0, v1

    #@1c
    .line 143
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 149
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "pObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 252
    if-nez p1, :cond_0

    #@3
    .line 253
    return-object v0

    #@4
    .line 254
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 255
    check-cast p1, Ljava/lang/String;

    #@a
    .end local p1    # "pObject":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/net/QCodec;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 257
    .restart local p1    # "pObject":Ljava/lang/Object;
    :cond_1
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    #@11
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v2, "Objects of type "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    .line 258
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    .line 257
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    .line 259
    const-string/jumbo v2, " cannot be encoded using Q codec"

    #@2c
    .line 257
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    #@37
    throw v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 212
    if-nez p1, :cond_0

    #@3
    .line 213
    return-object v0

    #@4
    .line 215
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/codec/net/QCodec;->getDefaultCharset()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/net/QCodec;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "pString"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 191
    if-nez p1, :cond_0

    #@3
    .line 192
    return-object v1

    #@4
    .line 195
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/codec/net/QCodec;->encodeText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 196
    :catch_0
    move-exception v0

    #@a
    .line 197
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lorg/apache/commons/codec/EncoderException;

    #@c
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-direct {v1, v2}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    #@13
    throw v1
.end method

.method public getDefaultCharset()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 293
    iget-object v0, p0, Lorg/apache/commons/codec/net/QCodec;->charset:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method protected getEncoding()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 134
    const-string/jumbo v0, "Q"

    #@3
    return-object v0
.end method

.method public isEncodeBlanks()Z
    .locals 1

    #@0
    .prologue
    .line 302
    iget-boolean v0, p0, Lorg/apache/commons/codec/net/QCodec;->encodeBlanks:Z

    #@2
    return v0
.end method

.method public setEncodeBlanks(Z)V
    .locals 0
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 312
    iput-boolean p1, p0, Lorg/apache/commons/codec/net/QCodec;->encodeBlanks:Z

    #@2
    .line 311
    return-void
.end method
