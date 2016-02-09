.class public abstract Landroid/app/backup/IFullBackupRestoreObserver$Stub;
.super Landroid/os/Binder;
.source "IFullBackupRestoreObserver.java"

# interfaces
.implements Landroid/app/backup/IFullBackupRestoreObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/IFullBackupRestoreObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/IFullBackupRestoreObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.backup.IFullBackupRestoreObserver"

.field static final TRANSACTION_onBackupPackage:I = 0x2

.field static final TRANSACTION_onEndBackup:I = 0x3

.field static final TRANSACTION_onEndRestore:I = 0x6

.field static final TRANSACTION_onRestorePackage:I = 0x5

.field static final TRANSACTION_onStartBackup:I = 0x1

.field static final TRANSACTION_onStartRestore:I = 0x4

.field static final TRANSACTION_onTimeout:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 21
    const-string/jumbo v0, "android.app.backup.IFullBackupRestoreObserver"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/backup/IFullBackupRestoreObserver;
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
    const-string/jumbo v1, "android.app.backup.IFullBackupRestoreObserver"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/app/backup/IFullBackupRestoreObserver;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 34
    check-cast v0, Landroid/app/backup/IFullBackupRestoreObserver;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/backup/IFullBackupRestoreObserver$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 3
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
    const/4 v2, 0x1

    #@1
    .line 44
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 48
    :sswitch_0
    const-string/jumbo v1, "android.app.backup.IFullBackupRestoreObserver"

    #@c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 49
    return v2

    #@10
    .line 53
    :sswitch_1
    const-string/jumbo v1, "android.app.backup.IFullBackupRestoreObserver"

    #@13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 54
    invoke-virtual {p0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->onStartBackup()V

    #@19
    .line 55
    return v2

    #@1a
    .line 59
    :sswitch_2
    const-string/jumbo v1, "android.app.backup.IFullBackupRestoreObserver"

    #@1d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@20
    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    .line 62
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->onBackupPackage(Ljava/lang/String;)V

    #@27
    .line 63
    return v2

    #@28
    .line 67
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v1, "android.app.backup.IFullBackupRestoreObserver"

    #@2b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2e
    .line 68
    invoke-virtual {p0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->onEndBackup()V

    #@31
    .line 69
    return v2

    #@32
    .line 73
    :sswitch_4
    const-string/jumbo v1, "android.app.backup.IFullBackupRestoreObserver"

    #@35
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@38
    .line 74
    invoke-virtual {p0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->onStartRestore()V

    #@3b
    .line 75
    return v2

    #@3c
    .line 79
    :sswitch_5
    const-string/jumbo v1, "android.app.backup.IFullBackupRestoreObserver"

    #@3f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@42
    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    .line 82
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->onRestorePackage(Ljava/lang/String;)V

    #@49
    .line 83
    return v2

    #@4a
    .line 87
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v1, "android.app.backup.IFullBackupRestoreObserver"

    #@4d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@50
    .line 88
    invoke-virtual {p0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->onEndRestore()V

    #@53
    .line 89
    return v2

    #@54
    .line 93
    :sswitch_7
    const-string/jumbo v1, "android.app.backup.IFullBackupRestoreObserver"

    #@57
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5a
    .line 94
    invoke-virtual {p0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->onTimeout()V

    #@5d
    .line 95
    return v2

    #@5e
    .line 44
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
