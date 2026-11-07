.class public abstract Landroid/hardware/camera2/extension/IRequestCallback$Stub;
.super Landroid/os/Binder;
.source "IRequestCallback.java"

# interfaces
.implements Landroid/hardware/camera2/extension/IRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/IRequestCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/IRequestCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onCaptureBufferLost:I = 0x5

.field static final blacklist TRANSACTION_onCaptureCompleted:I = 0x3

.field static final blacklist TRANSACTION_onCaptureFailed:I = 0x4

.field static final blacklist TRANSACTION_onCaptureProgressed:I = 0x2

.field static final blacklist TRANSACTION_onCaptureSequenceAborted:I = 0x7

.field static final blacklist TRANSACTION_onCaptureSequenceCompleted:I = 0x6

.field static final blacklist TRANSACTION_onCaptureStarted:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 49
    const-string v0, "android.hardware.camera2.extension.IRequestCallback"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/extension/IRequestCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/IRequestCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 57
    if-nez p0, :cond_4

    .line 58
    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_4
    const-string v0, "android.hardware.camera2.extension.IRequestCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 61
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/camera2/extension/IRequestCallback;

    if-eqz v1, :cond_14

    .line 62
    move-object v1, v0

    check-cast v1, Landroid/hardware/camera2/extension/IRequestCallback;

    return-object v1

    .line 64
    :cond_14
    new-instance v1, Landroid/hardware/camera2/extension/IRequestCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/extension/IRequestCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 73
    packed-switch p0, :pswitch_data_22

    .line 105
    const/4 v0, 0x0

    return-object v0

    .line 101
    :pswitch_5
    const-string/jumbo v0, "onCaptureSequenceAborted"

    return-object v0

    .line 97
    :pswitch_9
    const-string/jumbo v0, "onCaptureSequenceCompleted"

    return-object v0

    .line 93
    :pswitch_d
    const-string/jumbo v0, "onCaptureBufferLost"

    return-object v0

    .line 89
    :pswitch_11
    const-string/jumbo v0, "onCaptureFailed"

    return-object v0

    .line 85
    :pswitch_15
    const-string/jumbo v0, "onCaptureCompleted"

    return-object v0

    .line 81
    :pswitch_19
    const-string/jumbo v0, "onCaptureProgressed"

    return-object v0

    .line 77
    :pswitch_1d
    const-string/jumbo v0, "onCaptureStarted"

    return-object v0

    nop

    :pswitch_data_22
    .packed-switch 0x1
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

    .line 68
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 351
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 112
    invoke-static {p1}, Landroid/hardware/camera2/extension/IRequestCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    const-string v0, "android.hardware.camera2.extension.IRequestCallback"

    .line 117
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 118
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 121
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    return v1

    .line 124
    :cond_16
    packed-switch p1, :pswitch_data_b0

    .line 207
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 199
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 200
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/IRequestCallback$Stub;->onCaptureSequenceAborted(I)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    goto/16 :goto_ae

    .line 188
    .end local v2    # "_arg0":I
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 190
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 191
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/camera2/extension/IRequestCallback$Stub;->onCaptureSequenceCompleted(IJ)V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    goto :goto_ae

    .line 175
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":J
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 177
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 179
    .restart local v3    # "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 180
    .local v5, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/camera2/extension/IRequestCallback$Stub;->onCaptureBufferLost(IJI)V

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    goto :goto_ae

    .line 164
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":J
    .end local v5    # "_arg2":I
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 166
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/hardware/camera2/extension/CaptureFailure;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/extension/CaptureFailure;

    .line 167
    .local v3, "_arg1":Landroid/hardware/camera2/extension/CaptureFailure;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/extension/IRequestCallback$Stub;->onCaptureFailed(ILandroid/hardware/camera2/extension/CaptureFailure;)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    goto :goto_ae

    .line 153
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/camera2/extension/CaptureFailure;
    :pswitch_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 155
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;

    .line 156
    .local v3, "_arg1":Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/extension/IRequestCallback$Stub;->onCaptureCompleted(ILandroid/hardware/camera2/extension/ParcelTotalCaptureResult;)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    goto :goto_ae

    .line 142
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;
    :pswitch_81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 144
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/hardware/camera2/extension/ParcelCaptureResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/extension/ParcelCaptureResult;

    .line 145
    .local v3, "_arg1":Landroid/hardware/camera2/extension/ParcelCaptureResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 146
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/extension/IRequestCallback$Stub;->onCaptureProgressed(ILandroid/hardware/camera2/extension/ParcelCaptureResult;)V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    goto :goto_ae

    .line 129
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/camera2/extension/ParcelCaptureResult;
    :pswitch_97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 131
    .local v5, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 133
    .local v6, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 134
    .local v8, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/hardware/camera2/extension/IRequestCallback$Stub;->onCaptureStarted(IJJ)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    nop

    .line 210
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":J
    .end local v8    # "_arg2":J
    :goto_ae
    return v1

    nop

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_97
        :pswitch_81
        :pswitch_6b
        :pswitch_55
        :pswitch_3f
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
