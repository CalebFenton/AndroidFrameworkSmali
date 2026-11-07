.class public abstract Landroid/bluetooth/IAudioInputCallback$Stub;
.super Landroid/os/Binder;
.source "IAudioInputCallback.java"

# interfaces
.implements Landroid/bluetooth/IAudioInputCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IAudioInputCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IAudioInputCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onDescriptionChanged:I = 0x1

.field static final blacklist TRANSACTION_onSetGainModeFailed:I = 0x5

.field static final blacklist TRANSACTION_onSetGainSettingFailed:I = 0x4

.field static final blacklist TRANSACTION_onSetMuteFailed:I = 0x6

.field static final blacklist TRANSACTION_onStateChanged:I = 0x3

.field static final blacklist TRANSACTION_onStatusChanged:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 50
    const-string v0, "android.bluetooth.IAudioInputCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IAudioInputCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IAudioInputCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 58
    if-nez p0, :cond_4

    .line 59
    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_4
    const-string v0, "android.bluetooth.IAudioInputCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 62
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/IAudioInputCallback;

    if-eqz v1, :cond_14

    .line 63
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IAudioInputCallback;

    return-object v1

    .line 65
    :cond_14
    new-instance v1, Landroid/bluetooth/IAudioInputCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IAudioInputCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 74
    packed-switch p0, :pswitch_data_18

    .line 102
    const/4 v0, 0x0

    return-object v0

    .line 98
    :pswitch_5
    const-string v0, "onSetMuteFailed"

    return-object v0

    .line 94
    :pswitch_8
    const-string v0, "onSetGainModeFailed"

    return-object v0

    .line 90
    :pswitch_b
    const-string v0, "onSetGainSettingFailed"

    return-object v0

    .line 86
    :pswitch_e
    const-string v0, "onStateChanged"

    return-object v0

    .line 82
    :pswitch_11
    const-string v0, "onStatusChanged"

    return-object v0

    .line 78
    :pswitch_14
    const-string v0, "onDescriptionChanged"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
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

    .line 69
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 269
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 109
    invoke-static {p1}, Landroid/bluetooth/IAudioInputCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 113
    const-string v0, "android.bluetooth.IAudioInputCallback"

    .line 114
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 115
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 118
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    return v1

    .line 121
    :cond_16
    packed-switch p1, :pswitch_data_54

    .line 168
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 163
    :pswitch_1e
    invoke-virtual {p0}, Landroid/bluetooth/IAudioInputCallback$Stub;->onSetMuteFailed()V

    .line 164
    goto :goto_53

    .line 158
    :pswitch_22
    invoke-virtual {p0}, Landroid/bluetooth/IAudioInputCallback$Stub;->onSetGainModeFailed()V

    .line 159
    goto :goto_53

    .line 153
    :pswitch_26
    invoke-virtual {p0}, Landroid/bluetooth/IAudioInputCallback$Stub;->onSetGainSettingFailed()V

    .line 154
    goto :goto_53

    .line 142
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 144
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 146
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 147
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 148
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IAudioInputCallback$Stub;->onStateChanged(III)V

    .line 149
    goto :goto_53

    .line 134
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 135
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    invoke-virtual {p0, v2}, Landroid/bluetooth/IAudioInputCallback$Stub;->onStatusChanged(I)V

    .line 137
    goto :goto_53

    .line 126
    .end local v2    # "_arg0":I
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {p0, v2}, Landroid/bluetooth/IAudioInputCallback$Stub;->onDescriptionChanged(Ljava/lang/String;)V

    .line 129
    nop

    .line 171
    .end local v2    # "_arg0":Ljava/lang/String;
    :goto_53
    return v1

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_48
        :pswitch_3d
        :pswitch_2a
        :pswitch_26
        :pswitch_22
        :pswitch_1e
    .end packed-switch
.end method
