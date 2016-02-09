.class public Ljava/util/jar/Manifest;
.super Ljava/lang/Object;
.source "Manifest.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/jar/Manifest$Chunk;
    }
.end annotation


# static fields
.field static final LINE_LENGTH_LIMIT:I = 0x48

.field private static final LINE_SEPARATOR:[B

.field private static final VALUE_SEPARATOR:[B


# instance fields
.field private chunks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Manifest$Chunk;",
            ">;"
        }
    .end annotation
.end field

.field private entries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;"
        }
    .end annotation
.end field

.field private mainAttributes:Ljava/util/jar/Attributes;

.field private mainEnd:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    .line 40
    new-array v0, v1, [B

    #@3
    fill-array-data v0, :array_0

    #@6
    sput-object v0, Ljava/util/jar/Manifest;->LINE_SEPARATOR:[B

    #@8
    .line 42
    new-array v0, v1, [B

    #@a
    fill-array-data v0, :array_1

    #@d
    sput-object v0, Ljava/util/jar/Manifest;->VALUE_SEPARATOR:[B

    #@f
    .line 37
    return-void

    #@10
    .line 40
    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    #@15
    .line 42
    nop

    #@16
    :array_1
    .array-data 1
        0x3at
        0x20t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 71
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/HashMap;

    #@a
    .line 72
    new-instance v0, Ljava/util/jar/Attributes;

    #@c
    invoke-direct {v0}, Ljava/util/jar/Attributes;-><init>()V

    #@f
    iput-object v0, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    #@11
    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 85
    invoke-direct {p0}, Ljava/util/jar/Manifest;-><init>()V

    #@3
    .line 86
    invoke-static {p1}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B

    #@6
    move-result-object v0

    #@7
    invoke-direct {p0, v0}, Ljava/util/jar/Manifest;->read([B)V

    #@a
    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/util/jar/Manifest;)V
    .locals 0
    .param p1, "man"    # Ljava/util/jar/Manifest;

    #@0
    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 98
    invoke-direct {p0, p1}, Ljava/util/jar/Manifest;->cloneAttributesAndEntriesFrom(Ljava/util/jar/Manifest;)V

    #@6
    .line 97
    return-void
.end method

.method constructor <init>([BZ)V
    .locals 1
    .param p1, "manifestBytes"    # [B
    .param p2, "readChunks"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 102
    invoke-direct {p0}, Ljava/util/jar/Manifest;-><init>()V

    #@3
    .line 103
    if-eqz p2, :cond_0

    #@5
    .line 104
    new-instance v0, Ljava/util/HashMap;

    #@7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@a
    iput-object v0, p0, Ljava/util/jar/Manifest;->chunks:Ljava/util/HashMap;

    #@c
    .line 106
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/jar/Manifest;->read([B)V

    #@f
    .line 101
    return-void
.end method

.method private final cloneAttributesAndEntriesFrom(Ljava/util/jar/Manifest;)V
    .locals 1
    .param p1, "other"    # Ljava/util/jar/Manifest;

    #@0
    .prologue
    .line 171
    iget-object v0, p1, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    #@2
    invoke-virtual {v0}, Ljava/util/jar/Attributes;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/jar/Attributes;

    #@8
    iput-object v0, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    #@a
    .line 172
    invoke-virtual {p1}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/util/HashMap;

    #@10
    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/util/HashMap;

    #@16
    iput-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/HashMap;

    #@18
    .line 170
    return-void
.end method

.method private read([B)V
    .locals 3
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 201
    array-length v1, p1

    #@1
    if-nez v1, :cond_0

    #@3
    .line 202
    return-void

    #@4
    .line 205
    :cond_0
    new-instance v0, Ljava/util/jar/ManifestReader;

    #@6
    iget-object v1, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    #@8
    invoke-direct {v0, p1, v1}, Ljava/util/jar/ManifestReader;-><init>([BLjava/util/jar/Attributes;)V

    #@b
    .line 206
    .local v0, "im":Ljava/util/jar/ManifestReader;
    invoke-virtual {v0}, Ljava/util/jar/ManifestReader;->getEndOfMainSection()I

    #@e
    move-result v1

    #@f
    iput v1, p0, Ljava/util/jar/Manifest;->mainEnd:I

    #@11
    .line 207
    iget-object v1, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/HashMap;

    #@13
    iget-object v2, p0, Ljava/util/jar/Manifest;->chunks:Ljava/util/HashMap;

    #@15
    invoke-virtual {v0, v1, v2}, Ljava/util/jar/ManifestReader;->readEntries(Ljava/util/Map;Ljava/util/Map;)V

    #@18
    .line 200
    return-void
.end method

.method static write(Ljava/util/jar/Manifest;Ljava/io/OutputStream;)V
    .locals 10
    .param p0, "manifest"    # Ljava/util/jar/Manifest;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 267
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@2
    invoke-virtual {v9}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    #@5
    move-result-object v2

    #@6
    .line 268
    .local v2, "encoder":Ljava/nio/charset/CharsetEncoder;
    const/16 v9, 0x48

    #@8
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@b
    move-result-object v1

    #@c
    .line 270
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    sget-object v8, Ljava/util/jar/Attributes$Name;->MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

    #@e
    .line 271
    .local v8, "versionName":Ljava/util/jar/Attributes$Name;
    iget-object v9, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    #@10
    invoke-virtual {v9, v8}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@13
    move-result-object v7

    #@14
    .line 272
    .local v7, "version":Ljava/lang/String;
    if-nez v7, :cond_0

    #@16
    .line 273
    sget-object v8, Ljava/util/jar/Attributes$Name;->SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

    #@18
    .line 274
    iget-object v9, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    #@1a
    invoke-virtual {v9, v8}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@1d
    move-result-object v7

    #@1e
    .line 276
    :cond_0
    if-eqz v7, :cond_2

    #@20
    .line 277
    invoke-static {p1, v8, v7, v2, v1}, Ljava/util/jar/Manifest;->writeEntry(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V

    #@23
    .line 278
    iget-object v9, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    #@25
    invoke-virtual {v9}, Ljava/util/jar/Attributes;->keySet()Ljava/util/Set;

    #@28
    move-result-object v9

    #@29
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@2c
    move-result-object v3

    #@2d
    .line 279
    .local v3, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@30
    move-result v9

    #@31
    if-eqz v9, :cond_2

    #@33
    .line 280
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@36
    move-result-object v6

    #@37
    check-cast v6, Ljava/util/jar/Attributes$Name;

    #@39
    .line 281
    .local v6, "name":Ljava/util/jar/Attributes$Name;
    invoke-virtual {v6, v8}, Ljava/util/jar/Attributes$Name;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v9

    #@3d
    if-nez v9, :cond_1

    #@3f
    .line 282
    iget-object v9, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    #@41
    invoke-virtual {v9, v6}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@44
    move-result-object v9

    #@45
    invoke-static {p1, v6, v9, v2, v1}, Ljava/util/jar/Manifest;->writeEntry(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V

    #@48
    goto :goto_0

    #@49
    .line 286
    .end local v3    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v6    # "name":Ljava/util/jar/Attributes$Name;
    :cond_2
    sget-object v9, Ljava/util/jar/Manifest;->LINE_SEPARATOR:[B

    #@4b
    invoke-virtual {p1, v9}, Ljava/io/OutputStream;->write([B)V

    #@4e
    .line 287
    invoke-virtual {p0}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    #@51
    move-result-object v9

    #@52
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@55
    move-result-object v9

    #@56
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@59
    move-result-object v4

    #@5a
    .line 288
    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@5d
    move-result v9

    #@5e
    if-eqz v9, :cond_4

    #@60
    .line 289
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@63
    move-result-object v5

    #@64
    check-cast v5, Ljava/lang/String;

    #@66
    .line 290
    .local v5, "key":Ljava/lang/String;
    sget-object v9, Ljava/util/jar/Attributes$Name;->NAME:Ljava/util/jar/Attributes$Name;

    #@68
    invoke-static {p1, v9, v5, v2, v1}, Ljava/util/jar/Manifest;->writeEntry(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V

    #@6b
    .line 291
    iget-object v9, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/HashMap;

    #@6d
    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@70
    move-result-object v0

    #@71
    check-cast v0, Ljava/util/jar/Attributes;

    #@73
    .line 292
    .local v0, "attributes":Ljava/util/jar/Attributes;
    invoke-virtual {v0}, Ljava/util/jar/Attributes;->keySet()Ljava/util/Set;

    #@76
    move-result-object v9

    #@77
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@7a
    move-result-object v3

    #@7b
    .line 293
    .restart local v3    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@7e
    move-result v9

    #@7f
    if-eqz v9, :cond_3

    #@81
    .line 294
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@84
    move-result-object v6

    #@85
    check-cast v6, Ljava/util/jar/Attributes$Name;

    #@87
    .line 295
    .restart local v6    # "name":Ljava/util/jar/Attributes$Name;
    invoke-virtual {v0, v6}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@8a
    move-result-object v9

    #@8b
    invoke-static {p1, v6, v9, v2, v1}, Ljava/util/jar/Manifest;->writeEntry(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V

    #@8e
    goto :goto_2

    #@8f
    .line 297
    .end local v6    # "name":Ljava/util/jar/Attributes$Name;
    :cond_3
    sget-object v9, Ljava/util/jar/Manifest;->LINE_SEPARATOR:[B

    #@91
    invoke-virtual {p1, v9}, Ljava/io/OutputStream;->write([B)V

    #@94
    goto :goto_1

    #@95
    .line 266
    .end local v0    # "attributes":Ljava/util/jar/Attributes;
    .end local v3    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v5    # "key":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private static writeEntry(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "name"    # Ljava/util/jar/Attributes$Name;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "encoder"    # Ljava/nio/charset/CharsetEncoder;
    .param p4, "bBuf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 303
    invoke-virtual {p1}, Ljava/util/jar/Attributes$Name;->getName()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 304
    .local v1, "nameString":Ljava/lang/String;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@6
    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@9
    move-result-object v3

    #@a
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    #@d
    .line 305
    sget-object v3, Ljava/util/jar/Manifest;->VALUE_SEPARATOR:[B

    #@f
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    #@12
    .line 307
    invoke-virtual {p3}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    #@15
    .line 308
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@1c
    move-result v4

    #@1d
    rsub-int/lit8 v4, v4, 0x48

    #@1f
    add-int/lit8 v4, v4, -0x2

    #@21
    invoke-virtual {v3, v4}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    #@24
    .line 310
    invoke-static {p2}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    #@27
    move-result-object v0

    #@28
    .line 313
    .local v0, "cBuf":Ljava/nio/CharBuffer;
    :goto_0
    const/4 v3, 0x1

    #@29
    invoke-virtual {p3, v0, p4, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    #@2c
    move-result-object v2

    #@2d
    .line 314
    .local v2, "r":Ljava/nio/charset/CoderResult;
    sget-object v3, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    #@2f
    if-ne v3, v2, :cond_0

    #@31
    .line 315
    invoke-virtual {p3, p4}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    #@34
    move-result-object v2

    #@35
    .line 317
    :cond_0
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->array()[B

    #@38
    move-result-object v3

    #@39
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    #@3c
    move-result v4

    #@3d
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    #@40
    move-result v5

    #@41
    invoke-virtual {p0, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    #@44
    .line 318
    sget-object v3, Ljava/util/jar/Manifest;->LINE_SEPARATOR:[B

    #@46
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    #@49
    .line 319
    sget-object v3, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    #@4b
    if-ne v3, v2, :cond_1

    #@4d
    .line 302
    return-void

    #@4e
    .line 322
    :cond_1
    const/16 v3, 0x20

    #@50
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    #@53
    .line 323
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    #@56
    move-result-object v3

    #@57
    const/16 v4, 0x47

    #@59
    invoke-virtual {v3, v4}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    #@5c
    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@5
    .line 115
    iget-object v0, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    #@7
    invoke-virtual {v0}, Ljava/util/jar/Attributes;->clear()V

    #@a
    .line 113
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 161
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Ljava/util/jar/Manifest;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 166
    .local v1, "result":Ljava/util/jar/Manifest;
    invoke-direct {v1, p0}, Ljava/util/jar/Manifest;->cloneAttributesAndEntriesFrom(Ljava/util/jar/Manifest;)V

    #@9
    .line 167
    return-object v1

    #@a
    .line 162
    .end local v1    # "result":Ljava/util/jar/Manifest;
    :catch_0
    move-exception v0

    #@b
    .line 163
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    #@d
    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@10
    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 231
    if-nez p1, :cond_0

    #@3
    .line 232
    return v2

    #@4
    .line 234
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0}, Ljava/util/jar/Manifest;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v1

    #@c
    if-eq v0, v1, :cond_1

    #@e
    .line 235
    return v2

    #@f
    .line 237
    :cond_1
    iget-object v1, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    #@11
    move-object v0, p1

    #@12
    check-cast v0, Ljava/util/jar/Manifest;

    #@14
    iget-object v0, v0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    #@16
    invoke-virtual {v1, v0}, Ljava/util/jar/Attributes;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v0

    #@1a
    if-nez v0, :cond_2

    #@1c
    .line 238
    return v2

    #@1d
    .line 240
    :cond_2
    invoke-virtual {p0}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    #@20
    move-result-object v0

    #@21
    check-cast p1, Ljava/util/jar/Manifest;

    #@23
    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    #@26
    move-result-object v1

    #@27
    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v0

    #@2b
    return v0
.end method

.method public getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 128
    invoke-virtual {p0}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/util/jar/Attributes;

    #@a
    return-object v0
.end method

.method getChunk(Ljava/lang/String;)Ljava/util/jar/Manifest$Chunk;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 244
    iget-object v0, p0, Ljava/util/jar/Manifest;->chunks:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/jar/Manifest$Chunk;

    #@8
    return-object v0
.end method

.method public getEntries()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 138
    iget-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method public getMainAttributes()Ljava/util/jar/Attributes;
    .locals 1

    #@0
    .prologue
    .line 148
    iget-object v0, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    #@2
    return-object v0
.end method

.method getMainAttributesEnd()I
    .locals 1

    #@0
    .prologue
    .line 252
    iget v0, p0, Ljava/util/jar/Manifest;->mainEnd:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 217
    iget-object v0, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    #@2
    invoke-virtual {v0}, Ljava/util/jar/Attributes;->hashCode()I

    #@5
    move-result v0

    #@6
    invoke-virtual {p0}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    #@d
    move-result v1

    #@e
    xor-int/2addr v0, v1

    #@f
    return v0
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 197
    invoke-static {p1}, Llibcore/io/Streams;->readFullyNoClose(Ljava/io/InputStream;)[B

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ljava/util/jar/Manifest;->read([B)V

    #@7
    .line 196
    return-void
.end method

.method removeChunks()V
    .locals 1

    #@0
    .prologue
    .line 248
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Ljava/util/jar/Manifest;->chunks:Ljava/util/HashMap;

    #@3
    .line 247
    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 185
    invoke-static {p0, p1}, Ljava/util/jar/Manifest;->write(Ljava/util/jar/Manifest;Ljava/io/OutputStream;)V

    #@3
    .line 184
    return-void
.end method
