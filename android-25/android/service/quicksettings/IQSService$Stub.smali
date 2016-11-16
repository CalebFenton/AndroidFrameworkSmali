.class public abstract Landroid/service/quicksettings/IQSService$Stub;
.super Landroid/os/Binder;
.source "IQSService.java"

# interfaces
.implements Landroid/service/quicksettings/IQSService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/quicksettings/IQSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/quicksettings/IQSService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.quicksettings.IQSService"

.field static final TRANSACTION_getTile:I = 0x1

.field static final TRANSACTION_isLocked:I = 0x6

.field static final TRANSACTION_isSecure:I = 0x7

.field static final TRANSACTION_onDialogHidden:I = 0x9

.field static final TRANSACTION_onShowDialog:I = 0x4

.field static final TRANSACTION_onStartActivity:I = 0x5

.field static final TRANSACTION_onStartSuccessful:I = 0xa

.field static final TRANSACTION_startUnlockAndRun:I = 0x8

.field static final TRANSACTION_updateQsTile:I = 0x2

.field static final TRANSACTION_updateStatusIcon:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 18
    const-string/jumbo v0, "android.service.quicksettings.IQSService"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/service/quicksettings/IQSService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/quicksettings/IQSService;
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
    const-string/jumbo v1, "android.service.quicksettings.IQSService"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/service/quicksettings/IQSService;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Landroid/service/quicksettings/IQSService;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/service/quicksettings/IQSService$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/service/quicksettings/IQSService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 10
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
    const/4 v7, 0x0

    #@1
    const/4 v8, 0x1

    #@2
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 160
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v7

    #@9
    return v7

    #@a
    .line 45
    :sswitch_0
    const-string/jumbo v7, "android.service.quicksettings.IQSService"

    #@d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 46
    return v8

    #@11
    .line 50
    :sswitch_1
    const-string/jumbo v9, "android.service.quicksettings.IQSService"

    #@14
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1a
    move-result-object v0

    #@1b
    .line 53
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/service/quicksettings/IQSService$Stub;->getTile(Landroid/os/IBinder;)Landroid/service/quicksettings/Tile;

    #@1e
    move-result-object v5

    #@1f
    .line 54
    .local v5, "_result":Landroid/service/quicksettings/Tile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@22
    .line 55
    if-eqz v5, :cond_0

    #@24
    .line 56
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 57
    invoke-virtual {v5, p3, v8}, Landroid/service/quicksettings/Tile;->writeToParcel(Landroid/os/Parcel;I)V

    #@2a
    .line 62
    :goto_0
    return v8

    #@2b
    .line 60
    :cond_0
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@2e
    goto :goto_0

    #@2f
    .line 66
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v5    # "_result":Landroid/service/quicksettings/Tile;
    :sswitch_2
    const-string/jumbo v7, "android.service.quicksettings.IQSService"

    #@32
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@35
    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@38
    move-result v7

    #@39
    if-eqz v7, :cond_1

    #@3b
    .line 69
    sget-object v7, Landroid/service/quicksettings/Tile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3d
    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@40
    move-result-object v1

    #@41
    check-cast v1, Landroid/service/quicksettings/Tile;

    #@43
    .line 75
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@46
    move-result-object v3

    #@47
    .line 76
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v3}, Landroid/service/quicksettings/IQSService$Stub;->updateQsTile(Landroid/service/quicksettings/Tile;Landroid/os/IBinder;)V

    #@4a
    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@4d
    .line 78
    return v8

    #@4e
    .line 72
    .end local v3    # "_arg1":Landroid/os/IBinder;
    :cond_1
    const/4 v1, 0x0

    #@4f
    .local v1, "_arg0":Landroid/service/quicksettings/Tile;
    goto :goto_1

    #@50
    .line 82
    .end local v1    # "_arg0":Landroid/service/quicksettings/Tile;
    :sswitch_3
    const-string/jumbo v7, "android.service.quicksettings.IQSService"

    #@53
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@56
    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@59
    move-result-object v0

    #@5a
    .line 86
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5d
    move-result v7

    #@5e
    if-eqz v7, :cond_2

    #@60
    .line 87
    sget-object v7, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    #@62
    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@65
    move-result-object v2

    #@66
    check-cast v2, Landroid/graphics/drawable/Icon;

    #@68
    .line 93
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6b
    move-result-object v4

    #@6c
    .line 94
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v4}, Landroid/service/quicksettings/IQSService$Stub;->updateStatusIcon(Landroid/os/IBinder;Landroid/graphics/drawable/Icon;Ljava/lang/String;)V

    #@6f
    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@72
    .line 96
    return v8

    #@73
    .line 90
    .end local v4    # "_arg2":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    #@74
    .local v2, "_arg1":Landroid/graphics/drawable/Icon;
    goto :goto_2

    #@75
    .line 100
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/graphics/drawable/Icon;
    :sswitch_4
    const-string/jumbo v7, "android.service.quicksettings.IQSService"

    #@78
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7b
    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@7e
    move-result-object v0

    #@7f
    .line 103
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/service/quicksettings/IQSService$Stub;->onShowDialog(Landroid/os/IBinder;)V

    #@82
    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@85
    .line 105
    return v8

    #@86
    .line 109
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_5
    const-string/jumbo v7, "android.service.quicksettings.IQSService"

    #@89
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8c
    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@8f
    move-result-object v0

    #@90
    .line 112
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/service/quicksettings/IQSService$Stub;->onStartActivity(Landroid/os/IBinder;)V

    #@93
    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@96
    .line 114
    return v8

    #@97
    .line 118
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_6
    const-string/jumbo v9, "android.service.quicksettings.IQSService"

    #@9a
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9d
    .line 119
    invoke-virtual {p0}, Landroid/service/quicksettings/IQSService$Stub;->isLocked()Z

    #@a0
    move-result v6

    #@a1
    .line 120
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@a4
    .line 121
    if-eqz v6, :cond_3

    #@a6
    move v7, v8

    #@a7
    :cond_3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@aa
    .line 122
    return v8

    #@ab
    .line 126
    .end local v6    # "_result":Z
    :sswitch_7
    const-string/jumbo v9, "android.service.quicksettings.IQSService"

    #@ae
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b1
    .line 127
    invoke-virtual {p0}, Landroid/service/quicksettings/IQSService$Stub;->isSecure()Z

    #@b4
    move-result v6

    #@b5
    .line 128
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@b8
    .line 129
    if-eqz v6, :cond_4

    #@ba
    move v7, v8

    #@bb
    :cond_4
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@be
    .line 130
    return v8

    #@bf
    .line 134
    .end local v6    # "_result":Z
    :sswitch_8
    const-string/jumbo v7, "android.service.quicksettings.IQSService"

    #@c2
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c5
    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@c8
    move-result-object v0

    #@c9
    .line 137
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/service/quicksettings/IQSService$Stub;->startUnlockAndRun(Landroid/os/IBinder;)V

    #@cc
    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@cf
    .line 139
    return v8

    #@d0
    .line 143
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_9
    const-string/jumbo v7, "android.service.quicksettings.IQSService"

    #@d3
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d6
    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@d9
    move-result-object v0

    #@da
    .line 146
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/service/quicksettings/IQSService$Stub;->onDialogHidden(Landroid/os/IBinder;)V

    #@dd
    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@e0
    .line 148
    return v8

    #@e1
    .line 152
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_a
    const-string/jumbo v7, "android.service.quicksettings.IQSService"

    #@e4
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e7
    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@ea
    move-result-object v0

    #@eb
    .line 155
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/service/quicksettings/IQSService$Stub;->onStartSuccessful(Landroid/os/IBinder;)V

    #@ee
    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@f1
    .line 157
    return v8

    #@f2
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
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
