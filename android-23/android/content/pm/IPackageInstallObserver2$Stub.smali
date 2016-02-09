.class public abstract Landroid/content/pm/IPackageInstallObserver2$Stub;
.super Landroid/os/Binder;
.source "IPackageInstallObserver2.java"

# interfaces
.implements Landroid/content/pm/IPackageInstallObserver2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageInstallObserver2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageInstallObserver2$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPackageInstallObserver2"

.field static final TRANSACTION_onPackageInstalled:I = 0x2

.field static final TRANSACTION_onUserActionRequired:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.content.pm.IPackageInstallObserver2"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPackageInstallObserver2$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallObserver2;
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
    const-string/jumbo v1, "android.content.pm.IPackageInstallObserver2"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/content/pm/IPackageInstallObserver2;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/content/pm/IPackageInstallObserver2;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/content/pm/IPackageInstallObserver2$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/content/pm/IPackageInstallObserver2$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 7
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
    const/4 v6, 0x1

    #@1
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v5

    #@8
    return v5

    #@9
    .line 47
    :sswitch_0
    const-string/jumbo v5, "android.content.pm.IPackageInstallObserver2"

    #@c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 48
    return v6

    #@10
    .line 52
    :sswitch_1
    const-string/jumbo v5, "android.content.pm.IPackageInstallObserver2"

    #@13
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_0

    #@1c
    .line 55
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Landroid/content/Intent;

    #@24
    .line 60
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/pm/IPackageInstallObserver2$Stub;->onUserActionRequired(Landroid/content/Intent;)V

    #@27
    .line 61
    return v6

    #@28
    .line 58
    :cond_0
    const/4 v0, 0x0

    #@29
    .local v0, "_arg0":Landroid/content/Intent;
    goto :goto_0

    #@2a
    .line 65
    .end local v0    # "_arg0":Landroid/content/Intent;
    :sswitch_2
    const-string/jumbo v5, "android.content.pm.IPackageInstallObserver2"

    #@2d
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@30
    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    .line 69
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@37
    move-result v2

    #@38
    .line 71
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    .line 73
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3f
    move-result v5

    #@40
    if-eqz v5, :cond_1

    #@42
    .line 74
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@44
    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@47
    move-result-object v4

    #@48
    check-cast v4, Landroid/os/Bundle;

    #@4a
    .line 79
    :goto_1
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/pm/IPackageInstallObserver2$Stub;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    #@4d
    .line 80
    return v6

    #@4e
    .line 77
    :cond_1
    const/4 v4, 0x0

    #@4f
    .local v4, "_arg3":Landroid/os/Bundle;
    goto :goto_1

    #@50
    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
