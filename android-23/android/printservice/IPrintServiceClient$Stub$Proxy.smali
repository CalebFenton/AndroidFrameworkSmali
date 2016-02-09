.class Landroid/printservice/IPrintServiceClient$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPrintServiceClient.java"

# interfaces
.implements Landroid/printservice/IPrintServiceClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/printservice/IPrintServiceClient$Stub;
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
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 171
    iput-object p1, p0, Landroid/printservice/IPrintServiceClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 169
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 175
    iget-object v0, p0, Landroid/printservice/IPrintServiceClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 179
    const-string/jumbo v0, "android.printservice.IPrintServiceClient"

    #@3
    return-object v0
.end method

.method public getPrintJobInfo(Landroid/print/PrintJobId;)Landroid/print/PrintJobInfo;
    .locals 6
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 200
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 201
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 204
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.printservice.IPrintServiceClient"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 205
    if-eqz p1, :cond_0

    #@10
    .line 206
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 207
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/print/PrintJobId;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 212
    :goto_0
    iget-object v3, p0, Landroid/printservice/IPrintServiceClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v4, 0x2

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 213
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 214
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_1

    #@28
    .line 215
    sget-object v3, Landroid/print/PrintJobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2a
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2d
    move-result-object v2

    #@2e
    check-cast v2, Landroid/print/PrintJobInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    .line 222
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 225
    return-object v2

    #@37
    .line 210
    :cond_0
    const/4 v3, 0x0

    #@38
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    goto :goto_0

    #@3c
    .line 221
    :catchall_0
    move-exception v3

    #@3d
    .line 222
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 221
    throw v3

    #@44
    .line 218
    :cond_1
    const/4 v2, 0x0

    #@45
    .local v2, "_result":Landroid/print/PrintJobInfo;
    goto :goto_1
.end method

.method public getPrintJobInfos()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 183
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 184
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 187
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.printservice.IPrintServiceClient"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 188
    iget-object v3, p0, Landroid/printservice/IPrintServiceClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x1

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 189
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 190
    sget-object v3, Landroid/print/PrintJobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    move-result-object v2

    #@1e
    .line 193
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 196
    return-object v2

    #@25
    .line 192
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :catchall_0
    move-exception v3

    #@26
    .line 193
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 192
    throw v3
.end method

.method public onPrintersAdded(Landroid/content/pm/ParceledListSlice;)V
    .locals 5
    .param p1, "printers"    # Landroid/content/pm/ParceledListSlice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 305
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 306
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 308
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.printservice.IPrintServiceClient"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 309
    if-eqz p1, :cond_0

    #@10
    .line 310
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 311
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 316
    :goto_0
    iget-object v2, p0, Landroid/printservice/IPrintServiceClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x6

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 317
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 320
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 303
    return-void

    #@29
    .line 314
    :cond_0
    const/4 v2, 0x0

    #@2a
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    goto :goto_0

    #@2e
    .line 319
    :catchall_0
    move-exception v2

    #@2f
    .line 320
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 319
    throw v2
.end method

.method public onPrintersRemoved(Landroid/content/pm/ParceledListSlice;)V
    .locals 5
    .param p1, "printerIds"    # Landroid/content/pm/ParceledListSlice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 326
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 327
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 329
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.printservice.IPrintServiceClient"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 330
    if-eqz p1, :cond_0

    #@10
    .line 331
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 332
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 337
    :goto_0
    iget-object v2, p0, Landroid/printservice/IPrintServiceClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x7

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 338
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 341
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 324
    return-void

    #@29
    .line 335
    :cond_0
    const/4 v2, 0x0

    #@2a
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    goto :goto_0

    #@2e
    .line 340
    :catchall_0
    move-exception v2

    #@2f
    .line 341
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 340
    throw v2
.end method

.method public setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z
    .locals 6
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "state"    # I
    .param p3, "error"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 229
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 230
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 233
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.printservice.IPrintServiceClient"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 234
    if-eqz p1, :cond_0

    #@10
    .line 235
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 236
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/print/PrintJobId;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 241
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 242
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 243
    iget-object v3, p0, Landroid/printservice/IPrintServiceClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/4 v4, 0x3

    #@21
    const/4 v5, 0x0

    #@22
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 244
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@28
    .line 245
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_1

    #@2e
    const/4 v2, 0x1

    #@2f
    .line 248
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 251
    return v2

    #@36
    .line 239
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    #@37
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    goto :goto_0

    #@3b
    .line 247
    :catchall_0
    move-exception v3

    #@3c
    .line 248
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@42
    .line 247
    throw v3

    #@43
    .line 245
    :cond_1
    const/4 v2, 0x0

    #@44
    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;)Z
    .locals 6
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 255
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 256
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 259
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.printservice.IPrintServiceClient"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 260
    if-eqz p1, :cond_0

    #@10
    .line 261
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 262
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/print/PrintJobId;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 267
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 268
    iget-object v3, p0, Landroid/printservice/IPrintServiceClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v4, 0x4

    #@1e
    const/4 v5, 0x0

    #@1f
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 269
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@25
    .line 270
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_1

    #@2b
    const/4 v2, 0x1

    #@2c
    .line 273
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 274
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 276
    return v2

    #@33
    .line 265
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    #@34
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    goto :goto_0

    #@38
    .line 272
    :catchall_0
    move-exception v3

    #@39
    .line 273
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 274
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 272
    throw v3

    #@40
    .line 270
    :cond_1
    const/4 v2, 0x0

    #@41
    .restart local v2    # "_result":Z
    goto :goto_1
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
    .line 280
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 282
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.printservice.IPrintServiceClient"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 283
    if-eqz p1, :cond_0

    #@c
    .line 284
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 285
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 290
    :goto_0
    if-eqz p2, :cond_1

    #@16
    .line 291
    const/4 v1, 0x1

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 292
    const/4 v1, 0x0

    #@1b
    invoke-virtual {p2, v0, v1}, Landroid/print/PrintJobId;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 297
    :goto_1
    iget-object v1, p0, Landroid/printservice/IPrintServiceClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/4 v2, 0x5

    #@21
    const/4 v3, 0x0

    #@22
    const/4 v4, 0x1

    #@23
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 278
    return-void

    #@2a
    .line 288
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
    .line 299
    :catchall_0
    move-exception v1

    #@30
    .line 300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 299
    throw v1

    #@34
    .line 295
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
