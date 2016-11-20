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

.field static final TRANSACTION_onPackagesSuspended:I = 0x6

.field static final TRANSACTION_onPackagesUnavailable:I = 0x5

.field static final TRANSACTION_onPackagesUnsuspended:I = 0x7

.field static final TRANSACTION_onShortcutChanged:I = 0x8


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
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 180
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v5

    #@9
    return v5

    #@a
    .line 45
    :sswitch_0
    const-string/jumbo v6, "android.content.pm.IOnAppsChangedListener"

    #@d
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 46
    return v5

    #@11
    .line 50
    :sswitch_1
    const-string/jumbo v6, "android.content.pm.IOnAppsChangedListener"

    #@14
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v6

    #@1b
    if-eqz v6, :cond_0

    #@1d
    .line 53
    sget-object v6, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1f
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Landroid/os/UserHandle;

    #@25
    .line 59
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    .line 60
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackageRemoved(Landroid/os/UserHandle;Ljava/lang/String;)V

    #@2c
    .line 61
    return v5

    #@2d
    .line 56
    .end local v1    # "_arg1":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    #@2e
    .local v0, "_arg0":Landroid/os/UserHandle;
    goto :goto_0

    #@2f
    .line 65
    .end local v0    # "_arg0":Landroid/os/UserHandle;
    :sswitch_2
    const-string/jumbo v6, "android.content.pm.IOnAppsChangedListener"

    #@32
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@35
    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@38
    move-result v6

    #@39
    if-eqz v6, :cond_1

    #@3b
    .line 68
    sget-object v6, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3d
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@40
    move-result-object v0

    #@41
    check-cast v0, Landroid/os/UserHandle;

    #@43
    .line 74
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    .line 75
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackageAdded(Landroid/os/UserHandle;Ljava/lang/String;)V

    #@4a
    .line 76
    return v5

    #@4b
    .line 71
    .end local v1    # "_arg1":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    #@4c
    .restart local v0    # "_arg0":Landroid/os/UserHandle;
    goto :goto_1

    #@4d
    .line 80
    .end local v0    # "_arg0":Landroid/os/UserHandle;
    :sswitch_3
    const-string/jumbo v6, "android.content.pm.IOnAppsChangedListener"

    #@50
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@53
    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@56
    move-result v6

    #@57
    if-eqz v6, :cond_2

    #@59
    .line 83
    sget-object v6, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5b
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5e
    move-result-object v0

    #@5f
    check-cast v0, Landroid/os/UserHandle;

    #@61
    .line 89
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@64
    move-result-object v1

    #@65
    .line 90
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackageChanged(Landroid/os/UserHandle;Ljava/lang/String;)V

    #@68
    .line 91
    return v5

    #@69
    .line 86
    .end local v1    # "_arg1":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    #@6a
    .restart local v0    # "_arg0":Landroid/os/UserHandle;
    goto :goto_2

    #@6b
    .line 95
    .end local v0    # "_arg0":Landroid/os/UserHandle;
    :sswitch_4
    const-string/jumbo v6, "android.content.pm.IOnAppsChangedListener"

    #@6e
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@71
    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@74
    move-result v6

    #@75
    if-eqz v6, :cond_4

    #@77
    .line 98
    sget-object v6, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@79
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@7c
    move-result-object v0

    #@7d
    check-cast v0, Landroid/os/UserHandle;

    #@7f
    .line 104
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@82
    move-result-object v2

    #@83
    .line 106
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@86
    move-result v6

    #@87
    if-eqz v6, :cond_3

    #@89
    move v4, v5

    #@8a
    .line 107
    .local v4, "_arg2":Z
    :cond_3
    invoke-virtual {p0, v0, v2, v4}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackagesAvailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V

    #@8d
    .line 108
    return v5

    #@8e
    .line 101
    .end local v2    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_arg2":Z
    :cond_4
    const/4 v0, 0x0

    #@8f
    .restart local v0    # "_arg0":Landroid/os/UserHandle;
    goto :goto_3

    #@90
    .line 112
    .end local v0    # "_arg0":Landroid/os/UserHandle;
    :sswitch_5
    const-string/jumbo v6, "android.content.pm.IOnAppsChangedListener"

    #@93
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@96
    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@99
    move-result v6

    #@9a
    if-eqz v6, :cond_6

    #@9c
    .line 115
    sget-object v6, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@9e
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@a1
    move-result-object v0

    #@a2
    check-cast v0, Landroid/os/UserHandle;

    #@a4
    .line 121
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@a7
    move-result-object v2

    #@a8
    .line 123
    .restart local v2    # "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@ab
    move-result v6

    #@ac
    if-eqz v6, :cond_5

    #@ae
    move v4, v5

    #@af
    .line 124
    .restart local v4    # "_arg2":Z
    :cond_5
    invoke-virtual {p0, v0, v2, v4}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackagesUnavailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V

    #@b2
    .line 125
    return v5

    #@b3
    .line 118
    .end local v2    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_arg2":Z
    :cond_6
    const/4 v0, 0x0

    #@b4
    .restart local v0    # "_arg0":Landroid/os/UserHandle;
    goto :goto_4

    #@b5
    .line 129
    .end local v0    # "_arg0":Landroid/os/UserHandle;
    :sswitch_6
    const-string/jumbo v6, "android.content.pm.IOnAppsChangedListener"

    #@b8
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bb
    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@be
    move-result v6

    #@bf
    if-eqz v6, :cond_7

    #@c1
    .line 132
    sget-object v6, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c3
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c6
    move-result-object v0

    #@c7
    check-cast v0, Landroid/os/UserHandle;

    #@c9
    .line 138
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@cc
    move-result-object v2

    #@cd
    .line 139
    .restart local v2    # "_arg1":[Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackagesSuspended(Landroid/os/UserHandle;[Ljava/lang/String;)V

    #@d0
    .line 140
    return v5

    #@d1
    .line 135
    .end local v2    # "_arg1":[Ljava/lang/String;
    :cond_7
    const/4 v0, 0x0

    #@d2
    .restart local v0    # "_arg0":Landroid/os/UserHandle;
    goto :goto_5

    #@d3
    .line 144
    .end local v0    # "_arg0":Landroid/os/UserHandle;
    :sswitch_7
    const-string/jumbo v6, "android.content.pm.IOnAppsChangedListener"

    #@d6
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d9
    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@dc
    move-result v6

    #@dd
    if-eqz v6, :cond_8

    #@df
    .line 147
    sget-object v6, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e1
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@e4
    move-result-object v0

    #@e5
    check-cast v0, Landroid/os/UserHandle;

    #@e7
    .line 153
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@ea
    move-result-object v2

    #@eb
    .line 154
    .restart local v2    # "_arg1":[Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackagesUnsuspended(Landroid/os/UserHandle;[Ljava/lang/String;)V

    #@ee
    .line 155
    return v5

    #@ef
    .line 150
    .end local v2    # "_arg1":[Ljava/lang/String;
    :cond_8
    const/4 v0, 0x0

    #@f0
    .restart local v0    # "_arg0":Landroid/os/UserHandle;
    goto :goto_6

    #@f1
    .line 159
    .end local v0    # "_arg0":Landroid/os/UserHandle;
    :sswitch_8
    const-string/jumbo v6, "android.content.pm.IOnAppsChangedListener"

    #@f4
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f7
    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@fa
    move-result v6

    #@fb
    if-eqz v6, :cond_9

    #@fd
    .line 162
    sget-object v6, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ff
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@102
    move-result-object v0

    #@103
    check-cast v0, Landroid/os/UserHandle;

    #@105
    .line 168
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@108
    move-result-object v1

    #@109
    .line 170
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@10c
    move-result v6

    #@10d
    if-eqz v6, :cond_a

    #@10f
    .line 171
    sget-object v6, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    #@111
    invoke-interface {v6, p2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@114
    move-result-object v3

    #@115
    check-cast v3, Landroid/content/pm/ParceledListSlice;

    #@117
    .line 176
    :goto_8
    invoke-virtual {p0, v0, v1, v3}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onShortcutChanged(Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    #@11a
    .line 177
    return v5

    #@11b
    .line 165
    .end local v1    # "_arg1":Ljava/lang/String;
    :cond_9
    const/4 v0, 0x0

    #@11c
    .restart local v0    # "_arg0":Landroid/os/UserHandle;
    goto :goto_7

    #@11d
    .line 174
    .end local v0    # "_arg0":Landroid/os/UserHandle;
    .restart local v1    # "_arg1":Ljava/lang/String;
    :cond_a
    const/4 v3, 0x0

    #@11e
    .local v3, "_arg2":Landroid/content/pm/ParceledListSlice;
    goto :goto_8

    #@11f
    .line 41
    nop

    #@120
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
