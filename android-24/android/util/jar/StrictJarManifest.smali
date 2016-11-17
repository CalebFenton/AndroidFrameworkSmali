.class public Landroid/util/jar/StrictJarManifest;
.super Ljava/lang/Object;
.source "StrictJarManifest.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/jar/StrictJarManifest$Chunk;
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
            "Landroid/util/jar/StrictJarManifest$Chunk;",
            ">;"
        }
    .end annotation
.end field

.field private final entries:Ljava/util/HashMap;
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

.field private final mainAttributes:Ljava/util/jar/Attributes;

.field private mainEnd:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    .line 43
    new-array v0, v1, [B

    #@3
    fill-array-data v0, :array_0

    #@6
    sput-object v0, Landroid/util/jar/StrictJarManifest;->LINE_SEPARATOR:[B

    #@8
    .line 45
    new-array v0, v1, [B

    #@a
    fill-array-data v0, :array_1

    #@d
    sput-object v0, Landroid/util/jar/StrictJarManifest;->VALUE_SEPARATOR:[B

    #@f
    .line 40
    return-void

    #@10
    .line 43
    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    #@15
    .line 45
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
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 72
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/util/jar/StrictJarManifest;->entries:Ljava/util/HashMap;

    #@a
    .line 73
    new-instance v0, Ljava/util/jar/Attributes;

    #@c
    invoke-direct {v0}, Ljava/util/jar/Attributes;-><init>()V

    #@f
    iput-object v0, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    #@11
    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/util/jar/StrictJarManifest;)V
    .locals 1
    .param p1, "man"    # Landroid/util/jar/StrictJarManifest;

    #@0
    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 99
    iget-object v0, p1, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    #@5
    invoke-virtual {v0}, Ljava/util/jar/Attributes;->clone()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/util/jar/Attributes;

    #@b
    iput-object v0, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    #@d
    .line 100
    invoke-virtual {p1}, Landroid/util/jar/StrictJarManifest;->getEntries()Ljava/util/Map;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Ljava/util/HashMap;

    #@13
    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Ljava/util/HashMap;

    #@19
    iput-object v0, p0, Landroid/util/jar/StrictJarManifest;->entries:Ljava/util/HashMap;

    #@1b
    .line 98
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
    .line 86
    invoke-direct {p0}, Landroid/util/jar/StrictJarManifest;-><init>()V

    #@3
    .line 87
    invoke-static {p1}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B

    #@6
    move-result-object v0

    #@7
    invoke-direct {p0, v0}, Landroid/util/jar/StrictJarManifest;->read([B)V

    #@a
    .line 85
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
    .line 105
    invoke-direct {p0}, Landroid/util/jar/StrictJarManifest;-><init>()V

    #@3
    .line 106
    if-eqz p2, :cond_0

    #@5
    .line 107
    new-instance v0, Ljava/util/HashMap;

    #@7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@a
    iput-object v0, p0, Landroid/util/jar/StrictJarManifest;->chunks:Ljava/util/HashMap;

    #@c
    .line 109
    :cond_0
    invoke-direct {p0, p1}, Landroid/util/jar/StrictJarManifest;->read([B)V

    #@f
    .line 104
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
    .line 190
    array-length v1, p1

    #@1
    if-nez v1, :cond_0

    #@3
    .line 191
    return-void

    #@4
    .line 194
    :cond_0
    new-instance v0, Landroid/util/jar/StrictJarManifestReader;

    #@6
    iget-object v1, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    #@8
    invoke-direct {v0, p1, v1}, Landroid/util/jar/StrictJarManifestReader;-><init>([BLjava/util/jar/Attributes;)V

    #@b
    .line 195
    .local v0, "im":Landroid/util/jar/StrictJarManifestReader;
    invoke-virtual {v0}, Landroid/util/jar/StrictJarManifestReader;->getEndOfMainSection()I

    #@e
    move-result v1

    #@f
    iput v1, p0, Landroid/util/jar/StrictJarManifest;->mainEnd:I

    #@11
    .line 196
    iget-object v1, p0, Landroid/util/jar/StrictJarManifest;->entries:Ljava/util/HashMap;

    #@13
    iget-object v2, p0, Landroid/util/jar/StrictJarManifest;->chunks:Ljava/util/HashMap;

    #@15
    invoke-virtual {v0, v1, v2}, Landroid/util/jar/StrictJarManifestReader;->readEntries(Ljava/util/Map;Ljava/util/Map;)V

    #@18
    .line 189
    return-void
.end method

.method static write(Landroid/util/jar/StrictJarManifest;Ljava/io/OutputStream;)V
    .locals 10
    .param p0, "manifest"    # Landroid/util/jar/StrictJarManifest;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 256
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@2
    invoke-virtual {v9}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    #@5
    move-result-object v2

    #@6
    .line 257
    .local v2, "encoder":Ljava/nio/charset/CharsetEncoder;
    const/16 v9, 0x48

    #@8
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@b
    move-result-object v1

    #@c
    .line 259
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    sget-object v8, Ljava/util/jar/Attributes$Name;->MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

    #@e
    .line 260
    .local v8, "versionName":Ljava/util/jar/Attributes$Name;
    iget-object v9, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    #@10
    invoke-virtual {v9, v8}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@13
    move-result-object v7

    #@14
    .line 261
    .local v7, "version":Ljava/lang/String;
    if-nez v7, :cond_0

    #@16
    .line 262
    sget-object v8, Ljava/util/jar/Attributes$Name;->SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

    #@18
    .line 263
    iget-object v9, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    #@1a
    invoke-virtual {v9, v8}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@1d
    move-result-object v7

    #@1e
    .line 265
    :cond_0
    if-eqz v7, :cond_2

    #@20
    .line 266
    invoke-static {p1, v8, v7, v2, v1}, Landroid/util/jar/StrictJarManifest;->writeEntry(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V

    #@23
    .line 267
    iget-object v9, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    #@25
    invoke-virtual {v9}, Ljava/util/jar/Attributes;->keySet()Ljava/util/Set;

    #@28
    move-result-object v9

    #@29
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@2c
    move-result-object v3

    #@2d
    .line 268
    .local v3, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@30
    move-result v9

    #@31
    if-eqz v9, :cond_2

    #@33
    .line 269
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@36
    move-result-object v6

    #@37
    check-cast v6, Ljava/util/jar/Attributes$Name;

    #@39
    .line 270
    .local v6, "name":Ljava/util/jar/Attributes$Name;
    invoke-virtual {v6, v8}, Ljava/util/jar/Attributes$Name;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v9

    #@3d
    if-nez v9, :cond_1

    #@3f
    .line 271
    iget-object v9, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    #@41
    invoke-virtual {v9, v6}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@44
    move-result-object v9

    #@45
    invoke-static {p1, v6, v9, v2, v1}, Landroid/util/jar/StrictJarManifest;->writeEntry(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V

    #@48
    goto :goto_0

    #@49
    .line 275
    .end local v3    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v6    # "name":Ljava/util/jar/Attributes$Name;
    :cond_2
    sget-object v9, Landroid/util/jar/StrictJarManifest;->LINE_SEPARATOR:[B

    #@4b
    invoke-virtual {p1, v9}, Ljava/io/OutputStream;->write([B)V

    #@4e
    .line 276
    invoke-virtual {p0}, Landroid/util/jar/StrictJarManifest;->getEntries()Ljava/util/Map;

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
    .line 277
    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@5d
    move-result v9

    #@5e
    if-eqz v9, :cond_4

    #@60
    .line 278
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@63
    move-result-object v5

    #@64
    check-cast v5, Ljava/lang/String;

    #@66
    .line 279
    .local v5, "key":Ljava/lang/String;
    sget-object v9, Ljava/util/jar/Attributes$Name;->NAME:Ljava/util/jar/Attributes$Name;

    #@68
    invoke-static {p1, v9, v5, v2, v1}, Landroid/util/jar/StrictJarManifest;->writeEntry(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V

    #@6b
    .line 280
    iget-object v9, p0, Landroid/util/jar/StrictJarManifest;->entries:Ljava/util/HashMap;

    #@6d
    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@70
    move-result-object v0

    #@71
    check-cast v0, Ljava/util/jar/Attributes;

    #@73
    .line 281
    .local v0, "attributes":Ljava/util/jar/Attributes;
    invoke-virtual {v0}, Ljava/util/jar/Attributes;->keySet()Ljava/util/Set;

    #@76
    move-result-object v9

    #@77
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@7a
    move-result-object v3

    #@7b
    .line 282
    .restart local v3    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@7e
    move-result v9

    #@7f
    if-eqz v9, :cond_3

    #@81
    .line 283
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@84
    move-result-object v6

    #@85
    check-cast v6, Ljava/util/jar/Attributes$Name;

    #@87
    .line 284
    .restart local v6    # "name":Ljava/util/jar/Attributes$Name;
    invoke-virtual {v0, v6}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@8a
    move-result-object v9

    #@8b
    invoke-static {p1, v6, v9, v2, v1}, Landroid/util/jar/StrictJarManifest;->writeEntry(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V

    #@8e
    goto :goto_2

    #@8f
    .line 286
    .end local v6    # "name":Ljava/util/jar/Attributes$Name;
    :cond_3
    sget-object v9, Landroid/util/jar/StrictJarManifest;->LINE_SEPARATOR:[B

    #@91
    invoke-virtual {p1, v9}, Ljava/io/OutputStream;->write([B)V

    #@94
    goto :goto_1

    #@95
    .line 255
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
    .line 292
    invoke-virtual {p1}, Ljava/util/jar/Attributes$Name;->toString()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 293
    .local v1, "nameString":Ljava/lang/String;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@6
    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@9
    move-result-object v3

    #@a
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    #@d
    .line 294
    sget-object v3, Landroid/util/jar/StrictJarManifest;->VALUE_SEPARATOR:[B

    #@f
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    #@12
    .line 296
    invoke-virtual {p3}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    #@15
    .line 297
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
    .line 299
    invoke-static {p2}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    #@27
    move-result-object v0

    #@28
    .line 302
    .local v0, "cBuf":Ljava/nio/CharBuffer;
    :goto_0
    const/4 v3, 0x1

    #@29
    invoke-virtual {p3, v0, p4, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    #@2c
    move-result-object v2

    #@2d
    .line 303
    .local v2, "r":Ljava/nio/charset/CoderResult;
    sget-object v3, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    #@2f
    if-ne v3, v2, :cond_0

    #@31
    .line 304
    invoke-virtual {p3, p4}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    #@34
    move-result-object v2

    #@35
    .line 306
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
    .line 307
    sget-object v3, Landroid/util/jar/StrictJarManifest;->LINE_SEPARATOR:[B

    #@46
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    #@49
    .line 308
    sget-object v3, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    #@4b
    if-ne v3, v2, :cond_1

    #@4d
    .line 291
    return-void

    #@4e
    .line 311
    :cond_1
    const/16 v3, 0x20

    #@50
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    #@53
    .line 312
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
    .line 117
    iget-object v0, p0, Landroid/util/jar/StrictJarManifest;->entries:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@5
    .line 118
    iget-object v0, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    #@7
    invoke-virtual {v0}, Ljava/util/jar/Attributes;->clear()V

    #@a
    .line 116
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 162
    new-instance v0, Landroid/util/jar/StrictJarManifest;

    #@2
    invoke-direct {v0, p0}, Landroid/util/jar/StrictJarManifest;-><init>(Landroid/util/jar/StrictJarManifest;)V

    #@5
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 220
    if-nez p1, :cond_0

    #@3
    .line 221
    return v2

    #@4
    .line 223
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0}, Landroid/util/jar/StrictJarManifest;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v1

    #@c
    if-eq v0, v1, :cond_1

    #@e
    .line 224
    return v2

    #@f
    .line 226
    :cond_1
    iget-object v1, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    #@11
    move-object v0, p1

    #@12
    check-cast v0, Landroid/util/jar/StrictJarManifest;

    #@14
    iget-object v0, v0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    #@16
    invoke-virtual {v1, v0}, Ljava/util/jar/Attributes;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v0

    #@1a
    if-nez v0, :cond_2

    #@1c
    .line 227
    return v2

    #@1d
    .line 229
    :cond_2
    invoke-virtual {p0}, Landroid/util/jar/StrictJarManifest;->getEntries()Ljava/util/Map;

    #@20
    move-result-object v0

    #@21
    check-cast p1, Landroid/util/jar/StrictJarManifest;

    #@23
    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/util/jar/StrictJarManifest;->getEntries()Ljava/util/Map;

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
    .line 131
    invoke-virtual {p0}, Landroid/util/jar/StrictJarManifest;->getEntries()Ljava/util/Map;

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

.method getChunk(Ljava/lang/String;)Landroid/util/jar/StrictJarManifest$Chunk;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 233
    iget-object v0, p0, Landroid/util/jar/StrictJarManifest;->chunks:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/util/jar/StrictJarManifest$Chunk;

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
    .line 141
    iget-object v0, p0, Landroid/util/jar/StrictJarManifest;->entries:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method public getMainAttributes()Ljava/util/jar/Attributes;
    .locals 1

    #@0
    .prologue
    .line 151
    iget-object v0, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    #@2
    return-object v0
.end method

.method getMainAttributesEnd()I
    .locals 1

    #@0
    .prologue
    .line 241
    iget v0, p0, Landroid/util/jar/StrictJarManifest;->mainEnd:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 206
    iget-object v0, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    #@2
    invoke-virtual {v0}, Ljava/util/jar/Attributes;->hashCode()I

    #@5
    move-result v0

    #@6
    invoke-virtual {p0}, Landroid/util/jar/StrictJarManifest;->getEntries()Ljava/util/Map;

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
    .line 186
    invoke-static {p1}, Llibcore/io/Streams;->readFullyNoClose(Ljava/io/InputStream;)[B

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Landroid/util/jar/StrictJarManifest;->read([B)V

    #@7
    .line 185
    return-void
.end method

.method removeChunks()V
    .locals 1

    #@0
    .prologue
    .line 237
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/util/jar/StrictJarManifest;->chunks:Ljava/util/HashMap;

    #@3
    .line 236
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
    .line 174
    invoke-static {p0, p1}, Landroid/util/jar/StrictJarManifest;->write(Landroid/util/jar/StrictJarManifest;Ljava/io/OutputStream;)V

    #@3
    .line 173
    return-void
.end method
