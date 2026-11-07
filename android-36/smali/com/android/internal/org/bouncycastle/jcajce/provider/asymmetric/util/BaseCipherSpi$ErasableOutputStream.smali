.class public final Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "BaseCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "ErasableOutputStream"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 244
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 245
    return-void
.end method


# virtual methods
.method public blacklist erase()V
    .registers 3

    .line 254
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;->buf:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 255
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;->reset()V

    .line 256
    return-void
.end method

.method public blacklist getBuf()[B
    .registers 2

    .line 249
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;->buf:[B

    return-object v0
.end method
