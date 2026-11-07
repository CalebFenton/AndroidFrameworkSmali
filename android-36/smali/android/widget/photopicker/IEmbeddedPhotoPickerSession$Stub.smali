.class public abstract Landroid/widget/photopicker/IEmbeddedPhotoPickerSession$Stub;
.super Landroid/os/Binder;
.source "IEmbeddedPhotoPickerSession.java"

# interfaces
.implements Landroid/widget/photopicker/IEmbeddedPhotoPickerSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/photopicker/IEmbeddedPhotoPickerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/photopicker/IEmbeddedPhotoPickerSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_close:I = 0x1

.field static final blacklist TRANSACTION_notifyConfigurationChanged:I = 0x4

.field static final blacklist TRANSACTION_notifyPhotopickerExpanded:I = 0x5

.field static final blacklist TRANSACTION_notifyResized:I = 0x3

.field static final blacklist TRANSACTION_notifyVisibilityChanged:I = 0x2

.field static final blacklist TRANSACTION_requestRevokeUriPermission:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 54
    const-string v0, "android.widget.photopicker.IEmbeddedPhotoPickerSession"

    invoke-virtual {p0, p0, v0}, Landroid/widget/photopicker/IEmbeddedPhotoPickerSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/widget/photopicker/IEmbeddedPhotoPickerSession;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 62
    if-nez p0, :cond_4

    .line 63
    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_4
    const-string v0, "android.widget.photopicker.IEmbeddedPhotoPickerSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 66
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/widget/photopicker/IEmbeddedPhotoPickerSession;

    if-eqz v1, :cond_14

    .line 67
    move-object v1, v0

    check-cast v1, Landroid/widget/photopicker/IEmbeddedPhotoPickerSession;

    return-object v1

    .line 69
    :cond_14
    new-instance v1, Landroid/widget/photopicker/IEmbeddedPhotoPickerSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/widget/photopicker/IEmbeddedPhotoPickerSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 78
    packed-switch p0, :pswitch_data_18

    .line 106
    const/4 v0, 0x0

    return-object v0

    .line 102
    :pswitch_5
    const-string v0, "requestRevokeUriPermission"

    return-object v0

    .line 98
    :pswitch_8
    const-string v0, "notifyPhotopickerExpanded"

    return-object v0

    .line 94
    :pswitch_b
    const-string v0, "notifyConfigurationChanged"

    return-object v0

    .line 90
    :pswitch_e
    const-string v0, "notifyResized"

    return-object v0

    .line 86
    :pswitch_11
    const-string v0, "notifyVisibilityChanged"

    return-object v0

    .line 82
    :pswitch_14
    const-string v0, "close"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
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

    .line 73
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 273
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 113
    invoke-static {p1}, Landroid/widget/photopicker/IEmbeddedPhotoPickerSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    const-string v0, "android.widget.photopicker.IEmbeddedPhotoPickerSession"

    .line 118
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 119
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 122
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    return v1

    .line 125
    :cond_16
    packed-switch p1, :pswitch_data_56

    .line 171
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 165
    :pswitch_1e
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 166
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-virtual {p0, v2}, Landroid/widget/photopicker/IEmbeddedPhotoPickerSession$Stub;->requestRevokeUriPermission(Ljava/util/List;)V

    .line 167
    goto :goto_54

    .line 158
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 159
    .local v2, "_arg0":Z
    invoke-virtual {p0, v2}, Landroid/widget/photopicker/IEmbeddedPhotoPickerSession$Stub;->notifyPhotopickerExpanded(Z)V

    .line 160
    goto :goto_54

    .line 151
    .end local v2    # "_arg0":Z
    :pswitch_30
    sget-object v2, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Configuration;

    .line 152
    .local v2, "_arg0":Landroid/content/res/Configuration;
    invoke-virtual {p0, v2}, Landroid/widget/photopicker/IEmbeddedPhotoPickerSession$Stub;->notifyConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 153
    goto :goto_54

    .line 142
    .end local v2    # "_arg0":Landroid/content/res/Configuration;
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 144
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 145
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/widget/photopicker/IEmbeddedPhotoPickerSession$Stub;->notifyResized(II)V

    .line 146
    goto :goto_54

    .line 135
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 136
    .local v2, "_arg0":Z
    invoke-virtual {p0, v2}, Landroid/widget/photopicker/IEmbeddedPhotoPickerSession$Stub;->notifyVisibilityChanged(Z)V

    .line 137
    goto :goto_54

    .line 129
    .end local v2    # "_arg0":Z
    :pswitch_50
    invoke-virtual {p0}, Landroid/widget/photopicker/IEmbeddedPhotoPickerSession$Stub;->close()V

    .line 130
    nop

    .line 174
    :goto_54
    return v1

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_50
        :pswitch_48
        :pswitch_3c
        :pswitch_30
        :pswitch_28
        :pswitch_1e
    .end packed-switch
.end method
