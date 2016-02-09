.class Landroid/printservice/IPrintService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPrintService.java"

# interfaces
.implements Landroid/printservice/IPrintService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/printservice/IPrintService$Stub;
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
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 152
    iput-object p1, p0, Landroid/printservice/IPrintService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 150
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 156
    iget-object v0, p0, Landroid/printservice/IPrintService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public createPrinterDiscoverySession()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 212
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 214
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.printservice.IPrintService"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 215
    iget-object v1, p0, Landroid/printservice/IPrintService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/4 v2, 0x4

    #@d
    const/4 v3, 0x0

    #@e
    const/4 v4, 0x1

    #@f
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@15
    .line 210
    return-void

    #@16
    .line 217
    :catchall_0
    move-exception v1

    #@17
    .line 218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1a
    .line 217
    throw v1
.end method

.method public destroyPrinterDiscoverySession()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 294
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 296
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.printservice.IPrintService"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 297
    iget-object v1, p0, Landroid/printservice/IPrintService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/16 v2, 0xa

    #@e
    const/4 v3, 0x0

    #@f
    const/4 v4, 0x1

    #@10
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@16
    .line 292
    return-void

    #@17
    .line 299
    :catchall_0
    move-exception v1

    #@18
    .line 300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 299
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 160
    const-string/jumbo v0, "android.printservice.IPrintService"

    #@3
    return-object v0
.end method

.method public onPrintJobQueued(Landroid/print/PrintJobInfo;)V
    .locals 5
    .param p1, "printJobInfo"    # Landroid/print/PrintJobInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 194
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 196
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.printservice.IPrintService"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 197
    if-eqz p1, :cond_0

    #@c
    .line 198
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 199
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/print/PrintJobInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 204
    :goto_0
    iget-object v1, p0, Landroid/printservice/IPrintService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v2, 0x3

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x1

    #@19
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 207
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 192
    return-void

    #@20
    .line 202
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
    .line 206
    :catchall_0
    move-exception v1

    #@26
    .line 207
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 206
    throw v1
.end method

.method public requestCancelPrintJob(Landroid/print/PrintJobInfo;)V
    .locals 5
    .param p1, "printJobInfo"    # Landroid/print/PrintJobInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 176
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 178
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.printservice.IPrintService"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 179
    if-eqz p1, :cond_0

    #@c
    .line 180
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 181
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/print/PrintJobInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 186
    :goto_0
    iget-object v1, p0, Landroid/printservice/IPrintService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v2, 0x2

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x1

    #@19
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 189
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 174
    return-void

    #@20
    .line 184
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
    .line 188
    :catchall_0
    move-exception v1

    #@26
    .line 189
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 188
    throw v1
.end method

.method public setClient(Landroid/printservice/IPrintServiceClient;)V
    .locals 5
    .param p1, "client"    # Landroid/printservice/IPrintServiceClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 164
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 166
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.printservice.IPrintService"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 167
    if-eqz p1, :cond_0

    #@d
    invoke-interface {p1}, Landroid/printservice/IPrintServiceClient;->asBinder()Landroid/os/IBinder;

    #@10
    move-result-object v1

    #@11
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 168
    iget-object v1, p0, Landroid/printservice/IPrintService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v2, 0x1

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x1

    #@19
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 171
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 162
    return-void

    #@20
    .line 170
    :catchall_0
    move-exception v1

    #@21
    .line 171
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 170
    throw v1
.end method

.method public startPrinterDiscovery(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 223
    .local p1, "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 225
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.printservice.IPrintService"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 226
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@d
    .line 227
    iget-object v1, p0, Landroid/printservice/IPrintService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/4 v2, 0x5

    #@10
    const/4 v3, 0x0

    #@11
    const/4 v4, 0x1

    #@12
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 230
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 221
    return-void

    #@19
    .line 229
    :catchall_0
    move-exception v1

    #@1a
    .line 230
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 229
    throw v1
.end method

.method public startPrinterStateTracking(Landroid/print/PrinterId;)V
    .locals 5
    .param p1, "printerId"    # Landroid/print/PrinterId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 260
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.printservice.IPrintService"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 261
    if-eqz p1, :cond_0

    #@c
    .line 262
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 263
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/print/PrinterId;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 268
    :goto_0
    iget-object v1, p0, Landroid/printservice/IPrintService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 271
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 256
    return-void

    #@21
    .line 266
    :cond_0
    const/4 v1, 0x0

    #@22
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    goto :goto_0

    #@26
    .line 270
    :catchall_0
    move-exception v1

    #@27
    .line 271
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 270
    throw v1
.end method

.method public stopPrinterDiscovery()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 235
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 237
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.printservice.IPrintService"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 238
    iget-object v1, p0, Landroid/printservice/IPrintService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/4 v2, 0x6

    #@d
    const/4 v3, 0x0

    #@e
    const/4 v4, 0x1

    #@f
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 241
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@15
    .line 233
    return-void

    #@16
    .line 240
    :catchall_0
    move-exception v1

    #@17
    .line 241
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1a
    .line 240
    throw v1
.end method

.method public stopPrinterStateTracking(Landroid/print/PrinterId;)V
    .locals 5
    .param p1, "printerId"    # Landroid/print/PrinterId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 276
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 278
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.printservice.IPrintService"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 279
    if-eqz p1, :cond_0

    #@c
    .line 280
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 281
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/print/PrinterId;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 286
    :goto_0
    iget-object v1, p0, Landroid/printservice/IPrintService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v2, 0x9

    #@18
    const/4 v3, 0x0

    #@19
    const/4 v4, 0x1

    #@1a
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 274
    return-void

    #@21
    .line 284
    :cond_0
    const/4 v1, 0x0

    #@22
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    goto :goto_0

    #@26
    .line 288
    :catchall_0
    move-exception v1

    #@27
    .line 289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 288
    throw v1
.end method

.method public validatePrinters(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 246
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 248
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.printservice.IPrintService"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 249
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@d
    .line 250
    iget-object v1, p0, Landroid/printservice/IPrintService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/4 v2, 0x7

    #@10
    const/4 v3, 0x0

    #@11
    const/4 v4, 0x1

    #@12
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 244
    return-void

    #@19
    .line 252
    :catchall_0
    move-exception v1

    #@1a
    .line 253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 252
    throw v1
.end method
