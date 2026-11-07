.class Landroid/widget/photopicker/IEmbeddedPhotoPicker$Stub$Proxy;
.super Ljava/lang/Object;
.source "IEmbeddedPhotoPicker.java"

# interfaces
.implements Landroid/widget/photopicker/IEmbeddedPhotoPicker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/photopicker/IEmbeddedPhotoPicker$Stub;
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

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Landroid/widget/photopicker/IEmbeddedPhotoPicker$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 124
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 127
    iget-object v0, p0, Landroid/widget/photopicker/IEmbeddedPhotoPicker$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 131
    const-string v0, "android.widget.photopicker.IEmbeddedPhotoPicker"

    return-object v0
.end method

.method public blacklist openSession(Ljava/lang/String;Landroid/os/IBinder;IIILandroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;Landroid/widget/photopicker/IEmbeddedPhotoPickerClient;)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "hostToken"    # Landroid/os/IBinder;
    .param p3, "displayId"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "featureInfo"    # Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;
    .param p7, "clientCallback"    # Landroid/widget/photopicker/IEmbeddedPhotoPickerClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 137
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.widget.photopicker.IEmbeddedPhotoPicker"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 140
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    const/4 v1, 0x0

    invoke-virtual {v0, p6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 144
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 145
    iget-object v1, p0, Landroid/widget/photopicker/IEmbeddedPhotoPicker$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_2b

    .line 148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 149
    nop

    .line 150
    return-void

    .line 148
    :catchall_2b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 149
    throw v1
.end method
