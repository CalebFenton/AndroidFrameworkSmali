.class public abstract Lcom/android/internal/telecom/IVideoCallback$Stub;
.super Landroid/os/Binder;
.source "IVideoCallback.java"

# interfaces
.implements Lcom/android/internal/telecom/IVideoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IVideoCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IVideoCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IVideoCallback"

.field static final greylist-max-o TRANSACTION_changeCallDataUsage:I = 0x5

.field static final greylist-max-o TRANSACTION_changeCameraCapabilities:I = 0x6

.field static final greylist-max-o TRANSACTION_changePeerDimensions:I = 0x4

.field static final greylist-max-o TRANSACTION_changeVideoQuality:I = 0x7

.field static final greylist-max-o TRANSACTION_handleCallSessionEvent:I = 0x3

.field static final greylist-max-o TRANSACTION_receiveSessionModifyRequest:I = 0x1

.field static final greylist-max-o TRANSACTION_receiveSessionModifyResponse:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 56
    const-string v0, "com.android.internal.telecom.IVideoCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IVideoCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 64
    if-nez p0, :cond_4

    .line 65
    const/4 v0, 0x0

    return-object v0

    .line 67
    :cond_4
    const-string v0, "com.android.internal.telecom.IVideoCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 68
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telecom/IVideoCallback;

    if-eqz v1, :cond_14

    .line 69
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telecom/IVideoCallback;

    return-object v1

    .line 71
    :cond_14
    new-instance v1, Lcom/android/internal/telecom/IVideoCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/IVideoCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 80
    packed-switch p0, :pswitch_data_1c

    .line 112
    const/4 v0, 0x0

    return-object v0

    .line 108
    :pswitch_5
    const-string v0, "changeVideoQuality"

    return-object v0

    .line 104
    :pswitch_8
    const-string v0, "changeCameraCapabilities"

    return-object v0

    .line 100
    :pswitch_b
    const-string v0, "changeCallDataUsage"

    return-object v0

    .line 96
    :pswitch_e
    const-string v0, "changePeerDimensions"

    return-object v0

    .line 92
    :pswitch_11
    const-string v0, "handleCallSessionEvent"

    return-object v0

    .line 88
    :pswitch_14
    const-string/jumbo v0, "receiveSessionModifyResponse"

    return-object v0

    .line 84
    :pswitch_18
    const-string/jumbo v0, "receiveSessionModifyRequest"

    return-object v0

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_18
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

    .line 75
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 317
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 119
    invoke-static {p1}, Lcom/android/internal/telecom/IVideoCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 123
    const-string v0, "com.android.internal.telecom.IVideoCallback"

    .line 124
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 125
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 128
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    return v1

    .line 131
    :cond_16
    packed-switch p1, :pswitch_data_88

    .line 197
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 190
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 191
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IVideoCallback$Stub;->changeVideoQuality(I)V

    .line 193
    goto :goto_87

    .line 182
    .end local v2    # "_arg0":I
    :pswitch_29
    sget-object v2, Landroid/telecom/VideoProfile$CameraCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/VideoProfile$CameraCapabilities;

    .line 183
    .local v2, "_arg0":Landroid/telecom/VideoProfile$CameraCapabilities;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IVideoCallback$Stub;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    .line 185
    goto :goto_87

    .line 174
    .end local v2    # "_arg0":Landroid/telecom/VideoProfile$CameraCapabilities;
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 175
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IVideoCallback$Stub;->changeCallDataUsage(J)V

    .line 177
    goto :goto_87

    .line 164
    .end local v2    # "_arg0":J
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 166
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 167
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IVideoCallback$Stub;->changePeerDimensions(II)V

    .line 169
    goto :goto_87

    .line 156
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 157
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IVideoCallback$Stub;->handleCallSessionEvent(I)V

    .line 159
    goto :goto_87

    .line 144
    .end local v2    # "_arg0":I
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 146
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/VideoProfile;

    .line 148
    .local v3, "_arg1":Landroid/telecom/VideoProfile;
    sget-object v4, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/VideoProfile;

    .line 149
    .local v4, "_arg2":Landroid/telecom/VideoProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/IVideoCallback$Stub;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 151
    goto :goto_87

    .line 136
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telecom/VideoProfile;
    .end local v4    # "_arg2":Landroid/telecom/VideoProfile;
    :pswitch_78
    sget-object v2, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/VideoProfile;

    .line 137
    .local v2, "_arg0":Landroid/telecom/VideoProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IVideoCallback$Stub;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 139
    nop

    .line 200
    .end local v2    # "_arg0":Landroid/telecom/VideoProfile;
    :goto_87
    return v1

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_78
        :pswitch_5d
        :pswitch_52
        :pswitch_43
        :pswitch_38
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
