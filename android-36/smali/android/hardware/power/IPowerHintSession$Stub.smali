.class public abstract Landroid/hardware/power/IPowerHintSession$Stub;
.super Landroid/os/Binder;
.source "IPowerHintSession.java"

# interfaces
.implements Landroid/hardware/power/IPowerHintSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/power/IPowerHintSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/power/IPowerHintSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_close:I = 0x5

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getSessionConfig:I = 0x9

.field static final blacklist TRANSACTION_pause:I = 0x3

.field static final blacklist TRANSACTION_reportActualWorkDuration:I = 0x2

.field static final blacklist TRANSACTION_resume:I = 0x4

.field static final blacklist TRANSACTION_sendHint:I = 0x6

.field static final blacklist TRANSACTION_setMode:I = 0x8

.field static final blacklist TRANSACTION_setThreads:I = 0x7

.field static final blacklist TRANSACTION_updateTargetWorkDuration:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 70
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 71
    invoke-virtual {p0}, Landroid/hardware/power/IPowerHintSession$Stub;->markVintfStability()V

    .line 72
    sget-object v0, Landroid/hardware/power/IPowerHintSession$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/power/IPowerHintSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/power/IPowerHintSession;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 80
    if-nez p0, :cond_4

    .line 81
    const/4 v0, 0x0

    return-object v0

    .line 83
    :cond_4
    sget-object v0, Landroid/hardware/power/IPowerHintSession$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 84
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/power/IPowerHintSession;

    if-eqz v1, :cond_14

    .line 85
    move-object v1, v0

    check-cast v1, Landroid/hardware/power/IPowerHintSession;

    return-object v1

    .line 87
    :cond_14
    new-instance v1, Landroid/hardware/power/IPowerHintSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/power/IPowerHintSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 96
    sparse-switch p0, :sswitch_data_26

    .line 144
    const/4 v0, 0x0

    return-object v0

    .line 136
    :sswitch_5
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 140
    :sswitch_8
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 132
    :sswitch_b
    const-string v0, "getSessionConfig"

    return-object v0

    .line 128
    :sswitch_e
    const-string v0, "setMode"

    return-object v0

    .line 124
    :sswitch_11
    const-string v0, "setThreads"

    return-object v0

    .line 120
    :sswitch_14
    const-string v0, "sendHint"

    return-object v0

    .line 116
    :sswitch_17
    const-string v0, "close"

    return-object v0

    .line 112
    :sswitch_1a
    const-string v0, "resume"

    return-object v0

    .line 108
    :sswitch_1d
    const-string v0, "pause"

    return-object v0

    .line 104
    :sswitch_20
    const-string v0, "reportActualWorkDuration"

    return-object v0

    .line 100
    :sswitch_23
    const-string v0, "updateTargetWorkDuration"

    return-object v0

    :sswitch_data_26
    .sparse-switch
        0x1 -> :sswitch_23
        0x2 -> :sswitch_20
        0x3 -> :sswitch_1d
        0x4 -> :sswitch_1a
        0x5 -> :sswitch_17
        0x6 -> :sswitch_14
        0x7 -> :sswitch_11
        0x8 -> :sswitch_e
        0x9 -> :sswitch_b
        0xfffffe -> :sswitch_8
        0xffffff -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 91
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 454
    const v0, 0xfffffe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 151
    invoke-static {p1}, Landroid/hardware/power/IPowerHintSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 155
    sget-object v0, Landroid/hardware/power/IPowerHintSession$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 156
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 157
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 160
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    return v2

    .line 163
    :cond_16
    if-ne p1, v1, :cond_23

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p0}, Landroid/hardware/power/IPowerHintSession$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    return v2

    .line 168
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p0}, Landroid/hardware/power/IPowerHintSession$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    return v2

    .line 173
    :cond_33
    packed-switch p1, :pswitch_data_96

    .line 242
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 235
    :pswitch_3b
    invoke-virtual {p0}, Landroid/hardware/power/IPowerHintSession$Stub;->getSessionConfig()Landroid/hardware/power/SessionConfig;

    move-result-object v1

    .line 236
    .local v1, "_result":Landroid/hardware/power/SessionConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 238
    goto :goto_94

    .line 226
    .end local v1    # "_result":Landroid/hardware/power/SessionConfig;
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 228
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 229
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 230
    invoke-virtual {p0, v1, v3}, Landroid/hardware/power/IPowerHintSession$Stub;->setMode(IZ)V

    .line 231
    goto :goto_94

    .line 217
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 218
    .local v1, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 219
    invoke-virtual {p0, v1}, Landroid/hardware/power/IPowerHintSession$Stub;->setThreads([I)V

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    goto :goto_94

    .line 209
    .end local v1    # "_arg0":[I
    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 210
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {p0, v1}, Landroid/hardware/power/IPowerHintSession$Stub;->sendHint(I)V

    .line 212
    goto :goto_94

    .line 203
    .end local v1    # "_arg0":I
    :pswitch_6e
    invoke-virtual {p0}, Landroid/hardware/power/IPowerHintSession$Stub;->close()V

    .line 204
    goto :goto_94

    .line 198
    :pswitch_72
    invoke-virtual {p0}, Landroid/hardware/power/IPowerHintSession$Stub;->resume()V

    .line 199
    goto :goto_94

    .line 193
    :pswitch_76
    invoke-virtual {p0}, Landroid/hardware/power/IPowerHintSession$Stub;->pause()V

    .line 194
    goto :goto_94

    .line 186
    :pswitch_7a
    sget-object v1, Landroid/hardware/power/WorkDuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/power/WorkDuration;

    .line 187
    .local v1, "_arg0":[Landroid/hardware/power/WorkDuration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 188
    invoke-virtual {p0, v1}, Landroid/hardware/power/IPowerHintSession$Stub;->reportActualWorkDuration([Landroid/hardware/power/WorkDuration;)V

    .line 189
    goto :goto_94

    .line 178
    .end local v1    # "_arg0":[Landroid/hardware/power/WorkDuration;
    :pswitch_89
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 179
    .local v3, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 180
    invoke-virtual {p0, v3, v4}, Landroid/hardware/power/IPowerHintSession$Stub;->updateTargetWorkDuration(J)V

    .line 181
    nop

    .line 245
    .end local v3    # "_arg0":J
    :goto_94
    return v2

    nop

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_89
        :pswitch_7a
        :pswitch_76
        :pswitch_72
        :pswitch_6e
        :pswitch_63
        :pswitch_55
        :pswitch_46
        :pswitch_3b
    .end packed-switch
.end method
