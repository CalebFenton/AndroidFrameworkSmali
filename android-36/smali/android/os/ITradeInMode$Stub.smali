.class public abstract Landroid/os/ITradeInMode$Stub;
.super Landroid/os/Binder;
.source "ITradeInMode.java"

# interfaces
.implements Landroid/os/ITradeInMode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ITradeInMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ITradeInMode$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_enterEvaluationMode:I = 0x3

.field static final blacklist TRANSACTION_isEvaluationModeAllowed:I = 0x2

.field static final blacklist TRANSACTION_isTesting:I = 0x7

.field static final blacklist TRANSACTION_scheduleWipeForTesting:I = 0x4

.field static final blacklist TRANSACTION_start:I = 0x1

.field static final blacklist TRANSACTION_startTesting:I = 0x5

.field static final blacklist TRANSACTION_stopTesting:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 113
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 114
    const-string v0, "android.os.ITradeInMode"

    invoke-virtual {p0, p0, v0}, Landroid/os/ITradeInMode$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/ITradeInMode;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 122
    if-nez p0, :cond_4

    .line 123
    const/4 v0, 0x0

    return-object v0

    .line 125
    :cond_4
    const-string v0, "android.os.ITradeInMode"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 126
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/ITradeInMode;

    if-eqz v1, :cond_14

    .line 127
    move-object v1, v0

    check-cast v1, Landroid/os/ITradeInMode;

    return-object v1

    .line 129
    :cond_14
    new-instance v1, Landroid/os/ITradeInMode$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/ITradeInMode$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 138
    packed-switch p0, :pswitch_data_20

    .line 170
    const/4 v0, 0x0

    return-object v0

    .line 166
    :pswitch_5
    const-string/jumbo v0, "isTesting"

    return-object v0

    .line 162
    :pswitch_9
    const-string/jumbo v0, "stopTesting"

    return-object v0

    .line 158
    :pswitch_d
    const-string/jumbo v0, "startTesting"

    return-object v0

    .line 154
    :pswitch_11
    const-string/jumbo v0, "scheduleWipeForTesting"

    return-object v0

    .line 150
    :pswitch_15
    const-string v0, "enterEvaluationMode"

    return-object v0

    .line 146
    :pswitch_18
    const-string/jumbo v0, "isEvaluationModeAllowed"

    return-object v0

    .line 142
    :pswitch_1c
    const-string/jumbo v0, "start"

    return-object v0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_18
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

    .line 133
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 441
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 177
    invoke-static {p1}, Landroid/os/ITradeInMode$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 181
    const-string v0, "android.os.ITradeInMode"

    .line 182
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 183
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 186
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    return v1

    .line 189
    :cond_16
    packed-switch p1, :pswitch_data_60

    .line 239
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 232
    :pswitch_1e
    invoke-virtual {p0}, Landroid/os/ITradeInMode$Stub;->isTesting()Z

    move-result v2

    .line 233
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 235
    goto :goto_5f

    .line 226
    .end local v2    # "_result":Z
    :pswitch_29
    invoke-virtual {p0}, Landroid/os/ITradeInMode$Stub;->stopTesting()V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    goto :goto_5f

    .line 220
    :pswitch_30
    invoke-virtual {p0}, Landroid/os/ITradeInMode$Stub;->startTesting()V

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    goto :goto_5f

    .line 214
    :pswitch_37
    invoke-virtual {p0}, Landroid/os/ITradeInMode$Stub;->scheduleWipeForTesting()V

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    goto :goto_5f

    .line 207
    :pswitch_3e
    invoke-virtual {p0}, Landroid/os/ITradeInMode$Stub;->enterEvaluationMode()Z

    move-result v2

    .line 208
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 210
    goto :goto_5f

    .line 200
    .end local v2    # "_result":Z
    :pswitch_49
    invoke-virtual {p0}, Landroid/os/ITradeInMode$Stub;->isEvaluationModeAllowed()Z

    move-result v2

    .line 201
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 203
    goto :goto_5f

    .line 193
    .end local v2    # "_result":Z
    :pswitch_54
    invoke-virtual {p0}, Landroid/os/ITradeInMode$Stub;->start()Z

    move-result v2

    .line 194
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 196
    nop

    .line 242
    .end local v2    # "_result":Z
    :goto_5f
    return v1

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_54
        :pswitch_49
        :pswitch_3e
        :pswitch_37
        :pswitch_30
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
