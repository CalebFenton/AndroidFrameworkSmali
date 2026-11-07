.class public abstract Landroid/scheduling/IRebootReadinessManager$Stub;
.super Landroid/os/Binder;
.source "IRebootReadinessManager.java"

# interfaces
.implements Landroid/scheduling/IRebootReadinessManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/scheduling/IRebootReadinessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/scheduling/IRebootReadinessManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addRequestRebootReadinessStatusListener:I = 0x4

.field static final blacklist TRANSACTION_cancelPendingReboot:I = 0x2

.field static final blacklist TRANSACTION_isReadyToReboot:I = 0x3

.field static final blacklist TRANSACTION_markRebootPending:I = 0x1

.field static final blacklist TRANSACTION_removeRequestRebootReadinessStatusListener:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "android.scheduling.IRebootReadinessManager"

    invoke-virtual {p0, p0, v0}, Landroid/scheduling/IRebootReadinessManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/scheduling/IRebootReadinessManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 52
    if-nez p0, :cond_4

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_4
    const-string v0, "android.scheduling.IRebootReadinessManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/scheduling/IRebootReadinessManager;

    if-eqz v1, :cond_14

    .line 57
    move-object v1, v0

    check-cast v1, Landroid/scheduling/IRebootReadinessManager;

    return-object v1

    .line 59
    :cond_14
    new-instance v1, Landroid/scheduling/IRebootReadinessManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/scheduling/IRebootReadinessManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 68
    packed-switch p0, :pswitch_data_14

    .line 92
    const/4 v0, 0x0

    return-object v0

    .line 88
    :pswitch_5
    const-string v0, "removeRequestRebootReadinessStatusListener"

    return-object v0

    .line 84
    :pswitch_8
    const-string v0, "addRequestRebootReadinessStatusListener"

    return-object v0

    .line 80
    :pswitch_b
    const-string v0, "isReadyToReboot"

    return-object v0

    .line 76
    :pswitch_e
    const-string v0, "cancelPendingReboot"

    return-object v0

    .line 72
    :pswitch_11
    const-string v0, "markRebootPending"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x1
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

    .line 63
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 260
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 99
    invoke-static {p1}, Landroid/scheduling/IRebootReadinessManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 103
    const-string v0, "android.scheduling.IRebootReadinessManager"

    .line 104
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 105
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 108
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    return v1

    .line 111
    :cond_16
    packed-switch p1, :pswitch_data_5e

    .line 154
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 147
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/scheduling/IRequestRebootReadinessStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/scheduling/IRequestRebootReadinessStatusListener;

    move-result-object v2

    .line 148
    .local v2, "_arg0":Landroid/scheduling/IRequestRebootReadinessStatusListener;
    invoke-virtual {p0, v2}, Landroid/scheduling/IRebootReadinessManager$Stub;->removeRequestRebootReadinessStatusListener(Landroid/scheduling/IRequestRebootReadinessStatusListener;)V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    goto :goto_5d

    .line 139
    .end local v2    # "_arg0":Landroid/scheduling/IRequestRebootReadinessStatusListener;
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/scheduling/IRequestRebootReadinessStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/scheduling/IRequestRebootReadinessStatusListener;

    move-result-object v2

    .line 140
    .restart local v2    # "_arg0":Landroid/scheduling/IRequestRebootReadinessStatusListener;
    invoke-virtual {p0, v2}, Landroid/scheduling/IRebootReadinessManager$Stub;->addRequestRebootReadinessStatusListener(Landroid/scheduling/IRequestRebootReadinessStatusListener;)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    goto :goto_5d

    .line 131
    .end local v2    # "_arg0":Landroid/scheduling/IRequestRebootReadinessStatusListener;
    :pswitch_3c
    invoke-virtual {p0}, Landroid/scheduling/IRebootReadinessManager$Stub;->isReadyToReboot()Z

    move-result v2

    .line 132
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 134
    goto :goto_5d

    .line 124
    .end local v2    # "_result":Z
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/scheduling/IRebootReadinessManager$Stub;->cancelPendingReboot(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    goto :goto_5d

    .line 116
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 117
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/scheduling/IRebootReadinessManager$Stub;->markRebootPending(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    nop

    .line 157
    .end local v2    # "_arg0":Ljava/lang/String;
    :goto_5d
    return v1

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_52
        :pswitch_47
        :pswitch_3c
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
