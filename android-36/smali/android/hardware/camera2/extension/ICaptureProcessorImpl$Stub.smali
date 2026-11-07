.class public abstract Landroid/hardware/camera2/extension/ICaptureProcessorImpl$Stub;
.super Landroid/os/Binder;
.source "ICaptureProcessorImpl.java"

# interfaces
.implements Landroid/hardware/camera2/extension/ICaptureProcessorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/ICaptureProcessorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/ICaptureProcessorImpl$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onImageFormatUpdate:I = 0x4

.field static final blacklist TRANSACTION_onOutputSurface:I = 0x1

.field static final blacklist TRANSACTION_onPostviewOutputSurface:I = 0x2

.field static final blacklist TRANSACTION_onResolutionUpdate:I = 0x3

.field static final blacklist TRANSACTION_process:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    const-string v0, "android.hardware.camera2.extension.ICaptureProcessorImpl"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/ICaptureProcessorImpl;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 51
    if-nez p0, :cond_4

    .line 52
    const/4 v0, 0x0

    return-object v0

    .line 54
    :cond_4
    const-string v0, "android.hardware.camera2.extension.ICaptureProcessorImpl"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 55
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    if-eqz v1, :cond_14

    .line 56
    move-object v1, v0

    check-cast v1, Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    return-object v1

    .line 58
    :cond_14
    new-instance v1, Landroid/hardware/camera2/extension/ICaptureProcessorImpl$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 67
    packed-switch p0, :pswitch_data_1a

    .line 91
    const/4 v0, 0x0

    return-object v0

    .line 87
    :pswitch_5
    const-string/jumbo v0, "process"

    return-object v0

    .line 83
    :pswitch_9
    const-string/jumbo v0, "onImageFormatUpdate"

    return-object v0

    .line 79
    :pswitch_d
    const-string/jumbo v0, "onResolutionUpdate"

    return-object v0

    .line 75
    :pswitch_11
    const-string/jumbo v0, "onPostviewOutputSurface"

    return-object v0

    .line 71
    :pswitch_15
    const-string/jumbo v0, "onOutputSurface"

    return-object v0

    nop

    :pswitch_data_1a
    .packed-switch 0x1
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

    .line 62
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 275
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 98
    invoke-static {p1}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 102
    const-string v0, "android.hardware.camera2.extension.ICaptureProcessorImpl"

    .line 103
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 104
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 107
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    return v1

    .line 110
    :cond_16
    packed-switch p1, :pswitch_data_8c

    .line 167
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 155
    :pswitch_1e
    sget-object v2, Landroid/hardware/camera2/extension/CaptureBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 157
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/CaptureBundle;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/camera2/extension/IProcessResultImpl$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/IProcessResultImpl;

    move-result-object v3

    .line 159
    .local v3, "_arg1":Landroid/hardware/camera2/extension/IProcessResultImpl;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 160
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl$Stub;->process(Ljava/util/List;Landroid/hardware/camera2/extension/IProcessResultImpl;Z)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    goto :goto_8a

    .line 146
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/CaptureBundle;>;"
    .end local v3    # "_arg1":Landroid/hardware/camera2/extension/IProcessResultImpl;
    .end local v4    # "_arg2":Z
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 147
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 148
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl$Stub;->onImageFormatUpdate(I)V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    goto :goto_8a

    .line 135
    .end local v2    # "_arg0":I
    :pswitch_48
    sget-object v2, Landroid/hardware/camera2/extension/Size;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/extension/Size;

    .line 137
    .local v2, "_arg0":Landroid/hardware/camera2/extension/Size;
    sget-object v3, Landroid/hardware/camera2/extension/Size;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/extension/Size;

    .line 138
    .local v3, "_arg1":Landroid/hardware/camera2/extension/Size;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl$Stub;->onResolutionUpdate(Landroid/hardware/camera2/extension/Size;Landroid/hardware/camera2/extension/Size;)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    goto :goto_8a

    .line 126
    .end local v2    # "_arg0":Landroid/hardware/camera2/extension/Size;
    .end local v3    # "_arg1":Landroid/hardware/camera2/extension/Size;
    :pswitch_62
    sget-object v2, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 127
    .local v2, "_arg0":Landroid/view/Surface;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl$Stub;->onPostviewOutputSurface(Landroid/view/Surface;)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    goto :goto_8a

    .line 115
    .end local v2    # "_arg0":Landroid/view/Surface;
    :pswitch_74
    sget-object v2, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 117
    .restart local v2    # "_arg0":Landroid/view/Surface;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 118
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 119
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl$Stub;->onOutputSurface(Landroid/view/Surface;I)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    nop

    .line 170
    .end local v2    # "_arg0":Landroid/view/Surface;
    .end local v3    # "_arg1":I
    :goto_8a
    return v1

    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_74
        :pswitch_62
        :pswitch_48
        :pswitch_3a
        :pswitch_1e
    .end packed-switch
.end method
