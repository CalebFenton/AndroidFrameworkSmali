.class public final Lcom/android/org/conscrypt/KeyGeneratorImpl$ARC4;
.super Lcom/android/org/conscrypt/KeyGeneratorImpl;
.source "KeyGeneratorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/KeyGeneratorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ARC4"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 214
    const/16 v0, 0x80

    const/4 v1, 0x0

    const-string v2, "ARC4"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/org/conscrypt/KeyGeneratorImpl;-><init>(Ljava/lang/String;ILcom/android/org/conscrypt/KeyGeneratorImpl-IA;)V

    .line 215
    return-void
.end method


# virtual methods
.method protected blacklist checkKeySize(I)V
    .registers 4
    .param p1, "keySize"    # I

    .line 219
    const/16 v0, 0x28

    if-lt p1, v0, :cond_9

    const/16 v0, 0x800

    if-lt v0, p1, :cond_9

    .line 222
    return-void

    .line 220
    :cond_9
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Key size must be between 40 and 2048 bits"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
