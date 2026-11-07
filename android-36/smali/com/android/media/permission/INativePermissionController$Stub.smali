.class public abstract Lcom/android/media/permission/INativePermissionController$Stub;
.super Landroid/os/Binder;
.source "INativePermissionController.java"

# interfaces
.implements Lcom/android/media/permission/INativePermissionController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/media/permission/INativePermissionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/media/permission/INativePermissionController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_populatePackagesForUids:I = 0x1

.field static final blacklist TRANSACTION_populatePermissionState:I = 0x3

.field static final blacklist TRANSACTION_updatePackagesForUid:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 54
    const-string v0, "com.android.media.permission.INativePermissionController"

    invoke-virtual {p0, p0, v0}, Lcom/android/media/permission/INativePermissionController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/media/permission/INativePermissionController;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 62
    if-nez p0, :cond_4

    .line 63
    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_4
    const-string v0, "com.android.media.permission.INativePermissionController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 66
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/media/permission/INativePermissionController;

    if-eqz v1, :cond_14

    .line 67
    move-object v1, v0

    check-cast v1, Lcom/android/media/permission/INativePermissionController;

    return-object v1

    .line 69
    :cond_14
    new-instance v1, Lcom/android/media/permission/INativePermissionController$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/media/permission/INativePermissionController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 73
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

    .line 77
    const-string v0, "com.android.media.permission.INativePermissionController"

    .line 78
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 79
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 82
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    return v1

    .line 85
    :cond_16
    packed-switch p1, :pswitch_data_54

    .line 118
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 108
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 110
    .local v2, "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 111
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 112
    invoke-virtual {p0, v2, v3}, Lcom/android/media/permission/INativePermissionController$Stub;->populatePermissionState(B[I)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    goto :goto_52

    .line 99
    .end local v2    # "_arg0":B
    .end local v3    # "_arg1":[I
    :pswitch_30
    sget-object v2, Lcom/android/media/permission/UidPackageState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/media/permission/UidPackageState;

    .line 100
    .local v2, "_arg0":Lcom/android/media/permission/UidPackageState;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 101
    invoke-virtual {p0, v2}, Lcom/android/media/permission/INativePermissionController$Stub;->updatePackagesForUid(Lcom/android/media/permission/UidPackageState;)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    goto :goto_52

    .line 90
    .end local v2    # "_arg0":Lcom/android/media/permission/UidPackageState;
    :pswitch_42
    sget-object v2, Lcom/android/media/permission/UidPackageState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 91
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/android/media/permission/UidPackageState;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 92
    invoke-virtual {p0, v2}, Lcom/android/media/permission/INativePermissionController$Stub;->populatePackagesForUids(Ljava/util/List;)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    nop

    .line 121
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/android/media/permission/UidPackageState;>;"
    :goto_52
    return v1

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_42
        :pswitch_30
        :pswitch_1e
    .end packed-switch
.end method
