.class public abstract Landroid/os/IPermissionController$Stub;
.super Landroid/os/Binder;
.source "IPermissionController.java"

# interfaces
.implements Landroid/os/IPermissionController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IPermissionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IPermissionController$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IPermissionController"

.field static final TRANSACTION_checkPermission:I = 0x1

.field static final TRANSACTION_getPackagesForUid:I = 0x2

.field static final TRANSACTION_isRuntimePermission:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "android.os.IPermissionController"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/os/IPermissionController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IPermissionController;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 24
    if-nez p0, :cond_0

    #@3
    .line 25
    return-object v1

    #@4
    .line 27
    :cond_0
    const-string/jumbo v1, "android.os.IPermissionController"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/os/IPermissionController;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Landroid/os/IPermissionController;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/IPermissionController$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/os/IPermissionController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v6

    #@9
    return v6

    #@a
    .line 43
    :sswitch_0
    const-string/jumbo v6, "android.os.IPermissionController"

    #@d
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 44
    return v7

    #@11
    .line 48
    :sswitch_1
    const-string/jumbo v8, "android.os.IPermissionController"

    #@14
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    .line 52
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v2

    #@1f
    .line 54
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v3

    #@23
    .line 55
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IPermissionController$Stub;->checkPermission(Ljava/lang/String;II)Z

    #@26
    move-result v4

    #@27
    .line 56
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a
    .line 57
    if-eqz v4, :cond_0

    #@2c
    move v6, v7

    #@2d
    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    .line 58
    return v7

    #@31
    .line 62
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Z
    :sswitch_2
    const-string/jumbo v6, "android.os.IPermissionController"

    #@34
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@37
    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3a
    move-result v0

    #@3b
    .line 65
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IPermissionController$Stub;->getPackagesForUid(I)[Ljava/lang/String;

    #@3e
    move-result-object v5

    #@3f
    .line 66
    .local v5, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@42
    .line 67
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@45
    .line 68
    return v7

    #@46
    .line 72
    .end local v0    # "_arg0":I
    .end local v5    # "_result":[Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v8, "android.os.IPermissionController"

    #@49
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4c
    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4f
    move-result-object v1

    #@50
    .line 75
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IPermissionController$Stub;->isRuntimePermission(Ljava/lang/String;)Z

    #@53
    move-result v4

    #@54
    .line 76
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@57
    .line 77
    if-eqz v4, :cond_1

    #@59
    move v6, v7

    #@5a
    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@5d
    .line 78
    return v7

    #@5e
    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
