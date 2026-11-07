.class public final Landroid/icu/impl/StringPrepDataReader;
.super Ljava/lang/Object;
.source "StringPrepDataReader.java"

# interfaces
.implements Landroid/icu/impl/ICUBinary$Authenticate;


# static fields
.field private static final blacklist DATA_FORMAT_ID:I = 0x53505250

.field private static final blacklist DATA_FORMAT_VERSION:[B

.field private static final blacklist debug:Z


# instance fields
.field private blacklist byteBuffer:Ljava/nio/ByteBuffer;

.field private blacklist unicodeVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 30
    const-string v0, "NormalizerDataReader"

    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/icu/impl/StringPrepDataReader;->debug:Z

    .line 85
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    sput-object v0, Landroid/icu/impl/StringPrepDataReader;->DATA_FORMAT_VERSION:[B

    return-void

    nop

    :array_12
    .array-data 1
        0x3t
        0x2t
        0x5t
        0x2t
    .end array-data
.end method

.method public constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-boolean v0, Landroid/icu/impl/StringPrepDataReader;->debug:Z

    if-eqz v0, :cond_23

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bytes in buffer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 41
    :cond_23
    iput-object p1, p0, Landroid/icu/impl/StringPrepDataReader;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 42
    iget-object v0, p0, Landroid/icu/impl/StringPrepDataReader;->byteBuffer:Ljava/nio/ByteBuffer;

    const v1, 0x53505250

    invoke-static {v0, v1, p0}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I

    move-result v0

    iput v0, p0, Landroid/icu/impl/StringPrepDataReader;->unicodeVersion:I

    .line 44
    sget-boolean v0, Landroid/icu/impl/StringPrepDataReader;->debug:Z

    if-eqz v0, :cond_52

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bytes left in byteBuffer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/impl/StringPrepDataReader;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    :cond_52
    return-void
.end method


# virtual methods
.method public blacklist getUnicodeVersion()[B
    .registers 2

    .line 68
    iget v0, p0, Landroid/icu/impl/StringPrepDataReader;->unicodeVersion:I

    invoke-static {v0}, Landroid/icu/impl/ICUBinary;->getVersionByteArrayFromCompactInt(I)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist isDataVersionAcceptable([B)Z
    .registers 6
    .param p1, "version"    # [B

    .line 54
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    sget-object v2, Landroid/icu/impl/StringPrepDataReader;->DATA_FORMAT_VERSION:[B

    aget-byte v2, v2, v0

    if-ne v1, v2, :cond_1c

    const/4 v1, 0x2

    aget-byte v2, p1, v1

    sget-object v3, Landroid/icu/impl/StringPrepDataReader;->DATA_FORMAT_VERSION:[B

    aget-byte v1, v3, v1

    if-ne v2, v1, :cond_1c

    const/4 v1, 0x3

    aget-byte v2, p1, v1

    sget-object v3, Landroid/icu/impl/StringPrepDataReader;->DATA_FORMAT_VERSION:[B

    aget-byte v1, v3, v1

    if-ne v2, v1, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    return v0
.end method

.method public blacklist read(I)[C
    .registers 4
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Landroid/icu/impl/StringPrepDataReader;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object v0

    return-object v0
.end method

.method public blacklist readIndexes(I)[I
    .registers 5
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    new-array v0, p1, [I

    .line 61
    .local v0, "indexes":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, p1, :cond_10

    .line 62
    iget-object v2, p0, Landroid/icu/impl/StringPrepDataReader;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    aput v2, v0, v1

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 64
    .end local v1    # "i":I
    :cond_10
    return-object v0
.end method
