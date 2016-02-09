.class public final Landroid/media/MediaCrypto;
.super Ljava/lang/Object;
.source "MediaCrypto.java"


# instance fields
.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 103
    const-string/jumbo v0, "media_jni"

    #@3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@6
    .line 104
    invoke-static {}, Landroid/media/MediaCrypto;->native_init()V

    #@9
    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;[B)V
    .locals 1
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "initData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCryptoException;
        }
    .end annotation

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 65
    invoke-static {p1}, Landroid/media/MediaCrypto;->getByteArrayFromUUID(Ljava/util/UUID;)[B

    #@6
    move-result-object v0

    #@7
    invoke-direct {p0, v0, p2}, Landroid/media/MediaCrypto;->native_setup([B[B)V

    #@a
    .line 64
    return-void
.end method

.method private static final getByteArrayFromUUID(Ljava/util/UUID;)[B
    .locals 11
    .param p0, "uuid"    # Ljava/util/UUID;

    #@0
    .prologue
    const/16 v10, 0x8

    #@2
    .line 44
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    #@5
    move-result-wide v4

    #@6
    .line 45
    .local v4, "msb":J
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    #@9
    move-result-wide v2

    #@a
    .line 47
    .local v2, "lsb":J
    const/16 v6, 0x10

    #@c
    new-array v1, v6, [B

    #@e
    .line 48
    .local v1, "uuidBytes":[B
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    if-ge v0, v10, :cond_0

    #@11
    .line 49
    rsub-int/lit8 v6, v0, 0x7

    #@13
    mul-int/lit8 v6, v6, 0x8

    #@15
    ushr-long v6, v4, v6

    #@17
    long-to-int v6, v6

    #@18
    int-to-byte v6, v6

    #@19
    aput-byte v6, v1, v0

    #@1b
    .line 50
    add-int/lit8 v6, v0, 0x8

    #@1d
    rsub-int/lit8 v7, v0, 0x7

    #@1f
    mul-int/lit8 v7, v7, 0x8

    #@21
    ushr-long v8, v2, v7

    #@23
    long-to-int v7, v8

    #@24
    int-to-byte v7, v7

    #@25
    aput-byte v7, v1, v6

    #@27
    .line 48
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 53
    :cond_0
    return-object v1
.end method

.method public static final isCryptoSchemeSupported(Ljava/util/UUID;)Z
    .locals 1
    .param p0, "uuid"    # Ljava/util/UUID;

    #@0
    .prologue
    .line 39
    invoke-static {p0}, Landroid/media/MediaCrypto;->getByteArrayFromUUID(Ljava/util/UUID;)[B

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/media/MediaCrypto;->isCryptoSchemeSupportedNative([B)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method private static final native isCryptoSchemeSupportedNative([B)Z
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_setup([B[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCryptoException;
        }
    .end annotation
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    #@0
    .prologue
    .line 91
    invoke-direct {p0}, Landroid/media/MediaCrypto;->native_finalize()V

    #@3
    .line 90
    return-void
.end method

.method public final native release()V
.end method

.method public final native requiresSecureDecoderComponent(Ljava/lang/String;)Z
.end method

.method public final native setMediaDrmSession([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCryptoException;
        }
    .end annotation
.end method
