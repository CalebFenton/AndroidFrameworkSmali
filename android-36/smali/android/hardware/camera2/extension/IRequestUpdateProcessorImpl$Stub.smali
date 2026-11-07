.class public abstract Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl$Stub;
.super Landroid/os/Binder;
.source "IRequestUpdateProcessorImpl.java"

# interfaces
.implements Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onImageFormatUpdate:I = 0x3

.field static final blacklist TRANSACTION_onOutputSurface:I = 0x1

.field static final blacklist TRANSACTION_onResolutionUpdate:I = 0x2

.field static final blacklist TRANSACTION_process:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 41
    const-string v0, "android.hardware.camera2.extension.IRequestUpdateProcessorImpl"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 49
    if-nez p0, :cond_4

    .line 50
    const/4 v0, 0x0

    return-object v0

    .line 52
    :cond_4
    const-string v0, "android.hardware.camera2.extension.IRequestUpdateProcessorImpl"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 53
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;

    if-eqz v1, :cond_14

    .line 54
    move-object v1, v0

    check-cast v1, Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;

    return-object v1

    .line 56
    :cond_14
    new-instance v1, Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 65
    packed-switch p0, :pswitch_data_16

    .line 85
    const/4 v0, 0x0

    return-object v0

    .line 81
    :pswitch_5
    const-string/jumbo v0, "process"

    return-object v0

    .line 77
    :pswitch_9
    const-string/jumbo v0, "onImageFormatUpdate"

    return-object v0

    .line 73
    :pswitch_d
    const-string/jumbo v0, "onResolutionUpdate"

    return-object v0

    .line 69
    :pswitch_11
    const-string/jumbo v0, "onOutputSurface"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 60
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 242
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 92
    invoke-static {p1}, Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 96
    const-string v0, "android.hardware.camera2.extension.IRequestUpdateProcessorImpl"

    .line 97
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 98
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 101
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    return v1

    .line 104
    :cond_16
    packed-switch p1, :pswitch_data_70

    .line 149
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 138
    :pswitch_1e
    sget-object v2, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 140
    .local v2, "_arg0":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 141
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl$Stub;->process(Landroid/hardware/camera2/impl/CameraMetadataNative;I)Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v4

    .line 143
    .local v4, "_result":Landroid/hardware/camera2/extension/CaptureStageImpl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 145
    goto :goto_6e

    .line 129
    .end local v2    # "_arg0":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/hardware/camera2/extension/CaptureStageImpl;
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 130
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl$Stub;->onImageFormatUpdate(I)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    goto :goto_6e

    .line 120
    .end local v2    # "_arg0":I
    :pswitch_46
    sget-object v2, Landroid/hardware/camera2/extension/Size;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/extension/Size;

    .line 121
    .local v2, "_arg0":Landroid/hardware/camera2/extension/Size;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 122
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl$Stub;->onResolutionUpdate(Landroid/hardware/camera2/extension/Size;)V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    goto :goto_6e

    .line 109
    .end local v2    # "_arg0":Landroid/hardware/camera2/extension/Size;
    :pswitch_58
    sget-object v2, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 111
    .local v2, "_arg0":Landroid/view/Surface;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 112
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 113
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl$Stub;->onOutputSurface(Landroid/view/Surface;I)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    nop

    .line 152
    .end local v2    # "_arg0":Landroid/view/Surface;
    .end local v3    # "_arg1":I
    :goto_6e
    return v1

    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_58
        :pswitch_46
        :pswitch_38
        :pswitch_1e
    .end packed-switch
.end method
