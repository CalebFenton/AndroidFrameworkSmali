.class public abstract Lcom/android/org/conscrypt/OpenSSLEvpCipherDESEDE;
.super Lcom/android/org/conscrypt/OpenSSLEvpCipher;
.source "OpenSSLEvpCipherDESEDE.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLEvpCipherDESEDE$CBC;
    }
.end annotation


# static fields
.field private static final blacklist DES_BLOCK_SIZE:I = 0x8


# direct methods
.method constructor blacklist <init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V
    .registers 3
    .param p1, "mode"    # Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    .param p2, "padding"    # Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLEvpCipher;-><init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V

    .line 34
    return-void
.end method


# virtual methods
.method blacklist checkSupportedKeySize(I)V
    .registers 4
    .param p1, "keySize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 82
    const/16 v0, 0x10

    if-eq p1, v0, :cond_11

    const/16 v0, 0x18

    if-ne p1, v0, :cond_9

    goto :goto_11

    .line 83
    :cond_9
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "key size must be 128 or 192 bits"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_11
    :goto_11
    return-void
.end method

.method blacklist checkSupportedMode(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;)V
    .registers 5
    .param p1, "mode"    # Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 89
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->CBC:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    if-ne p1, v0, :cond_5

    .line 92
    return-void

    .line 90
    :cond_5
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist checkSupportedPadding(Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V
    .registers 5
    .param p1, "padding"    # Lcom/android/org/conscrypt/OpenSSLCipher$Padding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 96
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEvpCipherDESEDE$1;->$SwitchMap$com$android$org$conscrypt$OpenSSLCipher$Padding:[I

    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2a

    .line 101
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported padding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 102
    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :pswitch_28
    return-void

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_28
        :pswitch_28
    .end packed-switch
.end method

.method blacklist getBaseCipherName()Ljava/lang/String;
    .registers 2

    .line 65
    const-string v0, "DESede"

    return-object v0
.end method

.method blacklist getCipherBlockSize()I
    .registers 2

    .line 108
    const/16 v0, 0x8

    return v0
.end method

.method blacklist getCipherName(ILcom/android/org/conscrypt/OpenSSLCipher$Mode;)Ljava/lang/String;
    .registers 7
    .param p1, "keySize"    # I
    .param p2, "mode"    # Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    .line 71
    const/16 v0, 0x10

    if-ne p1, v0, :cond_7

    .line 72
    const-string v0, "des-ede"

    .local v0, "baseCipherName":Ljava/lang/String;
    goto :goto_9

    .line 74
    .end local v0    # "baseCipherName":Ljava/lang/String;
    :cond_7
    const-string v0, "des-ede3"

    .line 77
    .restart local v0    # "baseCipherName":Ljava/lang/String;
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
