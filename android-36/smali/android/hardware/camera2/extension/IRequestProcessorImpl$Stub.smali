.class public abstract Landroid/hardware/camera2/extension/IRequestProcessorImpl$Stub;
.super Landroid/os/Binder;
.source "IRequestProcessorImpl.java"

# interfaces
.implements Landroid/hardware/camera2/extension/IRequestProcessorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/IRequestProcessorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/IRequestProcessorImpl$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_abortCaptures:I = 0x5

.field static final blacklist TRANSACTION_setImageProcessor:I = 0x1

.field static final blacklist TRANSACTION_setRepeating:I = 0x4

.field static final blacklist TRANSACTION_stopRepeating:I = 0x6

.field static final blacklist TRANSACTION_submit:I = 0x2

.field static final blacklist TRANSACTION_submitBurst:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 49
    const-string v0, "android.hardware.camera2.extension.IRequestProcessorImpl"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/extension/IRequestProcessorImpl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/IRequestProcessorImpl;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 57
    if-nez p0, :cond_4

    .line 58
    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_4
    const-string v0, "android.hardware.camera2.extension.IRequestProcessorImpl"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 61
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/camera2/extension/IRequestProcessorImpl;

    if-eqz v1, :cond_14

    .line 62
    move-object v1, v0

    check-cast v1, Landroid/hardware/camera2/extension/IRequestProcessorImpl;

    return-object v1

    .line 64
    :cond_14
    new-instance v1, Landroid/hardware/camera2/extension/IRequestProcessorImpl$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/extension/IRequestProcessorImpl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 73
    packed-switch p0, :pswitch_data_1c

    .line 101
    const/4 v0, 0x0

    return-object v0

    .line 97
    :pswitch_5
    const-string/jumbo v0, "stopRepeating"

    return-object v0

    .line 93
    :pswitch_9
    const-string v0, "abortCaptures"

    return-object v0

    .line 89
    :pswitch_c
    const-string/jumbo v0, "setRepeating"

    return-object v0

    .line 85
    :pswitch_10
    const-string/jumbo v0, "submitBurst"

    return-object v0

    .line 81
    :pswitch_14
    const-string/jumbo v0, "submit"

    return-object v0

    .line 77
    :pswitch_18
    const-string/jumbo v0, "setImageProcessor"

    return-object v0

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
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

    .line 314
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 108
    invoke-static {p1}, Landroid/hardware/camera2/extension/IRequestProcessorImpl$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 112
    const-string v0, "android.hardware.camera2.extension.IRequestProcessorImpl"

    .line 113
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 114
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 117
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    return v1

    .line 120
    :cond_16
    packed-switch p1, :pswitch_data_a0

    .line 183
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 177
    :pswitch_1e
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IRequestProcessorImpl$Stub;->stopRepeating()V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    goto/16 :goto_9f

    .line 171
    :pswitch_26
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IRequestProcessorImpl$Stub;->abortCaptures()V

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    goto :goto_9f

    .line 160
    :pswitch_2d
    sget-object v2, Landroid/hardware/camera2/extension/Request;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/extension/Request;

    .line 162
    .local v2, "_arg0":Landroid/hardware/camera2/extension/Request;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/camera2/extension/IRequestCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/IRequestCallback;

    move-result-object v3

    .line 163
    .local v3, "_arg1":Landroid/hardware/camera2/extension/IRequestCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/extension/IRequestProcessorImpl$Stub;->setRepeating(Landroid/hardware/camera2/extension/Request;Landroid/hardware/camera2/extension/IRequestCallback;)I

    move-result v4

    .line 165
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    goto :goto_9f

    .line 148
    .end local v2    # "_arg0":Landroid/hardware/camera2/extension/Request;
    .end local v3    # "_arg1":Landroid/hardware/camera2/extension/IRequestCallback;
    .end local v4    # "_result":I
    :pswitch_4b
    sget-object v2, Landroid/hardware/camera2/extension/Request;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 150
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/Request;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/camera2/extension/IRequestCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/IRequestCallback;

    move-result-object v3

    .line 151
    .restart local v3    # "_arg1":Landroid/hardware/camera2/extension/IRequestCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/extension/IRequestProcessorImpl$Stub;->submitBurst(Ljava/util/List;Landroid/hardware/camera2/extension/IRequestCallback;)I

    move-result v4

    .line 153
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    goto :goto_9f

    .line 136
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/Request;>;"
    .end local v3    # "_arg1":Landroid/hardware/camera2/extension/IRequestCallback;
    .end local v4    # "_result":I
    :pswitch_67
    sget-object v2, Landroid/hardware/camera2/extension/Request;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/extension/Request;

    .line 138
    .local v2, "_arg0":Landroid/hardware/camera2/extension/Request;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/camera2/extension/IRequestCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/IRequestCallback;

    move-result-object v3

    .line 139
    .restart local v3    # "_arg1":Landroid/hardware/camera2/extension/IRequestCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/extension/IRequestProcessorImpl$Stub;->submit(Landroid/hardware/camera2/extension/Request;Landroid/hardware/camera2/extension/IRequestCallback;)I

    move-result v4

    .line 141
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    goto :goto_9f

    .line 125
    .end local v2    # "_arg0":Landroid/hardware/camera2/extension/Request;
    .end local v3    # "_arg1":Landroid/hardware/camera2/extension/IRequestCallback;
    .end local v4    # "_result":I
    :pswitch_85
    sget-object v2, Landroid/hardware/camera2/extension/OutputConfigId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/extension/OutputConfigId;

    .line 127
    .local v2, "_arg0":Landroid/hardware/camera2/extension/OutputConfigId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/camera2/extension/IImageProcessorImpl$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/IImageProcessorImpl;

    move-result-object v3

    .line 128
    .local v3, "_arg1":Landroid/hardware/camera2/extension/IImageProcessorImpl;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 129
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/extension/IRequestProcessorImpl$Stub;->setImageProcessor(Landroid/hardware/camera2/extension/OutputConfigId;Landroid/hardware/camera2/extension/IImageProcessorImpl;)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    nop

    .line 186
    .end local v2    # "_arg0":Landroid/hardware/camera2/extension/OutputConfigId;
    .end local v3    # "_arg1":Landroid/hardware/camera2/extension/IImageProcessorImpl;
    :goto_9f
    return v1

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_85
        :pswitch_67
        :pswitch_4b
        :pswitch_2d
        :pswitch_26
        :pswitch_1e
    .end packed-switch
.end method
