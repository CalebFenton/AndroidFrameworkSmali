.class public abstract Landroid/app/backup/IBackupObserver$Stub;
.super Landroid/os/Binder;
.source "IBackupObserver.java"

# interfaces
.implements Landroid/app/backup/IBackupObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/IBackupObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/IBackupObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.backup.IBackupObserver"

.field static final TRANSACTION_backupFinished:I = 0x3

.field static final TRANSACTION_onResult:I = 0x2

.field static final TRANSACTION_onUpdate:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 21
    const-string/jumbo v0, "android.app.backup.IBackupObserver"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupObserver;
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
    const-string/jumbo v1, "android.app.backup.IBackupObserver"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/app/backup/IBackupObserver;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 34
    check-cast v0, Landroid/app/backup/IBackupObserver;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/backup/IBackupObserver$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/app/backup/IBackupObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 6
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
    const/4 v5, 0x1

    #@1
    .line 44
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v4

    #@8
    return v4

    #@9
    .line 48
    :sswitch_0
    const-string/jumbo v4, "android.app.backup.IBackupObserver"

    #@c
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 49
    return v5

    #@10
    .line 53
    :sswitch_1
    const-string/jumbo v4, "android.app.backup.IBackupObserver"

    #@13
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    .line 57
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_0

    #@20
    .line 58
    sget-object v4, Landroid/app/backup/BackupProgress;->CREATOR:Landroid/os/Parcelable$Creator;

    #@22
    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@25
    move-result-object v3

    #@26
    check-cast v3, Landroid/app/backup/BackupProgress;

    #@28
    .line 63
    :goto_0
    invoke-virtual {p0, v1, v3}, Landroid/app/backup/IBackupObserver$Stub;->onUpdate(Ljava/lang/String;Landroid/app/backup/BackupProgress;)V

    #@2b
    .line 64
    return v5

    #@2c
    .line 61
    :cond_0
    const/4 v3, 0x0

    #@2d
    .local v3, "_arg1":Landroid/app/backup/BackupProgress;
    goto :goto_0

    #@2e
    .line 68
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/app/backup/BackupProgress;
    :sswitch_2
    const-string/jumbo v4, "android.app.backup.IBackupObserver"

    #@31
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@34
    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    .line 72
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3b
    move-result v2

    #@3c
    .line 73
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/app/backup/IBackupObserver$Stub;->onResult(Ljava/lang/String;I)V

    #@3f
    .line 74
    return v5

    #@40
    .line 78
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_3
    const-string/jumbo v4, "android.app.backup.IBackupObserver"

    #@43
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@46
    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@49
    move-result v0

    #@4a
    .line 81
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/backup/IBackupObserver$Stub;->backupFinished(I)V

    #@4d
    .line 82
    return v5

    #@4e
    .line 44
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
