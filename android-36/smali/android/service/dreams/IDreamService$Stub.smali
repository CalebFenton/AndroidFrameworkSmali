.class public abstract Landroid/service/dreams/IDreamService$Stub;
.super Landroid/os/Binder;
.source "IDreamService.java"

# interfaces
.implements Landroid/service/dreams/IDreamService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/IDreamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/dreams/IDreamService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.dreams.IDreamService"

.field static final greylist-max-o TRANSACTION_attach:I = 0x1

.field static final blacklist TRANSACTION_comeToFront:I = 0x4

.field static final greylist-max-o TRANSACTION_detach:I = 0x2

.field static final greylist-max-o TRANSACTION_wakeUp:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "android.service.dreams.IDreamService"

    invoke-virtual {p0, p0, v0}, Landroid/service/dreams/IDreamService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 48
    if-nez p0, :cond_4

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_4
    const-string v0, "android.service.dreams.IDreamService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/dreams/IDreamService;

    if-eqz v1, :cond_14

    .line 53
    move-object v1, v0

    check-cast v1, Landroid/service/dreams/IDreamService;

    return-object v1

    .line 55
    :cond_14
    new-instance v1, Landroid/service/dreams/IDreamService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/dreams/IDreamService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 64
    packed-switch p0, :pswitch_data_12

    .line 84
    const/4 v0, 0x0

    return-object v0

    .line 80
    :pswitch_5
    const-string v0, "comeToFront"

    return-object v0

    .line 76
    :pswitch_8
    const-string/jumbo v0, "wakeUp"

    return-object v0

    .line 72
    :pswitch_c
    const-string v0, "detach"

    return-object v0

    .line 68
    :pswitch_f
    const-string v0, "attach"

    return-object v0

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 59
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 214
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 91
    invoke-static {p1}, Landroid/service/dreams/IDreamService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 95
    const-string v0, "android.service.dreams.IDreamService"

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
    packed-switch p1, :pswitch_data_46

    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 131
    :pswitch_1e
    invoke-virtual {p0}, Landroid/service/dreams/IDreamService$Stub;->comeToFront()V

    .line 132
    goto :goto_45

    .line 126
    :pswitch_22
    invoke-virtual {p0}, Landroid/service/dreams/IDreamService$Stub;->wakeUp()V

    .line 127
    goto :goto_45

    .line 121
    :pswitch_26
    invoke-virtual {p0}, Landroid/service/dreams/IDreamService$Stub;->detach()V

    .line 122
    goto :goto_45

    .line 108
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 110
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 112
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 114
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v5

    .line 115
    .local v5, "_arg3":Landroid/os/IRemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 116
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/service/dreams/IDreamService$Stub;->attach(Landroid/os/IBinder;ZZLandroid/os/IRemoteCallback;)V

    .line 117
    nop

    .line 139
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":Landroid/os/IRemoteCallback;
    :goto_45
    return v1

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_26
        :pswitch_22
        :pswitch_1e
    .end packed-switch
.end method
