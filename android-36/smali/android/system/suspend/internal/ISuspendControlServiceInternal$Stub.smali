.class public abstract Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub;
.super Landroid/os/Binder;
.source "ISuspendControlServiceInternal.java"

# interfaces
.implements Landroid/system/suspend/internal/ISuspendControlServiceInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/suspend/internal/ISuspendControlServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_enableAutosuspend:I = 0x1

.field static final blacklist TRANSACTION_forceSuspend:I = 0x2

.field static final blacklist TRANSACTION_getSuspendStats:I = 0x6

.field static final blacklist TRANSACTION_getWakeLockStats:I = 0x3

.field static final blacklist TRANSACTION_getWakeLockStatsFiltered:I = 0x4

.field static final blacklist TRANSACTION_getWakeupStats:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 70
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 71
    const-string v0, "android.system.suspend.internal.ISuspendControlServiceInternal"

    invoke-virtual {p0, p0, v0}, Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/system/suspend/internal/ISuspendControlServiceInternal;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 79
    if-nez p0, :cond_4

    .line 80
    const/4 v0, 0x0

    return-object v0

    .line 82
    :cond_4
    const-string v0, "android.system.suspend.internal.ISuspendControlServiceInternal"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 83
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/system/suspend/internal/ISuspendControlServiceInternal;

    if-eqz v1, :cond_14

    .line 84
    move-object v1, v0

    check-cast v1, Landroid/system/suspend/internal/ISuspendControlServiceInternal;

    return-object v1

    .line 86
    :cond_14
    new-instance v1, Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 90
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

    .line 94
    const-string v0, "android.system.suspend.internal.ISuspendControlServiceInternal"

    .line 95
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 96
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 99
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    return v1

    .line 102
    :cond_16
    packed-switch p1, :pswitch_data_6a

    .line 152
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 145
    :pswitch_1e
    invoke-virtual {p0}, Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub;->getSuspendStats()Landroid/system/suspend/internal/SuspendInfo;

    move-result-object v2

    .line 146
    .local v2, "_result":Landroid/system/suspend/internal/SuspendInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 148
    goto :goto_68

    .line 138
    .end local v2    # "_result":Landroid/system/suspend/internal/SuspendInfo;
    :pswitch_29
    invoke-virtual {p0}, Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub;->getWakeupStats()[Landroid/system/suspend/internal/WakeupInfo;

    move-result-object v2

    .line 139
    .local v2, "_result":[Landroid/system/suspend/internal/WakeupInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 141
    goto :goto_68

    .line 130
    .end local v2    # "_result":[Landroid/system/suspend/internal/WakeupInfo;
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 131
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub;->getWakeLockStatsFiltered(I)[Landroid/system/suspend/internal/WakeLockInfo;

    move-result-object v3

    .line 132
    .local v3, "_result":[Landroid/system/suspend/internal/WakeLockInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 134
    goto :goto_68

    .line 122
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[Landroid/system/suspend/internal/WakeLockInfo;
    :pswitch_43
    invoke-virtual {p0}, Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub;->getWakeLockStats()[Landroid/system/suspend/internal/WakeLockInfo;

    move-result-object v2

    .line 123
    .local v2, "_result":[Landroid/system/suspend/internal/WakeLockInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 125
    goto :goto_68

    .line 115
    .end local v2    # "_result":[Landroid/system/suspend/internal/WakeLockInfo;
    :pswitch_4e
    invoke-virtual {p0}, Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub;->forceSuspend()Z

    move-result v2

    .line 116
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    goto :goto_68

    .line 107
    .end local v2    # "_result":Z
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 108
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub;->enableAutosuspend(Landroid/os/IBinder;)Z

    move-result v3

    .line 109
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    nop

    .line 155
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Z
    :goto_68
    return v1

    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_59
        :pswitch_4e
        :pswitch_43
        :pswitch_34
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
