.class final Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
.super Ljava/io/ByteArrayInputStream;
.source "JKSKeyStoreSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ErasableByteStream"
.end annotation


# direct methods
.method public constructor blacklist <init>([BII)V
    .registers 4
    .param p1, "buf"    # [B
    .param p2, "offSet"    # I
    .param p3, "length"    # I

    .line 416
    invoke-direct {p0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 417
    return-void
.end method


# virtual methods
.method public blacklist erase()V
    .registers 3

    .line 422
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;->buf:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 423
    return-void
.end method
