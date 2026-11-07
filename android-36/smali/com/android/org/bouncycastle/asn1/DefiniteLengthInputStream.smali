.class Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
.super Lcom/android/org/bouncycastle/asn1/LimitedInputStream;
.source "DefiniteLengthInputStream.java"


# static fields
.field private static final blacklist EMPTY_BYTES:[B


# instance fields
.field private final blacklist _originalLength:I

.field private blacklist _remaining:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 16
    new-array v0, v0, [B

    sput-object v0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->EMPTY_BYTES:[B

    return-void
.end method

.method constructor blacklist <init>(Ljava/io/InputStream;II)V
    .registers 4

    .line 27
    invoke-direct {p0, p1, p3}, Lcom/android/org/bouncycastle/asn1/LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    if-gtz p2, :cond_14

    if-ltz p2, :cond_c

    const/4 p1, 0x1

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/LimitedInputStream;->setParentEofDetect(Z)V

    goto :goto_14

    .line 33
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "negative lengths not allowed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 39
    :cond_14
    :goto_14
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_originalLength:I

    .line 40
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    return-void
.end method


# virtual methods
.method blacklist getRemaining()I
    .registers 1

    .line 45
    iget p0, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    return p0
.end method

.method public whitelist test-api read()I
    .registers 4

    .line 51
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 56
    :cond_6
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/LimitedInputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_1a

    .line 63
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    if-nez v1, :cond_19

    .line 65
    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/asn1/LimitedInputStream;->setParentEofDetect(Z)V

    :cond_19
    return v0

    .line 60
    :cond_1a
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEF length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_originalLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " object truncated by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api read([BII)I
    .registers 5

    .line 74
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 79
    :cond_6
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 80
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/LimitedInputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ltz p1, :cond_1e

    .line 87
    iget p2, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    if-nez p2, :cond_1d

    const/4 p2, 0x1

    .line 89
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/asn1/LimitedInputStream;->setParentEofDetect(Z)V

    :cond_1d
    return p1

    .line 84
    :cond_1e
    new-instance p1, Ljava/io/EOFException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "DEF length "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_originalLength:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " object truncated by "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method blacklist readAllIntoByteArray([B)V
    .registers 6

    .line 98
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    array-length v1, p1

    if-ne v0, v1, :cond_66

    if-nez v0, :cond_8

    return-void

    .line 109
    :cond_8
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/LimitedInputStream;->getLimit()I

    move-result v0

    .line 110
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    if-ge v1, v0, :cond_45

    .line 115
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/LimitedInputStream;->_in:Ljava/io/InputStream;

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {v0, p1, v2, v3}, Lcom/android/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[BII)I

    move-result p1

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    if-nez v1, :cond_22

    const/4 p1, 0x1

    .line 119
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/LimitedInputStream;->setParentEofDetect(Z)V

    return-void

    .line 117
    :cond_22
    new-instance p1, Ljava/io/EOFException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DEF length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_originalLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " object truncated by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_45
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "corrupted stream - out of bounds length found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " >= "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :cond_66
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "buffer length not right for data"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method blacklist toByteArray()[B
    .registers 5

    .line 125
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    if-nez v0, :cond_7

    .line 127
    sget-object p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->EMPTY_BYTES:[B

    return-object p0

    .line 131
    :cond_7
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/LimitedInputStream;->getLimit()I

    move-result v0

    .line 132
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    if-ge v1, v0, :cond_45

    .line 137
    new-array v0, v1, [B

    .line 138
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/LimitedInputStream;->_in:Ljava/io/InputStream;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3, v1}, Lcom/android/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[BII)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    if-nez v1, :cond_22

    const/4 v1, 0x1

    .line 142
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/asn1/LimitedInputStream;->setParentEofDetect(Z)V

    return-object v0

    .line 140
    :cond_22
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEF length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_originalLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " object truncated by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_45
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "corrupted stream - out of bounds length found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " >= "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
