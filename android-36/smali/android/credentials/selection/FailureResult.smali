.class public final Landroid/credentials/selection/FailureResult;
.super Ljava/lang/Object;
.source "FailureResult.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/credentials/selection/FailureResult$ErrorCode;
    }
.end annotation


# static fields
.field public static final whitelist ERROR_CODE_CANCELED_AND_LAUNCHED_SETTINGS:I = 0x2

.field public static final whitelist ERROR_CODE_DIALOG_CANCELED_BY_USER:I = 0x1

.field public static final whitelist ERROR_CODE_UI_FAILURE:I


# instance fields
.field private final blacklist mErrorCode:I

.field private final blacklist mErrorMessage:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput p1, p0, Landroid/credentials/selection/FailureResult;->mErrorCode:I

    .line 97
    iput-object p2, p0, Landroid/credentials/selection/FailureResult;->mErrorMessage:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public static whitelist sendFailureResult(Landroid/os/ResultReceiver;Landroid/credentials/selection/FailureResult;)V
    .registers 5
    .param p0, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p1, "failureResult"    # Landroid/credentials/selection/FailureResult;

    .line 52
    invoke-virtual {p1}, Landroid/credentials/selection/FailureResult;->toFailureDialogResult()Landroid/credentials/selection/FailureDialogResult;

    move-result-object v0

    .line 53
    .local v0, "result":Landroid/credentials/selection/FailureDialogResult;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 54
    .local v1, "resultData":Landroid/os/Bundle;
    invoke-static {v0, v1}, Landroid/credentials/selection/FailureDialogResult;->addToBundle(Landroid/credentials/selection/FailureDialogResult;Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p1}, Landroid/credentials/selection/FailureResult;->errorCodeToResultCode()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 57
    return-void
.end method


# virtual methods
.method blacklist errorCodeToResultCode()I
    .registers 2

    .line 117
    iget v0, p0, Landroid/credentials/selection/FailureResult;->mErrorCode:I

    packed-switch v0, :pswitch_data_c

    .line 123
    const/4 v0, 0x3

    return v0

    .line 121
    :pswitch_7
    const/4 v0, 0x1

    return v0

    .line 119
    :pswitch_9
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_7
    .end packed-switch
.end method

.method public whitelist getErrorCode()I
    .registers 2

    .line 103
    iget v0, p0, Landroid/credentials/selection/FailureResult;->mErrorCode:I

    return v0
.end method

.method public whitelist getErrorMessage()Ljava/lang/String;
    .registers 2

    .line 109
    iget-object v0, p0, Landroid/credentials/selection/FailureResult;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method blacklist toFailureDialogResult()Landroid/credentials/selection/FailureDialogResult;
    .registers 4

    .line 113
    new-instance v0, Landroid/credentials/selection/FailureDialogResult;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/credentials/selection/FailureResult;->mErrorMessage:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/credentials/selection/FailureDialogResult;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-object v0
.end method
