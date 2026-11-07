.class public abstract Landroid/hardware/radio/messaging/IRadioMessagingIndication$Stub;
.super Landroid/os/Binder;
.source "IRadioMessagingIndication.java"

# interfaces
.implements Landroid/hardware/radio/messaging/IRadioMessagingIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/messaging/IRadioMessagingIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/messaging/IRadioMessagingIndication$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cdmaNewSms:I = 0x1

.field static final blacklist TRANSACTION_cdmaRuimSmsStorageFull:I = 0x2

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_newBroadcastSms:I = 0x3

.field static final blacklist TRANSACTION_newSms:I = 0x4

.field static final blacklist TRANSACTION_newSmsOnSim:I = 0x5

.field static final blacklist TRANSACTION_newSmsStatusReport:I = 0x6

.field static final blacklist TRANSACTION_simSmsStorageFull:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 127
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 128
    invoke-virtual {p0}, Landroid/hardware/radio/messaging/IRadioMessagingIndication$Stub;->markVintfStability()V

    .line 129
    sget-object v0, Landroid/hardware/radio/messaging/IRadioMessagingIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/messaging/IRadioMessagingIndication$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/messaging/IRadioMessagingIndication;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 137
    if-nez p0, :cond_4

    .line 138
    const/4 v0, 0x0

    return-object v0

    .line 140
    :cond_4
    sget-object v0, Landroid/hardware/radio/messaging/IRadioMessagingIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 141
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/radio/messaging/IRadioMessagingIndication;

    if-eqz v1, :cond_14

    .line 142
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/messaging/IRadioMessagingIndication;

    return-object v1

    .line 144
    :cond_14
    new-instance v1, Landroid/hardware/radio/messaging/IRadioMessagingIndication$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/messaging/IRadioMessagingIndication$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 148
    return-object p0
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

    .line 152
    sget-object v0, Landroid/hardware/radio/messaging/IRadioMessagingIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 153
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 154
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 157
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    return v2

    .line 160
    :cond_16
    if-ne p1, v1, :cond_23

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p0}, Landroid/hardware/radio/messaging/IRadioMessagingIndication$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    return v2

    .line 165
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p0}, Landroid/hardware/radio/messaging/IRadioMessagingIndication$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    return v2

    .line 170
    :cond_33
    packed-switch p1, :pswitch_data_a2

    .line 240
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 233
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 234
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {p0, v1}, Landroid/hardware/radio/messaging/IRadioMessagingIndication$Stub;->simSmsStorageFull(I)V

    .line 236
    goto :goto_a0

    .line 223
    .end local v1    # "_arg0":I
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 225
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 226
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/messaging/IRadioMessagingIndication$Stub;->newSmsStatusReport(I[B)V

    .line 228
    goto :goto_a0

    .line 213
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":[B
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 215
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 216
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/messaging/IRadioMessagingIndication$Stub;->newSmsOnSim(II)V

    .line 218
    goto :goto_a0

    .line 203
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 205
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 206
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/messaging/IRadioMessagingIndication$Stub;->newSms(I[B)V

    .line 208
    goto :goto_a0

    .line 193
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":[B
    :pswitch_73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 195
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 196
    .restart local v3    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/messaging/IRadioMessagingIndication$Stub;->newBroadcastSms(I[B)V

    .line 198
    goto :goto_a0

    .line 185
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":[B
    :pswitch_82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 186
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {p0, v1}, Landroid/hardware/radio/messaging/IRadioMessagingIndication$Stub;->cdmaRuimSmsStorageFull(I)V

    .line 188
    goto :goto_a0

    .line 175
    .end local v1    # "_arg0":I
    :pswitch_8d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 177
    .restart local v1    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/messaging/CdmaSmsMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/messaging/CdmaSmsMessage;

    .line 178
    .local v3, "_arg1":Landroid/hardware/radio/messaging/CdmaSmsMessage;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/messaging/IRadioMessagingIndication$Stub;->cdmaNewSms(ILandroid/hardware/radio/messaging/CdmaSmsMessage;)V

    .line 180
    nop

    .line 243
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/messaging/CdmaSmsMessage;
    :goto_a0
    return v2

    nop

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_8d
        :pswitch_82
        :pswitch_73
        :pswitch_64
        :pswitch_55
        :pswitch_46
        :pswitch_3b
    .end packed-switch
.end method
