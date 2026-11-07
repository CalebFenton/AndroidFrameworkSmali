.class public Lcom/android/internal/util/ArtFastDataOutput;
.super Lcom/android/modules/utils/FastDataOutput;
.source "ArtFastDataOutput.java"


# static fields
.field private static blacklist sOutCache:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/internal/util/ArtFastDataOutput;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sRuntime:Ldalvik/system/VMRuntime;


# instance fields
.field private final blacklist mBufferPtr:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/android/internal/util/ArtFastDataOutput;->sOutCache:Ljava/util/concurrent/atomic/AtomicReference;

    .line 40
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/ArtFastDataOutput;->sRuntime:Ldalvik/system/VMRuntime;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/OutputStream;I)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "bufferSize"    # I

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/modules/utils/FastDataOutput;-><init>(Ljava/io/OutputStream;I)V

    .line 47
    sget-object v0, Lcom/android/internal/util/ArtFastDataOutput;->sRuntime:Ldalvik/system/VMRuntime;

    iget-object v1, p0, Lcom/android/internal/util/ArtFastDataOutput;->mBuffer:[B

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->addressOf(Ljava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/util/ArtFastDataOutput;->mBufferPtr:J

    .line 48
    return-void
.end method

.method public static blacklist obtain(Ljava/io/OutputStream;)Lcom/android/internal/util/ArtFastDataOutput;
    .registers 4
    .param p0, "out"    # Ljava/io/OutputStream;

    .line 60
    sget-object v0, Lcom/android/internal/util/ArtFastDataOutput;->sOutCache:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/ArtFastDataOutput;

    .line 61
    .local v0, "instance":Lcom/android/internal/util/ArtFastDataOutput;
    if-eqz v0, :cond_f

    .line 62
    invoke-virtual {v0, p0}, Lcom/android/internal/util/ArtFastDataOutput;->setOutput(Ljava/io/OutputStream;)V

    .line 63
    return-object v0

    .line 65
    :cond_f
    new-instance v1, Lcom/android/internal/util/ArtFastDataOutput;

    const v2, 0x8000

    invoke-direct {v1, p0, v2}, Lcom/android/internal/util/ArtFastDataOutput;-><init>(Ljava/io/OutputStream;I)V

    return-object v1
.end method


# virtual methods
.method public blacklist newByteArray(I)[B
    .registers 4
    .param p1, "bufferSize"    # I

    .line 80
    sget-object v0, Lcom/android/internal/util/ArtFastDataOutput;->sRuntime:Ldalvik/system/VMRuntime;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p1}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public blacklist release()V
    .registers 3

    .line 70
    invoke-super {p0}, Lcom/android/modules/utils/FastDataOutput;->release()V

    .line 72
    iget v0, p0, Lcom/android/internal/util/ArtFastDataOutput;->mBufferCap:I

    const v1, 0x8000

    if-ne v0, v1, :cond_10

    .line 74
    sget-object v0, Lcom/android/internal/util/ArtFastDataOutput;->sOutCache:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    :cond_10
    return-void
.end method

.method public whitelist test-api writeUTF(Ljava/lang/String;)V
    .registers 8
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget v0, p0, Lcom/android/internal/util/ArtFastDataOutput;->mBufferCap:I

    iget v1, p0, Lcom/android/internal/util/ArtFastDataOutput;->mBufferPos:I

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_10

    invoke-virtual {p0}, Lcom/android/internal/util/ArtFastDataOutput;->drain()V

    .line 91
    :cond_10
    iget-wide v0, p0, Lcom/android/internal/util/ArtFastDataOutput;->mBufferPtr:J

    iget v2, p0, Lcom/android/internal/util/ArtFastDataOutput;->mBufferPos:I

    add-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/internal/util/ArtFastDataOutput;->mBufferCap:I

    invoke-static {p1, v0, v1, v2, v3}, Landroid/util/CharsetUtils;->toModifiedUtf8Bytes(Ljava/lang/String;JII)I

    move-result v0

    .line 92
    .local v0, "len":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const v2, 0xffff

    if-gt v1, v2, :cond_4f

    .line 96
    if-ltz v0, :cond_30

    .line 99
    invoke-virtual {p0, v0}, Lcom/android/internal/util/ArtFastDataOutput;->writeShort(I)V

    .line 100
    iget v1, p0, Lcom/android/internal/util/ArtFastDataOutput;->mBufferPos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/util/ArtFastDataOutput;->mBufferPos:I

    goto :goto_4e

    .line 104
    :cond_30
    neg-int v0, v0

    .line 105
    sget-object v1, Lcom/android/internal/util/ArtFastDataOutput;->sRuntime:Ldalvik/system/VMRuntime;

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v2, v3}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 106
    .local v1, "tmp":[B
    sget-object v2, Lcom/android/internal/util/ArtFastDataOutput;->sRuntime:Ldalvik/system/VMRuntime;

    invoke-virtual {v2, v1}, Ldalvik/system/VMRuntime;->addressOf(Ljava/lang/Object;)J

    move-result-wide v2

    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {p1, v2, v3, v5, v4}, Landroid/util/CharsetUtils;->toModifiedUtf8Bytes(Ljava/lang/String;JII)I

    .line 107
    invoke-virtual {p0, v0}, Lcom/android/internal/util/ArtFastDataOutput;->writeShort(I)V

    .line 108
    invoke-virtual {p0, v1, v5, v0}, Lcom/android/internal/util/ArtFastDataOutput;->write([BII)V

    .line 110
    .end local v1    # "tmp":[B
    :goto_4e
    return-void

    .line 93
    :cond_4f
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Modified UTF-8 length too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
