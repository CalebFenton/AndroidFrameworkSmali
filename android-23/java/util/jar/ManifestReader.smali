.class Ljava/util/jar/ManifestReader;
.super Ljava/lang/Object;
.source "ManifestReader.java"


# instance fields
.field private final attributeNameCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes$Name;",
            ">;"
        }
    .end annotation
.end field

.field private final buf:[B

.field private consecutiveLineBreaks:I

.field private final endOfMainSection:I

.field private name:Ljava/util/jar/Attributes$Name;

.field private pos:I

.field private value:Ljava/lang/String;

.field private final valueBuffer:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>([BLjava/util/jar/Attributes;)V
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "main"    # Ljava/util/jar/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Ljava/util/jar/ManifestReader;->attributeNameCache:Ljava/util/HashMap;

    #@a
    .line 35
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@c
    const/16 v1, 0x50

    #@e
    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@11
    iput-object v0, p0, Ljava/util/jar/ManifestReader;->valueBuffer:Ljava/io/ByteArrayOutputStream;

    #@13
    .line 47
    const/4 v0, 0x0

    #@14
    iput v0, p0, Ljava/util/jar/ManifestReader;->consecutiveLineBreaks:I

    #@16
    .line 50
    iput-object p1, p0, Ljava/util/jar/ManifestReader;->buf:[B

    #@18
    .line 51
    :goto_0
    invoke-direct {p0}, Ljava/util/jar/ManifestReader;->readHeader()Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_0

    #@1e
    .line 52
    iget-object v0, p0, Ljava/util/jar/ManifestReader;->name:Ljava/util/jar/Attributes$Name;

    #@20
    iget-object v1, p0, Ljava/util/jar/ManifestReader;->value:Ljava/lang/String;

    #@22
    invoke-virtual {p2, v0, v1}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    goto :goto_0

    #@26
    .line 54
    :cond_0
    iget v0, p0, Ljava/util/jar/ManifestReader;->pos:I

    #@28
    iput v0, p0, Ljava/util/jar/ManifestReader;->endOfMainSection:I

    #@2a
    .line 49
    return-void
.end method

.method private readHeader()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 100
    iget v2, p0, Ljava/util/jar/ManifestReader;->consecutiveLineBreaks:I

    #@4
    if-le v2, v0, :cond_0

    #@6
    .line 102
    iput v1, p0, Ljava/util/jar/ManifestReader;->consecutiveLineBreaks:I

    #@8
    .line 103
    return v1

    #@9
    .line 105
    :cond_0
    invoke-direct {p0}, Ljava/util/jar/ManifestReader;->readName()V

    #@c
    .line 106
    iput v1, p0, Ljava/util/jar/ManifestReader;->consecutiveLineBreaks:I

    #@e
    .line 107
    invoke-direct {p0}, Ljava/util/jar/ManifestReader;->readValue()V

    #@11
    .line 110
    iget v2, p0, Ljava/util/jar/ManifestReader;->consecutiveLineBreaks:I

    #@13
    if-lez v2, :cond_1

    #@15
    :goto_0
    return v0

    #@16
    :cond_1
    move v0, v1

    #@17
    goto :goto_0
.end method

.method private readName()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 114
    iget v1, p0, Ljava/util/jar/ManifestReader;->pos:I

    #@2
    .line 116
    .local v1, "mark":I
    :cond_0
    iget v3, p0, Ljava/util/jar/ManifestReader;->pos:I

    #@4
    iget-object v4, p0, Ljava/util/jar/ManifestReader;->buf:[B

    #@6
    array-length v4, v4

    #@7
    if-ge v3, v4, :cond_3

    #@9
    .line 117
    iget-object v3, p0, Ljava/util/jar/ManifestReader;->buf:[B

    #@b
    iget v4, p0, Ljava/util/jar/ManifestReader;->pos:I

    #@d
    add-int/lit8 v5, v4, 0x1

    #@f
    iput v5, p0, Ljava/util/jar/ManifestReader;->pos:I

    #@11
    aget-byte v3, v3, v4

    #@13
    const/16 v4, 0x3a

    #@15
    if-ne v3, v4, :cond_0

    #@17
    .line 121
    new-instance v2, Ljava/lang/String;

    #@19
    iget-object v3, p0, Ljava/util/jar/ManifestReader;->buf:[B

    #@1b
    iget v4, p0, Ljava/util/jar/ManifestReader;->pos:I

    #@1d
    sub-int/2addr v4, v1

    #@1e
    add-int/lit8 v4, v4, -0x1

    #@20
    sget-object v5, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@22
    invoke-direct {v2, v3, v1, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    #@25
    .line 123
    .local v2, "nameString":Ljava/lang/String;
    iget-object v3, p0, Ljava/util/jar/ManifestReader;->buf:[B

    #@27
    iget v4, p0, Ljava/util/jar/ManifestReader;->pos:I

    #@29
    add-int/lit8 v5, v4, 0x1

    #@2b
    iput v5, p0, Ljava/util/jar/ManifestReader;->pos:I

    #@2d
    aget-byte v3, v3, v4

    #@2f
    const/16 v4, 0x20

    #@31
    if-eq v3, v4, :cond_1

    #@33
    .line 124
    new-instance v3, Ljava/io/IOException;

    #@35
    const-string/jumbo v4, "Invalid value for attribute \'%s\'"

    #@38
    const/4 v5, 0x1

    #@39
    new-array v5, v5, [Ljava/lang/Object;

    #@3b
    const/4 v6, 0x0

    #@3c
    aput-object v2, v5, v6

    #@3e
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@41
    move-result-object v4

    #@42
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@45
    throw v3

    #@46
    .line 128
    :cond_1
    :try_start_0
    iget-object v3, p0, Ljava/util/jar/ManifestReader;->attributeNameCache:Ljava/util/HashMap;

    #@48
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4b
    move-result-object v3

    #@4c
    check-cast v3, Ljava/util/jar/Attributes$Name;

    #@4e
    iput-object v3, p0, Ljava/util/jar/ManifestReader;->name:Ljava/util/jar/Attributes$Name;

    #@50
    .line 129
    iget-object v3, p0, Ljava/util/jar/ManifestReader;->name:Ljava/util/jar/Attributes$Name;

    #@52
    if-nez v3, :cond_2

    #@54
    .line 130
    new-instance v3, Ljava/util/jar/Attributes$Name;

    #@56
    invoke-direct {v3, v2}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    #@59
    iput-object v3, p0, Ljava/util/jar/ManifestReader;->name:Ljava/util/jar/Attributes$Name;

    #@5b
    .line 131
    iget-object v3, p0, Ljava/util/jar/ManifestReader;->attributeNameCache:Ljava/util/HashMap;

    #@5d
    iget-object v4, p0, Ljava/util/jar/ManifestReader;->name:Ljava/util/jar/Attributes$Name;

    #@5f
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@62
    .line 137
    :cond_2
    return-void

    #@63
    .line 133
    :catch_0
    move-exception v0

    #@64
    .line 135
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/io/IOException;

    #@66
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    #@69
    move-result-object v4

    #@6a
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@6d
    throw v3

    #@6e
    .line 113
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "nameString":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private readValue()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 142
    const/4 v1, 0x0

    #@2
    .line 143
    .local v1, "lastCr":Z
    iget v2, p0, Ljava/util/jar/ManifestReader;->pos:I

    #@4
    .line 144
    .local v2, "mark":I
    iget v0, p0, Ljava/util/jar/ManifestReader;->pos:I

    #@6
    .line 145
    .local v0, "last":I
    iget-object v4, p0, Ljava/util/jar/ManifestReader;->valueBuffer:Ljava/io/ByteArrayOutputStream;

    #@8
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    #@b
    .line 146
    :goto_0
    iget v4, p0, Ljava/util/jar/ManifestReader;->pos:I

    #@d
    iget-object v5, p0, Ljava/util/jar/ManifestReader;->buf:[B

    #@f
    array-length v5, v5

    #@10
    if-ge v4, v5, :cond_1

    #@12
    .line 147
    iget-object v4, p0, Ljava/util/jar/ManifestReader;->buf:[B

    #@14
    iget v5, p0, Ljava/util/jar/ManifestReader;->pos:I

    #@16
    add-int/lit8 v6, v5, 0x1

    #@18
    iput v6, p0, Ljava/util/jar/ManifestReader;->pos:I

    #@1a
    aget-byte v3, v4, v5

    #@1c
    .line 148
    .local v3, "next":B
    sparse-switch v3, :sswitch_data_0

    #@1f
    .line 171
    :cond_0
    iget v4, p0, Ljava/util/jar/ManifestReader;->consecutiveLineBreaks:I

    #@21
    if-lt v4, v7, :cond_3

    #@23
    .line 172
    iget v4, p0, Ljava/util/jar/ManifestReader;->pos:I

    #@25
    add-int/lit8 v4, v4, -0x1

    #@27
    iput v4, p0, Ljava/util/jar/ManifestReader;->pos:I

    #@29
    .line 178
    .end local v3    # "next":B
    :cond_1
    iget-object v4, p0, Ljava/util/jar/ManifestReader;->valueBuffer:Ljava/io/ByteArrayOutputStream;

    #@2b
    iget-object v5, p0, Ljava/util/jar/ManifestReader;->buf:[B

    #@2d
    sub-int v6, v0, v2

    #@2f
    invoke-virtual {v4, v5, v2, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@32
    .line 181
    iget-object v4, p0, Ljava/util/jar/ManifestReader;->valueBuffer:Ljava/io/ByteArrayOutputStream;

    #@34
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@36
    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@39
    move-result-object v5

    #@3a
    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    iput-object v4, p0, Ljava/util/jar/ManifestReader;->value:Ljava/lang/String;

    #@40
    .line 141
    return-void

    #@41
    .line 150
    .restart local v3    # "next":B
    :sswitch_0
    new-instance v4, Ljava/io/IOException;

    #@43
    const-string/jumbo v5, "NUL character in a manifest"

    #@46
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@49
    throw v4

    #@4a
    .line 152
    :sswitch_1
    if-eqz v1, :cond_2

    #@4c
    .line 153
    const/4 v1, 0x0

    #@4d
    goto :goto_0

    #@4e
    .line 155
    :cond_2
    iget v4, p0, Ljava/util/jar/ManifestReader;->consecutiveLineBreaks:I

    #@50
    add-int/lit8 v4, v4, 0x1

    #@52
    iput v4, p0, Ljava/util/jar/ManifestReader;->consecutiveLineBreaks:I

    #@54
    goto :goto_0

    #@55
    .line 159
    :sswitch_2
    const/4 v1, 0x1

    #@56
    .line 160
    iget v4, p0, Ljava/util/jar/ManifestReader;->consecutiveLineBreaks:I

    #@58
    add-int/lit8 v4, v4, 0x1

    #@5a
    iput v4, p0, Ljava/util/jar/ManifestReader;->consecutiveLineBreaks:I

    #@5c
    goto :goto_0

    #@5d
    .line 163
    :sswitch_3
    iget v4, p0, Ljava/util/jar/ManifestReader;->consecutiveLineBreaks:I

    #@5f
    if-ne v4, v7, :cond_0

    #@61
    .line 164
    iget-object v4, p0, Ljava/util/jar/ManifestReader;->valueBuffer:Ljava/io/ByteArrayOutputStream;

    #@63
    iget-object v5, p0, Ljava/util/jar/ManifestReader;->buf:[B

    #@65
    sub-int v6, v0, v2

    #@67
    invoke-virtual {v4, v5, v2, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@6a
    .line 165
    iget v2, p0, Ljava/util/jar/ManifestReader;->pos:I

    #@6c
    .line 166
    const/4 v4, 0x0

    #@6d
    iput v4, p0, Ljava/util/jar/ManifestReader;->consecutiveLineBreaks:I

    #@6f
    goto :goto_0

    #@70
    .line 175
    :cond_3
    iget v0, p0, Ljava/util/jar/ManifestReader;->pos:I

    #@72
    goto :goto_0

    #@73
    .line 148
    nop

    #@74
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0xd -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public getEndOfMainSection()I
    .locals 1

    #@0
    .prologue
    .line 93
    iget v0, p0, Ljava/util/jar/ManifestReader;->endOfMainSection:I

    #@2
    return v0
.end method

.method public readEntries(Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Manifest$Chunk;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 58
    .local p1, "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .local p2, "chunks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/jar/Manifest$Chunk;>;"
    iget v2, p0, Ljava/util/jar/ManifestReader;->pos:I

    #@2
    .line 59
    .local v2, "mark":I
    :goto_0
    invoke-direct {p0}, Ljava/util/jar/ManifestReader;->readHeader()Z

    #@5
    move-result v3

    #@6
    if-eqz v3, :cond_5

    #@8
    .line 60
    sget-object v3, Ljava/util/jar/Attributes$Name;->NAME:Ljava/util/jar/Attributes$Name;

    #@a
    iget-object v4, p0, Ljava/util/jar/ManifestReader;->name:Ljava/util/jar/Attributes$Name;

    #@c
    invoke-virtual {v3, v4}, Ljava/util/jar/Attributes$Name;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v3

    #@10
    if-nez v3, :cond_0

    #@12
    .line 61
    new-instance v3, Ljava/io/IOException;

    #@14
    const-string/jumbo v4, "Entry is not named"

    #@17
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v3

    #@1b
    .line 63
    :cond_0
    iget-object v1, p0, Ljava/util/jar/ManifestReader;->value:Ljava/lang/String;

    #@1d
    .line 65
    .local v1, "entryNameValue":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Ljava/util/jar/Attributes;

    #@23
    .line 66
    .local v0, "entry":Ljava/util/jar/Attributes;
    if-nez v0, :cond_1

    #@25
    .line 67
    new-instance v0, Ljava/util/jar/Attributes;

    #@27
    .end local v0    # "entry":Ljava/util/jar/Attributes;
    const/16 v3, 0xc

    #@29
    invoke-direct {v0, v3}, Ljava/util/jar/Attributes;-><init>(I)V

    #@2c
    .line 70
    .restart local v0    # "entry":Ljava/util/jar/Attributes;
    :cond_1
    :goto_1
    invoke-direct {p0}, Ljava/util/jar/ManifestReader;->readHeader()Z

    #@2f
    move-result v3

    #@30
    if-eqz v3, :cond_2

    #@32
    .line 71
    iget-object v3, p0, Ljava/util/jar/ManifestReader;->name:Ljava/util/jar/Attributes$Name;

    #@34
    iget-object v4, p0, Ljava/util/jar/ManifestReader;->value:Ljava/lang/String;

    #@36
    invoke-virtual {v0, v3, v4}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@39
    goto :goto_1

    #@3a
    .line 74
    :cond_2
    if-eqz p2, :cond_4

    #@3c
    .line 75
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    move-result-object v3

    #@40
    if-eqz v3, :cond_3

    #@42
    .line 82
    new-instance v3, Ljava/io/IOException;

    #@44
    const-string/jumbo v4, "A jar verifier does not support more than one entry with the same name"

    #@47
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v3

    #@4b
    .line 84
    :cond_3
    new-instance v3, Ljava/util/jar/Manifest$Chunk;

    #@4d
    iget v4, p0, Ljava/util/jar/ManifestReader;->pos:I

    #@4f
    invoke-direct {v3, v2, v4}, Ljava/util/jar/Manifest$Chunk;-><init>(II)V

    #@52
    invoke-interface {p2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@55
    .line 85
    iget v2, p0, Ljava/util/jar/ManifestReader;->pos:I

    #@57
    .line 88
    :cond_4
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5a
    goto :goto_0

    #@5b
    .line 57
    .end local v0    # "entry":Ljava/util/jar/Attributes;
    .end local v1    # "entryNameValue":Ljava/lang/String;
    :cond_5
    return-void
.end method
