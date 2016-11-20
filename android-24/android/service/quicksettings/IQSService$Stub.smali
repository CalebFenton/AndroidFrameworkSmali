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
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 193
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v6

    #@9
    return v6

    #@a
    .line 45
    :sswitch_0
    const-string/jumbo v6, "android.service.quicksettings.IQSService"

    #@d
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 46
    return v7

    #@11
    .line 50
    :sswitch_1
    const-string/jumbo v8, "android.service.quicksettings.IQSService"

    #@14
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v8

    #@1b
    if-eqz v8, :cond_0

    #@1d
    .line 53
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1f
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Landroid/content/ComponentName;

    #@25
    .line 58
    :goto_0
    invoke-virtual {p0, v0}, Landroid/service/quicksettings/IQSService$Stub;->getTile(Landroid/content/ComponentName;)Landroid/service/quicksettings/Tile;

    #@28
    move-result-object v4

    #@29
    .line 59
    .local v4, "_result":Landroid/service/quicksettings/Tile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c
    .line 60
    if-eqz v4, :cond_1

    #@2e
    .line 61
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@31
    .line 62
    invoke-virtual {v4, p3, v7}, Landroid/service/quicksettings/Tile;->writeToParcel(Landroid/os/Parcel;I)V

    #@34
    .line 67
    :goto_1
    return v7

    #@35
    .line 56
    .end local v4    # "_result":Landroid/service/quicksettings/Tile;
    :cond_0
    const/4 v0, 0x0

    #@36
    .local v0, "_arg0":Landroid/content/ComponentName;
    goto :goto_0

    #@37
    .line 65
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .restart local v4    # "_result":Landroid/service/quicksettings/Tile;
    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@3a
    goto :goto_1

    #@3b
    .line 71
    .end local v4    # "_result":Landroid/service/quicksettings/Tile;
    :sswitch_2
    const-string/jumbo v6, "android.service.quicksettings.IQSService"

    #@3e
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@41
    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@44
    move-result v6

    #@45
    if-eqz v6, :cond_2

    #@47
    .line 74
    sget-object v6, Landroid/service/quicksettings/Tile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@49
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4c
    move-result-object v1

    #@4d
    check-cast v1, Landroid/service/quicksettings/Tile;

    #@4f
    .line 79
    :goto_2
    invoke-virtual {p0, v1}, Landroid/service/quicksettings/IQSService$Stub;->updateQsTile(Landroid/service/quicksettings/Tile;)V

    #@52
    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@55
    .line 81
    return v7

    #@56
    .line 77
    :cond_2
    const/4 v1, 0x0

    #@57
    .local v1, "_arg0":Landroid/service/quicksettings/Tile;
    goto :goto_2

    #@58
    .line 85
    .end local v1    # "_arg0":Landroid/service/quicksettings/Tile;
    :sswitch_3
    const-string/jumbo v6, "android.service.quicksettings.IQSService"

    #@5b
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5e
    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@61
    move-result v6

    #@62
    if-eqz v6, :cond_3

    #@64
    .line 88
    sget-object v6, Landroid/service/quicksettings/Tile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@66
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@69
    move-result-object v1

    #@6a
    check-cast v1, Landroid/service/quicksettings/Tile;

    #@6c
    .line 94
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@6f
    move-result v6

    #@70
    if-eqz v6, :cond_4

    #@72
    .line 95
    sget-object v6, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    #@74
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@77
    move-result-object v2

    #@78
    check-cast v2, Landroid/graphics/drawable/Icon;

    #@7a
    .line 101
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7d
    move-result-object v3

    #@7e
    .line 102
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/service/quicksettings/IQSService$Stub;->updateStatusIcon(Landroid/service/quicksettings/Tile;Landroid/graphics/drawable/Icon;Ljava/lang/String;)V

    #@81
    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@84
    .line 104
    return v7

    #@85
    .line 91
    .end local v3    # "_arg2":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    #@86
    .restart local v1    # "_arg0":Landroid/service/quicksettings/Tile;
    goto :goto_3

    #@87
    .line 98
    .end local v1    # "_arg0":Landroid/service/quicksettings/Tile;
    :cond_4
    const/4 v2, 0x0

    #@88
    .local v2, "_arg1":Landroid/graphics/drawable/Icon;
    goto :goto_4

    #@89
    .line 108
    .end local v2    # "_arg1":Landroid/graphics/drawable/Icon;
    :sswitch_4
    const-string/jumbo v6, "android.service.quicksettings.IQSService"

    #@8c
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8f
    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@92
    move-result v6

    #@93
    if-eqz v6, :cond_5

    #@95
    .line 111
    sget-object v6, Landroid/service/quicksettings/Tile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@97
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@9a
    move-result-object v1

    #@9b
    check-cast v1, Landroid/service/quicksettings/Tile;

    #@9d
    .line 116
    :goto_5
    invoke-virtual {p0, v1}, Landroid/service/quicksettings/IQSService$Stub;->onShowDialog(Landroid/service/quicksettings/Tile;)V

    #@a0
    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@a3
    .line 118
    return v7

    #@a4
    .line 114
    :cond_5
    const/4 v1, 0x0

    #@a5
    .restart local v1    # "_arg0":Landroid/service/quicksettings/Tile;
    goto :goto_5

    #@a6
    .line 122
    .end local v1    # "_arg0":Landroid/service/quicksettings/Tile;
    :sswitch_5
    const-string/jumbo v6, "android.service.quicksettings.IQSService"

    #@a9
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ac
    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@af
    move-result v6

    #@b0
    if-eqz v6, :cond_6

    #@b2
    .line 125
    sget-object v6, Landroid/service/quicksettings/Tile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@b4
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@b7
    move-result-object v1

    #@b8
    check-cast v1, Landroid/service/quicksettings/Tile;

    #@ba
    .line 130
    :goto_6
    invoke-virtual {p0, v1}, Landroid/service/quicksettings/IQSService$Stub;->onStartActivity(Landroid/service/quicksettings/Tile;)V

    #@bd
    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@c0
    .line 132
    return v7

    #@c1
    .line 128
    :cond_6
    const/4 v1, 0x0

    #@c2
    .restart local v1    # "_arg0":Landroid/service/quicksettings/Tile;
    goto :goto_6

    #@c3
    .line 136
    .end local v1    # "_arg0":Landroid/service/quicksettings/Tile;
    :sswitch_6
    const-string/jumbo v8, "android.service.quicksettings.IQSService"

    #@c6
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c9
    .line 137
    invoke-virtual {p0}, Landroid/service/quicksettings/IQSService$Stub;->isLocked()Z

    #@cc
    move-result v5

    #@cd
    .line 138
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@d0
    .line 139
    if-eqz v5, :cond_7

    #@d2
    move v6, v7

    #@d3
    :cond_7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@d6
    .line 140
    return v7

    #@d7
    .line 144
    .end local v5    # "_result":Z
    :sswitch_7
    const-string/jumbo v8, "android.service.quicksettings.IQSService"

    #@da
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@dd
    .line 145
    invoke-virtual {p0}, Landroid/service/quicksettings/IQSService$Stub;->isSecure()Z

    #@e0
    move-result v5

    #@e1
    .line 146
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@e4
    .line 147
    if-eqz v5, :cond_8

    #@e6
    move v6, v7

    #@e7
    :cond_8
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@ea
    .line 148
    return v7

    #@eb
    .line 152
    .end local v5    # "_result":Z
    :sswitch_8
    const-string/jumbo v6, "android.service.quicksettings.IQSService"

    #@ee
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f1
    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@f4
    move-result v6

    #@f5
    if-eqz v6, :cond_9

    #@f7
    .line 155
    sget-object v6, Landroid/service/quicksettings/Tile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f9
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@fc
    move-result-object v1

    #@fd
    check-cast v1, Landroid/service/quicksettings/Tile;

    #@ff
    .line 160
    :goto_7
    invoke-virtual {p0, v1}, Landroid/service/quicksettings/IQSService$Stub;->startUnlockAndRun(Landroid/service/quicksettings/Tile;)V

    #@102
    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@105
    .line 162
    return v7

    #@106
    .line 158
    :cond_9
    const/4 v1, 0x0

    #@107
    .restart local v1    # "_arg0":Landroid/service/quicksettings/Tile;
    goto :goto_7

    #@108
    .line 166
    .end local v1    # "_arg0":Landroid/service/quicksettings/Tile;
    :sswitch_9
    const-string/jumbo v6, "android.service.quicksettings.IQSService"

    #@10b
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10e
    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@111
    move-result v6

    #@112
    if-eqz v6, :cond_a

    #@114
    .line 169
    sget-object v6, Landroid/service/quicksettings/Tile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@116
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@119
    move-result-object v1

    #@11a
    check-cast v1, Landroid/service/quicksettings/Tile;

    #@11c
    .line 174
    :goto_8
    invoke-virtual {p0, v1}, Landroid/service/quicksettings/IQSService$Stub;->onDialogHidden(Landroid/service/quicksettings/Tile;)V

    #@11f
    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@122
    .line 176
    return v7

    #@123
    .line 172
    :cond_a
    const/4 v1, 0x0

    #@124
    .restart local v1    # "_arg0":Landroid/service/quicksettings/Tile;
    goto :goto_8

    #@125
    .line 180
    .end local v1    # "_arg0":Landroid/service/quicksettings/Tile;
    :sswitch_a
    const-string/jumbo v6, "android.service.quicksettings.IQSService"

    #@128
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12b
    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@12e
    move-result v6

    #@12f
    if-eqz v6, :cond_b

    #@131
    .line 183
    sget-object v6, Landroid/service/quicksettings/Tile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@133
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@136
    move-result-object v1

    #@137
    check-cast v1, Landroid/service/quicksettings/Tile;

    #@139
    .line 188
    :goto_9
    invoke-virtual {p0, v1}, Landroid/service/quicksettings/IQSService$Stub;->onStartSuccessful(Landroid/service/quicksettings/Tile;)V

    #@13c
    .line 189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@13f
    .line 190
    return v7

    #@140
    .line 186
    :cond_b
    const/4 v1, 0x0

    #@141
    .restart local v1    # "_arg0":Landroid/service/quicksettings/Tile;
    goto :goto_9

    #@142
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
