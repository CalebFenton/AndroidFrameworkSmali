.class public abstract Landroid/os/ServiceManagerNative;
.super Landroid/os/Binder;
.source "ServiceManagerNative.java"

# interfaces
.implements Landroid/os/IServiceManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 49
    const-string/jumbo v0, "android.os.IServiceManager"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/os/ServiceManagerNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 47
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IServiceManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 35
    if-nez p0, :cond_0

    #@3
    .line 36
    return-object v1

    #@4
    .line 39
    :cond_0
    const-string/jumbo v1, "android.os.IServiceManager"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/os/IServiceManager;

    #@d
    .line 40
    .local v0, "in":Landroid/os/IServiceManager;
    if-eqz v0, :cond_1

    #@f
    .line 41
    return-object v0

    #@10
    .line 44
    :cond_1
    new-instance v1, Landroid/os/ServiceManagerProxy;

    #@12
    invoke-direct {v1, p0}, Landroid/os/ServiceManagerProxy;-><init>(Landroid/os/IBinder;)V

    #@15
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 105
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    .line 55
    packed-switch p1, :pswitch_data_0

    #@5
    .line 100
    :goto_0
    :pswitch_0
    return v8

    #@6
    .line 57
    :pswitch_1
    :try_start_0
    const-string/jumbo v6, "android.os.IServiceManager"

    #@9
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c
    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    .line 59
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {p0, v4}, Landroid/os/ServiceManagerNative;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@13
    move-result-object v5

    #@14
    .line 60
    .local v5, "service":Landroid/os/IBinder;
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    .line 61
    return v7

    #@18
    .line 65
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "service":Landroid/os/IBinder;
    :pswitch_2
    const-string/jumbo v6, "android.os.IServiceManager"

    #@1b
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e
    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    .line 67
    .restart local v4    # "name":Ljava/lang/String;
    invoke-virtual {p0, v4}, Landroid/os/ServiceManagerNative;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    #@25
    move-result-object v5

    #@26
    .line 68
    .restart local v5    # "service":Landroid/os/IBinder;
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@29
    .line 69
    return v7

    #@2a
    .line 73
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "service":Landroid/os/IBinder;
    :pswitch_3
    const-string/jumbo v6, "android.os.IServiceManager"

    #@2d
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@30
    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    .line 75
    .restart local v4    # "name":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@37
    move-result-object v5

    #@38
    .line 76
    .restart local v5    # "service":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3b
    move-result v6

    #@3c
    if-eqz v6, :cond_0

    #@3e
    const/4 v0, 0x1

    #@3f
    .line 77
    .local v0, "allowIsolated":Z
    :goto_1
    invoke-virtual {p0, v4, v5, v0}, Landroid/os/ServiceManagerNative;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    #@42
    .line 78
    return v7

    #@43
    .line 76
    .end local v0    # "allowIsolated":Z
    :cond_0
    const/4 v0, 0x0

    #@44
    .restart local v0    # "allowIsolated":Z
    goto :goto_1

    #@45
    .line 82
    .end local v0    # "allowIsolated":Z
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "service":Landroid/os/IBinder;
    :pswitch_4
    const-string/jumbo v6, "android.os.IServiceManager"

    #@48
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4b
    .line 83
    invoke-virtual {p0}, Landroid/os/ServiceManagerNative;->listServices()[Ljava/lang/String;

    #@4e
    move-result-object v3

    #@4f
    .line 84
    .local v3, "list":[Ljava/lang/String;
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@52
    .line 85
    return v7

    #@53
    .line 89
    .end local v3    # "list":[Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v6, "android.os.IServiceManager"

    #@56
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@59
    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@5c
    move-result-object v6

    #@5d
    .line 91
    invoke-static {v6}, Landroid/os/IPermissionController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPermissionController;

    #@60
    move-result-object v1

    #@61
    .line 93
    .local v1, "controller":Landroid/os/IPermissionController;
    invoke-virtual {p0, v1}, Landroid/os/ServiceManagerNative;->setPermissionController(Landroid/os/IPermissionController;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@64
    .line 94
    return v7

    #@65
    .line 97
    .end local v1    # "controller":Landroid/os/IPermissionController;
    :catch_0
    move-exception v2

    #@66
    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0

    #@67
    .line 55
    nop

    #@68
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
