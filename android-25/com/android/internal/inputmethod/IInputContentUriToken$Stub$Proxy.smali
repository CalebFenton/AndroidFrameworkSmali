.class Lcom/android/internal/inputmethod/IInputContentUriToken$Stub$Proxy;
.super Ljava/lang/Object;
.source "IInputContentUriToken.java"

# interfaces
.implements Lcom/android/internal/inputmethod/IInputContentUriToken;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/IInputContentUriToken$Stub;
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
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 70
    iput-object p1, p0, Lcom/android/internal/inputmethod/IInputContentUriToken$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 68
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/inputmethod/IInputContentUriToken$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 78
    const-string/jumbo v0, "com.android.internal.inputmethod.IInputContentUriToken"

    #@3
    return-object v0
.end method

.method public release()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 96
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 97
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 99
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.inputmethod.IInputContentUriToken"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 100
    iget-object v2, p0, Lcom/android/internal/inputmethod/IInputContentUriToken$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v3, 0x2

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 101
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 104
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 94
    return-void

    #@1f
    .line 103
    :catchall_0
    move-exception v2

    #@20
    .line 104
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 103
    throw v2
.end method

.method public take()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 82
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 83
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 85
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.inputmethod.IInputContentUriToken"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 86
    iget-object v2, p0, Lcom/android/internal/inputmethod/IInputContentUriToken$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v3, 0x1

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 87
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 90
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 91
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 80
    return-void

    #@1f
    .line 89
    :catchall_0
    move-exception v2

    #@20
    .line 90
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 91
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 89
    throw v2
.end method
