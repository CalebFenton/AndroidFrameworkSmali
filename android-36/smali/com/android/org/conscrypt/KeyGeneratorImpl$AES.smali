.class public final Lcom/android/org/conscrypt/KeyGeneratorImpl$AES;
.super Lcom/android/org/conscrypt/KeyGeneratorImpl;
.source "KeyGeneratorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/KeyGeneratorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AES"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 181
    const/16 v0, 0x80

    const/4 v1, 0x0

    const-string v2, "AES"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/org/conscrypt/KeyGeneratorImpl;-><init>(Ljava/lang/String;ILcom/android/org/conscrypt/KeyGeneratorImpl-IA;)V

    .line 182
    return-void
.end method


# virtual methods
.method protected blacklist checkKeySize(I)V
    .registers 4
    .param p1, "keySize"    # I

    .line 186
    const/16 v0, 0x80

    if-eq p1, v0, :cond_15

    const/16 v0, 0xc0

    if-eq p1, v0, :cond_15

    const/16 v0, 0x100

    if-ne p1, v0, :cond_d

    goto :goto_15

    .line 187
    :cond_d
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Key size must be either 128, 192, or 256 bits"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_15
    :goto_15
    return-void
.end method
