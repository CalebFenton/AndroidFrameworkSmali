.class Lcom/android/internal/backup/IObbBackupService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IObbBackupService.java"

# interfaces
.implements Lcom/android/internal/backup/IObbBackupService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/backup/IObbBackupService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 111
    iput-object p1, p0, Lcom/android/internal/backup/IObbBackupService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 109
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/internal/backup/IObbBackupService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public backupObbs(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "token"    # I
    .param p4, "callbackBinder"    # Landroid/app/backup/IBackupManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 126
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 128
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.backup.IObbBackupService"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 129
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 130
    if-eqz p2, :cond_1

    #@10
    .line 131
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 132
    const/4 v2, 0x0

    #@15
    invoke-virtual {p2, v0, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 137
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 138
    if-eqz p4, :cond_0

    #@1d
    invoke-interface {p4}, Landroid/app/backup/IBackupManager;->asBinder()Landroid/os/IBinder;

    #@20
    move-result-object v1

    #@21
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@24
    .line 139
    iget-object v1, p0, Lcom/android/internal/backup/IObbBackupService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@26
    const/4 v2, 0x1

    #@27
    const/4 v3, 0x0

    #@28
    const/4 v4, 0x1

    #@29
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 124
    return-void

    #@30
    .line 135
    :cond_1
    const/4 v2, 0x0

    #@31
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 141
    :catchall_0
    move-exception v1

    #@36
    .line 142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 141
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 119
    const-string/jumbo v0, "com.android.internal.backup.IObbBackupService"

    #@3
    return-object v0
.end method

.method public restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "fileSize"    # J
    .param p5, "type"    # I
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "mode"    # J
    .param p9, "mtime"    # J
    .param p11, "token"    # I
    .param p12, "callbackBinder"    # Landroid/app/backup/IBackupManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 150
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v2

    #@4
    .line 152
    .local v2, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.backup.IObbBackupService"

    #@7
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 153
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 154
    if-eqz p2, :cond_0

    #@f
    .line 155
    const/4 v3, 0x1

    #@10
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 156
    const/4 v3, 0x0

    #@14
    invoke-virtual {p2, v2, v3}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    .line 161
    :goto_0
    invoke-virtual {v2, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    #@1a
    .line 162
    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 163
    invoke-virtual {v2, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@20
    .line 164
    invoke-virtual {v2, p7, p8}, Landroid/os/Parcel;->writeLong(J)V

    #@23
    .line 165
    move-wide/from16 v0, p9

    #@25
    invoke-virtual {v2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@28
    .line 166
    move/from16 v0, p11

    #@2a
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 167
    if-eqz p12, :cond_1

    #@2f
    invoke-interface/range {p12 .. p12}, Landroid/app/backup/IBackupManager;->asBinder()Landroid/os/IBinder;

    #@32
    move-result-object v3

    #@33
    :goto_1
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@36
    .line 168
    iget-object v3, p0, Lcom/android/internal/backup/IObbBackupService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@38
    const/4 v4, 0x2

    #@39
    const/4 v5, 0x0

    #@3a
    const/4 v6, 0x1

    #@3b
    invoke-interface {v3, v4, v2, v5, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    .line 171
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 148
    return-void

    #@42
    .line 159
    :cond_0
    const/4 v3, 0x0

    #@43
    :try_start_1
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@46
    goto :goto_0

    #@47
    .line 170
    :catchall_0
    move-exception v3

    #@48
    .line 171
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@4b
    .line 170
    throw v3

    #@4c
    .line 167
    :cond_1
    const/4 v3, 0x0

    #@4d
    goto :goto_1
.end method
