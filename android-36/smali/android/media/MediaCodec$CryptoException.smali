.class public final Landroid/media/MediaCodec$CryptoException;
.super Ljava/lang/RuntimeException;
.source "MediaCodec.java"

# interfaces
.implements Landroid/media/MediaDrmThrowable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CryptoException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCodec$CryptoException$CryptoErrorCode;
    }
.end annotation


# static fields
.field public static final whitelist ERROR_FRAME_TOO_LARGE:I = 0x8

.field public static final whitelist ERROR_INSUFFICIENT_OUTPUT_PROTECTION:I = 0x4

.field public static final whitelist ERROR_INSUFFICIENT_SECURITY:I = 0x7

.field public static final whitelist ERROR_KEY_EXPIRED:I = 0x2

.field public static final whitelist ERROR_LOST_STATE:I = 0x9

.field public static final whitelist ERROR_NO_KEY:I = 0x1

.field public static final whitelist ERROR_RESOURCE_BUSY:I = 0x3

.field public static final whitelist ERROR_SESSION_NOT_OPENED:I = 0x5

.field public static final whitelist ERROR_UNSUPPORTED_OPERATION:I = 0x6


# instance fields
.field private blacklist mCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

.field private final greylist-max-o mErrorCode:I

.field private final blacklist mErrorContext:I

.field private final blacklist mOemError:I

.field private final blacklist mVendorError:I


# direct methods
.method public constructor whitelist <init>(ILjava/lang/String;)V
    .registers 10
    .param p1, "errorCode"    # I
    .param p2, "detailMessage"    # Ljava/lang/String;

    .line 2934
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move-object v1, p2

    .end local p1    # "errorCode":I
    .end local p2    # "detailMessage":Ljava/lang/String;
    .local v1, "detailMessage":Ljava/lang/String;
    .local v2, "errorCode":I
    invoke-direct/range {v0 .. v6}, Landroid/media/MediaCodec$CryptoException;-><init>(Ljava/lang/String;IIIILandroid/media/MediaCodec$CryptoInfo;)V

    .line 2935
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IIIILandroid/media/MediaCodec$CryptoInfo;)V
    .registers 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "vendorError"    # I
    .param p4, "oemError"    # I
    .param p5, "errorContext"    # I
    .param p6, "cryptoInfo"    # Landroid/media/MediaCodec$CryptoInfo;

    .line 2942
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2943
    iput p2, p0, Landroid/media/MediaCodec$CryptoException;->mErrorCode:I

    .line 2944
    iput p3, p0, Landroid/media/MediaCodec$CryptoException;->mVendorError:I

    .line 2945
    iput p4, p0, Landroid/media/MediaCodec$CryptoException;->mOemError:I

    .line 2946
    iput p5, p0, Landroid/media/MediaCodec$CryptoException;->mErrorContext:I

    .line 2947
    iput-object p6, p0, Landroid/media/MediaCodec$CryptoException;->mCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    .line 2948
    return-void
.end method


# virtual methods
.method public whitelist getCryptoInfo()Landroid/media/MediaCodec$CryptoInfo;
    .registers 2

    .line 3073
    iget-object v0, p0, Landroid/media/MediaCodec$CryptoException;->mCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    return-object v0
.end method

.method public whitelist getErrorCode()I
    .registers 2

    .line 3063
    iget v0, p0, Landroid/media/MediaCodec$CryptoException;->mErrorCode:I

    return v0
.end method

.method public whitelist getErrorContext()I
    .registers 2

    .line 3088
    iget v0, p0, Landroid/media/MediaCodec$CryptoException;->mErrorContext:I

    return v0
.end method

.method public whitelist getOemError()I
    .registers 2

    .line 3083
    iget v0, p0, Landroid/media/MediaCodec$CryptoException;->mOemError:I

    return v0
.end method

.method public whitelist getVendorError()I
    .registers 2

    .line 3078
    iget v0, p0, Landroid/media/MediaCodec$CryptoException;->mVendorError:I

    return v0
.end method
