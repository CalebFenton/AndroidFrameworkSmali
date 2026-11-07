.class Landroid/util/jar/StrictJarManifestReader;
.super Ljava/lang/Object;
.source "StrictJarManifestReader.java"


# instance fields
.field private final blacklist attributeNameCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes$Name;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist buf:[B

.field private blacklist consecutiveLineBreaks:I

.field private final blacklist endOfMainSection:I

.field private blacklist name:Ljava/util/jar/Attributes$Name;

.field private blacklist pos:I

.field private blacklist value:Ljava/lang/String;

.field private final blacklist valueBuffer:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor blacklist <init>([BLjava/util/jar/Attributes;)V
    .registers 5
    .param p1, "buf"    # [B
    .param p2, "main"    # Ljava/util/jar/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/util/jar/StrictJarManifestReader;->attributeNameCache:Ljava/util/HashMap;

    .line 36
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Landroid/util/jar/StrictJarManifestReader;->valueBuffer:Ljava/io/ByteArrayOutputStream;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    .line 51
    iput-object p1, p0, Landroid/util/jar/StrictJarManifestReader;->buf:[B

    .line 52
    :goto_18
    invoke-direct {p0}, Landroid/util/jar/StrictJarManifestReader;->readHeader()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 53
    iget-object v0, p0, Landroid/util/jar/StrictJarManifestReader;->name:Ljava/util/jar/Attributes$Name;

    iget-object v1, p0, Landroid/util/jar/StrictJarManifestReader;->value:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    .line 55
    :cond_26
    iget v0, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    iput v0, p0, Landroid/util/jar/StrictJarManifestReader;->endOfMainSection:I

    .line 56
    return-void
.end method

.method private blacklist readHeader()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget v0, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_9

    .line 103
    iput v1, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    .line 104
    return v1

    .line 106
    :cond_9
    invoke-direct {p0}, Landroid/util/jar/StrictJarManifestReader;->readName()V

    .line 107
    iput v1, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    .line 108
    invoke-direct {p0}, Landroid/util/jar/StrictJarManifestReader;->readValue()V

    .line 111
    iget v0, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    if-lez v0, :cond_16

    move v1, v2

    :cond_16
    return v1
.end method

.method private blacklist readName()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    iget v0, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    .line 117
    .local v0, "mark":I
    :goto_2
    iget v1, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    iget-object v2, p0, Landroid/util/jar/StrictJarManifestReader;->buf:[B

    array-length v2, v2

    if-ge v1, v2, :cond_6d

    .line 118
    iget-object v1, p0, Landroid/util/jar/StrictJarManifestReader;->buf:[B

    iget v2, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    aget-byte v1, v1, v2

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_18

    .line 119
    goto :goto_2

    .line 122
    :cond_18
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/util/jar/StrictJarManifestReader;->buf:[B

    iget v3, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v0, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 124
    .local v1, "nameString":Ljava/lang/String;
    iget-object v2, p0, Landroid/util/jar/StrictJarManifestReader;->buf:[B

    iget v3, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    aget-byte v2, v2, v3

    const/16 v3, 0x20

    if-ne v2, v3, :cond_5d

    .line 129
    :try_start_34
    iget-object v2, p0, Landroid/util/jar/StrictJarManifestReader;->attributeNameCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/jar/Attributes$Name;

    iput-object v2, p0, Landroid/util/jar/StrictJarManifestReader;->name:Ljava/util/jar/Attributes$Name;

    .line 130
    iget-object v2, p0, Landroid/util/jar/StrictJarManifestReader;->name:Ljava/util/jar/Attributes$Name;

    if-nez v2, :cond_50

    .line 131
    new-instance v2, Ljava/util/jar/Attributes$Name;

    invoke-direct {v2, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Landroid/util/jar/StrictJarManifestReader;->name:Ljava/util/jar/Attributes$Name;

    .line 132
    iget-object v2, p0, Landroid/util/jar/StrictJarManifestReader;->attributeNameCache:Ljava/util/HashMap;

    iget-object v3, p0, Landroid/util/jar/StrictJarManifestReader;->name:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_50
    .catch Ljava/lang/IllegalArgumentException; {:try_start_34 .. :try_end_50} :catch_52

    .line 137
    :cond_50
    nop

    .line 138
    return-void

    .line 134
    :catch_52
    move-exception v2

    .line 136
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 125
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_5d
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid value for attribute \'%s\'"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 140
    .end local v1    # "nameString":Ljava/lang/String;
    :cond_6d
    return-void
.end method

.method private blacklist readValue()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "lastCr":Z
    iget v1, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    .line 145
    .local v1, "mark":I
    iget v2, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    .line 146
    .local v2, "last":I
    iget-object v3, p0, Landroid/util/jar/StrictJarManifestReader;->valueBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 147
    :goto_a
    iget v3, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    iget-object v4, p0, Landroid/util/jar/StrictJarManifestReader;->buf:[B

    array-length v4, v4

    if-ge v3, v4, :cond_59

    .line 148
    iget-object v3, p0, Landroid/util/jar/StrictJarManifestReader;->buf:[B

    iget v4, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    aget-byte v3, v3, v4

    .line 149
    .local v3, "next":B
    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_72

    goto :goto_4c

    .line 164
    :sswitch_20
    iget v5, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    if-ne v5, v4, :cond_4c

    .line 165
    iget-object v4, p0, Landroid/util/jar/StrictJarManifestReader;->valueBuffer:Ljava/io/ByteArrayOutputStream;

    iget-object v5, p0, Landroid/util/jar/StrictJarManifestReader;->buf:[B

    sub-int v6, v2, v1

    invoke-virtual {v4, v5, v1, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 166
    iget v1, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    .line 167
    const/4 v4, 0x0

    iput v4, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    .line 168
    goto :goto_a

    .line 160
    :sswitch_33
    const/4 v0, 0x1

    .line 161
    iget v5, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    add-int/2addr v5, v4

    iput v5, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    .line 162
    goto :goto_a

    .line 153
    :sswitch_3a
    if-eqz v0, :cond_3e

    .line 154
    const/4 v0, 0x0

    goto :goto_a

    .line 156
    :cond_3e
    iget v5, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    add-int/2addr v5, v4

    iput v5, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    .line 158
    goto :goto_a

    .line 151
    :sswitch_44
    new-instance v4, Ljava/io/IOException;

    const-string v5, "NUL character in a manifest"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 172
    :cond_4c
    :goto_4c
    iget v5, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    if-lt v5, v4, :cond_56

    .line 173
    iget v5, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    sub-int/2addr v5, v4

    iput v5, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    .line 174
    goto :goto_59

    .line 176
    :cond_56
    iget v2, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    .line 177
    .end local v3    # "next":B
    goto :goto_a

    .line 179
    :cond_59
    :goto_59
    iget-object v3, p0, Landroid/util/jar/StrictJarManifestReader;->valueBuffer:Ljava/io/ByteArrayOutputStream;

    iget-object v4, p0, Landroid/util/jar/StrictJarManifestReader;->buf:[B

    sub-int v5, v2, v1

    invoke-virtual {v3, v4, v1, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 182
    iget-object v3, p0, Landroid/util/jar/StrictJarManifestReader;->valueBuffer:Ljava/io/ByteArrayOutputStream;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/util/jar/StrictJarManifestReader;->value:Ljava/lang/String;

    .line 183
    return-void

    nop

    :sswitch_data_72
    .sparse-switch
        0x0 -> :sswitch_44
        0xa -> :sswitch_3a
        0xd -> :sswitch_33
        0x20 -> :sswitch_20
    .end sparse-switch
.end method


# virtual methods
.method public blacklist getEndOfMainSection()I
    .registers 2

    .line 94
    iget v0, p0, Landroid/util/jar/StrictJarManifestReader;->endOfMainSection:I

    return v0
.end method

.method public blacklist readEntries(Ljava/util/Map;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/jar/StrictJarManifest$Chunk;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    .local p1, "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .local p2, "chunks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/jar/StrictJarManifest$Chunk;>;"
    iget v0, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    .line 60
    .local v0, "mark":I
    :goto_2
    invoke-direct {p0}, Landroid/util/jar/StrictJarManifestReader;->readHeader()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 61
    sget-object v1, Landroid/util/jar/StrictJarManifest;->ATTRIBUTE_NAME_NAME:Ljava/util/jar/Attributes$Name;

    iget-object v2, p0, Landroid/util/jar/StrictJarManifestReader;->name:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 64
    iget-object v1, p0, Landroid/util/jar/StrictJarManifestReader;->value:Ljava/lang/String;

    .line 66
    .local v1, "entryNameValue":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/jar/Attributes;

    .line 67
    .local v2, "entry":Ljava/util/jar/Attributes;
    if-nez v2, :cond_24

    .line 68
    new-instance v3, Ljava/util/jar/Attributes;

    const/16 v4, 0xc

    invoke-direct {v3, v4}, Ljava/util/jar/Attributes;-><init>(I)V

    move-object v2, v3

    .line 71
    :cond_24
    :goto_24
    invoke-direct {p0}, Landroid/util/jar/StrictJarManifestReader;->readHeader()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 72
    iget-object v3, p0, Landroid/util/jar/StrictJarManifestReader;->name:Ljava/util/jar/Attributes$Name;

    iget-object v4, p0, Landroid/util/jar/StrictJarManifestReader;->value:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_24

    .line 75
    :cond_32
    if-eqz p2, :cond_4f

    .line 76
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_47

    .line 85
    new-instance v3, Landroid/util/jar/StrictJarManifest$Chunk;

    iget v4, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    invoke-direct {v3, v0, v4}, Landroid/util/jar/StrictJarManifest$Chunk;-><init>(II)V

    invoke-interface {p2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget v0, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    goto :goto_4f

    .line 83
    :cond_47
    new-instance v3, Ljava/io/IOException;

    const-string v4, "A jar verifier does not support more than one entry with the same name"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 89
    :cond_4f
    :goto_4f
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .end local v1    # "entryNameValue":Ljava/lang/String;
    .end local v2    # "entry":Ljava/util/jar/Attributes;
    goto :goto_2

    .line 62
    :cond_53
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Entry is not named"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_5b
    return-void
.end method
