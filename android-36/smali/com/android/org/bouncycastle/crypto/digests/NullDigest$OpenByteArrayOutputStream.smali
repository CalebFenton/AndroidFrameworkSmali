.class Lcom/android/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "NullDigest.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/digests/NullDigest-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist copy([BI)V
    .registers 5

    .line 66
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    invoke-static {v0, v1, p1, p2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public whitelist test-api reset()V
    .registers 1

    .line 59
    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 61
    iget-object p0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clear([B)V

    return-void
.end method
