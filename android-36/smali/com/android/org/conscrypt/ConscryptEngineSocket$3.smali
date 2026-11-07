.class synthetic Lcom/android/org/conscrypt/ConscryptEngineSocket$3;
.super Ljava/lang/Object;
.source "ConscryptEngineSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/ConscryptEngineSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

.field static final synthetic blacklist $SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 916
    invoke-static {}, Ljavax/net/ssl/SSLEngineResult$Status;->values()[Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/org/conscrypt/ConscryptEngineSocket$3;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/android/org/conscrypt/ConscryptEngineSocket$3;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

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
    sget-object v2, Lcom/android/org/conscrypt/ConscryptEngineSocket$3;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v2

    :goto_23
    const/4 v2, 0x3

    :try_start_24
    sget-object v3, Lcom/android/org/conscrypt/ConscryptEngineSocket$3;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v3

    .line 240
    :goto_30
    invoke-static {}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->values()[Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/android/org/conscrypt/ConscryptEngineSocket$3;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    :try_start_39
    sget-object v3, Lcom/android/org/conscrypt/ConscryptEngineSocket$3;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_43} :catch_44

    goto :goto_45

    :catch_44
    move-exception v0

    :goto_45
    :try_start_45
    sget-object v0, Lcom/android/org/conscrypt/ConscryptEngineSocket$3;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_4f} :catch_50

    goto :goto_51

    :catch_50
    move-exception v0

    :goto_51
    :try_start_51
    sget-object v0, Lcom/android/org/conscrypt/ConscryptEngineSocket$3;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_5b} :catch_5c

    goto :goto_5d

    :catch_5c
    move-exception v0

    :goto_5d
    :try_start_5d
    sget-object v0, Lcom/android/org/conscrypt/ConscryptEngineSocket$3;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_68
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_68} :catch_69

    goto :goto_6a

    :catch_69
    move-exception v0

    :goto_6a
    :try_start_6a
    sget-object v0, Lcom/android/org/conscrypt/ConscryptEngineSocket$3;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_76

    goto :goto_77

    :catch_76
    move-exception v0

    :goto_77
    return-void
.end method
