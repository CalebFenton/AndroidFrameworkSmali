.class public final Landroid/media/MediaDrm$SessionException;
.super Ljava/lang/RuntimeException;
.source "MediaDrm.java"

# interfaces
.implements Landroid/media/MediaDrmThrowable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SessionException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaDrm$SessionException$SessionErrorCode;
    }
.end annotation


# static fields
.field public static final whitelist ERROR_RESOURCE_CONTENTION:I = 0x1

.field public static final whitelist ERROR_UNKNOWN:I


# instance fields
.field private final blacklist mErrorCode:I

.field private final blacklist mErrorContext:I

.field private final blacklist mOemError:I

.field private final blacklist mVendorError:I


# direct methods
.method public constructor whitelist <init>(ILjava/lang/String;)V
    .registers 9
    .param p1, "errorCode"    # I
    .param p2, "detailMessage"    # Ljava/lang/String;

    .line 764
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p1

    move-object v1, p2

    .end local p1    # "errorCode":I
    .end local p2    # "detailMessage":Ljava/lang/String;
    .local v1, "detailMessage":Ljava/lang/String;
    .local v2, "errorCode":I
    invoke-direct/range {v0 .. v5}, Landroid/media/MediaDrm$SessionException;-><init>(Ljava/lang/String;IIII)V

    .line 765
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IIII)V
    .registers 6
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "vendorError"    # I
    .param p4, "oemError"    # I
    .param p5, "errorContext"    # I

    .line 772
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 773
    iput p2, p0, Landroid/media/MediaDrm$SessionException;->mErrorCode:I

    .line 774
    iput p3, p0, Landroid/media/MediaDrm$SessionException;->mVendorError:I

    .line 775
    iput p4, p0, Landroid/media/MediaDrm$SessionException;->mOemError:I

    .line 776
    iput p5, p0, Landroid/media/MediaDrm$SessionException;->mErrorContext:I

    .line 777
    return-void
.end method


# virtual methods
.method public whitelist getErrorCode()I
    .registers 2

    .line 812
    iget v0, p0, Landroid/media/MediaDrm$SessionException;->mErrorCode:I

    return v0
.end method

.method public whitelist getErrorContext()I
    .registers 2

    .line 827
    iget v0, p0, Landroid/media/MediaDrm$SessionException;->mErrorContext:I

    return v0
.end method

.method public whitelist getOemError()I
    .registers 2

    .line 822
    iget v0, p0, Landroid/media/MediaDrm$SessionException;->mOemError:I

    return v0
.end method

.method public whitelist getVendorError()I
    .registers 2

    .line 817
    iget v0, p0, Landroid/media/MediaDrm$SessionException;->mVendorError:I

    return v0
.end method

.method public whitelist isTransient()Z
    .registers 3

    .line 837
    iget v0, p0, Landroid/media/MediaDrm$SessionException;->mErrorCode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method
