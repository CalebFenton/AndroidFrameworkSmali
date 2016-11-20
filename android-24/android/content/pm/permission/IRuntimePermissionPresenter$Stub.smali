.class public abstract Landroid/content/pm/permission/IRuntimePermissionPresenter$Stub;
.super Landroid/os/Binder;
.source "IRuntimePermissionPresenter.java"

# interfaces
.implements Landroid/content/pm/permission/IRuntimePermissionPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/permission/IRuntimePermissionPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/permission/IRuntimePermissionPresenter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.permission.IRuntimePermissionPresenter"

.field static final TRANSACTION_getAppPermissions:I = 0x1

.field static final TRANSACTION_getAppsUsingPermissions:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.content.pm.permission.IRuntimePermissionPresenter"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/permission/IRuntimePermissionPresenter;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 28
    if-nez p0, :cond_0

    #@3
    .line 29
    return-object v1

    #@4
    .line 31
    :cond_0
    const-string/jumbo v1, "android.content.pm.permission.IRuntimePermissionPresenter"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/content/pm/permission/IRuntimePermissionPresenter;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/content/pm/permission/IRuntimePermissionPresenter;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/content/pm/permission/IRuntimePermissionPresenter$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/content/pm/permission/IRuntimePermissionPresenter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const/4 v4, 0x1

    #@1
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v3

    #@8
    return v3

    #@9
    .line 47
    :sswitch_0
    const-string/jumbo v3, "android.content.pm.permission.IRuntimePermissionPresenter"

    #@c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 48
    return v4

    #@10
    .line 52
    :sswitch_1
    const-string/jumbo v3, "android.content.pm.permission.IRuntimePermissionPresenter"

    #@13
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    .line 56
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_0

    #@20
    .line 57
    sget-object v3, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    #@22
    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    check-cast v2, Landroid/os/RemoteCallback;

    #@28
    .line 62
    :goto_0
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/permission/IRuntimePermissionPresenter$Stub;->getAppPermissions(Ljava/lang/String;Landroid/os/RemoteCallback;)V

    #@2b
    .line 63
    return v4

    #@2c
    .line 60
    :cond_0
    const/4 v2, 0x0

    #@2d
    .local v2, "_arg1":Landroid/os/RemoteCallback;
    goto :goto_0

    #@2e
    .line 67
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/RemoteCallback;
    :sswitch_2
    const-string/jumbo v3, "android.content.pm.permission.IRuntimePermissionPresenter"

    #@31
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@34
    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@37
    move-result v3

    #@38
    if-eqz v3, :cond_1

    #@3a
    const/4 v1, 0x1

    #@3b
    .line 71
    .local v1, "_arg0":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3e
    move-result v3

    #@3f
    if-eqz v3, :cond_2

    #@41
    .line 72
    sget-object v3, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    #@43
    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@46
    move-result-object v2

    #@47
    check-cast v2, Landroid/os/RemoteCallback;

    #@49
    .line 77
    :goto_2
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/permission/IRuntimePermissionPresenter$Stub;->getAppsUsingPermissions(ZLandroid/os/RemoteCallback;)V

    #@4c
    .line 78
    return v4

    #@4d
    .line 69
    .end local v1    # "_arg0":Z
    :cond_1
    const/4 v1, 0x0

    #@4e
    .restart local v1    # "_arg0":Z
    goto :goto_1

    #@4f
    .line 75
    :cond_2
    const/4 v2, 0x0

    #@50
    .restart local v2    # "_arg1":Landroid/os/RemoteCallback;
    goto :goto_2

    #@51
    .line 43
    nop

    #@52
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
