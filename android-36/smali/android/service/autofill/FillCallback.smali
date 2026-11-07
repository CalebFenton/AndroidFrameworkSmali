.class public final Landroid/service/autofill/FillCallback;
.super Ljava/lang/Object;
.source "FillCallback.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FillCallback"


# instance fields
.field private final greylist-max-o mCallback:Landroid/service/autofill/IFillCallback;

.field private greylist-max-o mCalled:Z

.field private final greylist-max-o mRequestId:I


# direct methods
.method public constructor greylist-max-o <init>(Landroid/service/autofill/IFillCallback;I)V
    .registers 3
    .param p1, "callback"    # Landroid/service/autofill/IFillCallback;
    .param p2, "requestId"    # I

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/service/autofill/FillCallback;->mCallback:Landroid/service/autofill/IFillCallback;

    .line 42
    iput p2, p0, Landroid/service/autofill/FillCallback;->mRequestId:I

    .line 43
    return-void
.end method

.method private greylist-max-o assertNotCalled()V
    .registers 3

    .line 114
    iget-boolean v0, p0, Landroid/service/autofill/FillCallback;->mCalled:Z

    if-nez v0, :cond_5

    .line 117
    return-void

    .line 115
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist onFailure(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onFailure(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FillCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-direct {p0}, Landroid/service/autofill/FillCallback;->assertNotCalled()V

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/autofill/FillCallback;->mCalled:Z

    .line 107
    :try_start_1f
    iget-object v0, p0, Landroid/service/autofill/FillCallback;->mCallback:Landroid/service/autofill/IFillCallback;

    iget v1, p0, Landroid/service/autofill/FillCallback;->mRequestId:I

    invoke-interface {v0, v1, p1}, Landroid/service/autofill/IFillCallback;->onFailure(ILjava/lang/CharSequence;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_26} :catch_27

    .line 110
    goto :goto_2b

    .line 108
    :catch_27
    move-exception v0

    .line 109
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 111
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2b
    return-void
.end method

.method public whitelist onSuccess(Landroid/service/autofill/FillResponse;)V
    .registers 3
    .param p1, "response"    # Landroid/service/autofill/FillResponse;

    .line 62
    invoke-direct {p0}, Landroid/service/autofill/FillCallback;->assertNotCalled()V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/autofill/FillCallback;->mCalled:Z

    .line 65
    if-eqz p1, :cond_d

    .line 66
    iget v0, p0, Landroid/service/autofill/FillCallback;->mRequestId:I

    invoke-virtual {p1, v0}, Landroid/service/autofill/FillResponse;->setRequestId(I)V

    .line 70
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/service/autofill/FillCallback;->mCallback:Landroid/service/autofill/IFillCallback;

    invoke-interface {v0, p1}, Landroid/service/autofill/IFillCallback;->onSuccess(Landroid/service/autofill/FillResponse;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    .line 73
    goto :goto_17

    .line 71
    :catch_13
    move-exception v0

    .line 72
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 74
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_17
    return-void
.end method
