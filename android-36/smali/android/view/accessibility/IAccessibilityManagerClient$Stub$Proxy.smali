.class Landroid/view/accessibility/IAccessibilityManagerClient$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAccessibilityManagerClient.java"

# interfaces
.implements Landroid/view/accessibility/IAccessibilityManagerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IAccessibilityManagerClient$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist-max-o mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist-max-o <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Landroid/view/accessibility/IAccessibilityManagerClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 157
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 160
    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManagerClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 164
    const-string v0, "android.view.accessibility.IAccessibilityManagerClient"

    return-object v0
.end method

.method public blacklist notifyServicesStateChanged(J)V
    .registers 8
    .param p1, "updatedUiTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManagerClient$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 182
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.accessibility.IAccessibilityManagerClient"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 184
    iget-object v1, p0, Landroid/view/accessibility/IAccessibilityManagerClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1d

    .line 187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 188
    nop

    .line 189
    return-void

    .line 187
    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 188
    throw v1
.end method

.method public blacklist setFocusAppearance(II)V
    .registers 8
    .param p1, "strokeWidth"    # I
    .param p2, "color"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 204
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManagerClient$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 206
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.accessibility.IAccessibilityManagerClient"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    iget-object v1, p0, Landroid/view/accessibility/IAccessibilityManagerClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_20

    .line 212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 213
    nop

    .line 214
    return-void

    .line 212
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 213
    throw v1
.end method

.method public greylist-max-o setRelevantEventTypes(I)V
    .registers 7
    .param p1, "eventTypes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 192
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManagerClient$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 194
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.accessibility.IAccessibilityManagerClient"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget-object v1, p0, Landroid/view/accessibility/IAccessibilityManagerClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1d

    .line 199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 200
    nop

    .line 201
    return-void

    .line 199
    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 200
    throw v1
.end method

.method public greylist-max-o setState(I)V
    .registers 6
    .param p1, "stateFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManagerClient$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 170
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.accessibility.IAccessibilityManagerClient"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget-object v1, p0, Landroid/view/accessibility/IAccessibilityManagerClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_1c

    .line 175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 176
    nop

    .line 177
    return-void

    .line 175
    :catchall_1c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 176
    throw v1
.end method
