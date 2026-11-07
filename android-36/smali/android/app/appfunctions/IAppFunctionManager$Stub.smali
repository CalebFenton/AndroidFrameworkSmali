.class public abstract Landroid/app/appfunctions/IAppFunctionManager$Stub;
.super Landroid/os/Binder;
.source "IAppFunctionManager.java"

# interfaces
.implements Landroid/app/appfunctions/IAppFunctionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appfunctions/IAppFunctionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appfunctions/IAppFunctionManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_executeAppFunction:I = 0x1

.field static final blacklist TRANSACTION_setAppFunctionEnabled:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "android.app.appfunctions.IAppFunctionManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/appfunctions/IAppFunctionManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/appfunctions/IAppFunctionManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 54
    if-nez p0, :cond_4

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_4
    const-string v0, "android.app.appfunctions.IAppFunctionManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/appfunctions/IAppFunctionManager;

    if-eqz v1, :cond_14

    .line 59
    move-object v1, v0

    check-cast v1, Landroid/app/appfunctions/IAppFunctionManager;

    return-object v1

    .line 61
    :cond_14
    new-instance v1, Landroid/app/appfunctions/IAppFunctionManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/appfunctions/IAppFunctionManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 70
    packed-switch p0, :pswitch_data_c

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 78
    :pswitch_5
    const-string/jumbo v0, "setAppFunctionEnabled"

    return-object v0

    .line 74
    :pswitch_9
    const-string v0, "executeAppFunction"

    return-object v0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 65
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 89
    invoke-static {p1}, Landroid/app/appfunctions/IAppFunctionManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 93
    const-string v0, "android.app.appfunctions.IAppFunctionManager"

    .line 94
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 95
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 98
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    return v1

    .line 101
    :cond_16
    packed-switch p1, :pswitch_data_68

    .line 134
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 118
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 120
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 122
    .local v5, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/os/UserHandle;

    .line 124
    .local v6, "_arg2":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 126
    .local v7, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/appfunctions/IAppFunctionEnabledCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/appfunctions/IAppFunctionEnabledCallback;

    move-result-object v8

    .line 127
    .local v8, "_arg4":Landroid/app/appfunctions/IAppFunctionEnabledCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/app/appfunctions/IAppFunctionManager$Stub;->setAppFunctionEnabled(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;ILandroid/app/appfunctions/IAppFunctionEnabledCallback;)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    goto :goto_66

    .line 106
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Landroid/os/UserHandle;
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/app/appfunctions/IAppFunctionEnabledCallback;
    :pswitch_47
    move-object v3, p0

    sget-object v2, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    .line 108
    .local v2, "_arg0":Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/appfunctions/IExecuteAppFunctionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/appfunctions/IExecuteAppFunctionCallback;

    move-result-object v4

    .line 109
    .local v4, "_arg1":Landroid/app/appfunctions/IExecuteAppFunctionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 110
    invoke-virtual {p0, v2, v4}, Landroid/app/appfunctions/IAppFunctionManager$Stub;->executeAppFunction(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Landroid/app/appfunctions/IExecuteAppFunctionCallback;)Landroid/os/ICancellationSignal;

    move-result-object v5

    .line 111
    .local v5, "_result":Landroid/os/ICancellationSignal;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 113
    nop

    .line 137
    .end local v2    # "_arg0":Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;
    .end local v4    # "_arg1":Landroid/app/appfunctions/IExecuteAppFunctionCallback;
    .end local v5    # "_result":Landroid/os/ICancellationSignal;
    :goto_66
    return v1

    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_47
        :pswitch_1f
    .end packed-switch
.end method
