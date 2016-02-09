.class public abstract Landroid/content/pm/IOnAppsChangedListener$Stub;
.super Landroid/os/Binder;
.source "IOnAppsChangedListener.java"

# interfaces
.implements Landroid/content/pm/IOnAppsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IOnAppsChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IOnAppsChangedListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IOnAppsChangedListener"

.field static final TRANSACTION_onPackageAdded:I = 0x2

.field static final TRANSACTION_onPackageChanged:I = 0x3

.field static final TRANSACTION_onPackageRemoved:I = 0x1

.field static final TRANSACTION_onPackagesAvailable:I = 0x4

.field static final TRANSACTION_onPackagesUnavailable:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 18
    const-string/jumbo v0, "android.content.pm.IOnAppsChangedListener"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IOnAppsChangedListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOnAppsChangedListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 26
    if-nez p0, :cond_0

    #@3
    .line 27
    return-object v1

    #@4
    .line 29
    :cond_0
    const-string/jumbo v1, "android.content.pm.IOnAppsChangedListener"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/content/pm/IOnAppsChangedListener;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Landroid/content/pm/IOnAppsChangedListener;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/content/pm/IOnAppsChangedListener$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/content/pm/IOnAppsChangedListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v5, 0x1

    #@1
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 128
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v4

    #@8
    return v4

    #@9
    .line 45
    :sswitch_0
    const-string/jumbo v4, "android.content.pm.IOnAppsChangedListener"

    #@c
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 46
    return v5

    #@10
    .line 50
    :sswitch_1
    const-string/jumbo v4, "android.content.pm.IOnAppsChangedListener"

    #@13
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_0

    #@1c
    .line 53
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Landroid/os/UserHandle;

    #@24
    .line 59
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    .line 60
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackageRemoved(Landroid/os/UserHandle;Ljava/lang/String;)V

    #@2b
    .line 61
    return v5

    #@2c
    .line 56
    .end local v1    # "_arg1":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    #@2d
    .local v0, "_arg0":Landroid/os/UserHandle;
    goto :goto_0

    #@2e
    .line 65
    .end local v0    # "_arg0":Landroid/os/UserHandle;
    :sswitch_2
    const-string/jumbo v4, "android.content.pm.IOnAppsChangedListener"

    #@31
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@34
    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@37
    move-result v4

    #@38
    if-eqz v4, :cond_1

    #@3a
    .line 68
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3c
    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3f
    move-result-object v0

    #@40
    check-cast v0, Landroid/os/UserHandle;

    #@42
    .line 74
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    .line 75
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackageAdded(Landroid/os/UserHandle;Ljava/lang/String;)V

    #@49
    .line 76
    return v5

    #@4a
    .line 71
    .end local v1    # "_arg1":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    #@4b
    .restart local v0    # "_arg0":Landroid/os/UserHandle;
    goto :goto_1

    #@4c
    .line 80
    .end local v0    # "_arg0":Landroid/os/UserHandle;
    :sswitch_3
    const-string/jumbo v4, "android.content.pm.IOnAppsChangedListener"

    #@4f
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@52
    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@55
    move-result v4

    #@56
    if-eqz v4, :cond_2

    #@58
    .line 83
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5a
    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5d
    move-result-object v0

    #@5e
    check-cast v0, Landroid/os/UserHandle;

    #@60
    .line 89
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@63
    move-result-object v1

    #@64
    .line 90
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackageChanged(Landroid/os/UserHandle;Ljava/lang/String;)V

    #@67
    .line 91
    return v5

    #@68
    .line 86
    .end local v1    # "_arg1":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    #@69
    .restart local v0    # "_arg0":Landroid/os/UserHandle;
    goto :goto_2

    #@6a
    .line 95
    .end local v0    # "_arg0":Landroid/os/UserHandle;
    :sswitch_4
    const-string/jumbo v4, "android.content.pm.IOnAppsChangedListener"

    #@6d
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@70
    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@73
    move-result v4

    #@74
    if-eqz v4, :cond_3

    #@76
    .line 98
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@78
    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@7b
    move-result-object v0

    #@7c
    check-cast v0, Landroid/os/UserHandle;

    #@7e
    .line 104
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@81
    move-result-object v2

    #@82
    .line 106
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@85
    move-result v4

    #@86
    if-eqz v4, :cond_4

    #@88
    const/4 v3, 0x1

    #@89
    .line 107
    .local v3, "_arg2":Z
    :goto_4
    invoke-virtual {p0, v0, v2, v3}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackagesAvailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V

    #@8c
    .line 108
    return v5

    #@8d
    .line 101
    .end local v2    # "_arg1":[Ljava/lang/String;
    .end local v3    # "_arg2":Z
    :cond_3
    const/4 v0, 0x0

    #@8e
    .restart local v0    # "_arg0":Landroid/os/UserHandle;
    goto :goto_3

    #@8f
    .line 106
    .end local v0    # "_arg0":Landroid/os/UserHandle;
    .restart local v2    # "_arg1":[Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    #@90
    .restart local v3    # "_arg2":Z
    goto :goto_4

    #@91
    .line 112
    .end local v2    # "_arg1":[Ljava/lang/String;
    .end local v3    # "_arg2":Z
    :sswitch_5
    const-string/jumbo v4, "android.content.pm.IOnAppsChangedListener"

    #@94
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@97
    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@9a
    move-result v4

    #@9b
    if-eqz v4, :cond_5

    #@9d
    .line 115
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@9f
    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@a2
    move-result-object v0

    #@a3
    check-cast v0, Landroid/os/UserHandle;

    #@a5
    .line 121
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@a8
    move-result-object v2

    #@a9
    .line 123
    .restart local v2    # "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@ac
    move-result v4

    #@ad
    if-eqz v4, :cond_6

    #@af
    const/4 v3, 0x1

    #@b0
    .line 124
    .restart local v3    # "_arg2":Z
    :goto_6
    invoke-virtual {p0, v0, v2, v3}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackagesUnavailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V

    #@b3
    .line 125
    return v5

    #@b4
    .line 118
    .end local v2    # "_arg1":[Ljava/lang/String;
    .end local v3    # "_arg2":Z
    :cond_5
    const/4 v0, 0x0

    #@b5
    .restart local v0    # "_arg0":Landroid/os/UserHandle;
    goto :goto_5

    #@b6
    .line 123
    .end local v0    # "_arg0":Landroid/os/UserHandle;
    .restart local v2    # "_arg1":[Ljava/lang/String;
    :cond_6
    const/4 v3, 0x0

    #@b7
    .restart local v3    # "_arg2":Z
    goto :goto_6

    #@b8
    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
