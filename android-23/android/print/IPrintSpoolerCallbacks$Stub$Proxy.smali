.class Landroid/print/IPrintSpoolerCallbacks$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPrintSpoolerCallbacks.java"

# interfaces
.implements Landroid/print/IPrintSpoolerCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/IPrintSpoolerCallbacks$Stub;
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
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 115
    iput-object p1, p0, Landroid/print/IPrintSpoolerCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 113
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Landroid/print/IPrintSpoolerCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 123
    const-string/jumbo v0, "android.print.IPrintSpoolerCallbacks"

    #@3
    return-object v0
.end method

.method public onCancelPrintJobResult(ZI)V
    .locals 5
    .param p1, "canceled"    # Z
    .param p2, "sequence"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 140
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 142
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.print.IPrintSpoolerCallbacks"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 143
    if-eqz p1, :cond_0

    #@d
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 144
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 145
    iget-object v1, p0, Landroid/print/IPrintSpoolerCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@15
    const/4 v2, 0x2

    #@16
    const/4 v3, 0x0

    #@17
    const/4 v4, 0x1

    #@18
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 138
    return-void

    #@1f
    .line 143
    :cond_0
    const/4 v1, 0x0

    #@20
    goto :goto_0

    #@21
    .line 147
    :catchall_0
    move-exception v1

    #@22
    .line 148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 147
    throw v1
.end method

.method public onGetPrintJobInfoResult(Landroid/print/PrintJobInfo;I)V
    .locals 5
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;
    .param p2, "sequence"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 179
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 181
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.print.IPrintSpoolerCallbacks"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 182
    if-eqz p1, :cond_0

    #@c
    .line 183
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 184
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/print/PrintJobInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 189
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 190
    iget-object v1, p0, Landroid/print/IPrintSpoolerCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v2, 0x5

    #@1a
    const/4 v3, 0x0

    #@1b
    const/4 v4, 0x1

    #@1c
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 177
    return-void

    #@23
    .line 187
    :cond_0
    const/4 v1, 0x0

    #@24
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    goto :goto_0

    #@28
    .line 192
    :catchall_0
    move-exception v1

    #@29
    .line 193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 192
    throw v1
.end method

.method public onGetPrintJobInfosResult(Ljava/util/List;I)V
    .locals 5
    .param p2, "sequence"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 127
    .local p1, "printJob":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 129
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.print.IPrintSpoolerCallbacks"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 130
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@d
    .line 131
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 132
    iget-object v1, p0, Landroid/print/IPrintSpoolerCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/4 v2, 0x1

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x1

    #@15
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 125
    return-void

    #@1c
    .line 134
    :catchall_0
    move-exception v1

    #@1d
    .line 135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 134
    throw v1
.end method

.method public onSetPrintJobStateResult(ZI)V
    .locals 5
    .param p1, "success"    # Z
    .param p2, "sequence"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 153
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 155
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.print.IPrintSpoolerCallbacks"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 156
    if-eqz p1, :cond_0

    #@d
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 157
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 158
    iget-object v1, p0, Landroid/print/IPrintSpoolerCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@15
    const/4 v2, 0x3

    #@16
    const/4 v3, 0x0

    #@17
    const/4 v4, 0x1

    #@18
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 151
    return-void

    #@1f
    .line 156
    :cond_0
    const/4 v1, 0x0

    #@20
    goto :goto_0

    #@21
    .line 160
    :catchall_0
    move-exception v1

    #@22
    .line 161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 160
    throw v1
.end method

.method public onSetPrintJobTagResult(ZI)V
    .locals 5
    .param p1, "success"    # Z
    .param p2, "sequence"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 166
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 168
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.print.IPrintSpoolerCallbacks"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 169
    if-eqz p1, :cond_0

    #@d
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 170
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 171
    iget-object v1, p0, Landroid/print/IPrintSpoolerCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@15
    const/4 v2, 0x4

    #@16
    const/4 v3, 0x0

    #@17
    const/4 v4, 0x1

    #@18
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 164
    return-void

    #@1f
    .line 169
    :cond_0
    const/4 v1, 0x0

    #@20
    goto :goto_0

    #@21
    .line 173
    :catchall_0
    move-exception v1

    #@22
    .line 174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 173
    throw v1
.end method
