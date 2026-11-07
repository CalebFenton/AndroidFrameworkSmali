.class public Lcom/android/org/bouncycastle/crypto/io/MacOutputStream;
.super Ljava/io/OutputStream;
.source "MacOutputStream.java"


# instance fields
.field protected blacklist mac:Lcom/android/org/bouncycastle/crypto/Mac;


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/Mac;)V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/io/MacOutputStream;->mac:Lcom/android/org/bouncycastle/crypto/Mac;

    return-void
.end method


# virtual methods
.method public whitelist test-api write(I)V
    .registers 2

    .line 26
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/io/MacOutputStream;->mac:Lcom/android/org/bouncycastle/crypto/Mac;

    int-to-byte p1, p1

    invoke-interface {p0, p1}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    return-void
.end method

.method public whitelist test-api write([BII)V
    .registers 4

    .line 35
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/io/MacOutputStream;->mac:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    return-void
.end method
