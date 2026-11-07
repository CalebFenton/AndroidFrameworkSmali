.class public abstract Landroid/app/supervision/ISupervisionAppService$Stub;
.super Landroid/os/Binder;
.source "ISupervisionAppService.java"

# interfaces
.implements Landroid/app/supervision/ISupervisionAppService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/supervision/ISupervisionAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/supervision/ISupervisionAppService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onDisabled:I = 0x2

.field static final blacklist TRANSACTION_onEnabled:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "android.app.supervision.ISupervisionAppService"

    invoke-virtual {p0, p0, v0}, Landroid/app/supervision/ISupervisionAppService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/supervision/ISupervisionAppService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 42
    if-nez p0, :cond_4

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_4
    const-string v0, "android.app.supervision.ISupervisionAppService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/supervision/ISupervisionAppService;

    if-eqz v1, :cond_14

    .line 47
    move-object v1, v0

    check-cast v1, Landroid/app/supervision/ISupervisionAppService;

    return-object v1

    .line 49
    :cond_14
    new-instance v1, Landroid/app/supervision/ISupervisionAppService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/supervision/ISupervisionAppService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 58
    packed-switch p0, :pswitch_data_e

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 66
    :pswitch_5
    const-string/jumbo v0, "onDisabled"

    return-object v0

    .line 62
    :pswitch_9
    const-string/jumbo v0, "onEnabled"

    return-object v0

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 53
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 159
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 77
    invoke-static {p1}, Landroid/app/supervision/ISupervisionAppService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 81
    const-string v0, "android.app.supervision.ISupervisionAppService"

    .line 82
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 83
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 86
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    return v1

    .line 89
    :cond_16
    packed-switch p1, :pswitch_data_2e

    .line 105
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 99
    :pswitch_1e
    invoke-virtual {p0}, Landroid/app/supervision/ISupervisionAppService$Stub;->onDisabled()V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    goto :goto_2c

    .line 93
    :pswitch_25
    invoke-virtual {p0}, Landroid/app/supervision/ISupervisionAppService$Stub;->onEnabled()V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    nop

    .line 108
    :goto_2c
    return v1

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_25
        :pswitch_1e
    .end packed-switch
.end method
