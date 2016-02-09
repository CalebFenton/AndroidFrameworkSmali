.class public abstract Landroid/app/backup/IRestoreSession$Stub;
.super Landroid/os/Binder;
.source "IRestoreSession.java"

# interfaces
.implements Landroid/app/backup/IRestoreSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/IRestoreSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/IRestoreSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.backup.IRestoreSession"

.field static final TRANSACTION_endRestoreSession:I = 0x5

.field static final TRANSACTION_getAvailableRestoreSets:I = 0x1

.field static final TRANSACTION_restoreAll:I = 0x2

.field static final TRANSACTION_restorePackage:I = 0x4

.field static final TRANSACTION_restoreSome:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 21
    const-string/jumbo v0, "android.app.backup.IRestoreSession"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/app/backup/IRestoreSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/backup/IRestoreSession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 29
    if-nez p0, :cond_0

    #@3
    .line 30
    return-object v1

    #@4
    .line 32
    :cond_0
    const-string/jumbo v1, "android.app.backup.IRestoreSession"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/app/backup/IRestoreSession;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 34
    check-cast v0, Landroid/app/backup/IRestoreSession;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/backup/IRestoreSession$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/app/backup/IRestoreSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 40
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
    const/4 v8, 0x1

    #@1
    .line 44
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 107
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v7

    #@8
    return v7

    #@9
    .line 48
    :sswitch_0
    const-string/jumbo v7, "android.app.backup.IRestoreSession"

    #@c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 49
    return v8

    #@10
    .line 53
    :sswitch_1
    const-string/jumbo v7, "android.app.backup.IRestoreSession"

    #@13
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19
    move-result-object v7

    #@1a
    invoke-static {v7}, Landroid/app/backup/IRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IRestoreObserver;

    #@1d
    move-result-object v2

    #@1e
    .line 56
    .local v2, "_arg0":Landroid/app/backup/IRestoreObserver;
    invoke-virtual {p0, v2}, Landroid/app/backup/IRestoreSession$Stub;->getAvailableRestoreSets(Landroid/app/backup/IRestoreObserver;)I

    #@21
    move-result v6

    #@22
    .line 57
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@25
    .line 58
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 59
    return v8

    #@29
    .line 63
    .end local v2    # "_arg0":Landroid/app/backup/IRestoreObserver;
    .end local v6    # "_result":I
    :sswitch_2
    const-string/jumbo v7, "android.app.backup.IRestoreSession"

    #@2c
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2f
    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@32
    move-result-wide v0

    #@33
    .line 67
    .local v0, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@36
    move-result-object v7

    #@37
    invoke-static {v7}, Landroid/app/backup/IRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IRestoreObserver;

    #@3a
    move-result-object v4

    #@3b
    .line 68
    .local v4, "_arg1":Landroid/app/backup/IRestoreObserver;
    invoke-virtual {p0, v0, v1, v4}, Landroid/app/backup/IRestoreSession$Stub;->restoreAll(JLandroid/app/backup/IRestoreObserver;)I

    #@3e
    move-result v6

    #@3f
    .line 69
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@42
    .line 70
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@45
    .line 71
    return v8

    #@46
    .line 75
    .end local v0    # "_arg0":J
    .end local v4    # "_arg1":Landroid/app/backup/IRestoreObserver;
    .end local v6    # "_result":I
    :sswitch_3
    const-string/jumbo v7, "android.app.backup.IRestoreSession"

    #@49
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4c
    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@4f
    move-result-wide v0

    #@50
    .line 79
    .restart local v0    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@53
    move-result-object v7

    #@54
    invoke-static {v7}, Landroid/app/backup/IRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IRestoreObserver;

    #@57
    move-result-object v4

    #@58
    .line 81
    .restart local v4    # "_arg1":Landroid/app/backup/IRestoreObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@5b
    move-result-object v5

    #@5c
    .line 82
    .local v5, "_arg2":[Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v4, v5}, Landroid/app/backup/IRestoreSession$Stub;->restoreSome(JLandroid/app/backup/IRestoreObserver;[Ljava/lang/String;)I

    #@5f
    move-result v6

    #@60
    .line 83
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@63
    .line 84
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@66
    .line 85
    return v8

    #@67
    .line 89
    .end local v0    # "_arg0":J
    .end local v4    # "_arg1":Landroid/app/backup/IRestoreObserver;
    .end local v5    # "_arg2":[Ljava/lang/String;
    .end local v6    # "_result":I
    :sswitch_4
    const-string/jumbo v7, "android.app.backup.IRestoreSession"

    #@6a
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6d
    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@70
    move-result-object v3

    #@71
    .line 93
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@74
    move-result-object v7

    #@75
    invoke-static {v7}, Landroid/app/backup/IRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IRestoreObserver;

    #@78
    move-result-object v4

    #@79
    .line 94
    .restart local v4    # "_arg1":Landroid/app/backup/IRestoreObserver;
    invoke-virtual {p0, v3, v4}, Landroid/app/backup/IRestoreSession$Stub;->restorePackage(Ljava/lang/String;Landroid/app/backup/IRestoreObserver;)I

    #@7c
    move-result v6

    #@7d
    .line 95
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@80
    .line 96
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@83
    .line 97
    return v8

    #@84
    .line 101
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/app/backup/IRestoreObserver;
    .end local v6    # "_result":I
    :sswitch_5
    const-string/jumbo v7, "android.app.backup.IRestoreSession"

    #@87
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8a
    .line 102
    invoke-virtual {p0}, Landroid/app/backup/IRestoreSession$Stub;->endRestoreSession()V

    #@8d
    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@90
    .line 104
    return v8

    #@91
    .line 44
    nop

    #@92
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
