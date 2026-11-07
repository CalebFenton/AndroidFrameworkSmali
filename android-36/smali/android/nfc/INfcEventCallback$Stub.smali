.class public abstract Landroid/nfc/INfcEventCallback$Stub;
.super Landroid/os/Binder;
.source "INfcEventCallback.java"

# interfaces
.implements Landroid/nfc/INfcEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcEventCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAidConflictOccurred:I = 0x4

.field static final blacklist TRANSACTION_onAidNotRouted:I = 0x5

.field static final blacklist TRANSACTION_onInternalErrorReported:I = 0x8

.field static final blacklist TRANSACTION_onNfcStateChanged:I = 0x6

.field static final blacklist TRANSACTION_onObserveModeDisabledInFirmware:I = 0x3

.field static final blacklist TRANSACTION_onObserveModeStateChanged:I = 0x2

.field static final blacklist TRANSACTION_onPreferredServiceChanged:I = 0x1

.field static final blacklist TRANSACTION_onRemoteFieldChanged:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    const-string v0, "android.nfc.INfcEventCallback"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcEventCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcEventCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 60
    if-nez p0, :cond_4

    .line 61
    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_4
    const-string v0, "android.nfc.INfcEventCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 64
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/nfc/INfcEventCallback;

    if-eqz v1, :cond_14

    .line 65
    move-object v1, v0

    check-cast v1, Landroid/nfc/INfcEventCallback;

    return-object v1

    .line 67
    :cond_14
    new-instance v1, Landroid/nfc/INfcEventCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/nfc/INfcEventCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 76
    packed-switch p0, :pswitch_data_1e

    .line 112
    const/4 v0, 0x0

    return-object v0

    .line 108
    :pswitch_5
    const-string v0, "onInternalErrorReported"

    return-object v0

    .line 104
    :pswitch_8
    const-string v0, "onRemoteFieldChanged"

    return-object v0

    .line 100
    :pswitch_b
    const-string v0, "onNfcStateChanged"

    return-object v0

    .line 96
    :pswitch_e
    const-string v0, "onAidNotRouted"

    return-object v0

    .line 92
    :pswitch_11
    const-string v0, "onAidConflictOccurred"

    return-object v0

    .line 88
    :pswitch_14
    const-string v0, "onObserveModeDisabledInFirmware"

    return-object v0

    .line 84
    :pswitch_17
    const-string v0, "onObserveModeStateChanged"

    return-object v0

    .line 80
    :pswitch_1a
    const-string v0, "onPreferredServiceChanged"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_17
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

    .line 71
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 327
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 119
    invoke-static {p1}, Landroid/nfc/INfcEventCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
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
    const-string v0, "android.nfc.INfcEventCallback"

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
    packed-switch p1, :pswitch_data_80

    .line 199
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 192
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 193
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {p0, v2}, Landroid/nfc/INfcEventCallback$Stub;->onInternalErrorReported(I)V

    .line 195
    goto :goto_7e

    .line 184
    .end local v2    # "_arg0":I
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 185
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {p0, v2}, Landroid/nfc/INfcEventCallback$Stub;->onRemoteFieldChanged(Z)V

    .line 187
    goto :goto_7e

    .line 176
    .end local v2    # "_arg0":Z
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 177
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 178
    invoke-virtual {p0, v2}, Landroid/nfc/INfcEventCallback$Stub;->onNfcStateChanged(I)V

    .line 179
    goto :goto_7e

    .line 168
    .end local v2    # "_arg0":I
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    invoke-virtual {p0, v2}, Landroid/nfc/INfcEventCallback$Stub;->onAidNotRouted(Ljava/lang/String;)V

    .line 171
    goto :goto_7e

    .line 160
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 161
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {p0, v2}, Landroid/nfc/INfcEventCallback$Stub;->onAidConflictOccurred(Ljava/lang/String;)V

    .line 163
    goto :goto_7e

    .line 152
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_55
    sget-object v2, Landroid/nfc/cardemulation/PollingFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/PollingFrame;

    .line 153
    .local v2, "_arg0":Landroid/nfc/cardemulation/PollingFrame;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    invoke-virtual {p0, v2}, Landroid/nfc/INfcEventCallback$Stub;->onObserveModeDisabledInFirmware(Landroid/nfc/cardemulation/PollingFrame;)V

    .line 155
    goto :goto_7e

    .line 144
    .end local v2    # "_arg0":Landroid/nfc/cardemulation/PollingFrame;
    :pswitch_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 145
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 146
    invoke-virtual {p0, v2}, Landroid/nfc/INfcEventCallback$Stub;->onObserveModeStateChanged(Z)V

    .line 147
    goto :goto_7e

    .line 136
    .end local v2    # "_arg0":Z
    :pswitch_6f
    sget-object v2, Landroid/nfc/ComponentNameAndUser;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/ComponentNameAndUser;

    .line 137
    .local v2, "_arg0":Landroid/nfc/ComponentNameAndUser;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    invoke-virtual {p0, v2}, Landroid/nfc/INfcEventCallback$Stub;->onPreferredServiceChanged(Landroid/nfc/ComponentNameAndUser;)V

    .line 139
    nop

    .line 202
    .end local v2    # "_arg0":Landroid/nfc/ComponentNameAndUser;
    :goto_7e
    return v1

    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_6f
        :pswitch_64
        :pswitch_55
        :pswitch_4a
        :pswitch_3f
        :pswitch_34
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
