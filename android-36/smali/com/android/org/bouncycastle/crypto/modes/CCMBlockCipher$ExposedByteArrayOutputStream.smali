.class Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "CCMBlockCipher.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 474
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getBuffer()[B
    .registers 1

    .line 479
    iget-object p0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    return-object p0
.end method
