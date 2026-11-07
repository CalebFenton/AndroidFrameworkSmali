.class final Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;
.super Ljava/lang/Object;
.source "SavedDatasetsInfoCallbackImpl.java"

# interfaces
.implements Landroid/service/autofill/SavedDatasetsInfoCallback;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AutofillService"


# instance fields
.field private final blacklist mReceiver:Lcom/android/internal/os/IResultReceiver;

.field private final blacklist mType:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/os/IResultReceiver;Ljava/lang/String;)V
    .registers 4
    .param p1, "receiver"    # Lcom/android/internal/os/IResultReceiver;
    .param p2, "type"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/IResultReceiver;

    iput-object v0, p0, Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;->mReceiver:Lcom/android/internal/os/IResultReceiver;

    .line 51
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;->mType:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private blacklist send(ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "resultCode"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 86
    :try_start_0
    iget-object v0, p0, Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;->mReceiver:Lcom/android/internal/os/IResultReceiver;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_5} :catch_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_25

    .line 89
    :catch_6
    move-exception v0

    .line 90
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 87
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 88
    .local v0, "e":Landroid/os/DeadObjectException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send onSavedPasswordCountRequest result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillService"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :goto_25
    nop

    .line 92
    return-void
.end method


# virtual methods
.method public whitelist onError(I)V
    .registers 5
    .param p1, "error"    # I

    .line 78
    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "error"

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 79
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 80
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 81
    invoke-direct {p0, v1, v0}, Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;->send(ILandroid/os/Bundle;)V

    .line 82
    return-void
.end method

.method public whitelist onSuccess(Ljava/util/Set;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/service/autofill/SavedDatasetsInfo;",
            ">;)V"
        }
    .end annotation

    .line 56
    .local p1, "results":Ljava/util/Set;, "Ljava/util/Set<Landroid/service/autofill/SavedDatasetsInfo;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    .line 58
    invoke-direct {p0, v2, v1}, Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;->send(ILandroid/os/Bundle;)V

    .line 59
    return-void

    .line 61
    :cond_f
    const/4 v0, -0x1

    .line 62
    .local v0, "count":I
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/autofill/SavedDatasetsInfo;

    .line 63
    .local v4, "info":Landroid/service/autofill/SavedDatasetsInfo;
    iget-object v5, p0, Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;->mType:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/service/autofill/SavedDatasetsInfo;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 64
    invoke-virtual {v4}, Landroid/service/autofill/SavedDatasetsInfo;->getCount()I

    move-result v0

    .line 66
    .end local v4    # "info":Landroid/service/autofill/SavedDatasetsInfo;
    :cond_30
    goto :goto_14

    .line 67
    :cond_31
    if-gez v0, :cond_37

    .line 68
    invoke-direct {p0, v2, v1}, Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;->send(ILandroid/os/Bundle;)V

    .line 69
    return-void

    .line 71
    :cond_37
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 72
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;->send(ILandroid/os/Bundle;)V

    .line 74
    return-void
.end method
