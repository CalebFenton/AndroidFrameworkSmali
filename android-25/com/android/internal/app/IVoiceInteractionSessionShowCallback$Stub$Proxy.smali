.class Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IVoiceInteractionSessionShowCallback.java"

# interfaces
.implements Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 65
    iput-object p1, p0, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 63
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 73
    const-string/jumbo v0, "com.android.internal.app.IVoiceInteractionSessionShowCallback"

    #@3
    return-object v0
.end method

.method public onFailed()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 77
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 79
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.app.IVoiceInteractionSessionShowCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 80
    iget-object v1, p0, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/4 v2, 0x1

    #@d
    const/4 v3, 0x0

    #@e
    const/4 v4, 0x1

    #@f
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 83
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@15
    .line 75
    return-void

    #@16
    .line 82
    :catchall_0
    move-exception v1

    #@17
    .line 83
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1a
    .line 82
    throw v1
.end method

.method public onShown()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 88
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 90
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.app.IVoiceInteractionSessionShowCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 91
    iget-object v1, p0, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/4 v2, 0x2

    #@d
    const/4 v3, 0x0

    #@e
    const/4 v4, 0x1

    #@f
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 94
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@15
    .line 86
    return-void

    #@16
    .line 93
    :catchall_0
    move-exception v1

    #@17
    .line 94
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1a
    .line 93
    throw v1
.end method
