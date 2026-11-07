.class synthetic Lcom/android/org/conscrypt/OpenSSLEvpCipherAES$1;
.super Ljava/lang/Object;
.source "OpenSSLEvpCipherAES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLEvpCipherAES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $SwitchMap$com$android$org$conscrypt$OpenSSLCipher$Mode:[I

.field static final synthetic blacklist $SwitchMap$com$android$org$conscrypt$OpenSSLCipher$Padding:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 50
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->values()[Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLEvpCipherAES$1;->$SwitchMap$com$android$org$conscrypt$OpenSSLCipher$Padding:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEvpCipherAES$1;->$SwitchMap$com$android$org$conscrypt$OpenSSLCipher$Padding:[I

    sget-object v2, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v1

    :goto_16
    const/4 v1, 0x2

    :try_start_17
    sget-object v2, Lcom/android/org/conscrypt/OpenSSLEvpCipherAES$1;->$SwitchMap$com$android$org$conscrypt$OpenSSLCipher$Padding:[I

    sget-object v3, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v2

    .line 38
    :goto_23
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->values()[Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/android/org/conscrypt/OpenSSLEvpCipherAES$1;->$SwitchMap$com$android$org$conscrypt$OpenSSLCipher$Mode:[I

    :try_start_2c
    sget-object v2, Lcom/android/org/conscrypt/OpenSSLEvpCipherAES$1;->$SwitchMap$com$android$org$conscrypt$OpenSSLCipher$Mode:[I

    sget-object v3, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->CBC:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_36} :catch_37

    goto :goto_38

    :catch_37
    move-exception v0

    :goto_38
    :try_start_38
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEvpCipherAES$1;->$SwitchMap$com$android$org$conscrypt$OpenSSLCipher$Mode:[I

    sget-object v2, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->CTR:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_42} :catch_43

    goto :goto_44

    :catch_43
    move-exception v0

    :goto_44
    :try_start_44
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEvpCipherAES$1;->$SwitchMap$com$android$org$conscrypt$OpenSSLCipher$Mode:[I

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->ECB:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4f} :catch_50

    goto :goto_51

    :catch_50
    move-exception v0

    :goto_51
    return-void
.end method
