.class public abstract Lcom/android/internal/protolog/IProtoLogConfigurationService$Stub;
.super Landroid/os/Binder;
.source "IProtoLogConfigurationService.java"

# interfaces
.implements Lcom/android/internal/protolog/IProtoLogConfigurationService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/protolog/IProtoLogConfigurationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/protolog/IProtoLogConfigurationService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_registerClient:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    const-string v0, "com.android.internal.protolog.IProtoLogConfigurationService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/protolog/IProtoLogConfigurationService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/protolog/IProtoLogConfigurationService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 60
    if-nez p0, :cond_4

    .line 61
    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_4
    const-string v0, "com.android.internal.protolog.IProtoLogConfigurationService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 64
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/protolog/IProtoLogConfigurationService;

    if-eqz v1, :cond_14

    .line 65
    move-object v1, v0

    check-cast v1, Lcom/android/internal/protolog/IProtoLogConfigurationService;

    return-object v1

    .line 67
    :cond_14
    new-instance v1, Lcom/android/internal/protolog/IProtoLogConfigurationService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/protolog/IProtoLogConfigurationService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 76
    packed-switch p0, :pswitch_data_a

    .line 84
    const/4 v0, 0x0

    return-object v0

    .line 80
    :pswitch_5
    const-string/jumbo v0, "registerClient"

    return-object v0

    nop

    :pswitch_data_a
    .packed-switch 0x1
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

    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 91
    invoke-static {p1}, Lcom/android/internal/protolog/IProtoLogConfigurationService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 95
    const-string v0, "com.android.internal.protolog.IProtoLogConfigurationService"

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
    packed-switch p1, :pswitch_data_36

    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 108
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/protolog/IProtoLogClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/protolog/IProtoLogClient;

    move-result-object v2

    .line 110
    .local v2, "_arg0":Lcom/android/internal/protolog/IProtoLogClient;
    sget-object v3, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;

    .line 111
    .local v3, "_arg1":Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 112
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/protolog/IProtoLogConfigurationService$Stub;->registerClient(Lcom/android/internal/protolog/IProtoLogClient;Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;)V

    .line 113
    nop

    .line 120
    .end local v2    # "_arg0":Lcom/android/internal/protolog/IProtoLogClient;
    .end local v3    # "_arg1":Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;
    return v1

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_1e
    .end packed-switch
.end method
