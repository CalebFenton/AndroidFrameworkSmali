.class public Landroid/os/ResultReceiver;
.super Ljava/lang/Object;
.source "ResultReceiver.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ResultReceiver$MyRunnable;,
        Landroid/os/ResultReceiver$MyResultReceiver;,
        Landroid/os/ResultReceiver$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/ResultReceiver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mHandler:Landroid/os/Handler;

.field final mLocal:Z

.field mReceiver:Lcom/android/internal/os/IResultReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 129
    new-instance v0, Landroid/os/ResultReceiver$1;

    #@2
    invoke-direct {v0}, Landroid/os/ResultReceiver$1;-><init>()V

    #@5
    .line 128
    sput-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 70
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/os/ResultReceiver;->mLocal:Z

    #@6
    .line 71
    iput-object p1, p0, Landroid/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    #@8
    .line 69
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 123
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/os/ResultReceiver;->mLocal:Z

    #@6
    .line 124
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Landroid/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    #@9
    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@c
    move-result-object v0

    #@d
    invoke-static {v0}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Landroid/os/ResultReceiver;->mReceiver:Lcom/android/internal/os/IResultReceiver;

    #@13
    .line 122
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 110
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 106
    return-void
.end method

.method public send(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 82
    iget-boolean v1, p0, Landroid/os/ResultReceiver;->mLocal:Z

    #@2
    if-eqz v1, :cond_1

    #@4
    .line 83
    iget-object v1, p0, Landroid/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 84
    iget-object v1, p0, Landroid/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    #@a
    new-instance v2, Landroid/os/ResultReceiver$MyRunnable;

    #@c
    invoke-direct {v2, p0, p1, p2}, Landroid/os/ResultReceiver$MyRunnable;-><init>(Landroid/os/ResultReceiver;ILandroid/os/Bundle;)V

    #@f
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@12
    .line 88
    :goto_0
    return-void

    #@13
    .line 86
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    #@16
    goto :goto_0

    #@17
    .line 91
    :cond_1
    iget-object v1, p0, Landroid/os/ResultReceiver;->mReceiver:Lcom/android/internal/os/IResultReceiver;

    #@19
    if-eqz v1, :cond_2

    #@1b
    .line 93
    :try_start_0
    iget-object v1, p0, Landroid/os/ResultReceiver;->mReceiver:Lcom/android/internal/os/IResultReceiver;

    #@1d
    invoke-interface {v1, p1, p2}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 81
    :cond_2
    :goto_1
    return-void

    #@21
    .line 94
    :catch_0
    move-exception v0

    #@22
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 114
    monitor-enter p0

    #@1
    .line 115
    :try_start_0
    iget-object v0, p0, Landroid/os/ResultReceiver;->mReceiver:Lcom/android/internal/os/IResultReceiver;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 116
    new-instance v0, Landroid/os/ResultReceiver$MyResultReceiver;

    #@7
    invoke-direct {v0, p0}, Landroid/os/ResultReceiver$MyResultReceiver;-><init>(Landroid/os/ResultReceiver;)V

    #@a
    iput-object v0, p0, Landroid/os/ResultReceiver;->mReceiver:Lcom/android/internal/os/IResultReceiver;

    #@c
    .line 118
    :cond_0
    iget-object v0, p0, Landroid/os/ResultReceiver;->mReceiver:Lcom/android/internal/os/IResultReceiver;

    #@e
    invoke-interface {v0}, Lcom/android/internal/os/IResultReceiver;->asBinder()Landroid/os/IBinder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit p0

    #@16
    .line 113
    return-void

    #@17
    .line 114
    :catchall_0
    move-exception v0

    #@18
    monitor-exit p0

    #@19
    throw v0
.end method
