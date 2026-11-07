.class public abstract Landroid/widget/photopicker/IEmbeddedPhotoPicker$Stub;
.super Landroid/os/Binder;
.source "IEmbeddedPhotoPicker.java"

# interfaces
.implements Landroid/widget/photopicker/IEmbeddedPhotoPicker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/photopicker/IEmbeddedPhotoPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/photopicker/IEmbeddedPhotoPicker$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_openSession:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 39
    const-string v0, "android.widget.photopicker.IEmbeddedPhotoPicker"

    invoke-virtual {p0, p0, v0}, Landroid/widget/photopicker/IEmbeddedPhotoPicker$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/widget/photopicker/IEmbeddedPhotoPicker;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 47
    if-nez p0, :cond_4

    .line 48
    const/4 v0, 0x0

    return-object v0

    .line 50
    :cond_4
    const-string v0, "android.widget.photopicker.IEmbeddedPhotoPicker"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 51
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/widget/photopicker/IEmbeddedPhotoPicker;

    if-eqz v1, :cond_14

    .line 52
    move-object v1, v0

    check-cast v1, Landroid/widget/photopicker/IEmbeddedPhotoPicker;

    return-object v1

    .line 54
    :cond_14
    new-instance v1, Landroid/widget/photopicker/IEmbeddedPhotoPicker$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/widget/photopicker/IEmbeddedPhotoPicker$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 63
    packed-switch p0, :pswitch_data_8

    .line 71
    const/4 v0, 0x0

    return-object v0

    .line 67
    :pswitch_5
    const-string v0, "openSession"

    return-object v0

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 58
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 78
    invoke-static {p1}, Landroid/widget/photopicker/IEmbeddedPhotoPicker$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    const-string v0, "android.widget.photopicker.IEmbeddedPhotoPicker"

    .line 83
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 84
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 87
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    return v1

    .line 90
    :cond_16
    packed-switch p1, :pswitch_data_4a

    .line 113
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 95
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 99
    .local v5, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 101
    .local v6, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 103
    .local v7, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 105
    .local v8, "_arg4":I
    sget-object v2, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;

    .line 107
    .local v9, "_arg5":Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/widget/photopicker/IEmbeddedPhotoPickerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/widget/photopicker/IEmbeddedPhotoPickerClient;

    move-result-object v10

    .line 108
    .local v10, "_arg6":Landroid/widget/photopicker/IEmbeddedPhotoPickerClient;
    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Landroid/widget/photopicker/IEmbeddedPhotoPicker$Stub;->openSession(Ljava/lang/String;Landroid/os/IBinder;IIILandroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;Landroid/widget/photopicker/IEmbeddedPhotoPickerClient;)V

    .line 109
    nop

    .line 116
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Landroid/os/IBinder;
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":I
    .end local v9    # "_arg5":Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;
    .end local v10    # "_arg6":Landroid/widget/photopicker/IEmbeddedPhotoPickerClient;
    return v1

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_1e
    .end packed-switch
.end method
