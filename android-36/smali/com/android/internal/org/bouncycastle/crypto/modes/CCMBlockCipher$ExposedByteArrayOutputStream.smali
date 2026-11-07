.class Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "CCMBlockCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExposedByteArrayOutputStream"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 474
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 475
    return-void
.end method


# virtual methods
.method public blacklist getBuffer()[B
    .registers 2

    .line 479
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->buf:[B

    return-object v0
.end method
