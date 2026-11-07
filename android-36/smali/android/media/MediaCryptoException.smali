.class public final Landroid/media/MediaCryptoException;
.super Ljava/lang/Exception;
.source "MediaCryptoException.java"

# interfaces
.implements Landroid/media/MediaDrmThrowable;


# instance fields
.field private final blacklist mErrorContext:I

.field private final blacklist mOemError:I

.field private final blacklist mVendorError:I


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "detailMessage"    # Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, Landroid/media/MediaCryptoException;-><init>(Ljava/lang/String;III)V

    .line 28
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;III)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "vendorError"    # I
    .param p3, "oemError"    # I
    .param p4, "errorContext"    # I

    .line 34
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 35
    iput p2, p0, Landroid/media/MediaCryptoException;->mVendorError:I

    .line 36
    iput p3, p0, Landroid/media/MediaCryptoException;->mOemError:I

    .line 37
    iput p4, p0, Landroid/media/MediaCryptoException;->mErrorContext:I

    .line 38
    return-void
.end method


# virtual methods
.method public whitelist getErrorContext()I
    .registers 2

    .line 52
    iget v0, p0, Landroid/media/MediaCryptoException;->mErrorContext:I

    return v0
.end method

.method public whitelist getOemError()I
    .registers 2

    .line 47
    iget v0, p0, Landroid/media/MediaCryptoException;->mOemError:I

    return v0
.end method

.method public whitelist getVendorError()I
    .registers 2

    .line 42
    iget v0, p0, Landroid/media/MediaCryptoException;->mVendorError:I

    return v0
.end method
