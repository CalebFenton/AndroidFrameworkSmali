.class Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWeakEscrowTokenRemovedListener.java"

# interfaces
.implements Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener$Stub;
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

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 107
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 114
    const-string v0, "com.android.internal.widget.IWeakEscrowTokenRemovedListener"

    return-object v0
.end method

.method public blacklist onWeakEscrowTokenRemoved(JI)V
    .registers 8
    .param p1, "handle"    # J
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    invoke-virtual {p0}, Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 120
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.widget.IWeakEscrowTokenRemovedListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 122
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-object v1, p0, Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    .line 126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 127
    nop

    .line 128
    return-void

    .line 126
    :catchall_1f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 127
    throw v1
.end method
