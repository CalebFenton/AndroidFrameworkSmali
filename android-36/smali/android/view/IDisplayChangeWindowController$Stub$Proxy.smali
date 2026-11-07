.class Landroid/view/IDisplayChangeWindowController$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDisplayChangeWindowController.java"

# interfaces
.implements Landroid/view/IDisplayChangeWindowController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IDisplayChangeWindowController$Stub;
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

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Landroid/view/IDisplayChangeWindowController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 139
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 142
    iget-object v0, p0, Landroid/view/IDisplayChangeWindowController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 146
    const-string v0, "android.view.IDisplayChangeWindowController"

    return-object v0
.end method

.method public blacklist onDisplayChange(IIILandroid/window/DisplayAreaInfo;Landroid/view/IDisplayChangeWindowCallback;)V
    .registers 10
    .param p1, "displayId"    # I
    .param p2, "fromRotation"    # I
    .param p3, "toRotation"    # I
    .param p4, "newDisplayAreaInfo"    # Landroid/window/DisplayAreaInfo;
    .param p5, "callback"    # Landroid/view/IDisplayChangeWindowCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    invoke-virtual {p0}, Landroid/view/IDisplayChangeWindowController$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 161
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.IDisplayChangeWindowController"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 166
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 167
    iget-object v1, p0, Landroid/view/IDisplayChangeWindowController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_29

    .line 170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 171
    nop

    .line 172
    return-void

    .line 170
    :catchall_29
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 171
    throw v1
.end method
