.class public Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES;
.super Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;
.source "OpenSSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AES"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES$CBC;,
        Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES$CTR;,
        Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES$ECB;
    }
.end annotation


# static fields
.field private static synthetic -com_android_org_conscrypt_OpenSSLCipher$ModeSwitchesValues:[I = null

.field private static synthetic -com_android_org_conscrypt_OpenSSLCipher$PaddingSwitchesValues:[I = null

.field private static final AES_BLOCK_SIZE:I = 0x10


# direct methods
.method private static synthetic -getcom_android_org_conscrypt_OpenSSLCipher$ModeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES;->-com_android_org_conscrypt_OpenSSLCipher$ModeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES;->-com_android_org_conscrypt_OpenSSLCipher$ModeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->values()[Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->CBC:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    #@10
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->CTR:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    #@19
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->ECB:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    #@22
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->GCM:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    #@2b
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x6

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    #@32
    :goto_3
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES;->-com_android_org_conscrypt_OpenSSLCipher$ModeSwitchesValues:[I

    #@34
    return-object v0

    #@35
    :catch_0
    move-exception v1

    #@36
    goto :goto_3

    #@37
    :catch_1
    move-exception v1

    #@38
    goto :goto_2

    #@39
    :catch_2
    move-exception v1

    #@3a
    goto :goto_1

    #@3b
    :catch_3
    move-exception v1

    #@3c
    goto :goto_0
.end method

.method private static synthetic -getcom_android_org_conscrypt_OpenSSLCipher$PaddingSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES;->-com_android_org_conscrypt_OpenSSLCipher$PaddingSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES;->-com_android_org_conscrypt_OpenSSLCipher$PaddingSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->values()[Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->ISO10126PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    #@10
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x6

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    #@19
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x1

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    #@22
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x2

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    #@29
    :goto_2
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES;->-com_android_org_conscrypt_OpenSSLCipher$PaddingSwitchesValues:[I

    #@2b
    return-object v0

    #@2c
    :catch_0
    move-exception v1

    #@2d
    goto :goto_2

    #@2e
    :catch_1
    move-exception v1

    #@2f
    goto :goto_1

    #@30
    :catch_2
    move-exception v1

    #@31
    goto :goto_0
.end method

.method protected constructor <init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V
    .locals 0
    .param p1, "mode"    # Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    .param p2, "padding"    # Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    #@0
    .prologue
    .line 633
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;-><init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V

    #@3
    .line 632
    return-void
.end method


# virtual methods
.method protected checkSupportedKeySize(I)V
    .locals 3
    .param p1, "keyLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 680
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 686
    new-instance v0, Ljava/security/InvalidKeyException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Unsupported key size: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    .line 687
    const-string/jumbo v2, " bytes"

    #@18
    .line 686
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 684
    :sswitch_0
    return-void

    #@25
    .line 680
    nop

    #@26
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x18 -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method protected checkSupportedMode(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;)V
    .locals 3
    .param p1, "mode"    # Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 693
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES;->-getcom_android_org_conscrypt_OpenSSLCipher$ModeSwitchesValues()[I

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    packed-switch v0, :pswitch_data_0

    #@d
    .line 699
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "Unsupported mode "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    .line 697
    :pswitch_0
    return-void

    #@2c
    .line 693
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected checkSupportedPadding(Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V
    .locals 3
    .param p1, "padding"    # Lcom/android/org/conscrypt/OpenSSLCipher$Padding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    #@0
    .prologue
    .line 705
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES;->-getcom_android_org_conscrypt_OpenSSLCipher$PaddingSwitchesValues()[I

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    packed-switch v0, :pswitch_data_0

    #@d
    .line 710
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "Unsupported padding "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    .line 711
    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    .line 710
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    .line 708
    :pswitch_0
    return-void

    #@2c
    .line 705
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected getBaseCipherName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 717
    const-string/jumbo v0, "AES"

    #@3
    return-object v0
.end method

.method protected getCipherBlockSize()I
    .locals 1

    #@0
    .prologue
    .line 727
    const/16 v0, 0x10

    #@2
    return v0
.end method

.method protected getCipherName(ILcom/android/org/conscrypt/OpenSSLCipher$Mode;)Ljava/lang/String;
    .locals 3
    .param p1, "keyLength"    # I
    .param p2, "mode"    # Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    #@0
    .prologue
    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "aes-"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    mul-int/lit8 v1, p1, 0x8

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "-"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {p2}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    return-object v0
.end method
