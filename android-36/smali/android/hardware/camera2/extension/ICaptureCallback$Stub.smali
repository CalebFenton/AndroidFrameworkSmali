.class public abstract Landroid/hardware/camera2/extension/ICaptureCallback$Stub;
.super Landroid/os/Binder;
.source "ICaptureCallback.java"

# interfaces
.implements Landroid/hardware/camera2/extension/ICaptureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/ICaptureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/ICaptureCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onCaptureCompleted:I = 0x6

.field static final blacklist TRANSACTION_onCaptureFailed:I = 0x3

.field static final blacklist TRANSACTION_onCaptureProcessFailed:I = 0x8

.field static final blacklist TRANSACTION_onCaptureProcessProgressed:I = 0x7

.field static final blacklist TRANSACTION_onCaptureProcessStarted:I = 0x2

.field static final blacklist TRANSACTION_onCaptureSequenceAborted:I = 0x5

.field static final blacklist TRANSACTION_onCaptureSequenceCompleted:I = 0x4

.field static final blacklist TRANSACTION_onCaptureStarted:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    const-string v0, "android.hardware.camera2.extension.ICaptureCallback"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/extension/ICaptureCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/ICaptureCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 60
    if-nez p0, :cond_4

    .line 61
    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_4
    const-string v0, "android.hardware.camera2.extension.ICaptureCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 64
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/camera2/extension/ICaptureCallback;

    if-eqz v1, :cond_14

    .line 65
    move-object v1, v0

    check-cast v1, Landroid/hardware/camera2/extension/ICaptureCallback;

    return-object v1

    .line 67
    :cond_14
    new-instance v1, Landroid/hardware/camera2/extension/ICaptureCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/extension/ICaptureCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 76
    packed-switch p0, :pswitch_data_26

    .line 112
    const/4 v0, 0x0

    return-object v0

    .line 108
    :pswitch_5
    const-string/jumbo v0, "onCaptureProcessFailed"

    return-object v0

    .line 104
    :pswitch_9
    const-string/jumbo v0, "onCaptureProcessProgressed"

    return-object v0

    .line 100
    :pswitch_d
    const-string/jumbo v0, "onCaptureCompleted"

    return-object v0

    .line 96
    :pswitch_11
    const-string/jumbo v0, "onCaptureSequenceAborted"

    return-object v0

    .line 92
    :pswitch_15
    const-string/jumbo v0, "onCaptureSequenceCompleted"

    return-object v0

    .line 88
    :pswitch_19
    const-string/jumbo v0, "onCaptureFailed"

    return-object v0

    .line 84
    :pswitch_1d
    const-string/jumbo v0, "onCaptureProcessStarted"

    return-object v0

    .line 80
    :pswitch_21
    const-string/jumbo v0, "onCaptureStarted"

    return-object v0

    nop

    :pswitch_data_26
    .packed-switch 0x1
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

    .line 71
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 371
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 119
    invoke-static {p1}, Landroid/hardware/camera2/extension/ICaptureCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 123
    const-string v0, "android.hardware.camera2.extension.ICaptureCallback"

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
    packed-switch p1, :pswitch_data_a4

    .line 215
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 205
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 207
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 208
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/extension/ICaptureCallback$Stub;->onCaptureProcessFailed(II)V

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    goto/16 :goto_a3

    .line 196
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 197
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/ICaptureCallback$Stub;->onCaptureProcessProgressed(I)V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    goto :goto_a3

    .line 183
    .end local v2    # "_arg0":I
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 185
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 187
    .local v4, "_arg1":I
    sget-object v5, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 188
    .local v5, "_arg2":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/camera2/extension/ICaptureCallback$Stub;->onCaptureCompleted(JILandroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    goto :goto_a3

    .line 174
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 175
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/ICaptureCallback$Stub;->onCaptureSequenceAborted(I)V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    goto :goto_a3

    .line 165
    .end local v2    # "_arg0":I
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 166
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/ICaptureCallback$Stub;->onCaptureSequenceCompleted(I)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    goto :goto_a3

    .line 156
    .end local v2    # "_arg0":I
    :pswitch_75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 157
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/ICaptureCallback$Stub;->onCaptureFailed(I)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    goto :goto_a3

    .line 147
    .end local v2    # "_arg0":I
    :pswitch_83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 148
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/ICaptureCallback$Stub;->onCaptureProcessStarted(I)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    goto :goto_a3

    .line 136
    .end local v2    # "_arg0":I
    :pswitch_91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 138
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 139
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/camera2/extension/ICaptureCallback$Stub;->onCaptureStarted(IJ)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    nop

    .line 218
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":J
    :goto_a3
    return v1

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_91
        :pswitch_83
        :pswitch_75
        :pswitch_67
        :pswitch_59
        :pswitch_3f
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method
