.class public abstract Landroid/os/IHintSession$Stub;
.super Landroid/os/Binder;
.source "IHintSession.java"

# interfaces
.implements Landroid/os/IHintSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IHintSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IHintSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_associateToLayers:I = 0x7

.field static final blacklist TRANSACTION_close:I = 0x3

.field static final blacklist TRANSACTION_reportActualWorkDuration:I = 0x2

.field static final blacklist TRANSACTION_reportActualWorkDuration2:I = 0x6

.field static final blacklist TRANSACTION_sendHint:I = 0x4

.field static final blacklist TRANSACTION_setMode:I = 0x5

.field static final blacklist TRANSACTION_updateTargetWorkDuration:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 50
    const-string v0, "android.os.IHintSession"

    invoke-virtual {p0, p0, v0}, Landroid/os/IHintSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/IHintSession;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 58
    if-nez p0, :cond_4

    .line 59
    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_4
    const-string v0, "android.os.IHintSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 62
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IHintSession;

    if-eqz v1, :cond_14

    .line 63
    move-object v1, v0

    check-cast v1, Landroid/os/IHintSession;

    return-object v1

    .line 65
    :cond_14
    new-instance v1, Landroid/os/IHintSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IHintSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 74
    packed-switch p0, :pswitch_data_20

    .line 106
    const/4 v0, 0x0

    return-object v0

    .line 102
    :pswitch_5
    const-string v0, "associateToLayers"

    return-object v0

    .line 98
    :pswitch_8
    const-string/jumbo v0, "reportActualWorkDuration2"

    return-object v0

    .line 94
    :pswitch_c
    const-string/jumbo v0, "setMode"

    return-object v0

    .line 90
    :pswitch_10
    const-string/jumbo v0, "sendHint"

    return-object v0

    .line 86
    :pswitch_14
    const-string v0, "close"

    return-object v0

    .line 82
    :pswitch_17
    const-string/jumbo v0, "reportActualWorkDuration"

    return-object v0

    .line 78
    :pswitch_1b
    const-string/jumbo v0, "updateTargetWorkDuration"

    return-object v0

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_17
        :pswitch_14
        :pswitch_10
        :pswitch_c
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

    .line 303
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 113
    invoke-static {p1}, Landroid/os/IHintSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 117
    const-string v0, "android.os.IHintSession"

    .line 118
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 119
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 122
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    return v1

    .line 125
    :cond_16
    packed-switch p1, :pswitch_data_72

    .line 186
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 179
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->createBinderArray()[Landroid/os/IBinder;

    move-result-object v2

    .line 180
    .local v2, "_arg0":[Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    invoke-virtual {p0, v2}, Landroid/os/IHintSession$Stub;->associateToLayers([Landroid/os/IBinder;)V

    .line 182
    goto :goto_70

    .line 171
    .end local v2    # "_arg0":[Landroid/os/IBinder;
    :pswitch_29
    sget-object v2, Landroid/hardware/power/WorkDuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/power/WorkDuration;

    .line 172
    .local v2, "_arg0":[Landroid/hardware/power/WorkDuration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual {p0, v2}, Landroid/os/IHintSession$Stub;->reportActualWorkDuration2([Landroid/hardware/power/WorkDuration;)V

    .line 174
    goto :goto_70

    .line 161
    .end local v2    # "_arg0":[Landroid/hardware/power/WorkDuration;
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 163
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 164
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, v2, v3}, Landroid/os/IHintSession$Stub;->setMode(IZ)V

    .line 166
    goto :goto_70

    .line 153
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 154
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {p0, v2}, Landroid/os/IHintSession$Stub;->sendHint(I)V

    .line 156
    goto :goto_70

    .line 147
    .end local v2    # "_arg0":I
    :pswitch_52
    invoke-virtual {p0}, Landroid/os/IHintSession$Stub;->close()V

    .line 148
    goto :goto_70

    .line 138
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    .line 140
    .local v2, "_arg0":[J
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v3

    .line 141
    .local v3, "_arg1":[J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, v2, v3}, Landroid/os/IHintSession$Stub;->reportActualWorkDuration([J[J)V

    .line 143
    goto :goto_70

    .line 130
    .end local v2    # "_arg0":[J
    .end local v3    # "_arg1":[J
    :pswitch_65
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 131
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 132
    invoke-virtual {p0, v2, v3}, Landroid/os/IHintSession$Stub;->updateTargetWorkDuration(J)V

    .line 133
    nop

    .line 189
    .end local v2    # "_arg0":J
    :goto_70
    return v1

    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_65
        :pswitch_56
        :pswitch_52
        :pswitch_47
        :pswitch_38
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
