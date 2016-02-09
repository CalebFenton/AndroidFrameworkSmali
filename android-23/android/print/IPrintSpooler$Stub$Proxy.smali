.class Landroid/print/IPrintSpooler$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPrintSpooler.java"

# interfaces
.implements Landroid/print/IPrintSpooler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/IPrintSpooler$Stub;
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
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 202
    iput-object p1, p0, Landroid/print/IPrintSpooler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 200
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 206
    iget-object v0, p0, Landroid/print/IPrintSpooler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public createPrintJob(Landroid/print/PrintJobInfo;)V
    .locals 5
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 268
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 270
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.print.IPrintSpooler"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 271
    if-eqz p1, :cond_0

    #@c
    .line 272
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 273
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/print/PrintJobInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 278
    :goto_0
    iget-object v1, p0, Landroid/print/IPrintSpooler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v2, 0x4

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x1

    #@19
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 266
    return-void

    #@20
    .line 276
    :cond_0
    const/4 v1, 0x0

    #@21
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    goto :goto_0

    #@25
    .line 280
    :catchall_0
    move-exception v1

    #@26
    .line 281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 280
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 210
    const-string/jumbo v0, "android.print.IPrintSpooler"

    #@3
    return-object v0
.end method

.method public getPrintJobInfo(Landroid/print/PrintJobId;Landroid/print/IPrintSpoolerCallbacks;II)V
    .locals 5
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "callback"    # Landroid/print/IPrintSpoolerCallbacks;
    .param p3, "appId"    # I
    .param p4, "sequence"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 247
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 249
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.print.IPrintSpooler"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 250
    if-eqz p1, :cond_1

    #@d
    .line 251
    const/4 v2, 0x1

    #@e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 252
    const/4 v2, 0x0

    #@12
    invoke-virtual {p1, v0, v2}, Landroid/print/PrintJobId;->writeToParcel(Landroid/os/Parcel;I)V

    #@15
    .line 257
    :goto_0
    if-eqz p2, :cond_0

    #@17
    invoke-interface {p2}, Landroid/print/IPrintSpoolerCallbacks;->asBinder()Landroid/os/IBinder;

    #@1a
    move-result-object v1

    #@1b
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1e
    .line 258
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 259
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 260
    iget-object v1, p0, Landroid/print/IPrintSpooler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@26
    const/4 v2, 0x3

    #@27
    const/4 v3, 0x0

    #@28
    const/4 v4, 0x1

    #@29
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 245
    return-void

    #@30
    .line 255
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
    .line 262
    :catchall_0
    move-exception v1

    #@36
    .line 263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 262
    throw v1
.end method

.method public getPrintJobInfos(Landroid/print/IPrintSpoolerCallbacks;Landroid/content/ComponentName;III)V
    .locals 5
    .param p1, "callback"    # Landroid/print/IPrintSpoolerCallbacks;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "state"    # I
    .param p4, "appId"    # I
    .param p5, "sequence"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 225
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 227
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.print.IPrintSpooler"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 228
    if-eqz p1, :cond_0

    #@d
    invoke-interface {p1}, Landroid/print/IPrintSpoolerCallbacks;->asBinder()Landroid/os/IBinder;

    #@10
    move-result-object v1

    #@11
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 229
    if-eqz p2, :cond_1

    #@16
    .line 230
    const/4 v1, 0x1

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 231
    const/4 v1, 0x0

    #@1b
    invoke-virtual {p2, v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 236
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 237
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 238
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 239
    iget-object v1, p0, Landroid/print/IPrintSpooler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@29
    const/4 v2, 0x2

    #@2a
    const/4 v3, 0x0

    #@2b
    const/4 v4, 0x1

    #@2c
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 242
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 223
    return-void

    #@33
    .line 234
    :cond_1
    const/4 v1, 0x0

    #@34
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    goto :goto_0

    #@38
    .line 241
    :catchall_0
    move-exception v1

    #@39
    .line 242
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 241
    throw v1
.end method

.method public removeObsoletePrintJobs()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 214
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 216
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.print.IPrintSpooler"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 217
    iget-object v1, p0, Landroid/print/IPrintSpooler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/4 v2, 0x1

    #@d
    const/4 v3, 0x0

    #@e
    const/4 v4, 0x1

    #@f
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@15
    .line 212
    return-void

    #@16
    .line 219
    :catchall_0
    move-exception v1

    #@17
    .line 220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1a
    .line 219
    throw v1
.end method

.method public setClient(Landroid/print/IPrintSpoolerClient;)V
    .locals 5
    .param p1, "client"    # Landroid/print/IPrintSpoolerClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 354
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 356
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.print.IPrintSpooler"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 357
    if-eqz p1, :cond_0

    #@d
    invoke-interface {p1}, Landroid/print/IPrintSpoolerClient;->asBinder()Landroid/os/IBinder;

    #@10
    move-result-object v1

    #@11
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 358
    iget-object v1, p0, Landroid/print/IPrintSpooler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v2, 0x8

    #@18
    const/4 v3, 0x0

    #@19
    const/4 v4, 0x1

    #@1a
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 361
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 352
    return-void

    #@21
    .line 360
    :catchall_0
    move-exception v1

    #@22
    .line 361
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 360
    throw v1
.end method

.method public setPrintJobCancelling(Landroid/print/PrintJobId;Z)V
    .locals 5
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "cancelling"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 366
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 368
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.print.IPrintSpooler"

    #@9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@c
    .line 369
    if-eqz p1, :cond_0

    #@e
    .line 370
    const/4 v3, 0x1

    #@f
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 371
    const/4 v3, 0x0

    #@13
    invoke-virtual {p1, v0, v3}, Landroid/print/PrintJobId;->writeToParcel(Landroid/os/Parcel;I)V

    #@16
    .line 376
    :goto_0
    if-eqz p2, :cond_1

    #@18
    :goto_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 377
    iget-object v1, p0, Landroid/print/IPrintSpooler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v2, 0x9

    #@1f
    const/4 v3, 0x0

    #@20
    const/4 v4, 0x1

    #@21
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 380
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 364
    return-void

    #@28
    .line 374
    :cond_0
    const/4 v3, 0x0

    #@29
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    goto :goto_0

    #@2d
    .line 379
    :catchall_0
    move-exception v1

    #@2e
    .line 380
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 379
    throw v1

    #@32
    :cond_1
    move v1, v2

    #@33
    .line 376
    goto :goto_1
.end method

.method public setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;Landroid/print/IPrintSpoolerCallbacks;I)V
    .locals 5
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "status"    # I
    .param p3, "stateReason"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/print/IPrintSpoolerCallbacks;
    .param p5, "sequence"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 286
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 288
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.print.IPrintSpooler"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 289
    if-eqz p1, :cond_1

    #@d
    .line 290
    const/4 v2, 0x1

    #@e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 291
    const/4 v2, 0x0

    #@12
    invoke-virtual {p1, v0, v2}, Landroid/print/PrintJobId;->writeToParcel(Landroid/os/Parcel;I)V

    #@15
    .line 296
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 297
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 298
    if-eqz p4, :cond_0

    #@1d
    invoke-interface {p4}, Landroid/print/IPrintSpoolerCallbacks;->asBinder()Landroid/os/IBinder;

    #@20
    move-result-object v1

    #@21
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@24
    .line 299
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 300
    iget-object v1, p0, Landroid/print/IPrintSpooler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@29
    const/4 v2, 0x5

    #@2a
    const/4 v3, 0x0

    #@2b
    const/4 v4, 0x1

    #@2c
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 284
    return-void

    #@33
    .line 294
    :cond_1
    const/4 v2, 0x0

    #@34
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    goto :goto_0

    #@38
    .line 302
    :catchall_0
    move-exception v1

    #@39
    .line 303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 302
    throw v1
.end method

.method public setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;Landroid/print/IPrintSpoolerCallbacks;I)V
    .locals 5
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/print/IPrintSpoolerCallbacks;
    .param p4, "sequence"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 308
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 310
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.print.IPrintSpooler"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 311
    if-eqz p1, :cond_1

    #@d
    .line 312
    const/4 v2, 0x1

    #@e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 313
    const/4 v2, 0x0

    #@12
    invoke-virtual {p1, v0, v2}, Landroid/print/PrintJobId;->writeToParcel(Landroid/os/Parcel;I)V

    #@15
    .line 318
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@18
    .line 319
    if-eqz p3, :cond_0

    #@1a
    invoke-interface {p3}, Landroid/print/IPrintSpoolerCallbacks;->asBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v1

    #@1e
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@21
    .line 320
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 321
    iget-object v1, p0, Landroid/print/IPrintSpooler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@26
    const/4 v2, 0x6

    #@27
    const/4 v3, 0x0

    #@28
    const/4 v4, 0x1

    #@29
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 306
    return-void

    #@30
    .line 316
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
    .line 323
    :catchall_0
    move-exception v1

    #@36
    .line 324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 323
    throw v1
.end method

.method public writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V
    .locals 5
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "printJobId"    # Landroid/print/PrintJobId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 329
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 331
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.print.IPrintSpooler"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 332
    if-eqz p1, :cond_0

    #@c
    .line 333
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 334
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 339
    :goto_0
    if-eqz p2, :cond_1

    #@16
    .line 340
    const/4 v1, 0x1

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 341
    const/4 v1, 0x0

    #@1b
    invoke-virtual {p2, v0, v1}, Landroid/print/PrintJobId;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 346
    :goto_1
    iget-object v1, p0, Landroid/print/IPrintSpooler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/4 v2, 0x7

    #@21
    const/4 v3, 0x0

    #@22
    const/4 v4, 0x1

    #@23
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 327
    return-void

    #@2a
    .line 337
    :cond_0
    const/4 v1, 0x0

    #@2b
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    goto :goto_0

    #@2f
    .line 348
    :catchall_0
    move-exception v1

    #@30
    .line 349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 348
    throw v1

    #@34
    .line 344
    :cond_1
    const/4 v1, 0x0

    #@35
    :try_start_2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@38
    goto :goto_1
.end method
