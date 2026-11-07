.class public abstract Lcom/android/org/conscrypt/OpenSSLEvpCipherAES;
.super Lcom/android/org/conscrypt/OpenSSLEvpCipher;
.source "OpenSSLEvpCipherAES.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLEvpCipherAES$AES_256;,
        Lcom/android/org/conscrypt/OpenSSLEvpCipherAES$AES_128;,
        Lcom/android/org/conscrypt/OpenSSLEvpCipherAES$AES;
    }
.end annotation


# static fields
.field private static final blacklist AES_BLOCK_SIZE:I = 0x10


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
.method blacklist checkSupportedMode(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;)V
    .registers 5
    .param p1, "mode"    # Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 38
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEvpCipherAES$1;->$SwitchMap$com$android$org$conscrypt$OpenSSLCipher$Mode:[I

    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2a

    .line 44
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

    .line 42
    :pswitch_28
    return-void

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_28
        :pswitch_28
        :pswitch_28
    .end packed-switch
.end method

.method blacklist checkSupportedPadding(Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V
    .registers 5
    .param p1, "padding"    # Lcom/android/org/conscrypt/OpenSSLCipher$Padding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 50
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEvpCipherAES$1;->$SwitchMap$com$android$org$conscrypt$OpenSSLCipher$Padding:[I

    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2a

    .line 55
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported padding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 56
    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
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

    .line 62
    const-string v0, "AES"

    return-object v0
.end method

.method blacklist getCipherBlockSize()I
    .registers 2

    .line 72
    const/16 v0, 0x10

    return v0
.end method

.method blacklist getCipherName(ILcom/android/org/conscrypt/OpenSSLCipher$Mode;)Ljava/lang/String;
    .registers 6
    .param p1, "keyLength"    # I
    .param p2, "mode"    # Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aes-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    mul-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
