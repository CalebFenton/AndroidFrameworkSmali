.class public final Landroid/service/autofill/SaveCallback;
.super Ljava/lang/Object;
.source "SaveCallback.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SaveCallback"


# instance fields
.field private final greylist-max-o mCallback:Landroid/service/autofill/ISaveCallback;

.field private greylist-max-o mCalled:Z


# direct methods
.method constructor greylist-max-o <init>(Landroid/service/autofill/ISaveCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/service/autofill/ISaveCallback;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/service/autofill/SaveCallback;->mCallback:Landroid/service/autofill/ISaveCallback;

    .line 42
    return-void
.end method

.method private greylist-max-o assertNotCalled()V
    .registers 3

    .line 120
    iget-boolean v0, p0, Landroid/service/autofill/SaveCallback;->mCalled:Z

    if-nez v0, :cond_5

    .line 123
    return-void

    .line 121
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o onSuccessInternal(Landroid/content/IntentSender;)V
    .registers 3
    .param p1, "intentSender"    # Landroid/content/IntentSender;

    .line 77
    invoke-direct {p0}, Landroid/service/autofill/SaveCallback;->assertNotCalled()V

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/autofill/SaveCallback;->mCalled:Z

    .line 80
    :try_start_6
    iget-object v0, p0, Landroid/service/autofill/SaveCallback;->mCallback:Landroid/service/autofill/ISaveCallback;

    invoke-interface {v0, p1}, Landroid/service/autofill/ISaveCallback;->onSuccess(Landroid/content/IntentSender;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    .line 83
    goto :goto_10

    .line 81
    :catch_c
    move-exception v0

    .line 82
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 84
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method


# virtual methods
.method public whitelist onFailure(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onFailure(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SaveCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-direct {p0}, Landroid/service/autofill/SaveCallback;->assertNotCalled()V

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/autofill/SaveCallback;->mCalled:Z

    .line 113
    :try_start_1f
    iget-object v0, p0, Landroid/service/autofill/SaveCallback;->mCallback:Landroid/service/autofill/ISaveCallback;

    invoke-interface {v0, p1}, Landroid/service/autofill/ISaveCallback;->onFailure(Ljava/lang/CharSequence;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_25

    .line 116
    goto :goto_29

    .line 114
    :catch_25
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 117
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_29
    return-void
.end method

.method public whitelist onSuccess()V
    .registers 2

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/service/autofill/SaveCallback;->onSuccessInternal(Landroid/content/IntentSender;)V

    .line 54
    return-void
.end method

.method public whitelist onSuccess(Landroid/content/IntentSender;)V
    .registers 3
    .param p1, "intentSender"    # Landroid/content/IntentSender;

    .line 73
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentSender;

    invoke-direct {p0, v0}, Landroid/service/autofill/SaveCallback;->onSuccessInternal(Landroid/content/IntentSender;)V

    .line 74
    return-void
.end method
