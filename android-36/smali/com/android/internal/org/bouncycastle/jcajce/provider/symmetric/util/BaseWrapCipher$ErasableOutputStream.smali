.class public final Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "BaseWrapCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "ErasableOutputStream"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 578
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 579
    return-void
.end method


# virtual methods
.method public blacklist erase()V
    .registers 3

    .line 588
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;->buf:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 589
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;->reset()V

    .line 590
    return-void
.end method

.method public blacklist getBuf()[B
    .registers 2

    .line 583
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;->buf:[B

    return-object v0
.end method
