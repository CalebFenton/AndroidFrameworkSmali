.class Lcom/android/internal/app/IAppOpsStartedCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAppOpsStartedCallback.java"

# interfaces
.implements Lcom/android/internal/app/IAppOpsStartedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IAppOpsStartedCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/android/internal/app/IAppOpsStartedCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 123
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/android/internal/app/IAppOpsStartedCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 130
    const-string v0, "com.android.internal.app.IAppOpsStartedCallback"

    return-object v0
.end method

.method public blacklist opStarted(IILjava/lang/String;Ljava/lang/String;IIIIII)V
    .registers 15
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "virtualDeviceId"    # I
    .param p6, "flags"    # I
    .param p7, "mode"    # I
    .param p8, "startedType"    # I
    .param p9, "attributionFlags"    # I
    .param p10, "attributionChainId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Lcom/android/internal/app/IAppOpsStartedCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 136
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.app.IAppOpsStartedCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    invoke-virtual {v0, p10}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget-object v1, p0, Lcom/android/internal/app/IAppOpsStartedCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_37

    .line 150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 151
    nop

    .line 152
    return-void

    .line 150
    :catchall_37
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 151
    throw v1
.end method
