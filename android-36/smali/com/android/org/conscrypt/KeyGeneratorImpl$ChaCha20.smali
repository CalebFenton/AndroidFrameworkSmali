.class public final Lcom/android/org/conscrypt/KeyGeneratorImpl$ChaCha20;
.super Lcom/android/org/conscrypt/KeyGeneratorImpl;
.source "KeyGeneratorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/KeyGeneratorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChaCha20"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 198
    const/16 v0, 0x100

    const/4 v1, 0x0

    const-string v2, "ChaCha20"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/org/conscrypt/KeyGeneratorImpl;-><init>(Ljava/lang/String;ILcom/android/org/conscrypt/KeyGeneratorImpl-IA;)V

    .line 199
    return-void
.end method


# virtual methods
.method protected blacklist checkKeySize(I)V
    .registers 4
    .param p1, "keySize"    # I

    .line 203
    const/16 v0, 0x100

    if-ne p1, v0, :cond_5

    .line 206
    return-void

    .line 204
    :cond_5
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Key size must be 256 bits"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
