.class public abstract Landroid/app/sdksandbox/IRequestSurfacePackageCallback$Stub;
.super Landroid/os/Binder;
.source "IRequestSurfacePackageCallback.java"

# interfaces
.implements Landroid/app/sdksandbox/IRequestSurfacePackageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/sdksandbox/IRequestSurfacePackageCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/sdksandbox/IRequestSurfacePackageCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onSurfacePackageError:I = 0x2

.field static final blacklist TRANSACTION_onSurfacePackageReady:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "android.app.sdksandbox.IRequestSurfacePackageCallback"

    invoke-virtual {p0, p0, v0}, Landroid/app/sdksandbox/IRequestSurfacePackageCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/sdksandbox/IRequestSurfacePackageCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 42
    if-nez p0, :cond_4

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_4
    const-string v0, "android.app.sdksandbox.IRequestSurfacePackageCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/sdksandbox/IRequestSurfacePackageCallback;

    if-eqz v1, :cond_14

    .line 47
    move-object v1, v0

    check-cast v1, Landroid/app/sdksandbox/IRequestSurfacePackageCallback;

    return-object v1

    .line 49
    :cond_14
    new-instance v1, Landroid/app/sdksandbox/IRequestSurfacePackageCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/sdksandbox/IRequestSurfacePackageCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 58
    packed-switch p0, :pswitch_data_c

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 66
    :pswitch_5
    const-string v0, "onSurfacePackageError"

    return-object v0

    .line 62
    :pswitch_8
    const-string v0, "onSurfacePackageReady"

    return-object v0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_8
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

    .line 174
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 77
    invoke-static {p1}, Landroid/app/sdksandbox/IRequestSurfacePackageCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 81
    const-string v0, "android.app.sdksandbox.IRequestSurfacePackageCallback"

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
    packed-switch p1, :pswitch_data_5a

    .line 119
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 108
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 110
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/app/sdksandbox/SandboxLatencyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/sdksandbox/SandboxLatencyInfo;

    .line 113
    .local v4, "_arg2":Landroid/app/sdksandbox/SandboxLatencyInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 114
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/sdksandbox/IRequestSurfacePackageCallback$Stub;->onSurfacePackageError(ILjava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;)V

    .line 115
    goto :goto_58

    .line 94
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/app/sdksandbox/SandboxLatencyInfo;
    :pswitch_35
    sget-object v2, Landroid/view/SurfaceControlViewHost$SurfacePackage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 96
    .local v2, "_arg0":Landroid/view/SurfaceControlViewHost$SurfacePackage;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 98
    .local v3, "_arg1":I
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 100
    .local v4, "_arg2":Landroid/os/Bundle;
    sget-object v5, Landroid/app/sdksandbox/SandboxLatencyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/sdksandbox/SandboxLatencyInfo;

    .line 101
    .local v5, "_arg3":Landroid/app/sdksandbox/SandboxLatencyInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 102
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/app/sdksandbox/IRequestSurfacePackageCallback$Stub;->onSurfacePackageReady(Landroid/view/SurfaceControlViewHost$SurfacePackage;ILandroid/os/Bundle;Landroid/app/sdksandbox/SandboxLatencyInfo;)V

    .line 103
    nop

    .line 122
    .end local v2    # "_arg0":Landroid/view/SurfaceControlViewHost$SurfacePackage;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/Bundle;
    .end local v5    # "_arg3":Landroid/app/sdksandbox/SandboxLatencyInfo;
    :goto_58
    return v1

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_35
        :pswitch_1e
    .end packed-switch
.end method
