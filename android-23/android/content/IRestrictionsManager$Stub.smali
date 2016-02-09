.class public abstract Landroid/content/IRestrictionsManager$Stub;
.super Landroid/os/Binder;
.source "IRestrictionsManager.java"

# interfaces
.implements Landroid/content/IRestrictionsManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IRestrictionsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IRestrictionsManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.IRestrictionsManager"

.field static final TRANSACTION_createLocalApprovalIntent:I = 0x5

.field static final TRANSACTION_getApplicationRestrictions:I = 0x1

.field static final TRANSACTION_hasRestrictionsProvider:I = 0x2

.field static final TRANSACTION_notifyPermissionResponse:I = 0x4

.field static final TRANSACTION_requestPermission:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 19
    const-string/jumbo v0, "android.content.IRestrictionsManager"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/content/IRestrictionsManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/IRestrictionsManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 27
    if-nez p0, :cond_0

    #@3
    .line 28
    return-object v1

    #@4
    .line 30
    :cond_0
    const-string/jumbo v1, "android.content.IRestrictionsManager"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/content/IRestrictionsManager;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 32
    check-cast v0, Landroid/content/IRestrictionsManager;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/content/IRestrictionsManager$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/content/IRestrictionsManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 38
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
    const/4 v8, 0x0

    #@1
    const/4 v9, 0x1

    #@2
    .line 42
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 124
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v8

    #@9
    return v8

    #@a
    .line 46
    :sswitch_0
    const-string/jumbo v8, "android.content.IRestrictionsManager"

    #@d
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 47
    return v9

    #@11
    .line 51
    :sswitch_1
    const-string/jumbo v10, "android.content.IRestrictionsManager"

    #@14
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    .line 54
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/content/IRestrictionsManager$Stub;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    #@1e
    move-result-object v6

    #@1f
    .line 55
    .local v6, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@22
    .line 56
    if-eqz v6, :cond_0

    #@24
    .line 57
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 58
    invoke-virtual {v6, p3, v9}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@2a
    .line 63
    :goto_0
    return v9

    #@2b
    .line 61
    :cond_0
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@2e
    goto :goto_0

    #@2f
    .line 67
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Landroid/os/Bundle;
    :sswitch_2
    const-string/jumbo v10, "android.content.IRestrictionsManager"

    #@32
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@35
    .line 68
    invoke-virtual {p0}, Landroid/content/IRestrictionsManager$Stub;->hasRestrictionsProvider()Z

    #@38
    move-result v7

    #@39
    .line 69
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3c
    .line 70
    if-eqz v7, :cond_1

    #@3e
    move v8, v9

    #@3f
    :cond_1
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@42
    .line 71
    return v9

    #@43
    .line 75
    .end local v7    # "_result":Z
    :sswitch_3
    const-string/jumbo v8, "android.content.IRestrictionsManager"

    #@46
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@49
    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4c
    move-result-object v0

    #@4d
    .line 79
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@50
    move-result-object v2

    #@51
    .line 81
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@54
    move-result-object v3

    #@55
    .line 83
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@58
    move-result v8

    #@59
    if-eqz v8, :cond_2

    #@5b
    .line 84
    sget-object v8, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5d
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@60
    move-result-object v4

    #@61
    check-cast v4, Landroid/os/PersistableBundle;

    #@63
    .line 89
    :goto_1
    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/content/IRestrictionsManager$Stub;->requestPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    #@66
    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@69
    .line 91
    return v9

    #@6a
    .line 87
    :cond_2
    const/4 v4, 0x0

    #@6b
    .local v4, "_arg3":Landroid/os/PersistableBundle;
    goto :goto_1

    #@6c
    .line 95
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/os/PersistableBundle;
    :sswitch_4
    const-string/jumbo v8, "android.content.IRestrictionsManager"

    #@6f
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@72
    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@75
    move-result-object v0

    #@76
    .line 99
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@79
    move-result v8

    #@7a
    if-eqz v8, :cond_3

    #@7c
    .line 100
    sget-object v8, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7e
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@81
    move-result-object v1

    #@82
    check-cast v1, Landroid/os/PersistableBundle;

    #@84
    .line 105
    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/content/IRestrictionsManager$Stub;->notifyPermissionResponse(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    #@87
    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@8a
    .line 107
    return v9

    #@8b
    .line 103
    :cond_3
    const/4 v1, 0x0

    #@8c
    .local v1, "_arg1":Landroid/os/PersistableBundle;
    goto :goto_2

    #@8d
    .line 111
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/PersistableBundle;
    :sswitch_5
    const-string/jumbo v10, "android.content.IRestrictionsManager"

    #@90
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@93
    .line 112
    invoke-virtual {p0}, Landroid/content/IRestrictionsManager$Stub;->createLocalApprovalIntent()Landroid/content/Intent;

    #@96
    move-result-object v5

    #@97
    .line 113
    .local v5, "_result":Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@9a
    .line 114
    if-eqz v5, :cond_4

    #@9c
    .line 115
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@9f
    .line 116
    invoke-virtual {v5, p3, v9}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@a2
    .line 121
    :goto_3
    return v9

    #@a3
    .line 119
    :cond_4
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@a6
    goto :goto_3

    #@a7
    .line 42
    nop

    #@a8
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
