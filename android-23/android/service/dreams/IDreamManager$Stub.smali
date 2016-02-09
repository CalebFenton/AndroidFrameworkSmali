.class public abstract Landroid/service/dreams/IDreamManager$Stub;
.super Landroid/os/Binder;
.source "IDreamManager.java"

# interfaces
.implements Landroid/service/dreams/IDreamManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/IDreamManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/dreams/IDreamManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.dreams.IDreamManager"

.field static final TRANSACTION_awaken:I = 0x2

.field static final TRANSACTION_dream:I = 0x1

.field static final TRANSACTION_finishSelf:I = 0x8

.field static final TRANSACTION_getDefaultDreamComponent:I = 0x5

.field static final TRANSACTION_getDreamComponents:I = 0x4

.field static final TRANSACTION_isDreaming:I = 0x7

.field static final TRANSACTION_setDreamComponents:I = 0x3

.field static final TRANSACTION_startDozing:I = 0x9

.field static final TRANSACTION_stopDozing:I = 0xa

.field static final TRANSACTION_testDream:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "android.service.dreams.IDreamManager"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/service/dreams/IDreamManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;
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
    const-string/jumbo v1, "android.service.dreams.IDreamManager"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/service/dreams/IDreamManager;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Landroid/service/dreams/IDreamManager;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/service/dreams/IDreamManager$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/service/dreams/IDreamManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 147
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v9

    #@7
    return v9

    #@8
    .line 43
    :sswitch_0
    const-string/jumbo v9, "android.service.dreams.IDreamManager"

    #@b
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 44
    const/4 v9, 0x1

    #@f
    return v9

    #@10
    .line 48
    :sswitch_1
    const-string/jumbo v9, "android.service.dreams.IDreamManager"

    #@13
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 49
    invoke-virtual {p0}, Landroid/service/dreams/IDreamManager$Stub;->dream()V

    #@19
    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c
    .line 51
    const/4 v9, 0x1

    #@1d
    return v9

    #@1e
    .line 55
    :sswitch_2
    const-string/jumbo v9, "android.service.dreams.IDreamManager"

    #@21
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24
    .line 56
    invoke-virtual {p0}, Landroid/service/dreams/IDreamManager$Stub;->awaken()V

    #@27
    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a
    .line 58
    const/4 v9, 0x1

    #@2b
    return v9

    #@2c
    .line 62
    :sswitch_3
    const-string/jumbo v9, "android.service.dreams.IDreamManager"

    #@2f
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@32
    .line 64
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@34
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@37
    move-result-object v2

    #@38
    check-cast v2, [Landroid/content/ComponentName;

    #@3a
    .line 65
    .local v2, "_arg0":[Landroid/content/ComponentName;
    invoke-virtual {p0, v2}, Landroid/service/dreams/IDreamManager$Stub;->setDreamComponents([Landroid/content/ComponentName;)V

    #@3d
    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@40
    .line 67
    const/4 v9, 0x1

    #@41
    return v9

    #@42
    .line 71
    .end local v2    # "_arg0":[Landroid/content/ComponentName;
    :sswitch_4
    const-string/jumbo v9, "android.service.dreams.IDreamManager"

    #@45
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@48
    .line 72
    invoke-virtual {p0}, Landroid/service/dreams/IDreamManager$Stub;->getDreamComponents()[Landroid/content/ComponentName;

    #@4b
    move-result-object v8

    #@4c
    .line 73
    .local v8, "_result":[Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@4f
    .line 74
    const/4 v9, 0x1

    #@50
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@53
    .line 75
    const/4 v9, 0x1

    #@54
    return v9

    #@55
    .line 79
    .end local v8    # "_result":[Landroid/content/ComponentName;
    :sswitch_5
    const-string/jumbo v9, "android.service.dreams.IDreamManager"

    #@58
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5b
    .line 80
    invoke-virtual {p0}, Landroid/service/dreams/IDreamManager$Stub;->getDefaultDreamComponent()Landroid/content/ComponentName;

    #@5e
    move-result-object v6

    #@5f
    .line 81
    .local v6, "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@62
    .line 82
    if-eqz v6, :cond_0

    #@64
    .line 83
    const/4 v9, 0x1

    #@65
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@68
    .line 84
    const/4 v9, 0x1

    #@69
    invoke-virtual {v6, p3, v9}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@6c
    .line 89
    :goto_0
    const/4 v9, 0x1

    #@6d
    return v9

    #@6e
    .line 87
    :cond_0
    const/4 v9, 0x0

    #@6f
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@72
    goto :goto_0

    #@73
    .line 93
    .end local v6    # "_result":Landroid/content/ComponentName;
    :sswitch_6
    const-string/jumbo v9, "android.service.dreams.IDreamManager"

    #@76
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@79
    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@7c
    move-result v9

    #@7d
    if-eqz v9, :cond_1

    #@7f
    .line 96
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@81
    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@84
    move-result-object v0

    #@85
    check-cast v0, Landroid/content/ComponentName;

    #@87
    .line 101
    :goto_1
    invoke-virtual {p0, v0}, Landroid/service/dreams/IDreamManager$Stub;->testDream(Landroid/content/ComponentName;)V

    #@8a
    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@8d
    .line 103
    const/4 v9, 0x1

    #@8e
    return v9

    #@8f
    .line 99
    :cond_1
    const/4 v0, 0x0

    #@90
    .local v0, "_arg0":Landroid/content/ComponentName;
    goto :goto_1

    #@91
    .line 107
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :sswitch_7
    const-string/jumbo v9, "android.service.dreams.IDreamManager"

    #@94
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@97
    .line 108
    invoke-virtual {p0}, Landroid/service/dreams/IDreamManager$Stub;->isDreaming()Z

    #@9a
    move-result v7

    #@9b
    .line 109
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@9e
    .line 110
    if-eqz v7, :cond_2

    #@a0
    const/4 v9, 0x1

    #@a1
    :goto_2
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@a4
    .line 111
    const/4 v9, 0x1

    #@a5
    return v9

    #@a6
    .line 110
    :cond_2
    const/4 v9, 0x0

    #@a7
    goto :goto_2

    #@a8
    .line 115
    .end local v7    # "_result":Z
    :sswitch_8
    const-string/jumbo v9, "android.service.dreams.IDreamManager"

    #@ab
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ae
    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@b1
    move-result-object v1

    #@b2
    .line 119
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@b5
    move-result v9

    #@b6
    if-eqz v9, :cond_3

    #@b8
    const/4 v4, 0x1

    #@b9
    .line 120
    .local v4, "_arg1":Z
    :goto_3
    invoke-virtual {p0, v1, v4}, Landroid/service/dreams/IDreamManager$Stub;->finishSelf(Landroid/os/IBinder;Z)V

    #@bc
    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@bf
    .line 122
    const/4 v9, 0x1

    #@c0
    return v9

    #@c1
    .line 119
    .end local v4    # "_arg1":Z
    :cond_3
    const/4 v4, 0x0

    #@c2
    .restart local v4    # "_arg1":Z
    goto :goto_3

    #@c3
    .line 126
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Z
    :sswitch_9
    const-string/jumbo v9, "android.service.dreams.IDreamManager"

    #@c6
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c9
    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@cc
    move-result-object v1

    #@cd
    .line 130
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@d0
    move-result v3

    #@d1
    .line 132
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@d4
    move-result v5

    #@d5
    .line 133
    .local v5, "_arg2":I
    invoke-virtual {p0, v1, v3, v5}, Landroid/service/dreams/IDreamManager$Stub;->startDozing(Landroid/os/IBinder;II)V

    #@d8
    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@db
    .line 135
    const/4 v9, 0x1

    #@dc
    return v9

    #@dd
    .line 139
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v5    # "_arg2":I
    :sswitch_a
    const-string/jumbo v9, "android.service.dreams.IDreamManager"

    #@e0
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e3
    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@e6
    move-result-object v1

    #@e7
    .line 142
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/service/dreams/IDreamManager$Stub;->stopDozing(Landroid/os/IBinder;)V

    #@ea
    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@ed
    .line 144
    const/4 v9, 0x1

    #@ee
    return v9

    #@ef
    .line 39
    nop

    #@f0
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
