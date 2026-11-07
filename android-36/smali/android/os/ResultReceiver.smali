.class public Landroid/os/ResultReceiver;
.super Ljava/lang/Object;
.source "ResultReceiver.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ResultReceiver$MyRunnable;,
        Landroid/os/ResultReceiver$MyResultReceiver;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/ResultReceiver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final greylist-max-o mHandler:Landroid/os/Handler;

.field final greylist-max-o mLocal:Z

.field greylist-max-o mReceiver:Lcom/android/internal/os/IResultReceiver;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 129
    new-instance v0, Landroid/os/ResultReceiver$1;

    invoke-direct {v0}, Landroid/os/ResultReceiver$1;-><init>()V

    sput-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/ResultReceiver;->mLocal:Z

    .line 72
    iput-object p1, p0, Landroid/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    .line 73
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/ResultReceiver;->mLocal:Z

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ResultReceiver;->mReceiver:Lcom/android/internal/os/IResultReceiver;

    .line 127
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist onReceiveResult(ILandroid/os/Bundle;)V
    .registers 3
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 108
    return-void
.end method

.method public whitelist send(ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 83
    iget-boolean v0, p0, Landroid/os/ResultReceiver;->mLocal:Z

    if-eqz v0, :cond_17

    .line 84
    iget-object v0, p0, Landroid/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_13

    .line 85
    iget-object v0, p0, Landroid/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/ResultReceiver$MyRunnable;

    invoke-direct {v1, p0, p1, p2}, Landroid/os/ResultReceiver$MyRunnable;-><init>(Landroid/os/ResultReceiver;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_16

    .line 87
    :cond_13
    invoke-virtual {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 89
    :goto_16
    return-void

    .line 92
    :cond_17
    iget-object v0, p0, Landroid/os/ResultReceiver;->mReceiver:Lcom/android/internal/os/IResultReceiver;

    if-eqz v0, :cond_22

    .line 94
    :try_start_1b
    iget-object v0, p0, Landroid/os/ResultReceiver;->mReceiver:Lcom/android/internal/os/IResultReceiver;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21

    .line 96
    goto :goto_22

    .line 95
    :catch_21
    move-exception v0

    .line 98
    :cond_22
    :goto_22
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 115
    monitor-enter p0

    .line 116
    :try_start_1
    iget-object v0, p0, Landroid/os/ResultReceiver;->mReceiver:Lcom/android/internal/os/IResultReceiver;

    if-nez v0, :cond_c

    .line 117
    new-instance v0, Landroid/os/ResultReceiver$MyResultReceiver;

    invoke-direct {v0, p0}, Landroid/os/ResultReceiver$MyResultReceiver;-><init>(Landroid/os/ResultReceiver;)V

    iput-object v0, p0, Landroid/os/ResultReceiver;->mReceiver:Lcom/android/internal/os/IResultReceiver;

    .line 119
    :cond_c
    iget-object v0, p0, Landroid/os/ResultReceiver;->mReceiver:Lcom/android/internal/os/IResultReceiver;

    invoke-interface {v0}, Lcom/android/internal/os/IResultReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 120
    monitor-exit p0

    .line 121
    return-void

    .line 120
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v0
.end method
