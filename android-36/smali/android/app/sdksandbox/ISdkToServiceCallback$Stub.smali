.class public abstract Landroid/app/sdksandbox/ISdkToServiceCallback$Stub;
.super Landroid/os/Binder;
.source "ISdkToServiceCallback.java"

# interfaces
.implements Landroid/app/sdksandbox/ISdkToServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/sdksandbox/ISdkToServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/sdksandbox/ISdkToServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getAppOwnedSdkSandboxInterfaces:I = 0x1

.field static final blacklist TRANSACTION_getSandboxedSdks:I = 0x2

.field static final blacklist TRANSACTION_loadSdk:I = 0x3

.field static final blacklist TRANSACTION_logLatenciesFromSandbox:I = 0x4

.field static final blacklist TRANSACTION_logSandboxActivityApiLatencyFromSandbox:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 45
    const-string v0, "android.app.sdksandbox.ISdkToServiceCallback"

    invoke-virtual {p0, p0, v0}, Landroid/app/sdksandbox/ISdkToServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/sdksandbox/ISdkToServiceCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 53
    if-nez p0, :cond_4

    .line 54
    const/4 v0, 0x0

    return-object v0

    .line 56
    :cond_4
    const-string v0, "android.app.sdksandbox.ISdkToServiceCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 57
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/sdksandbox/ISdkToServiceCallback;

    if-eqz v1, :cond_14

    .line 58
    move-object v1, v0

    check-cast v1, Landroid/app/sdksandbox/ISdkToServiceCallback;

    return-object v1

    .line 60
    :cond_14
    new-instance v1, Landroid/app/sdksandbox/ISdkToServiceCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/sdksandbox/ISdkToServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 69
    packed-switch p0, :pswitch_data_14

    .line 93
    const/4 v0, 0x0

    return-object v0

    .line 89
    :pswitch_5
    const-string v0, "logSandboxActivityApiLatencyFromSandbox"

    return-object v0

    .line 85
    :pswitch_8
    const-string v0, "logLatenciesFromSandbox"

    return-object v0

    .line 81
    :pswitch_b
    const-string v0, "loadSdk"

    return-object v0

    .line 77
    :pswitch_e
    const-string v0, "getSandboxedSdks"

    return-object v0

    .line 73
    :pswitch_11
    const-string v0, "getAppOwnedSdkSandboxInterfaces"

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

    .line 64
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 286
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 100
    invoke-static {p1}, Landroid/app/sdksandbox/ISdkToServiceCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 104
    const-string v0, "android.app.sdksandbox.ISdkToServiceCallback"

    .line 105
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 106
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 109
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    return v1

    .line 112
    :cond_16
    packed-switch p1, :pswitch_data_a0

    .line 175
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 164
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 166
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 168
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 169
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/sdksandbox/ISdkToServiceCallback$Stub;->logSandboxActivityApiLatencyFromSandbox(III)V

    .line 171
    move-object v3, p0

    goto :goto_9e

    .line 156
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_33
    sget-object v2, Landroid/app/sdksandbox/SandboxLatencyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/sdksandbox/SandboxLatencyInfo;

    .line 157
    .local v2, "_arg0":Landroid/app/sdksandbox/SandboxLatencyInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    invoke-virtual {p0, v2}, Landroid/app/sdksandbox/ISdkToServiceCallback$Stub;->logLatenciesFromSandbox(Landroid/app/sdksandbox/SandboxLatencyInfo;)V

    .line 159
    move-object v3, p0

    goto :goto_9e

    .line 139
    .end local v2    # "_arg0":Landroid/app/sdksandbox/SandboxLatencyInfo;
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 141
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 143
    .local v5, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/app/sdksandbox/SandboxLatencyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/app/sdksandbox/SandboxLatencyInfo;

    .line 145
    .local v6, "_arg2":Landroid/app/sdksandbox/SandboxLatencyInfo;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/os/Bundle;

    .line 147
    .local v7, "_arg3":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/sdksandbox/ILoadSdkCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/sdksandbox/ILoadSdkCallback;

    move-result-object v8

    .line 148
    .local v8, "_arg4":Landroid/app/sdksandbox/ILoadSdkCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/app/sdksandbox/ISdkToServiceCallback$Stub;->loadSdk(Ljava/lang/String;Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;Landroid/os/Bundle;Landroid/app/sdksandbox/ILoadSdkCallback;)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    goto :goto_9e

    .line 127
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Landroid/app/sdksandbox/SandboxLatencyInfo;
    .end local v7    # "_arg3":Landroid/os/Bundle;
    .end local v8    # "_arg4":Landroid/app/sdksandbox/ILoadSdkCallback;
    :pswitch_70
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v4, Landroid/app/sdksandbox/SandboxLatencyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/sdksandbox/SandboxLatencyInfo;

    .line 130
    .local v4, "_arg1":Landroid/app/sdksandbox/SandboxLatencyInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {p0, v2, v4}, Landroid/app/sdksandbox/ISdkToServiceCallback$Stub;->getSandboxedSdks(Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;)Ljava/util/List;

    move-result-object v5

    .line 132
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/sdksandbox/SandboxedSdk;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-static {p3, v5, v1}, Landroid/app/sdksandbox/ISdkToServiceCallback$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    .line 134
    goto :goto_9e

    .line 117
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/app/sdksandbox/SandboxLatencyInfo;
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/sdksandbox/SandboxedSdk;>;"
    :pswitch_8b
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 118
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 119
    invoke-virtual {p0, v2}, Landroid/app/sdksandbox/ISdkToServiceCallback$Stub;->getAppOwnedSdkSandboxInterfaces(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 120
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/sdksandbox/AppOwnedSdkSandboxInterface;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-static {p3, v4, v1}, Landroid/app/sdksandbox/ISdkToServiceCallback$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    .line 122
    nop

    .line 178
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/sdksandbox/AppOwnedSdkSandboxInterface;>;"
    :goto_9e
    return v1

    nop

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_8b
        :pswitch_70
        :pswitch_43
        :pswitch_33
        :pswitch_1f
    .end packed-switch
.end method
