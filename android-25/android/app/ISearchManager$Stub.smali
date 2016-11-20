.class public abstract Landroid/app/ISearchManager$Stub;
.super Landroid/os/Binder;
.source "ISearchManager.java"

# interfaces
.implements Landroid/app/ISearchManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ISearchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ISearchManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.ISearchManager"

.field static final TRANSACTION_getGlobalSearchActivities:I = 0x3

.field static final TRANSACTION_getGlobalSearchActivity:I = 0x4

.field static final TRANSACTION_getSearchableInfo:I = 0x1

.field static final TRANSACTION_getSearchablesInGlobalSearch:I = 0x2

.field static final TRANSACTION_getWebSearchActivity:I = 0x5

.field static final TRANSACTION_launchAssist:I = 0x6

.field static final TRANSACTION_launchLegacyAssist:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "android.app.ISearchManager"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/app/ISearchManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/ISearchManager;
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
    const-string/jumbo v1, "android.app.ISearchManager"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/app/ISearchManager;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Landroid/app/ISearchManager;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/ISearchManager$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/app/ISearchManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 11
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
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 145
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v10

    #@7
    return v10

    #@8
    .line 43
    :sswitch_0
    const-string/jumbo v10, "android.app.ISearchManager"

    #@b
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 44
    const/4 v10, 0x1

    #@f
    return v10

    #@10
    .line 48
    :sswitch_1
    const-string/jumbo v10, "android.app.ISearchManager"

    #@13
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v10

    #@1a
    if-eqz v10, :cond_0

    #@1c
    .line 51
    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Landroid/content/ComponentName;

    #@24
    .line 56
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/ISearchManager$Stub;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    #@27
    move-result-object v5

    #@28
    .line 57
    .local v5, "_result":Landroid/app/SearchableInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b
    .line 58
    if-eqz v5, :cond_1

    #@2d
    .line 59
    const/4 v10, 0x1

    #@2e
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@31
    .line 60
    const/4 v10, 0x1

    #@32
    invoke-virtual {v5, p3, v10}, Landroid/app/SearchableInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@35
    .line 65
    :goto_1
    const/4 v10, 0x1

    #@36
    return v10

    #@37
    .line 54
    .end local v5    # "_result":Landroid/app/SearchableInfo;
    :cond_0
    const/4 v0, 0x0

    #@38
    .local v0, "_arg0":Landroid/content/ComponentName;
    goto :goto_0

    #@39
    .line 63
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .restart local v5    # "_result":Landroid/app/SearchableInfo;
    :cond_1
    const/4 v10, 0x0

    #@3a
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@3d
    goto :goto_1

    #@3e
    .line 69
    .end local v5    # "_result":Landroid/app/SearchableInfo;
    :sswitch_2
    const-string/jumbo v10, "android.app.ISearchManager"

    #@41
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@44
    .line 70
    invoke-virtual {p0}, Landroid/app/ISearchManager$Stub;->getSearchablesInGlobalSearch()Ljava/util/List;

    #@47
    move-result-object v7

    #@48
    .line 71
    .local v7, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/SearchableInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@4b
    .line 72
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@4e
    .line 73
    const/4 v10, 0x1

    #@4f
    return v10

    #@50
    .line 77
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/SearchableInfo;>;"
    :sswitch_3
    const-string/jumbo v10, "android.app.ISearchManager"

    #@53
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@56
    .line 78
    invoke-virtual {p0}, Landroid/app/ISearchManager$Stub;->getGlobalSearchActivities()Ljava/util/List;

    #@59
    move-result-object v8

    #@5a
    .line 79
    .local v8, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@5d
    .line 80
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@60
    .line 81
    const/4 v10, 0x1

    #@61
    return v10

    #@62
    .line 85
    .end local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :sswitch_4
    const-string/jumbo v10, "android.app.ISearchManager"

    #@65
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@68
    .line 86
    invoke-virtual {p0}, Landroid/app/ISearchManager$Stub;->getGlobalSearchActivity()Landroid/content/ComponentName;

    #@6b
    move-result-object v6

    #@6c
    .line 87
    .local v6, "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@6f
    .line 88
    if-eqz v6, :cond_2

    #@71
    .line 89
    const/4 v10, 0x1

    #@72
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@75
    .line 90
    const/4 v10, 0x1

    #@76
    invoke-virtual {v6, p3, v10}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@79
    .line 95
    :goto_2
    const/4 v10, 0x1

    #@7a
    return v10

    #@7b
    .line 93
    :cond_2
    const/4 v10, 0x0

    #@7c
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@7f
    goto :goto_2

    #@80
    .line 99
    .end local v6    # "_result":Landroid/content/ComponentName;
    :sswitch_5
    const-string/jumbo v10, "android.app.ISearchManager"

    #@83
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@86
    .line 100
    invoke-virtual {p0}, Landroid/app/ISearchManager$Stub;->getWebSearchActivity()Landroid/content/ComponentName;

    #@89
    move-result-object v6

    #@8a
    .line 101
    .restart local v6    # "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@8d
    .line 102
    if-eqz v6, :cond_3

    #@8f
    .line 103
    const/4 v10, 0x1

    #@90
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@93
    .line 104
    const/4 v10, 0x1

    #@94
    invoke-virtual {v6, p3, v10}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@97
    .line 109
    :goto_3
    const/4 v10, 0x1

    #@98
    return v10

    #@99
    .line 107
    :cond_3
    const/4 v10, 0x0

    #@9a
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@9d
    goto :goto_3

    #@9e
    .line 113
    .end local v6    # "_result":Landroid/content/ComponentName;
    :sswitch_6
    const-string/jumbo v10, "android.app.ISearchManager"

    #@a1
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a4
    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a7
    move-result v10

    #@a8
    if-eqz v10, :cond_4

    #@aa
    .line 116
    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ac
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@af
    move-result-object v1

    #@b0
    check-cast v1, Landroid/os/Bundle;

    #@b2
    .line 121
    :goto_4
    invoke-virtual {p0, v1}, Landroid/app/ISearchManager$Stub;->launchAssist(Landroid/os/Bundle;)V

    #@b5
    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@b8
    .line 123
    const/4 v10, 0x1

    #@b9
    return v10

    #@ba
    .line 119
    :cond_4
    const/4 v1, 0x0

    #@bb
    .local v1, "_arg0":Landroid/os/Bundle;
    goto :goto_4

    #@bc
    .line 127
    .end local v1    # "_arg0":Landroid/os/Bundle;
    :sswitch_7
    const-string/jumbo v10, "android.app.ISearchManager"

    #@bf
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c2
    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c5
    move-result-object v2

    #@c6
    .line 131
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@c9
    move-result v3

    #@ca
    .line 133
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@cd
    move-result v10

    #@ce
    if-eqz v10, :cond_5

    #@d0
    .line 134
    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@d2
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@d5
    move-result-object v4

    #@d6
    check-cast v4, Landroid/os/Bundle;

    #@d8
    .line 139
    :goto_5
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/ISearchManager$Stub;->launchLegacyAssist(Ljava/lang/String;ILandroid/os/Bundle;)Z

    #@db
    move-result v9

    #@dc
    .line 140
    .local v9, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@df
    .line 141
    if-eqz v9, :cond_6

    #@e1
    const/4 v10, 0x1

    #@e2
    :goto_6
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@e5
    .line 142
    const/4 v10, 0x1

    #@e6
    return v10

    #@e7
    .line 137
    .end local v9    # "_result":Z
    :cond_5
    const/4 v4, 0x0

    #@e8
    .local v4, "_arg2":Landroid/os/Bundle;
    goto :goto_5

    #@e9
    .line 141
    .end local v4    # "_arg2":Landroid/os/Bundle;
    .restart local v9    # "_result":Z
    :cond_6
    const/4 v10, 0x0

    #@ea
    goto :goto_6

    #@eb
    .line 39
    nop

    #@ec
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
