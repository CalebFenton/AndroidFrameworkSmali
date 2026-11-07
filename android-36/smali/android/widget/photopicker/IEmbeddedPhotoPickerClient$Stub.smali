.class public abstract Landroid/widget/photopicker/IEmbeddedPhotoPickerClient$Stub;
.super Landroid/os/Binder;
.source "IEmbeddedPhotoPickerClient.java"

# interfaces
.implements Landroid/widget/photopicker/IEmbeddedPhotoPickerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/photopicker/IEmbeddedPhotoPickerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/photopicker/IEmbeddedPhotoPickerClient$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onSelectionComplete:I = 0x5

.field static final blacklist TRANSACTION_onSessionError:I = 0x2

.field static final blacklist TRANSACTION_onSessionOpened:I = 0x1

.field static final blacklist TRANSACTION_onUriPermissionGranted:I = 0x3

.field static final blacklist TRANSACTION_onUriPermissionRevoked:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 50
    const-string v0, "android.widget.photopicker.IEmbeddedPhotoPickerClient"

    invoke-virtual {p0, p0, v0}, Landroid/widget/photopicker/IEmbeddedPhotoPickerClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/widget/photopicker/IEmbeddedPhotoPickerClient;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 58
    if-nez p0, :cond_4

    .line 59
    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_4
    const-string v0, "android.widget.photopicker.IEmbeddedPhotoPickerClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 62
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/widget/photopicker/IEmbeddedPhotoPickerClient;

    if-eqz v1, :cond_14

    .line 63
    move-object v1, v0

    check-cast v1, Landroid/widget/photopicker/IEmbeddedPhotoPickerClient;

    return-object v1

    .line 65
    :cond_14
    new-instance v1, Landroid/widget/photopicker/IEmbeddedPhotoPickerClient$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/widget/photopicker/IEmbeddedPhotoPickerClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 74
    packed-switch p0, :pswitch_data_14

    .line 98
    const/4 v0, 0x0

    return-object v0

    .line 94
    :pswitch_5
    const-string v0, "onSelectionComplete"

    return-object v0

    .line 90
    :pswitch_8
    const-string v0, "onUriPermissionRevoked"

    return-object v0

    .line 86
    :pswitch_b
    const-string v0, "onUriPermissionGranted"

    return-object v0

    .line 82
    :pswitch_e
    const-string v0, "onSessionError"

    return-object v0

    .line 78
    :pswitch_11
    const-string v0, "onSessionOpened"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 69
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 242
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 105
    invoke-static {p1}, Landroid/widget/photopicker/IEmbeddedPhotoPickerClient$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    const-string v0, "android.widget.photopicker.IEmbeddedPhotoPickerClient"

    .line 110
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 111
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 114
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    return v1

    .line 117
    :cond_16
    packed-switch p1, :pswitch_data_50

    .line 154
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 149
    :pswitch_1e
    invoke-virtual {p0}, Landroid/widget/photopicker/IEmbeddedPhotoPickerClient$Stub;->onSelectionComplete()V

    .line 150
    goto :goto_4e

    .line 143
    :pswitch_22
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 144
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-virtual {p0, v2}, Landroid/widget/photopicker/IEmbeddedPhotoPickerClient$Stub;->onUriPermissionRevoked(Ljava/util/List;)V

    .line 145
    goto :goto_4e

    .line 136
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :pswitch_2c
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 137
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-virtual {p0, v2}, Landroid/widget/photopicker/IEmbeddedPhotoPickerClient$Stub;->onUriPermissionGranted(Ljava/util/List;)V

    .line 138
    goto :goto_4e

    .line 129
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :pswitch_36
    sget-object v2, Landroid/widget/photopicker/ParcelableException;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/photopicker/ParcelableException;

    .line 130
    .local v2, "_arg0":Landroid/widget/photopicker/ParcelableException;
    invoke-virtual {p0, v2}, Landroid/widget/photopicker/IEmbeddedPhotoPickerClient$Stub;->onSessionError(Landroid/widget/photopicker/ParcelableException;)V

    .line 131
    goto :goto_4e

    .line 122
    .end local v2    # "_arg0":Landroid/widget/photopicker/ParcelableException;
    :pswitch_42
    sget-object v2, Landroid/widget/photopicker/EmbeddedPhotoPickerSessionResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/photopicker/EmbeddedPhotoPickerSessionResponse;

    .line 123
    .local v2, "_arg0":Landroid/widget/photopicker/EmbeddedPhotoPickerSessionResponse;
    invoke-virtual {p0, v2}, Landroid/widget/photopicker/IEmbeddedPhotoPickerClient$Stub;->onSessionOpened(Landroid/widget/photopicker/EmbeddedPhotoPickerSessionResponse;)V

    .line 124
    nop

    .line 157
    .end local v2    # "_arg0":Landroid/widget/photopicker/EmbeddedPhotoPickerSessionResponse;
    :goto_4e
    return v1

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_42
        :pswitch_36
        :pswitch_2c
        :pswitch_22
        :pswitch_1e
    .end packed-switch
.end method
