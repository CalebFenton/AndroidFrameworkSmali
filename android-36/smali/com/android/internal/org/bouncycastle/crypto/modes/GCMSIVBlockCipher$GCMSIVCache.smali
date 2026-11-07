.class Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;
.super Ljava/io/ByteArrayOutputStream;
.source "GCMSIVBlockCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GCMSIVCache"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 830
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 831
    return-void
.end method


# virtual methods
.method blacklist clearBuffer()V
    .registers 3

    .line 847
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->getBuffer()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 848
    return-void
.end method

.method blacklist getBuffer()[B
    .registers 2

    .line 839
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->buf:[B

    return-object v0
.end method
