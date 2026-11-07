.class public abstract Landroid/media/IVolumeController$Stub;
.super Landroid/os/Binder;
.source "IVolumeController.java"

# interfaces
.implements Landroid/media/IVolumeController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IVolumeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IVolumeController$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.IVolumeController"

.field static final greylist-max-o TRANSACTION_dismiss:I = 0x5

.field static final blacklist TRANSACTION_displayCsdWarning:I = 0x7

.field static final greylist-max-o TRANSACTION_displaySafeVolumeWarning:I = 0x1

.field static final greylist-max-o TRANSACTION_masterMuteChanged:I = 0x3

.field static final greylist-max-o TRANSACTION_setA11yMode:I = 0x6

.field static final greylist-max-o TRANSACTION_setLayoutDirection:I = 0x4

.field static final greylist-max-o TRANSACTION_volumeChanged:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 70
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 71
    const-string v0, "android.media.IVolumeController"

    invoke-virtual {p0, p0, v0}, Landroid/media/IVolumeController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static greylist-max-r asInterface(Landroid/os/IBinder;)Landroid/media/IVolumeController;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 79
    if-nez p0, :cond_4

    .line 80
    const/4 v0, 0x0

    return-object v0

    .line 82
    :cond_4
    const-string v0, "android.media.IVolumeController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 83
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/IVolumeController;

    if-eqz v1, :cond_14

    .line 84
    move-object v1, v0

    check-cast v1, Landroid/media/IVolumeController;

    return-object v1

    .line 86
    :cond_14
    new-instance v1, Landroid/media/IVolumeController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IVolumeController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 95
    packed-switch p0, :pswitch_data_1a

    .line 127
    const/4 v0, 0x0

    return-object v0

    .line 123
    :pswitch_5
    const-string v0, "displayCsdWarning"

    return-object v0

    .line 119
    :pswitch_8
    const-string v0, "setA11yMode"

    return-object v0

    .line 115
    :pswitch_b
    const-string v0, "dismiss"

    return-object v0

    .line 111
    :pswitch_e
    const-string v0, "setLayoutDirection"

    return-object v0

    .line 107
    :pswitch_11
    const-string v0, "masterMuteChanged"

    return-object v0

    .line 103
    :pswitch_14
    const-string v0, "volumeChanged"

    return-object v0

    .line 99
    :pswitch_17
    const-string v0, "displaySafeVolumeWarning"

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_17
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

    .line 90
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 343
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 134
    invoke-static {p1}, Landroid/media/IVolumeController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 138
    const-string v0, "android.media.IVolumeController"

    .line 139
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 140
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 143
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    return v1

    .line 146
    :cond_16
    packed-switch p1, :pswitch_data_6e

    .line 207
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 198
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 200
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 201
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    invoke-virtual {p0, v2, v3}, Landroid/media/IVolumeController$Stub;->displayCsdWarning(II)V

    .line 203
    goto :goto_6c

    .line 190
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 191
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    invoke-virtual {p0, v2}, Landroid/media/IVolumeController$Stub;->setA11yMode(I)V

    .line 193
    goto :goto_6c

    .line 184
    .end local v2    # "_arg0":I
    :pswitch_38
    invoke-virtual {p0}, Landroid/media/IVolumeController$Stub;->dismiss()V

    .line 185
    goto :goto_6c

    .line 177
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 178
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {p0, v2}, Landroid/media/IVolumeController$Stub;->setLayoutDirection(I)V

    .line 180
    goto :goto_6c

    .line 169
    .end local v2    # "_arg0":I
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 170
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {p0, v2}, Landroid/media/IVolumeController$Stub;->masterMuteChanged(I)V

    .line 172
    goto :goto_6c

    .line 159
    .end local v2    # "_arg0":I
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 161
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 162
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 163
    invoke-virtual {p0, v2, v3}, Landroid/media/IVolumeController$Stub;->volumeChanged(II)V

    .line 164
    goto :goto_6c

    .line 151
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 152
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {p0, v2}, Landroid/media/IVolumeController$Stub;->displaySafeVolumeWarning(I)V

    .line 154
    nop

    .line 210
    .end local v2    # "_arg0":I
    :goto_6c
    return v1

    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_61
        :pswitch_52
        :pswitch_47
        :pswitch_3c
        :pswitch_38
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
