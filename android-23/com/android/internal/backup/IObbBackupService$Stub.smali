.class public abstract Lcom/android/internal/backup/IObbBackupService$Stub;
.super Landroid/os/Binder;
.source "IObbBackupService.java"

# interfaces
.implements Lcom/android/internal/backup/IObbBackupService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/backup/IObbBackupService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/backup/IObbBackupService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.backup.IObbBackupService"

.field static final TRANSACTION_backupObbs:I = 0x1

.field static final TRANSACTION_restoreObbFile:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 25
    const-string/jumbo v0, "com.android.internal.backup.IObbBackupService"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/backup/IObbBackupService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/IObbBackupService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 33
    if-nez p0, :cond_0

    #@3
    .line 34
    return-object v1

    #@4
    .line 36
    :cond_0
    const-string/jumbo v1, "com.android.internal.backup.IObbBackupService"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 37
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/backup/IObbBackupService;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 38
    check-cast v0, Lcom/android/internal/backup/IObbBackupService;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 40
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/backup/IObbBackupService$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/backup/IObbBackupService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 44
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
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
    .line 48
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 104
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v3

    #@7
    return v3

    #@8
    .line 52
    :sswitch_0
    const-string/jumbo v3, "com.android.internal.backup.IObbBackupService"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 53
    const/4 v3, 0x1

    #@11
    return v3

    #@12
    .line 57
    :sswitch_1
    const-string/jumbo v3, "com.android.internal.backup.IObbBackupService"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    .line 61
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_0

    #@24
    .line 62
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@26
    move-object/from16 v0, p2

    #@28
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2b
    move-result-object v5

    #@2c
    check-cast v5, Landroid/os/ParcelFileDescriptor;

    #@2e
    .line 68
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@31
    move-result v2

    #@32
    .line 70
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@35
    move-result-object v3

    #@36
    invoke-static {v3}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    #@39
    move-result-object v16

    #@3a
    .line 71
    .local v16, "_arg3":Landroid/app/backup/IBackupManager;
    move-object/from16 v0, p0

    #@3c
    move-object/from16 v1, v16

    #@3e
    invoke-virtual {v0, v4, v5, v2, v1}, Lcom/android/internal/backup/IObbBackupService$Stub;->backupObbs(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V

    #@41
    .line 72
    const/4 v3, 0x1

    #@42
    return v3

    #@43
    .line 65
    .end local v2    # "_arg2":I
    .end local v16    # "_arg3":Landroid/app/backup/IBackupManager;
    :cond_0
    const/4 v5, 0x0

    #@44
    .local v5, "_arg1":Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    #@45
    .line 76
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :sswitch_2
    const-string/jumbo v3, "com.android.internal.backup.IObbBackupService"

    #@48
    move-object/from16 v0, p2

    #@4a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4d
    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@50
    move-result-object v4

    #@51
    .line 80
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@54
    move-result v3

    #@55
    if-eqz v3, :cond_1

    #@57
    .line 81
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@59
    move-object/from16 v0, p2

    #@5b
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5e
    move-result-object v5

    #@5f
    check-cast v5, Landroid/os/ParcelFileDescriptor;

    #@61
    .line 87
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@64
    move-result-wide v6

    #@65
    .line 89
    .local v6, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@68
    move-result v8

    #@69
    .line 91
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6c
    move-result-object v9

    #@6d
    .line 93
    .local v9, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@70
    move-result-wide v10

    #@71
    .line 95
    .local v10, "_arg5":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@74
    move-result-wide v12

    #@75
    .line 97
    .local v12, "_arg6":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@78
    move-result v14

    #@79
    .line 99
    .local v14, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@7c
    move-result-object v3

    #@7d
    invoke-static {v3}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    #@80
    move-result-object v15

    #@81
    .local v15, "_arg8":Landroid/app/backup/IBackupManager;
    move-object/from16 v3, p0

    #@83
    .line 100
    invoke-virtual/range {v3 .. v15}, Lcom/android/internal/backup/IObbBackupService$Stub;->restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V

    #@86
    .line 101
    const/4 v3, 0x1

    #@87
    return v3

    #@88
    .line 84
    .end local v6    # "_arg2":J
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v10    # "_arg5":J
    .end local v12    # "_arg6":J
    .end local v14    # "_arg7":I
    .end local v15    # "_arg8":Landroid/app/backup/IBackupManager;
    :cond_1
    const/4 v5, 0x0

    #@89
    .restart local v5    # "_arg1":Landroid/os/ParcelFileDescriptor;
    goto :goto_1

    #@8a
    .line 48
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
