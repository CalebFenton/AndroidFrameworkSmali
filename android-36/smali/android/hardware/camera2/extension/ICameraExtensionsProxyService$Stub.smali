.class public abstract Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;
.super Landroid/os/Binder;
.source "ICameraExtensionsProxyService.java"

# interfaces
.implements Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_advancedExtensionsSupported:I = 0x3

.field static final blacklist TRANSACTION_initializeAdvancedExtension:I = 0x8

.field static final blacklist TRANSACTION_initializeImageExtension:I = 0x7

.field static final blacklist TRANSACTION_initializePreviewExtension:I = 0x6

.field static final blacklist TRANSACTION_initializeSession:I = 0x4

.field static final blacklist TRANSACTION_registerClient:I = 0x1

.field static final blacklist TRANSACTION_releaseSession:I = 0x5

.field static final blacklist TRANSACTION_unregisterClient:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 57
    const-string v0, "android.hardware.camera2.extension.ICameraExtensionsProxyService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 65
    if-nez p0, :cond_4

    .line 66
    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_4
    const-string v0, "android.hardware.camera2.extension.ICameraExtensionsProxyService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 69
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

    if-eqz v1, :cond_14

    .line 70
    move-object v1, v0

    check-cast v1, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

    return-object v1

    .line 72
    :cond_14
    new-instance v1, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 81
    packed-switch p0, :pswitch_data_24

    .line 117
    const/4 v0, 0x0

    return-object v0

    .line 113
    :pswitch_5
    const-string/jumbo v0, "initializeAdvancedExtension"

    return-object v0

    .line 109
    :pswitch_9
    const-string/jumbo v0, "initializeImageExtension"

    return-object v0

    .line 105
    :pswitch_d
    const-string/jumbo v0, "initializePreviewExtension"

    return-object v0

    .line 101
    :pswitch_11
    const-string/jumbo v0, "releaseSession"

    return-object v0

    .line 97
    :pswitch_15
    const-string/jumbo v0, "initializeSession"

    return-object v0

    .line 93
    :pswitch_19
    const-string v0, "advancedExtensionsSupported"

    return-object v0

    .line 89
    :pswitch_1c
    const-string/jumbo v0, "unregisterClient"

    return-object v0

    .line 85
    :pswitch_20
    const-string/jumbo v0, "registerClient"

    return-object v0

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1c
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

    .line 76
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 376
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 124
    invoke-static {p1}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 128
    const-string v0, "android.hardware.camera2.extension.ICameraExtensionsProxyService"

    .line 129
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 130
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 133
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    return v1

    .line 136
    :cond_16
    packed-switch p1, :pswitch_data_9a

    .line 211
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 202
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 203
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v3

    .line 205
    .local v3, "_result":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 207
    goto :goto_98

    .line 192
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 193
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;->initializeImageExtension(I)Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    move-result-object v3

    .line 195
    .local v3, "_result":Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 197
    goto :goto_98

    .line 182
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 183
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;->initializePreviewExtension(I)Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    move-result-object v3

    .line 185
    .local v3, "_result":Landroid/hardware/camera2/extension/IPreviewExtenderImpl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 187
    goto :goto_98

    .line 175
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/hardware/camera2/extension/IPreviewExtenderImpl;
    :pswitch_54
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;->releaseSession()V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    goto :goto_98

    .line 167
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/camera2/extension/IInitializeSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/IInitializeSessionCallback;

    move-result-object v2

    .line 168
    .local v2, "_arg0":Landroid/hardware/camera2/extension/IInitializeSessionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;->initializeSession(Landroid/hardware/camera2/extension/IInitializeSessionCallback;)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    goto :goto_98

    .line 159
    .end local v2    # "_arg0":Landroid/hardware/camera2/extension/IInitializeSessionCallback;
    :pswitch_6d
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;->advancedExtensionsSupported()Z

    move-result v2

    .line 160
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 162
    goto :goto_98

    .line 151
    .end local v2    # "_result":Z
    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 152
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;->unregisterClient(Landroid/os/IBinder;)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    goto :goto_98

    .line 141
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_86
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 142
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;->registerClient(Landroid/os/IBinder;)Z

    move-result v3

    .line 144
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 146
    nop

    .line 214
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Z
    :goto_98
    return v1

    nop

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_86
        :pswitch_78
        :pswitch_6d
        :pswitch_5b
        :pswitch_54
        :pswitch_42
        :pswitch_30
        :pswitch_1e
    .end packed-switch
.end method
