.class public abstract Lcom/android/ims/internal/IImsVideoCallProvider$Stub;
.super Landroid/os/Binder;
.source "IImsVideoCallProvider.java"

# interfaces
.implements Lcom/android/ims/internal/IImsVideoCallProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsVideoCallProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsVideoCallProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsVideoCallProvider"

.field static final greylist-max-o TRANSACTION_requestCallDataUsage:I = 0xa

.field static final greylist-max-o TRANSACTION_requestCameraCapabilities:I = 0x9

.field static final greylist-max-o TRANSACTION_sendSessionModifyRequest:I = 0x7

.field static final greylist-max-o TRANSACTION_sendSessionModifyResponse:I = 0x8

.field static final greylist-max-o TRANSACTION_setCallback:I = 0x1

.field static final greylist-max-o TRANSACTION_setCamera:I = 0x2

.field static final greylist-max-o TRANSACTION_setDeviceOrientation:I = 0x5

.field static final greylist-max-o TRANSACTION_setDisplaySurface:I = 0x4

.field static final greylist-max-o TRANSACTION_setPauseImage:I = 0xb

.field static final greylist-max-o TRANSACTION_setPreviewSurface:I = 0x3

.field static final greylist-max-o TRANSACTION_setZoom:I = 0x6


# direct methods
.method public constructor greylist-max-r <init>()V
    .registers 2

    .line 77
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 78
    const-string v0, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsVideoCallProvider;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 86
    if-nez p0, :cond_4

    .line 87
    const/4 v0, 0x0

    return-object v0

    .line 89
    :cond_4
    const-string v0, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 90
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/ims/internal/IImsVideoCallProvider;

    if-eqz v1, :cond_14

    .line 91
    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/IImsVideoCallProvider;

    return-object v1

    .line 93
    :cond_14
    new-instance v1, Lcom/android/ims/internal/IImsVideoCallProvider$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 102
    packed-switch p0, :pswitch_data_32

    .line 150
    const/4 v0, 0x0

    return-object v0

    .line 146
    :pswitch_5
    const-string/jumbo v0, "setPauseImage"

    return-object v0

    .line 142
    :pswitch_9
    const-string/jumbo v0, "requestCallDataUsage"

    return-object v0

    .line 138
    :pswitch_d
    const-string/jumbo v0, "requestCameraCapabilities"

    return-object v0

    .line 134
    :pswitch_11
    const-string/jumbo v0, "sendSessionModifyResponse"

    return-object v0

    .line 130
    :pswitch_15
    const-string/jumbo v0, "sendSessionModifyRequest"

    return-object v0

    .line 126
    :pswitch_19
    const-string/jumbo v0, "setZoom"

    return-object v0

    .line 122
    :pswitch_1d
    const-string/jumbo v0, "setDeviceOrientation"

    return-object v0

    .line 118
    :pswitch_21
    const-string/jumbo v0, "setDisplaySurface"

    return-object v0

    .line 114
    :pswitch_25
    const-string/jumbo v0, "setPreviewSurface"

    return-object v0

    .line 110
    :pswitch_29
    const-string/jumbo v0, "setCamera"

    return-object v0

    .line 106
    :pswitch_2d
    const-string/jumbo v0, "setCallback"

    return-object v0

    nop

    :pswitch_data_32
    .packed-switch 0x1
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

    .line 97
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 428
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 157
    invoke-static {p1}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 161
    const-string v0, "com.android.ims.internal.IImsVideoCallProvider"

    .line 162
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 163
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 166
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    return v1

    .line 169
    :cond_16
    packed-switch p1, :pswitch_data_b2

    .line 259
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 252
    :pswitch_1e
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 253
    .local v2, "_arg0":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->setPauseImage(Landroid/net/Uri;)V

    .line 255
    goto/16 :goto_b0

    .line 246
    .end local v2    # "_arg0":Landroid/net/Uri;
    :pswitch_2e
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->requestCallDataUsage()V

    .line 247
    goto/16 :goto_b0

    .line 241
    :pswitch_33
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->requestCameraCapabilities()V

    .line 242
    goto/16 :goto_b0

    .line 234
    :pswitch_38
    sget-object v2, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/VideoProfile;

    .line 235
    .local v2, "_arg0":Landroid/telecom/VideoProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 236
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 237
    goto :goto_b0

    .line 224
    .end local v2    # "_arg0":Landroid/telecom/VideoProfile;
    :pswitch_47
    sget-object v2, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/VideoProfile;

    .line 226
    .restart local v2    # "_arg0":Landroid/telecom/VideoProfile;
    sget-object v3, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/VideoProfile;

    .line 227
    .local v3, "_arg1":Landroid/telecom/VideoProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 228
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 229
    goto :goto_b0

    .line 216
    .end local v2    # "_arg0":Landroid/telecom/VideoProfile;
    .end local v3    # "_arg1":Landroid/telecom/VideoProfile;
    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 217
    .local v2, "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 218
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->setZoom(F)V

    .line 219
    goto :goto_b0

    .line 208
    .end local v2    # "_arg0":F
    :pswitch_69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 209
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->setDeviceOrientation(I)V

    .line 211
    goto :goto_b0

    .line 200
    .end local v2    # "_arg0":I
    :pswitch_74
    sget-object v2, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 201
    .local v2, "_arg0":Landroid/view/Surface;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->setDisplaySurface(Landroid/view/Surface;)V

    .line 203
    goto :goto_b0

    .line 192
    .end local v2    # "_arg0":Landroid/view/Surface;
    :pswitch_83
    sget-object v2, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 193
    .restart local v2    # "_arg0":Landroid/view/Surface;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->setPreviewSurface(Landroid/view/Surface;)V

    .line 195
    goto :goto_b0

    .line 182
    .end local v2    # "_arg0":Landroid/view/Surface;
    :pswitch_92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 185
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->setCamera(Ljava/lang/String;I)V

    .line 187
    goto :goto_b0

    .line 174
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsVideoCallCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsVideoCallCallback;

    move-result-object v2

    .line 175
    .local v2, "_arg0":Lcom/android/ims/internal/IImsVideoCallCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->setCallback(Lcom/android/ims/internal/IImsVideoCallCallback;)V

    .line 177
    nop

    .line 262
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsVideoCallCallback;
    :goto_b0
    return v1

    nop

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_a1
        :pswitch_92
        :pswitch_83
        :pswitch_74
        :pswitch_69
        :pswitch_5e
        :pswitch_47
        :pswitch_38
        :pswitch_33
        :pswitch_2e
        :pswitch_1e
    .end packed-switch
.end method
