.class public abstract Landroid/content/pm/ILauncherApps$Stub;
.super Landroid/os/Binder;
.source "ILauncherApps.java"

# interfaces
.implements Landroid/content/pm/ILauncherApps;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ILauncherApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/ILauncherApps$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.ILauncherApps"

.field static final TRANSACTION_addOnAppsChangedListener:I = 0x1

.field static final TRANSACTION_getLauncherActivities:I = 0x3

.field static final TRANSACTION_isActivityEnabled:I = 0x8

.field static final TRANSACTION_isPackageEnabled:I = 0x7

.field static final TRANSACTION_removeOnAppsChangedListener:I = 0x2

.field static final TRANSACTION_resolveActivity:I = 0x4

.field static final TRANSACTION_showAppDetailsAsUser:I = 0x6

.field static final TRANSACTION_startActivityAsUser:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 18
    const-string/jumbo v0, "android.content.pm.ILauncherApps"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/content/pm/ILauncherApps$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/ILauncherApps;
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
    const-string/jumbo v1, "android.content.pm.ILauncherApps"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/content/pm/ILauncherApps;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Landroid/content/pm/ILauncherApps;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/content/pm/ILauncherApps$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/content/pm/ILauncherApps$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 12
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 221
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v11

    #@7
    return v11

    #@8
    .line 45
    :sswitch_0
    const-string/jumbo v11, "android.content.pm.ILauncherApps"

    #@b
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 46
    const/4 v11, 0x1

    #@f
    return v11

    #@10
    .line 50
    :sswitch_1
    const-string/jumbo v11, "android.content.pm.ILauncherApps"

    #@13
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19
    move-result-object v11

    #@1a
    invoke-static {v11}, Landroid/content/pm/IOnAppsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOnAppsChangedListener;

    #@1d
    move-result-object v2

    #@1e
    .line 53
    .local v2, "_arg0":Landroid/content/pm/IOnAppsChangedListener;
    invoke-virtual {p0, v2}, Landroid/content/pm/ILauncherApps$Stub;->addOnAppsChangedListener(Landroid/content/pm/IOnAppsChangedListener;)V

    #@21
    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@24
    .line 55
    const/4 v11, 0x1

    #@25
    return v11

    #@26
    .line 59
    .end local v2    # "_arg0":Landroid/content/pm/IOnAppsChangedListener;
    :sswitch_2
    const-string/jumbo v11, "android.content.pm.ILauncherApps"

    #@29
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c
    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2f
    move-result-object v11

    #@30
    invoke-static {v11}, Landroid/content/pm/IOnAppsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOnAppsChangedListener;

    #@33
    move-result-object v2

    #@34
    .line 62
    .restart local v2    # "_arg0":Landroid/content/pm/IOnAppsChangedListener;
    invoke-virtual {p0, v2}, Landroid/content/pm/ILauncherApps$Stub;->removeOnAppsChangedListener(Landroid/content/pm/IOnAppsChangedListener;)V

    #@37
    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3a
    .line 64
    const/4 v11, 0x1

    #@3b
    return v11

    #@3c
    .line 68
    .end local v2    # "_arg0":Landroid/content/pm/IOnAppsChangedListener;
    :sswitch_3
    const-string/jumbo v11, "android.content.pm.ILauncherApps"

    #@3f
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@42
    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    .line 72
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@49
    move-result v11

    #@4a
    if-eqz v11, :cond_0

    #@4c
    .line 73
    sget-object v11, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4e
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@51
    move-result-object v5

    #@52
    check-cast v5, Landroid/os/UserHandle;

    #@54
    .line 78
    :goto_0
    invoke-virtual {p0, v3, v5}, Landroid/content/pm/ILauncherApps$Stub;->getLauncherActivities(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    #@57
    move-result-object v9

    #@58
    .line 79
    .local v9, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@5b
    .line 80
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@5e
    .line 81
    const/4 v11, 0x1

    #@5f
    return v11

    #@60
    .line 76
    .end local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    const/4 v5, 0x0

    #@61
    .local v5, "_arg1":Landroid/os/UserHandle;
    goto :goto_0

    #@62
    .line 85
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Landroid/os/UserHandle;
    :sswitch_4
    const-string/jumbo v11, "android.content.pm.ILauncherApps"

    #@65
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@68
    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@6b
    move-result v11

    #@6c
    if-eqz v11, :cond_1

    #@6e
    .line 88
    sget-object v11, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@70
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@73
    move-result-object v1

    #@74
    check-cast v1, Landroid/content/Intent;

    #@76
    .line 94
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@79
    move-result v11

    #@7a
    if-eqz v11, :cond_2

    #@7c
    .line 95
    sget-object v11, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7e
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@81
    move-result-object v5

    #@82
    check-cast v5, Landroid/os/UserHandle;

    #@84
    .line 100
    :goto_2
    invoke-virtual {p0, v1, v5}, Landroid/content/pm/ILauncherApps$Stub;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/ResolveInfo;

    #@87
    move-result-object v8

    #@88
    .line 101
    .local v8, "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@8b
    .line 102
    if-eqz v8, :cond_3

    #@8d
    .line 103
    const/4 v11, 0x1

    #@8e
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@91
    .line 104
    const/4 v11, 0x1

    #@92
    invoke-virtual {v8, p3, v11}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@95
    .line 109
    :goto_3
    const/4 v11, 0x1

    #@96
    return v11

    #@97
    .line 91
    .end local v8    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_1
    const/4 v1, 0x0

    #@98
    .local v1, "_arg0":Landroid/content/Intent;
    goto :goto_1

    #@99
    .line 98
    .end local v1    # "_arg0":Landroid/content/Intent;
    :cond_2
    const/4 v5, 0x0

    #@9a
    .restart local v5    # "_arg1":Landroid/os/UserHandle;
    goto :goto_2

    #@9b
    .line 107
    .end local v5    # "_arg1":Landroid/os/UserHandle;
    .restart local v8    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_3
    const/4 v11, 0x0

    #@9c
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@9f
    goto :goto_3

    #@a0
    .line 113
    .end local v8    # "_result":Landroid/content/pm/ResolveInfo;
    :sswitch_5
    const-string/jumbo v11, "android.content.pm.ILauncherApps"

    #@a3
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a6
    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a9
    move-result v11

    #@aa
    if-eqz v11, :cond_4

    #@ac
    .line 116
    sget-object v11, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ae
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@b1
    move-result-object v0

    #@b2
    check-cast v0, Landroid/content/ComponentName;

    #@b4
    .line 122
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@b7
    move-result v11

    #@b8
    if-eqz v11, :cond_5

    #@ba
    .line 123
    sget-object v11, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@bc
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@bf
    move-result-object v4

    #@c0
    check-cast v4, Landroid/graphics/Rect;

    #@c2
    .line 129
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@c5
    move-result v11

    #@c6
    if-eqz v11, :cond_6

    #@c8
    .line 130
    sget-object v11, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ca
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@cd
    move-result-object v6

    #@ce
    check-cast v6, Landroid/os/Bundle;

    #@d0
    .line 136
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@d3
    move-result v11

    #@d4
    if-eqz v11, :cond_7

    #@d6
    .line 137
    sget-object v11, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@d8
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@db
    move-result-object v7

    #@dc
    check-cast v7, Landroid/os/UserHandle;

    #@de
    .line 142
    :goto_7
    invoke-virtual {p0, v0, v4, v6, v7}, Landroid/content/pm/ILauncherApps$Stub;->startActivityAsUser(Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    #@e1
    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@e4
    .line 144
    const/4 v11, 0x1

    #@e5
    return v11

    #@e6
    .line 119
    :cond_4
    const/4 v0, 0x0

    #@e7
    .local v0, "_arg0":Landroid/content/ComponentName;
    goto :goto_4

    #@e8
    .line 126
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :cond_5
    const/4 v4, 0x0

    #@e9
    .local v4, "_arg1":Landroid/graphics/Rect;
    goto :goto_5

    #@ea
    .line 133
    .end local v4    # "_arg1":Landroid/graphics/Rect;
    :cond_6
    const/4 v6, 0x0

    #@eb
    .local v6, "_arg2":Landroid/os/Bundle;
    goto :goto_6

    #@ec
    .line 140
    .end local v6    # "_arg2":Landroid/os/Bundle;
    :cond_7
    const/4 v7, 0x0

    #@ed
    .local v7, "_arg3":Landroid/os/UserHandle;
    goto :goto_7

    #@ee
    .line 148
    .end local v7    # "_arg3":Landroid/os/UserHandle;
    :sswitch_6
    const-string/jumbo v11, "android.content.pm.ILauncherApps"

    #@f1
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f4
    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@f7
    move-result v11

    #@f8
    if-eqz v11, :cond_8

    #@fa
    .line 151
    sget-object v11, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@fc
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ff
    move-result-object v0

    #@100
    check-cast v0, Landroid/content/ComponentName;

    #@102
    .line 157
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@105
    move-result v11

    #@106
    if-eqz v11, :cond_9

    #@108
    .line 158
    sget-object v11, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@10a
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@10d
    move-result-object v4

    #@10e
    check-cast v4, Landroid/graphics/Rect;

    #@110
    .line 164
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@113
    move-result v11

    #@114
    if-eqz v11, :cond_a

    #@116
    .line 165
    sget-object v11, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@118
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@11b
    move-result-object v6

    #@11c
    check-cast v6, Landroid/os/Bundle;

    #@11e
    .line 171
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@121
    move-result v11

    #@122
    if-eqz v11, :cond_b

    #@124
    .line 172
    sget-object v11, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@126
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@129
    move-result-object v7

    #@12a
    check-cast v7, Landroid/os/UserHandle;

    #@12c
    .line 177
    :goto_b
    invoke-virtual {p0, v0, v4, v6, v7}, Landroid/content/pm/ILauncherApps$Stub;->showAppDetailsAsUser(Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    #@12f
    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@132
    .line 179
    const/4 v11, 0x1

    #@133
    return v11

    #@134
    .line 154
    :cond_8
    const/4 v0, 0x0

    #@135
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_8

    #@136
    .line 161
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :cond_9
    const/4 v4, 0x0

    #@137
    .restart local v4    # "_arg1":Landroid/graphics/Rect;
    goto :goto_9

    #@138
    .line 168
    .end local v4    # "_arg1":Landroid/graphics/Rect;
    :cond_a
    const/4 v6, 0x0

    #@139
    .restart local v6    # "_arg2":Landroid/os/Bundle;
    goto :goto_a

    #@13a
    .line 175
    .end local v6    # "_arg2":Landroid/os/Bundle;
    :cond_b
    const/4 v7, 0x0

    #@13b
    .restart local v7    # "_arg3":Landroid/os/UserHandle;
    goto :goto_b

    #@13c
    .line 183
    .end local v7    # "_arg3":Landroid/os/UserHandle;
    :sswitch_7
    const-string/jumbo v11, "android.content.pm.ILauncherApps"

    #@13f
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@142
    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@145
    move-result-object v3

    #@146
    .line 187
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@149
    move-result v11

    #@14a
    if-eqz v11, :cond_c

    #@14c
    .line 188
    sget-object v11, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@14e
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@151
    move-result-object v5

    #@152
    check-cast v5, Landroid/os/UserHandle;

    #@154
    .line 193
    :goto_c
    invoke-virtual {p0, v3, v5}, Landroid/content/pm/ILauncherApps$Stub;->isPackageEnabled(Ljava/lang/String;Landroid/os/UserHandle;)Z

    #@157
    move-result v10

    #@158
    .line 194
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@15b
    .line 195
    if-eqz v10, :cond_d

    #@15d
    const/4 v11, 0x1

    #@15e
    :goto_d
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@161
    .line 196
    const/4 v11, 0x1

    #@162
    return v11

    #@163
    .line 191
    .end local v10    # "_result":Z
    :cond_c
    const/4 v5, 0x0

    #@164
    .restart local v5    # "_arg1":Landroid/os/UserHandle;
    goto :goto_c

    #@165
    .line 195
    .end local v5    # "_arg1":Landroid/os/UserHandle;
    .restart local v10    # "_result":Z
    :cond_d
    const/4 v11, 0x0

    #@166
    goto :goto_d

    #@167
    .line 200
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":Z
    :sswitch_8
    const-string/jumbo v11, "android.content.pm.ILauncherApps"

    #@16a
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16d
    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@170
    move-result v11

    #@171
    if-eqz v11, :cond_e

    #@173
    .line 203
    sget-object v11, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@175
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@178
    move-result-object v0

    #@179
    check-cast v0, Landroid/content/ComponentName;

    #@17b
    .line 209
    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@17e
    move-result v11

    #@17f
    if-eqz v11, :cond_f

    #@181
    .line 210
    sget-object v11, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@183
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@186
    move-result-object v5

    #@187
    check-cast v5, Landroid/os/UserHandle;

    #@189
    .line 215
    :goto_f
    invoke-virtual {p0, v0, v5}, Landroid/content/pm/ILauncherApps$Stub;->isActivityEnabled(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    #@18c
    move-result v10

    #@18d
    .line 216
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@190
    .line 217
    if-eqz v10, :cond_10

    #@192
    const/4 v11, 0x1

    #@193
    :goto_10
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@196
    .line 218
    const/4 v11, 0x1

    #@197
    return v11

    #@198
    .line 206
    .end local v10    # "_result":Z
    :cond_e
    const/4 v0, 0x0

    #@199
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e

    #@19a
    .line 213
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :cond_f
    const/4 v5, 0x0

    #@19b
    .restart local v5    # "_arg1":Landroid/os/UserHandle;
    goto :goto_f

    #@19c
    .line 217
    .end local v5    # "_arg1":Landroid/os/UserHandle;
    .restart local v10    # "_result":Z
    :cond_10
    const/4 v11, 0x0

    #@19d
    goto :goto_10

    #@19e
    .line 41
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
