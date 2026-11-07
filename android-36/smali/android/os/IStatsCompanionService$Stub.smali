.class public abstract Landroid/os/IStatsCompanionService$Stub;
.super Landroid/os/Binder;
.source "IStatsCompanionService.java"

# interfaces
.implements Landroid/os/IStatsCompanionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IStatsCompanionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IStatsCompanionService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.IStatsCompanionService"

.field static final greylist-max-o TRANSACTION_cancelAlarmForSubscriberTriggering:I = 0x7

.field static final greylist-max-o TRANSACTION_cancelAnomalyAlarm:I = 0x3

.field static final greylist-max-o TRANSACTION_cancelPullingAlarm:I = 0x5

.field static final blacklist TRANSACTION_checkPermission:I = 0x8

.field static final greylist-max-o TRANSACTION_setAlarmForSubscriberTriggering:I = 0x6

.field static final greylist-max-o TRANSACTION_setAnomalyAlarm:I = 0x2

.field static final greylist-max-o TRANSACTION_setPullingAlarm:I = 0x4

.field static final greylist-max-o TRANSACTION_statsdReady:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 82
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 83
    const-string v0, "android.os.IStatsCompanionService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IStatsCompanionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/os/IStatsCompanionService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 91
    if-nez p0, :cond_4

    .line 92
    const/4 v0, 0x0

    return-object v0

    .line 94
    :cond_4
    const-string v0, "android.os.IStatsCompanionService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 95
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IStatsCompanionService;

    if-eqz v1, :cond_14

    .line 96
    move-object v1, v0

    check-cast v1, Landroid/os/IStatsCompanionService;

    return-object v1

    .line 98
    :cond_14
    new-instance v1, Landroid/os/IStatsCompanionService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IStatsCompanionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 107
    packed-switch p0, :pswitch_data_1e

    .line 143
    const/4 v0, 0x0

    return-object v0

    .line 139
    :pswitch_5
    const-string v0, "checkPermission"

    return-object v0

    .line 135
    :pswitch_8
    const-string v0, "cancelAlarmForSubscriberTriggering"

    return-object v0

    .line 131
    :pswitch_b
    const-string v0, "setAlarmForSubscriberTriggering"

    return-object v0

    .line 127
    :pswitch_e
    const-string v0, "cancelPullingAlarm"

    return-object v0

    .line 123
    :pswitch_11
    const-string v0, "setPullingAlarm"

    return-object v0

    .line 119
    :pswitch_14
    const-string v0, "cancelAnomalyAlarm"

    return-object v0

    .line 115
    :pswitch_17
    const-string v0, "setAnomalyAlarm"

    return-object v0

    .line 111
    :pswitch_1a
    const-string v0, "statsdReady"

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

    .line 102
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 381
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 150
    invoke-static {p1}, Landroid/os/IStatsCompanionService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    const-string v0, "android.os.IStatsCompanionService"

    .line 155
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 156
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 159
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    return v1

    .line 162
    :cond_16
    packed-switch p1, :pswitch_data_5e

    .line 220
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 208
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 212
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 213
    .local v4, "_arg2":I
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/IStatsCompanionService$Stub;->checkPermission(Ljava/lang/String;II)Z

    move-result v5

    .line 214
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 216
    goto :goto_5d

    .line 202
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_35
    invoke-virtual {p0}, Landroid/os/IStatsCompanionService$Stub;->cancelAlarmForSubscriberTriggering()V

    .line 203
    goto :goto_5d

    .line 196
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 197
    .local v2, "_arg0":J
    invoke-virtual {p0, v2, v3}, Landroid/os/IStatsCompanionService$Stub;->setAlarmForSubscriberTriggering(J)V

    .line 198
    goto :goto_5d

    .line 190
    .end local v2    # "_arg0":J
    :pswitch_41
    invoke-virtual {p0}, Landroid/os/IStatsCompanionService$Stub;->cancelPullingAlarm()V

    .line 191
    goto :goto_5d

    .line 184
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 185
    .restart local v2    # "_arg0":J
    invoke-virtual {p0, v2, v3}, Landroid/os/IStatsCompanionService$Stub;->setPullingAlarm(J)V

    .line 186
    goto :goto_5d

    .line 178
    .end local v2    # "_arg0":J
    :pswitch_4d
    invoke-virtual {p0}, Landroid/os/IStatsCompanionService$Stub;->cancelAnomalyAlarm()V

    .line 179
    goto :goto_5d

    .line 172
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 173
    .restart local v2    # "_arg0":J
    invoke-virtual {p0, v2, v3}, Landroid/os/IStatsCompanionService$Stub;->setAnomalyAlarm(J)V

    .line 174
    goto :goto_5d

    .line 166
    .end local v2    # "_arg0":J
    :pswitch_59
    invoke-virtual {p0}, Landroid/os/IStatsCompanionService$Stub;->statsdReady()V

    .line 167
    nop

    .line 223
    :goto_5d
    return v1

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_59
        :pswitch_51
        :pswitch_4d
        :pswitch_45
        :pswitch_41
        :pswitch_39
        :pswitch_35
        :pswitch_1e
    .end packed-switch
.end method
