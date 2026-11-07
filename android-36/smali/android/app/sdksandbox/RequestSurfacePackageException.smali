.class public final Landroid/app/sdksandbox/RequestSurfacePackageException;
.super Ljava/lang/Exception;
.source "RequestSurfacePackageException.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final blacklist mExtraInformation:Landroid/os/Bundle;

.field private final blacklist mRequestSurfacePackageErrorCode:I


# direct methods
.method public constructor whitelist <init>(ILjava/lang/String;)V
    .registers 4
    .param p1, "requestSurfacePackageErrorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/sdksandbox/RequestSurfacePackageException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "requestSurfacePackageErrorCode"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 64
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/sdksandbox/RequestSurfacePackageException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Landroid/os/Bundle;)V

    .line 65
    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;Ljava/lang/Throwable;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "requestSurfacePackageErrorCode"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;
    .param p4, "extraInfo"    # Landroid/os/Bundle;

    .line 84
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    iput p1, p0, Landroid/app/sdksandbox/RequestSurfacePackageException;->mRequestSurfacePackageErrorCode:I

    .line 86
    iput-object p4, p0, Landroid/app/sdksandbox/RequestSurfacePackageException;->mExtraInformation:Landroid/os/Bundle;

    .line 87
    return-void
.end method


# virtual methods
.method public whitelist getExtraErrorInformation()Landroid/os/Bundle;
    .registers 2

    .line 105
    iget-object v0, p0, Landroid/app/sdksandbox/RequestSurfacePackageException;->mExtraInformation:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getRequestSurfacePackageErrorCode()I
    .registers 2

    .line 95
    iget v0, p0, Landroid/app/sdksandbox/RequestSurfacePackageException;->mRequestSurfacePackageErrorCode:I

    return v0
.end method
