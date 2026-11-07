.class public abstract Landroid/hardware/radio/IRadioService$Stub;
.super Landroid/os/Binder;
.source "IRadioService.java"

# interfaces
.implements Landroid/hardware/radio/IRadioService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/IRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/IRadioService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.radio.IRadioService"

.field static final greylist-max-o TRANSACTION_addAnnouncementListener:I = 0x3

.field static final greylist-max-o TRANSACTION_listModules:I = 0x1

.field static final greylist-max-o TRANSACTION_openTuner:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "android.hardware.radio.IRadioService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/IRadioService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/IRadioService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 52
    if-nez p0, :cond_4

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_4
    const-string v0, "android.hardware.radio.IRadioService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/radio/IRadioService;

    if-eqz v1, :cond_14

    .line 57
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/IRadioService;

    return-object v1

    .line 59
    :cond_14
    new-instance v1, Landroid/hardware/radio/IRadioService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/IRadioService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 68
    packed-switch p0, :pswitch_data_e

    .line 84
    const/4 v0, 0x0

    return-object v0

    .line 80
    :pswitch_5
    const-string v0, "addAnnouncementListener"

    return-object v0

    .line 76
    :pswitch_8
    const-string v0, "openTuner"

    return-object v0

    .line 72
    :pswitch_b
    const-string v0, "listModules"

    return-object v0

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 63
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 228
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 91
    invoke-static {p1}, Landroid/hardware/radio/IRadioService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    const-string v0, "android.hardware.radio.IRadioService"

    .line 96
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 97
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 100
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    return v1

    .line 103
    :cond_16
    packed-switch p1, :pswitch_data_6a

    .line 142
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 131
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 133
    .local v2, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/radio/IAnnouncementListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/IAnnouncementListener;

    move-result-object v3

    .line 134
    .local v3, "_arg1":Landroid/hardware/radio/IAnnouncementListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/IRadioService$Stub;->addAnnouncementListener([ILandroid/hardware/radio/IAnnouncementListener;)Landroid/hardware/radio/ICloseHandle;

    move-result-object v4

    .line 136
    .local v4, "_result":Landroid/hardware/radio/ICloseHandle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 138
    goto :goto_69

    .line 115
    .end local v2    # "_arg0":[I
    .end local v3    # "_arg1":Landroid/hardware/radio/IAnnouncementListener;
    .end local v4    # "_result":Landroid/hardware/radio/ICloseHandle;
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 117
    .local v2, "_arg0":I
    sget-object v3, Landroid/hardware/radio/RadioManager$BandConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/RadioManager$BandConfig;

    .line 119
    .local v3, "_arg1":Landroid/hardware/radio/RadioManager$BandConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 121
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/radio/ITunerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/ITunerCallback;

    move-result-object v5

    .line 122
    .local v5, "_arg3":Landroid/hardware/radio/ITunerCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 123
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/radio/IRadioService$Stub;->openTuner(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Landroid/hardware/radio/ITuner;

    move-result-object v6

    .line 124
    .local v6, "_result":Landroid/hardware/radio/ITuner;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 126
    goto :goto_69

    .line 107
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/RadioManager$BandConfig;
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":Landroid/hardware/radio/ITunerCallback;
    .end local v6    # "_result":Landroid/hardware/radio/ITuner;
    :pswitch_5e
    invoke-virtual {p0}, Landroid/hardware/radio/IRadioService$Stub;->listModules()Ljava/util/List;

    move-result-object v2

    .line 108
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/RadioManager$ModuleProperties;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 110
    nop

    .line 145
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/RadioManager$ModuleProperties;>;"
    :goto_69
    return v1

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_38
        :pswitch_1e
    .end packed-switch
.end method
