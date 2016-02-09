.class public abstract Landroid/app/IActivityController$Stub;
.super Landroid/os/Binder;
.source "IActivityController.java"

# interfaces
.implements Landroid/app/IActivityController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IActivityController$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IActivityController"

.field static final TRANSACTION_activityResuming:I = 0x2

.field static final TRANSACTION_activityStarting:I = 0x1

.field static final TRANSACTION_appCrashed:I = 0x3

.field static final TRANSACTION_appEarlyNotResponding:I = 0x4

.field static final TRANSACTION_appNotResponding:I = 0x5

.field static final TRANSACTION_systemNotResponding:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.app.IActivityController"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/app/IActivityController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;
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
    const-string/jumbo v1, "android.app.IActivityController"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/app/IActivityController;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/app/IActivityController;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/IActivityController$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/app/IActivityController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 136
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v1

    #@7
    return v1

    #@8
    .line 47
    :sswitch_0
    const-string/jumbo v1, "android.app.IActivityController"

    #@b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 48
    const/4 v1, 0x1

    #@f
    return v1

    #@10
    .line 52
    :sswitch_1
    const-string/jumbo v1, "android.app.IActivityController"

    #@13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_0

    #@1c
    .line 55
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Landroid/content/Intent;

    #@24
    .line 61
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@27
    move-result-object v9

    #@28
    .line 62
    .local v9, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v9}, Landroid/app/IActivityController$Stub;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z

    #@2b
    move-result v11

    #@2c
    .line 63
    .local v11, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2f
    .line 64
    if-eqz v11, :cond_1

    #@31
    const/4 v1, 0x1

    #@32
    :goto_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@35
    .line 65
    const/4 v1, 0x1

    #@36
    return v1

    #@37
    .line 58
    .end local v9    # "_arg1":Ljava/lang/String;
    .end local v11    # "_result":Z
    :cond_0
    const/4 v0, 0x0

    #@38
    .local v0, "_arg0":Landroid/content/Intent;
    goto :goto_0

    #@39
    .line 64
    .end local v0    # "_arg0":Landroid/content/Intent;
    .restart local v9    # "_arg1":Ljava/lang/String;
    .restart local v11    # "_result":Z
    :cond_1
    const/4 v1, 0x0

    #@3a
    goto :goto_1

    #@3b
    .line 69
    .end local v9    # "_arg1":Ljava/lang/String;
    .end local v11    # "_result":Z
    :sswitch_2
    const-string/jumbo v1, "android.app.IActivityController"

    #@3e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@41
    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    .line 72
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/app/IActivityController$Stub;->activityResuming(Ljava/lang/String;)Z

    #@48
    move-result v11

    #@49
    .line 73
    .restart local v11    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@4c
    .line 74
    if-eqz v11, :cond_2

    #@4e
    const/4 v1, 0x1

    #@4f
    :goto_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@52
    .line 75
    const/4 v1, 0x1

    #@53
    return v1

    #@54
    .line 74
    :cond_2
    const/4 v1, 0x0

    #@55
    goto :goto_2

    #@56
    .line 79
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v11    # "_result":Z
    :sswitch_3
    const-string/jumbo v1, "android.app.IActivityController"

    #@59
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5c
    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5f
    move-result-object v2

    #@60
    .line 83
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@63
    move-result v3

    #@64
    .line 85
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@67
    move-result-object v4

    #@68
    .line 87
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6b
    move-result-object v5

    #@6c
    .line 89
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@6f
    move-result-wide v6

    #@70
    .line 91
    .local v6, "_arg4":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@73
    move-result-object v8

    #@74
    .local v8, "_arg5":Ljava/lang/String;
    move-object v1, p0

    #@75
    .line 92
    invoke-virtual/range {v1 .. v8}, Landroid/app/IActivityController$Stub;->appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    #@78
    move-result v11

    #@79
    .line 93
    .restart local v11    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@7c
    .line 94
    if-eqz v11, :cond_3

    #@7e
    const/4 v1, 0x1

    #@7f
    :goto_3
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@82
    .line 95
    const/4 v1, 0x1

    #@83
    return v1

    #@84
    .line 94
    :cond_3
    const/4 v1, 0x0

    #@85
    goto :goto_3

    #@86
    .line 99
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_arg4":J
    .end local v8    # "_arg5":Ljava/lang/String;
    .end local v11    # "_result":Z
    :sswitch_4
    const-string/jumbo v1, "android.app.IActivityController"

    #@89
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8c
    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8f
    move-result-object v2

    #@90
    .line 103
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@93
    move-result v3

    #@94
    .line 105
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@97
    move-result-object v4

    #@98
    .line 106
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IActivityController$Stub;->appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    #@9b
    move-result v10

    #@9c
    .line 107
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@9f
    .line 108
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@a2
    .line 109
    const/4 v1, 0x1

    #@a3
    return v1

    #@a4
    .line 113
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v10    # "_result":I
    :sswitch_5
    const-string/jumbo v1, "android.app.IActivityController"

    #@a7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@aa
    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ad
    move-result-object v2

    #@ae
    .line 117
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@b1
    move-result v3

    #@b2
    .line 119
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b5
    move-result-object v4

    #@b6
    .line 120
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IActivityController$Stub;->appNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    #@b9
    move-result v10

    #@ba
    .line 121
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@bd
    .line 122
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@c0
    .line 123
    const/4 v1, 0x1

    #@c1
    return v1

    #@c2
    .line 127
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v10    # "_result":I
    :sswitch_6
    const-string/jumbo v1, "android.app.IActivityController"

    #@c5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c8
    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@cb
    move-result-object v2

    #@cc
    .line 130
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/app/IActivityController$Stub;->systemNotResponding(Ljava/lang/String;)I

    #@cf
    move-result v10

    #@d0
    .line 131
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@d3
    .line 132
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@d6
    .line 133
    const/4 v1, 0x1

    #@d7
    return v1

    #@d8
    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
