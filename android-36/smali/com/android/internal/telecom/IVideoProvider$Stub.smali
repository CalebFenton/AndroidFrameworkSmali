.class public abstract Lcom/android/internal/telecom/IVideoProvider$Stub;
.super Landroid/os/Binder;
.source "IVideoProvider.java"

# interfaces
.implements Lcom/android/internal/telecom/IVideoProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IVideoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IVideoProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IVideoProvider"

.field static final greylist-max-o TRANSACTION_addVideoCallback:I = 0x1

.field static final greylist-max-o TRANSACTION_removeVideoCallback:I = 0x2

.field static final greylist-max-o TRANSACTION_requestCallDataUsage:I = 0xb

.field static final greylist-max-o TRANSACTION_requestCameraCapabilities:I = 0xa

.field static final greylist-max-o TRANSACTION_sendSessionModifyRequest:I = 0x8

.field static final greylist-max-o TRANSACTION_sendSessionModifyResponse:I = 0x9

.field static final greylist-max-o TRANSACTION_setCamera:I = 0x3

.field static final greylist-max-o TRANSACTION_setDeviceOrientation:I = 0x6

.field static final greylist-max-o TRANSACTION_setDisplaySurface:I = 0x5

.field static final greylist-max-o TRANSACTION_setPauseImage:I = 0xc

.field static final greylist-max-o TRANSACTION_setPreviewSurface:I = 0x4

.field static final greylist-max-o TRANSACTION_setZoom:I = 0x7


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 67
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 68
    const-string v0, "com.android.internal.telecom.IVideoProvider"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IVideoProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoProvider;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 76
    if-nez p0, :cond_4

    .line 77
    const/4 v0, 0x0

    return-object v0

    .line 79
    :cond_4
    const-string v0, "com.android.internal.telecom.IVideoProvider"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 80
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telecom/IVideoProvider;

    if-eqz v1, :cond_14

    .line 81
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telecom/IVideoProvider;

    return-object v1

    .line 83
    :cond_14
    new-instance v1, Lcom/android/internal/telecom/IVideoProvider$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/IVideoProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 92
    packed-switch p0, :pswitch_data_34

    .line 144
    const/4 v0, 0x0

    return-object v0

    .line 140
    :pswitch_5
    const-string/jumbo v0, "setPauseImage"

    return-object v0

    .line 136
    :pswitch_9
    const-string/jumbo v0, "requestCallDataUsage"

    return-object v0

    .line 132
    :pswitch_d
    const-string/jumbo v0, "requestCameraCapabilities"

    return-object v0

    .line 128
    :pswitch_11
    const-string/jumbo v0, "sendSessionModifyResponse"

    return-object v0

    .line 124
    :pswitch_15
    const-string/jumbo v0, "sendSessionModifyRequest"

    return-object v0

    .line 120
    :pswitch_19
    const-string/jumbo v0, "setZoom"

    return-object v0

    .line 116
    :pswitch_1d
    const-string/jumbo v0, "setDeviceOrientation"

    return-object v0

    .line 112
    :pswitch_21
    const-string/jumbo v0, "setDisplaySurface"

    return-object v0

    .line 108
    :pswitch_25
    const-string/jumbo v0, "setPreviewSurface"

    return-object v0

    .line 104
    :pswitch_29
    const-string/jumbo v0, "setCamera"

    return-object v0

    .line 100
    :pswitch_2d
    const-string/jumbo v0, "removeVideoCallback"

    return-object v0

    .line 96
    :pswitch_31
    const-string v0, "addVideoCallback"

    return-object v0

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 87
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 446
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 151
    invoke-static {p1}, Lcom/android/internal/telecom/IVideoProvider$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    const-string v0, "com.android.internal.telecom.IVideoProvider"

    .line 156
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 157
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 160
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    return v1

    .line 163
    :cond_16
    packed-switch p1, :pswitch_data_be

    .line 263
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 256
    :pswitch_1e
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 257
    .local v2, "_arg0":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IVideoProvider$Stub;->setPauseImage(Landroid/net/Uri;)V

    .line 259
    goto/16 :goto_bc

    .line 250
    .end local v2    # "_arg0":Landroid/net/Uri;
    :pswitch_2e
    invoke-virtual {p0}, Lcom/android/internal/telecom/IVideoProvider$Stub;->requestCallDataUsage()V

    .line 251
    goto/16 :goto_bc

    .line 245
    :pswitch_33
    invoke-virtual {p0}, Lcom/android/internal/telecom/IVideoProvider$Stub;->requestCameraCapabilities()V

    .line 246
    goto/16 :goto_bc

    .line 238
    :pswitch_38
    sget-object v2, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/VideoProfile;

    .line 239
    .local v2, "_arg0":Landroid/telecom/VideoProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IVideoProvider$Stub;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 241
    goto/16 :goto_bc

    .line 228
    .end local v2    # "_arg0":Landroid/telecom/VideoProfile;
    :pswitch_48
    sget-object v2, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/VideoProfile;

    .line 230
    .restart local v2    # "_arg0":Landroid/telecom/VideoProfile;
    sget-object v3, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/VideoProfile;

    .line 231
    .local v3, "_arg1":Landroid/telecom/VideoProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IVideoProvider$Stub;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 233
    goto :goto_bc

    .line 220
    .end local v2    # "_arg0":Landroid/telecom/VideoProfile;
    .end local v3    # "_arg1":Landroid/telecom/VideoProfile;
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 221
    .local v2, "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IVideoProvider$Stub;->setZoom(F)V

    .line 223
    goto :goto_bc

    .line 212
    .end local v2    # "_arg0":F
    :pswitch_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 213
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IVideoProvider$Stub;->setDeviceOrientation(I)V

    .line 215
    goto :goto_bc

    .line 204
    .end local v2    # "_arg0":I
    :pswitch_75
    sget-object v2, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 205
    .local v2, "_arg0":Landroid/view/Surface;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 206
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IVideoProvider$Stub;->setDisplaySurface(Landroid/view/Surface;)V

    .line 207
    goto :goto_bc

    .line 196
    .end local v2    # "_arg0":Landroid/view/Surface;
    :pswitch_84
    sget-object v2, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 197
    .restart local v2    # "_arg0":Landroid/view/Surface;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IVideoProvider$Stub;->setPreviewSurface(Landroid/view/Surface;)V

    .line 199
    goto :goto_bc

    .line 184
    .end local v2    # "_arg0":Landroid/view/Surface;
    :pswitch_93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 189
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/IVideoProvider$Stub;->setCamera(Ljava/lang/String;Ljava/lang/String;I)V

    .line 191
    goto :goto_bc

    .line 176
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :pswitch_a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 177
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 178
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IVideoProvider$Stub;->removeVideoCallback(Landroid/os/IBinder;)V

    .line 179
    goto :goto_bc

    .line 168
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 169
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IVideoProvider$Stub;->addVideoCallback(Landroid/os/IBinder;)V

    .line 171
    nop

    .line 266
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :goto_bc
    return v1

    nop

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_b1
        :pswitch_a6
        :pswitch_93
        :pswitch_84
        :pswitch_75
        :pswitch_6a
        :pswitch_5f
        :pswitch_48
        :pswitch_38
        :pswitch_33
        :pswitch_2e
        :pswitch_1e
    .end packed-switch
.end method
