.class public final Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "BaseCipherSpi.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 244
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist erase()V
    .registers 3

    .line 254
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 255
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void
.end method

.method public blacklist getBuf()[B
    .registers 1

    .line 249
    iget-object p0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    return-object p0
.end method
