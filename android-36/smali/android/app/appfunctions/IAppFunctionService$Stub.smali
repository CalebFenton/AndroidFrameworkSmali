.class public abstract Landroid/app/appfunctions/IAppFunctionService$Stub;
.super Landroid/os/Binder;
.source "IAppFunctionService.java"

# interfaces
.implements Landroid/app/appfunctions/IAppFunctionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appfunctions/IAppFunctionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appfunctions/IAppFunctionService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_executeAppFunction:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 48
    const-string v0, "android.app.appfunctions.IAppFunctionService"

    invoke-virtual {p0, p0, v0}, Landroid/app/appfunctions/IAppFunctionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/appfunctions/IAppFunctionService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 56
    if-nez p0, :cond_4

    .line 57
    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_4
    const-string v0, "android.app.appfunctions.IAppFunctionService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 60
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/appfunctions/IAppFunctionService;

    if-eqz v1, :cond_14

    .line 61
    move-object v1, v0

    check-cast v1, Landroid/app/appfunctions/IAppFunctionService;

    return-object v1

    .line 63
    :cond_14
    new-instance v1, Landroid/app/appfunctions/IAppFunctionService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/appfunctions/IAppFunctionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 72
    packed-switch p0, :pswitch_data_8

    .line 80
    const/4 v0, 0x0

    return-object v0

    .line 76
    :pswitch_5
    const-string v0, "executeAppFunction"

    return-object v0

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 67
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 87
    invoke-static {p1}, Landroid/app/appfunctions/IAppFunctionService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    const-string v0, "android.app.appfunctions.IAppFunctionService"

    .line 92
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 93
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 96
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    return v1

    .line 99
    :cond_16
    packed-switch p1, :pswitch_data_4e

    .line 119
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 104
    :pswitch_1e
    sget-object v2, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    .line 106
    .local v4, "_arg0":Landroid/app/appfunctions/ExecuteAppFunctionRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 108
    .local v5, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/content/pm/SigningInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/content/pm/SigningInfo;

    .line 110
    .local v6, "_arg2":Landroid/content/pm/SigningInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/appfunctions/ICancellationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/appfunctions/ICancellationCallback;

    move-result-object v7

    .line 112
    .local v7, "_arg3":Landroid/app/appfunctions/ICancellationCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/appfunctions/IExecuteAppFunctionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/appfunctions/IExecuteAppFunctionCallback;

    move-result-object v8

    .line 113
    .local v8, "_arg4":Landroid/app/appfunctions/IExecuteAppFunctionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 114
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/app/appfunctions/IAppFunctionService$Stub;->executeAppFunction(Landroid/app/appfunctions/ExecuteAppFunctionRequest;Ljava/lang/String;Landroid/content/pm/SigningInfo;Landroid/app/appfunctions/ICancellationCallback;Landroid/app/appfunctions/IExecuteAppFunctionCallback;)V

    .line 115
    nop

    .line 122
    .end local v4    # "_arg0":Landroid/app/appfunctions/ExecuteAppFunctionRequest;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Landroid/content/pm/SigningInfo;
    .end local v7    # "_arg3":Landroid/app/appfunctions/ICancellationCallback;
    .end local v8    # "_arg4":Landroid/app/appfunctions/IExecuteAppFunctionCallback;
    return v1

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_1e
    .end packed-switch
.end method
