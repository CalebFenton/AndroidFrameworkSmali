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
.field static final blacklist ATTRIBUTE_NAME_NAME:Ljava/util/jar/Attributes$Name;

.field static final blacklist LINE_LENGTH_LIMIT:I = 0x48

.field private static final blacklist LINE_SEPARATOR:[B

.field private static final blacklist VALUE_SEPARATOR:[B


# instance fields
.field private blacklist chunks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/jar/StrictJarManifest$Chunk;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist entries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mainAttributes:Ljava/util/jar/Attributes;

.field private blacklist mainEnd:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 46
    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_1a

    sput-object v1, Landroid/util/jar/StrictJarManifest;->LINE_SEPARATOR:[B

    .line 48
    new-array v0, v0, [B

    fill-array-data v0, :array_20

    sput-object v0, Landroid/util/jar/StrictJarManifest;->VALUE_SEPARATOR:[B

    .line 51
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Name"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/util/jar/StrictJarManifest;->ATTRIBUTE_NAME_NAME:Ljava/util/jar/Attributes$Name;

    return-void

    nop

    :array_1a
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_20
    .array-data 1
        0x3at
        0x20t
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/util/jar/StrictJarManifest;->entries:Ljava/util/HashMap;

    .line 79
    new-instance v0, Ljava/util/jar/Attributes;

    invoke-direct {v0}, Ljava/util/jar/Attributes;-><init>()V

    iput-object v0, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    .line 80
    return-void
.end method

.method public constructor blacklist <init>(Landroid/util/jar/StrictJarManifest;)V
    .registers 3
    .param p1, "man"    # Landroid/util/jar/StrictJarManifest;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iget-object v0, p1, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v0}, Ljava/util/jar/Attributes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes;

    iput-object v0, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    .line 106
    nop

    .line 107
    invoke-virtual {p1}, Landroid/util/jar/StrictJarManifest;->getEntries()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Landroid/util/jar/StrictJarManifest;->entries:Ljava/util/HashMap;

    .line 108
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Landroid/util/jar/StrictJarManifest;-><init>()V

    .line 93
    invoke-static {p1}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/jar/StrictJarManifest;->read([B)V

    .line 94
    return-void
.end method

.method constructor blacklist <init>([BZ)V
    .registers 4
    .param p1, "manifestBytes"    # [B
    .param p2, "readChunks"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Landroid/util/jar/StrictJarManifest;-><init>()V

    .line 112
    if-eqz p2, :cond_c

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/util/jar/StrictJarManifest;->chunks:Ljava/util/HashMap;

    .line 115
    :cond_c
    invoke-direct {p0, p1}, Landroid/util/jar/StrictJarManifest;->read([B)V

    .line 116
    return-void
.end method

.method private blacklist read([B)V
    .registers 5
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    array-length v0, p1

    if-nez v0, :cond_4

    .line 197
    return-void

    .line 200
    :cond_4
    new-instance v0, Landroid/util/jar/StrictJarManifestReader;

    iget-object v1, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-direct {v0, p1, v1}, Landroid/util/jar/StrictJarManifestReader;-><init>([BLjava/util/jar/Attributes;)V

    .line 201
    .local v0, "im":Landroid/util/jar/StrictJarManifestReader;
    invoke-virtual {v0}, Landroid/util/jar/StrictJarManifestReader;->getEndOfMainSection()I

    move-result v1

    iput v1, p0, Landroid/util/jar/StrictJarManifest;->mainEnd:I

    .line 202
    iget-object v1, p0, Landroid/util/jar/StrictJarManifest;->entries:Ljava/util/HashMap;

    iget-object v2, p0, Landroid/util/jar/StrictJarManifest;->chunks:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Landroid/util/jar/StrictJarManifestReader;->readEntries(Ljava/util/Map;Ljava/util/Map;)V

    .line 203
    return-void
.end method

.method static blacklist write(Landroid/util/jar/StrictJarManifest;Ljava/io/OutputStream;)V
    .registers 12
    .param p0, "manifest"    # Landroid/util/jar/StrictJarManifest;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 263
    .local v0, "encoder":Ljava/nio/charset/CharsetEncoder;
    const/16 v1, 0x48

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 265
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/util/jar/Attributes$Name;->MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

    .line 266
    .local v2, "versionName":Ljava/util/jar/Attributes$Name;
    iget-object v3, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v3, v2}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v3

    .line 267
    .local v3, "version":Ljava/lang/String;
    if-nez v3, :cond_1e

    .line 268
    sget-object v2, Ljava/util/jar/Attributes$Name;->SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

    .line 269
    iget-object v4, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v4, v2}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v3

    .line 271
    :cond_1e
    if-eqz v3, :cond_49

    .line 272
    invoke-static {p1, v2, v3, v0, v1}, Landroid/util/jar/StrictJarManifest;->writeEntry(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V

    .line 273
    iget-object v4, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v4}, Ljava/util/jar/Attributes;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 274
    .local v4, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_2d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_49

    .line 275
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/jar/Attributes$Name;

    .line 276
    .local v5, "name":Ljava/util/jar/Attributes$Name;
    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_48

    .line 277
    iget-object v6, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v6, v5}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v5, v6, v0, v1}, Landroid/util/jar/StrictJarManifest;->writeEntry(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V

    .line 279
    .end local v5    # "name":Ljava/util/jar/Attributes$Name;
    :cond_48
    goto :goto_2d

    .line 281
    .end local v4    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_49
    sget-object v4, Landroid/util/jar/StrictJarManifest;->LINE_SEPARATOR:[B

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 282
    invoke-virtual {p0}, Landroid/util/jar/StrictJarManifest;->getEntries()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 283
    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_5a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_95

    .line 284
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 285
    .local v5, "key":Ljava/lang/String;
    sget-object v6, Landroid/util/jar/StrictJarManifest;->ATTRIBUTE_NAME_NAME:Ljava/util/jar/Attributes$Name;

    invoke-static {p1, v6, v5, v0, v1}, Landroid/util/jar/StrictJarManifest;->writeEntry(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V

    .line 286
    iget-object v6, p0, Landroid/util/jar/StrictJarManifest;->entries:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/jar/Attributes;

    .line 287
    .local v6, "attributes":Ljava/util/jar/Attributes;
    invoke-virtual {v6}, Ljava/util/jar/Attributes;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 288
    .local v7, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_7b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8f

    .line 289
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/jar/Attributes$Name;

    .line 290
    .local v8, "name":Ljava/util/jar/Attributes$Name;
    invoke-virtual {v6, v8}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v8, v9, v0, v1}, Landroid/util/jar/StrictJarManifest;->writeEntry(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V

    .line 291
    .end local v8    # "name":Ljava/util/jar/Attributes$Name;
    goto :goto_7b

    .line 292
    :cond_8f
    sget-object v8, Landroid/util/jar/StrictJarManifest;->LINE_SEPARATOR:[B

    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write([B)V

    .line 293
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "attributes":Ljava/util/jar/Attributes;
    .end local v7    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    goto :goto_5a

    .line 294
    :cond_95
    return-void
.end method

.method private static blacklist writeEntry(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V
    .registers 11
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

    .line 298
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "nameString":Ljava/lang/String;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 300
    sget-object v1, Landroid/util/jar/StrictJarManifest;->VALUE_SEPARATOR:[B

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 302
    invoke-virtual {p3}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 303
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x48

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 305
    invoke-static {p2}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 308
    .local v1, "cBuf":Ljava/nio/CharBuffer;
    :goto_28
    const/4 v2, 0x1

    invoke-virtual {p3, v1, p4, v2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 309
    .local v2, "r":Ljava/nio/charset/CoderResult;
    sget-object v3, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v3, v2, :cond_35

    .line 310
    invoke-virtual {p3, p4}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 312
    :cond_35
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 313
    sget-object v3, Landroid/util/jar/StrictJarManifest;->LINE_SEPARATOR:[B

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 314
    sget-object v3, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v3, v2, :cond_4f

    .line 315
    nop

    .line 320
    .end local v2    # "r":Ljava/nio/charset/CoderResult;
    return-void

    .line 317
    .restart local v2    # "r":Ljava/nio/charset/CoderResult;
    :cond_4f
    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 318
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v3

    const/16 v4, 0x47

    invoke-virtual {v3, v4}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 319
    .end local v2    # "r":Ljava/nio/charset/CoderResult;
    goto :goto_28
.end method


# virtual methods
.method public blacklist clear()V
    .registers 2

    .line 123
    iget-object v0, p0, Landroid/util/jar/StrictJarManifest;->entries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 124
    iget-object v0, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v0}, Ljava/util/jar/Attributes;->clear()V

    .line 125
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2

    .line 168
    new-instance v0, Landroid/util/jar/StrictJarManifest;

    invoke-direct {v0, p0}, Landroid/util/jar/StrictJarManifest;-><init>(Landroid/util/jar/StrictJarManifest;)V

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 226
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 227
    return v0

    .line 229
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_f

    .line 230
    return v0

    .line 232
    :cond_f
    iget-object v1, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    move-object v2, p1

    check-cast v2, Landroid/util/jar/StrictJarManifest;

    iget-object v2, v2, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v1, v2}, Ljava/util/jar/Attributes;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 233
    return v0

    .line 235
    :cond_1d
    invoke-virtual {p0}, Landroid/util/jar/StrictJarManifest;->getEntries()Ljava/util/Map;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroid/util/jar/StrictJarManifest;

    invoke-virtual {v1}, Landroid/util/jar/StrictJarManifest;->getEntries()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 137
    invoke-virtual {p0}, Landroid/util/jar/StrictJarManifest;->getEntries()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes;

    return-object v0
.end method

.method blacklist getChunk(Ljava/lang/String;)Landroid/util/jar/StrictJarManifest$Chunk;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 239
    iget-object v0, p0, Landroid/util/jar/StrictJarManifest;->chunks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/jar/StrictJarManifest$Chunk;

    return-object v0
.end method

.method public blacklist getEntries()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Landroid/util/jar/StrictJarManifest;->entries:Ljava/util/HashMap;

    return-object v0
.end method

.method public blacklist getMainAttributes()Ljava/util/jar/Attributes;
    .registers 2

    .line 157
    iget-object v0, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    return-object v0
.end method

.method blacklist getMainAttributesEnd()I
    .registers 2

    .line 247
    iget v0, p0, Landroid/util/jar/StrictJarManifest;->mainEnd:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 212
    iget-object v0, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v0}, Ljava/util/jar/Attributes;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/jar/StrictJarManifest;->getEntries()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public blacklist read(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    invoke-static {p1}, Llibcore/io/Streams;->readFullyNoClose(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/jar/StrictJarManifest;->read([B)V

    .line 193
    return-void
.end method

.method blacklist removeChunks()V
    .registers 2

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/jar/StrictJarManifest;->chunks:Ljava/util/HashMap;

    .line 244
    return-void
.end method

.method public blacklist write(Ljava/io/OutputStream;)V
    .registers 2
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    invoke-static {p0, p1}, Landroid/util/jar/StrictJarManifest;->write(Landroid/util/jar/StrictJarManifest;Ljava/io/OutputStream;)V

    .line 181
    return-void
.end method
