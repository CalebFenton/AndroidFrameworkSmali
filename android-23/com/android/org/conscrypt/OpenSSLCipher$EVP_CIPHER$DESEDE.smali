.class public Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$DESEDE;
.super Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;
.source "OpenSSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DESEDE"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$DESEDE$CBC;
    }
.end annotation


# static fields
.field private static synthetic -com_android_org_conscrypt_OpenSSLCipher$PaddingSwitchesValues:[I

.field private static DES_BLOCK_SIZE:I


# direct methods
.method private static synthetic -getcom_android_org_conscrypt_OpenSSLCipher$PaddingSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$DESEDE;->-com_android_org_conscrypt_OpenSSLCipher$PaddingSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$DESEDE;->-com_android_org_conscrypt_OpenSSLCipher$PaddingSwitchesValues:[I

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
    const/4 v2, 0x3

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
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$DESEDE;->-com_android_org_conscrypt_OpenSSLCipher$PaddingSwitchesValues:[I

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

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 732
    const/16 v0, 0x8

    #@2
    sput v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$DESEDE;->DES_BLOCK_SIZE:I

    #@4
    .line 731
    return-void
.end method

.method public constructor <init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V
    .locals 0
    .param p1, "mode"    # Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    .param p2, "padding"    # Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    #@0
    .prologue
    .line 735
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;-><init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V

    #@3
    .line 734
    return-void
.end method


# virtual methods
.method protected checkSupportedKeySize(I)V
    .locals 2
    .param p1, "keySize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 775
    const/16 v0, 0x10

    #@2
    if-eq p1, v0, :cond_0

    #@4
    const/16 v0, 0x18

    #@6
    if-eq p1, v0, :cond_0

    #@8
    .line 776
    new-instance v0, Ljava/security/InvalidKeyException;

    #@a
    const-string/jumbo v1, "key size must be 128 or 192 bits"

    #@d
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 774
    :cond_0
    return-void
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
    .line 782
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->CBC:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 783
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Unsupported mode "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->toString()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 781
    :cond_0
    return-void
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
    .line 789
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$DESEDE;->-getcom_android_org_conscrypt_OpenSSLCipher$PaddingSwitchesValues()[I

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
    .line 794
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
    .line 795
    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    .line 794
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
    .line 792
    :pswitch_0
    return-void

    #@2c
    .line 789
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
    .line 758
    const-string/jumbo v0, "DESede"

    #@3
    return-object v0
.end method

.method protected getCipherBlockSize()I
    .locals 1

    #@0
    .prologue
    .line 801
    sget v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$DESEDE;->DES_BLOCK_SIZE:I

    #@2
    return v0
.end method

.method protected getCipherName(ILcom/android/org/conscrypt/OpenSSLCipher$Mode;)Ljava/lang/String;
    .locals 4
    .param p1, "keySize"    # I
    .param p2, "mode"    # Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    #@0
    .prologue
    .line 764
    const/16 v1, 0x10

    #@2
    if-ne p1, v1, :cond_0

    #@4
    .line 765
    const-string/jumbo v0, "des-ede"

    #@7
    .line 770
    .local v0, "baseCipherName":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    const-string/jumbo v2, "-"

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {p2}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->toString()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    return-object v1

    #@2a
    .line 767
    .end local v0    # "baseCipherName":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "des-ede3"

    #@2d
    .restart local v0    # "baseCipherName":Ljava/lang/String;
    goto :goto_0
.end method
