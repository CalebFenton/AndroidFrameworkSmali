.class public final Landroid/adservices/ondevicepersonalization/IsolatedServiceException;
.super Ljava/lang/Exception;
.source "IsolatedServiceException.java"


# instance fields
.field private final blacklist mErrorCode:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 4
    .param p1, "errorCode"    # I

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IsolatedServiceException: Error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/adservices/ondevicepersonalization/IsolatedServiceException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 73
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    iput p1, p0, Landroid/adservices/ondevicepersonalization/IsolatedServiceException;->mErrorCode:I

    .line 75
    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/Throwable;)V
    .registers 5
    .param p1, "errorCode"    # I
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IsolatedServiceException: Error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Landroid/adservices/ondevicepersonalization/IsolatedServiceException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    return-void
.end method


# virtual methods
.method public whitelist getErrorCode()I
    .registers 2

    .line 82
    iget v0, p0, Landroid/adservices/ondevicepersonalization/IsolatedServiceException;->mErrorCode:I

    return v0
.end method
