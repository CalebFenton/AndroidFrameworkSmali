.class public abstract Landroid/hardware/ICameraServiceProxy$Stub;
.super Landroid/os/Binder;
.source "ICameraServiceProxy.java"

# interfaces
.implements Landroid/hardware/ICameraServiceProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ICameraServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ICameraServiceProxy$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.ICameraServiceProxy"

.field static final blacklist TRANSACTION_getAutoframingOverride:I = 0x5

.field static final blacklist TRANSACTION_getRotateAndCropOverride:I = 0x4

.field static final blacklist TRANSACTION_isCameraDisabled:I = 0x6

.field static final greylist-max-o TRANSACTION_notifyCameraState:I = 0x2

.field static final blacklist TRANSACTION_notifyFeatureCombinationStats:I = 0x3

.field static final blacklist TRANSACTION_notifyWatchdog:I = 0x7

.field static final greylist-max-o TRANSACTION_pingForUserUpdate:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 72
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 73
    const-string v0, "android.hardware.ICameraServiceProxy"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/ICameraServiceProxy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraServiceProxy;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 81
    if-nez p0, :cond_4

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 84
    :cond_4
    const-string v0, "android.hardware.ICameraServiceProxy"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 85
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/ICameraServiceProxy;

    if-eqz v1, :cond_14

    .line 86
    move-object v1, v0

    check-cast v1, Landroid/hardware/ICameraServiceProxy;

    return-object v1

    .line 88
    :cond_14
    new-instance v1, Landroid/hardware/ICameraServiceProxy$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/ICameraServiceProxy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 97
    packed-switch p0, :pswitch_data_20

    .line 129
    const/4 v0, 0x0

    return-object v0

    .line 125
    :pswitch_5
    const-string/jumbo v0, "notifyWatchdog"

    return-object v0

    .line 121
    :pswitch_9
    const-string/jumbo v0, "isCameraDisabled"

    return-object v0

    .line 117
    :pswitch_d
    const-string v0, "getAutoframingOverride"

    return-object v0

    .line 113
    :pswitch_10
    const-string v0, "getRotateAndCropOverride"

    return-object v0

    .line 109
    :pswitch_13
    const-string/jumbo v0, "notifyFeatureCombinationStats"

    return-object v0

    .line 105
    :pswitch_17
    const-string/jumbo v0, "notifyCameraState"

    return-object v0

    .line 101
    :pswitch_1b
    const-string/jumbo v0, "pingForUserUpdate"

    return-object v0

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 92
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 371
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 136
    invoke-static {p1}, Landroid/hardware/ICameraServiceProxy$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    const-string v0, "android.hardware.ICameraServiceProxy"

    .line 141
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 142
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 145
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    return v1

    .line 148
    :cond_16
    packed-switch p1, :pswitch_data_8e

    .line 217
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 208
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 210
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 211
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {p0, v2, v3}, Landroid/hardware/ICameraServiceProxy$Stub;->notifyWatchdog(IZ)V

    .line 213
    goto :goto_8d

    .line 198
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 199
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 200
    invoke-virtual {p0, v2}, Landroid/hardware/ICameraServiceProxy$Stub;->isCameraDisabled(I)Z

    move-result v3

    .line 201
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 203
    goto :goto_8d

    .line 188
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {p0, v2}, Landroid/hardware/ICameraServiceProxy$Stub;->getAutoframingOverride(Ljava/lang/String;)I

    move-result v3

    .line 191
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    goto :goto_8d

    .line 174
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 176
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 178
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 179
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 180
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/ICameraServiceProxy$Stub;->getRotateAndCropOverride(Ljava/lang/String;II)I

    move-result v5

    .line 181
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    goto :goto_8d

    .line 166
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":I
    :pswitch_6b
    sget-object v2, Landroid/hardware/CameraFeatureCombinationStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/CameraFeatureCombinationStats;

    .line 167
    .local v2, "_arg0":Landroid/hardware/CameraFeatureCombinationStats;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {p0, v2}, Landroid/hardware/ICameraServiceProxy$Stub;->notifyFeatureCombinationStats(Landroid/hardware/CameraFeatureCombinationStats;)V

    .line 169
    goto :goto_8d

    .line 158
    .end local v2    # "_arg0":Landroid/hardware/CameraFeatureCombinationStats;
    :pswitch_7a
    sget-object v2, Landroid/hardware/CameraSessionStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/CameraSessionStats;

    .line 159
    .local v2, "_arg0":Landroid/hardware/CameraSessionStats;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    invoke-virtual {p0, v2}, Landroid/hardware/ICameraServiceProxy$Stub;->notifyCameraState(Landroid/hardware/CameraSessionStats;)V

    .line 161
    goto :goto_8d

    .line 152
    .end local v2    # "_arg0":Landroid/hardware/CameraSessionStats;
    :pswitch_89
    invoke-virtual {p0}, Landroid/hardware/ICameraServiceProxy$Stub;->pingForUserUpdate()V

    .line 153
    nop

    .line 220
    :goto_8d
    return v1

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_89
        :pswitch_7a
        :pswitch_6b
        :pswitch_51
        :pswitch_3f
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
