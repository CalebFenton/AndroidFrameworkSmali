.class public abstract Landroid/content/pm/IPackageInstallerSession$Stub;
.super Landroid/os/Binder;
.source "IPackageInstallerSession.java"

# interfaces
.implements Landroid/content/pm/IPackageInstallerSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageInstallerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageInstallerSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPackageInstallerSession"

.field static final TRANSACTION_abandon:I = 0x8

.field static final TRANSACTION_addClientProgress:I = 0x2

.field static final TRANSACTION_close:I = 0x6

.field static final TRANSACTION_commit:I = 0x7

.field static final TRANSACTION_getNames:I = 0x3

.field static final TRANSACTION_openRead:I = 0x5

.field static final TRANSACTION_openWrite:I = 0x4

.field static final TRANSACTION_setClientProgress:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "android.content.pm.IPackageInstallerSession"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPackageInstallerSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallerSession;
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
    const-string/jumbo v1, "android.content.pm.IPackageInstallerSession"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/content/pm/IPackageInstallerSession;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Landroid/content/pm/IPackageInstallerSession;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/content/pm/IPackageInstallerSession$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/content/pm/IPackageInstallerSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v0

    #@7
    return v0

    #@8
    .line 43
    :sswitch_0
    const-string/jumbo v0, "android.content.pm.IPackageInstallerSession"

    #@b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 44
    const/4 v0, 0x1

    #@f
    return v0

    #@10
    .line 48
    :sswitch_1
    const-string/jumbo v0, "android.content.pm.IPackageInstallerSession"

    #@13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    #@19
    move-result v6

    #@1a
    .line 51
    .local v6, "_arg0":F
    invoke-virtual {p0, v6}, Landroid/content/pm/IPackageInstallerSession$Stub;->setClientProgress(F)V

    #@1d
    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@20
    .line 53
    const/4 v0, 0x1

    #@21
    return v0

    #@22
    .line 57
    .end local v6    # "_arg0":F
    :sswitch_2
    const-string/jumbo v0, "android.content.pm.IPackageInstallerSession"

    #@25
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28
    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    #@2b
    move-result v6

    #@2c
    .line 60
    .restart local v6    # "_arg0":F
    invoke-virtual {p0, v6}, Landroid/content/pm/IPackageInstallerSession$Stub;->addClientProgress(F)V

    #@2f
    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@32
    .line 62
    const/4 v0, 0x1

    #@33
    return v0

    #@34
    .line 66
    .end local v6    # "_arg0":F
    :sswitch_3
    const-string/jumbo v0, "android.content.pm.IPackageInstallerSession"

    #@37
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3a
    .line 67
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->getNames()[Ljava/lang/String;

    #@3d
    move-result-object v9

    #@3e
    .line 68
    .local v9, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@41
    .line 69
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@44
    .line 70
    const/4 v0, 0x1

    #@45
    return v0

    #@46
    .line 74
    .end local v9    # "_result":[Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v0, "android.content.pm.IPackageInstallerSession"

    #@49
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4c
    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4f
    move-result-object v1

    #@50
    .line 78
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@53
    move-result-wide v2

    #@54
    .line 80
    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@57
    move-result-wide v4

    #@58
    .local v4, "_arg2":J
    move-object v0, p0

    #@59
    .line 81
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageInstallerSession$Stub;->openWrite(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;

    #@5c
    move-result-object v8

    #@5d
    .line 82
    .local v8, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@60
    .line 83
    if-eqz v8, :cond_0

    #@62
    .line 84
    const/4 v0, 0x1

    #@63
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@66
    .line 85
    const/4 v0, 0x1

    #@67
    invoke-virtual {v8, p3, v0}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@6a
    .line 90
    :goto_0
    const/4 v0, 0x1

    #@6b
    return v0

    #@6c
    .line 88
    :cond_0
    const/4 v0, 0x0

    #@6d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@70
    goto :goto_0

    #@71
    .line 94
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":J
    .end local v8    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_5
    const-string/jumbo v0, "android.content.pm.IPackageInstallerSession"

    #@74
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@77
    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7a
    move-result-object v1

    #@7b
    .line 97
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageInstallerSession$Stub;->openRead(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    #@7e
    move-result-object v8

    #@7f
    .line 98
    .restart local v8    # "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@82
    .line 99
    if-eqz v8, :cond_1

    #@84
    .line 100
    const/4 v0, 0x1

    #@85
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@88
    .line 101
    const/4 v0, 0x1

    #@89
    invoke-virtual {v8, p3, v0}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@8c
    .line 106
    :goto_1
    const/4 v0, 0x1

    #@8d
    return v0

    #@8e
    .line 104
    :cond_1
    const/4 v0, 0x0

    #@8f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@92
    goto :goto_1

    #@93
    .line 110
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_6
    const-string/jumbo v0, "android.content.pm.IPackageInstallerSession"

    #@96
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@99
    .line 111
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->close()V

    #@9c
    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@9f
    .line 113
    const/4 v0, 0x1

    #@a0
    return v0

    #@a1
    .line 117
    :sswitch_7
    const-string/jumbo v0, "android.content.pm.IPackageInstallerSession"

    #@a4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a7
    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@aa
    move-result v0

    #@ab
    if-eqz v0, :cond_2

    #@ad
    .line 120
    sget-object v0, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    #@af
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@b2
    move-result-object v7

    #@b3
    check-cast v7, Landroid/content/IntentSender;

    #@b5
    .line 125
    :goto_2
    invoke-virtual {p0, v7}, Landroid/content/pm/IPackageInstallerSession$Stub;->commit(Landroid/content/IntentSender;)V

    #@b8
    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@bb
    .line 127
    const/4 v0, 0x1

    #@bc
    return v0

    #@bd
    .line 123
    :cond_2
    const/4 v7, 0x0

    #@be
    .local v7, "_arg0":Landroid/content/IntentSender;
    goto :goto_2

    #@bf
    .line 131
    .end local v7    # "_arg0":Landroid/content/IntentSender;
    :sswitch_8
    const-string/jumbo v0, "android.content.pm.IPackageInstallerSession"

    #@c2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c5
    .line 132
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->abandon()V

    #@c8
    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@cb
    .line 134
    const/4 v0, 0x1

    #@cc
    return v0

    #@cd
    .line 39
    nop

    #@ce
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
