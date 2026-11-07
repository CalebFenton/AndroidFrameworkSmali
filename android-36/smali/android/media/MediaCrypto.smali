.class public final Landroid/media/MediaCrypto;
.super Ljava/lang/Object;
.source "MediaCrypto.java"


# instance fields
.field private greylist-max-o mNativeContext:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 108
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 109
    invoke-static {}, Landroid/media/MediaCrypto;->native_init()V

    .line 110
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/UUID;[B)V
    .registers 4
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "sessionId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCryptoException;
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {p1}, Landroid/media/MediaCrypto;->getByteArrayFromUUID(Ljava/util/UUID;)[B

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/media/MediaCrypto;->native_setup([B[B)V

    .line 68
    return-void
.end method

.method private static final greylist-max-o getByteArrayFromUUID(Ljava/util/UUID;)[B
    .registers 11
    .param p0, "uuid"    # Ljava/util/UUID;

    .line 44
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    .line 45
    .local v0, "msb":J
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    .line 47
    .local v2, "lsb":J
    const/16 v4, 0x10

    new-array v4, v4, [B

    .line 48
    .local v4, "uuidBytes":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_d
    const/16 v6, 0x8

    if-ge v5, v6, :cond_28

    .line 49
    rsub-int/lit8 v7, v5, 0x7

    mul-int/2addr v7, v6

    ushr-long v7, v0, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    .line 50
    add-int/lit8 v7, v5, 0x8

    rsub-int/lit8 v8, v5, 0x7

    mul-int/2addr v8, v6

    ushr-long v8, v2, v8

    long-to-int v6, v8

    int-to-byte v6, v6

    aput-byte v6, v4, v7

    .line 48
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 53
    .end local v5    # "i":I
    :cond_28
    return-object v4
.end method

.method public static final whitelist isCryptoSchemeSupported(Ljava/util/UUID;)Z
    .registers 2
    .param p0, "uuid"    # Ljava/util/UUID;

    .line 39
    invoke-static {p0}, Landroid/media/MediaCrypto;->getByteArrayFromUUID(Ljava/util/UUID;)[B

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCrypto;->isCryptoSchemeSupportedNative([B)Z

    move-result v0

    return v0
.end method

.method private static final native greylist-max-o isCryptoSchemeSupportedNative([B)Z
.end method

.method private final native greylist-max-o native_finalize()V
.end method

.method private static final native greylist-max-o native_init()V
.end method

.method private final native greylist-max-o native_setup([B[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCryptoException;
        }
    .end annotation
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .registers 1

    .line 96
    invoke-direct {p0}, Landroid/media/MediaCrypto;->native_finalize()V

    .line 97
    return-void
.end method

.method public final native whitelist release()V
.end method

.method public final native whitelist requiresSecureDecoderComponent(Ljava/lang/String;)Z
.end method

.method public final native whitelist setMediaDrmSession([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCryptoException;
        }
    .end annotation
.end method
