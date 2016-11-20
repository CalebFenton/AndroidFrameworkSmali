.class Landroid/print/IPrintDocumentAdapter$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPrintDocumentAdapter.java"

# interfaces
.implements Landroid/print/IPrintDocumentAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/IPrintDocumentAdapter$Stub;
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
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 136
    iput-object p1, p0, Landroid/print/IPrintDocumentAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 134
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 140
    iget-object v0, p0, Landroid/print/IPrintDocumentAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public finish()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 226
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 228
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.print.IPrintDocumentAdapter"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 229
    iget-object v1, p0, Landroid/print/IPrintDocumentAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/4 v2, 0x5

    #@d
    const/4 v3, 0x0

    #@e
    const/4 v4, 0x1

    #@f
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@15
    .line 224
    return-void

    #@16
    .line 231
    :catchall_0
    move-exception v1

    #@17
    .line 232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1a
    .line 231
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 144
    const-string/jumbo v0, "android.print.IPrintDocumentAdapter"

    #@3
    return-object v0
.end method

.method public kill(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 237
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 239
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.print.IPrintDocumentAdapter"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 240
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 241
    iget-object v1, p0, Landroid/print/IPrintDocumentAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/4 v2, 0x6

    #@10
    const/4 v3, 0x0

    #@11
    const/4 v4, 0x1

    #@12
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 235
    return-void

    #@19
    .line 243
    :catchall_0
    move-exception v1

    #@1a
    .line 244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 243
    throw v1
.end method

.method public layout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/print/ILayoutResultCallback;Landroid/os/Bundle;I)V
    .locals 5
    .param p1, "oldAttributes"    # Landroid/print/PrintAttributes;
    .param p2, "newAttributes"    # Landroid/print/PrintAttributes;
    .param p3, "callback"    # Landroid/print/ILayoutResultCallback;
    .param p4, "metadata"    # Landroid/os/Bundle;
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
    .line 171
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 173
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.print.IPrintDocumentAdapter"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 174
    if-eqz p1, :cond_1

    #@d
    .line 175
    const/4 v2, 0x1

    #@e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 176
    const/4 v2, 0x0

    #@12
    invoke-virtual {p1, v0, v2}, Landroid/print/PrintAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    #@15
    .line 181
    :goto_0
    if-eqz p2, :cond_2

    #@17
    .line 182
    const/4 v2, 0x1

    #@18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 183
    const/4 v2, 0x0

    #@1c
    invoke-virtual {p2, v0, v2}, Landroid/print/PrintAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    #@1f
    .line 188
    :goto_1
    if-eqz p3, :cond_0

    #@21
    invoke-interface {p3}, Landroid/print/ILayoutResultCallback;->asBinder()Landroid/os/IBinder;

    #@24
    move-result-object v1

    #@25
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@28
    .line 189
    if-eqz p4, :cond_3

    #@2a
    .line 190
    const/4 v1, 0x1

    #@2b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2e
    .line 191
    const/4 v1, 0x0

    #@2f
    invoke-virtual {p4, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@32
    .line 196
    :goto_2
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@35
    .line 197
    iget-object v1, p0, Landroid/print/IPrintDocumentAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@37
    const/4 v2, 0x3

    #@38
    const/4 v3, 0x0

    #@39
    const/4 v4, 0x1

    #@3a
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    .line 200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 169
    return-void

    #@41
    .line 179
    :cond_1
    const/4 v2, 0x0

    #@42
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@45
    goto :goto_0

    #@46
    .line 199
    :catchall_0
    move-exception v1

    #@47
    .line 200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4a
    .line 199
    throw v1

    #@4b
    .line 186
    :cond_2
    const/4 v2, 0x0

    #@4c
    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@4f
    goto :goto_1

    #@50
    .line 194
    :cond_3
    const/4 v1, 0x0

    #@51
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@54
    goto :goto_2
.end method

.method public setObserver(Landroid/print/IPrintDocumentAdapterObserver;)V
    .locals 5
    .param p1, "observer"    # Landroid/print/IPrintDocumentAdapterObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 150
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.print.IPrintDocumentAdapter"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 151
    if-eqz p1, :cond_0

    #@d
    invoke-interface {p1}, Landroid/print/IPrintDocumentAdapterObserver;->asBinder()Landroid/os/IBinder;

    #@10
    move-result-object v1

    #@11
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 152
    iget-object v1, p0, Landroid/print/IPrintDocumentAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 146
    return-void

    #@20
    .line 154
    :catchall_0
    move-exception v1

    #@21
    .line 155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 154
    throw v1
.end method

.method public start()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 160
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 162
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.print.IPrintDocumentAdapter"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 163
    iget-object v1, p0, Landroid/print/IPrintDocumentAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/4 v2, 0x2

    #@d
    const/4 v3, 0x0

    #@e
    const/4 v4, 0x1

    #@f
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@15
    .line 158
    return-void

    #@16
    .line 165
    :catchall_0
    move-exception v1

    #@17
    .line 166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1a
    .line 165
    throw v1
.end method

.method public write([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/print/IWriteResultCallback;I)V
    .locals 5
    .param p1, "pages"    # [Landroid/print/PageRange;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "callback"    # Landroid/print/IWriteResultCallback;
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
    .line 205
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 207
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.print.IPrintDocumentAdapter"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 208
    const/4 v2, 0x0

    #@c
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@f
    .line 209
    if-eqz p2, :cond_1

    #@11
    .line 210
    const/4 v2, 0x1

    #@12
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 211
    const/4 v2, 0x0

    #@16
    invoke-virtual {p2, v0, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@19
    .line 216
    :goto_0
    if-eqz p3, :cond_0

    #@1b
    invoke-interface {p3}, Landroid/print/IWriteResultCallback;->asBinder()Landroid/os/IBinder;

    #@1e
    move-result-object v1

    #@1f
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@22
    .line 217
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 218
    iget-object v1, p0, Landroid/print/IPrintDocumentAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@27
    const/4 v2, 0x4

    #@28
    const/4 v3, 0x0

    #@29
    const/4 v4, 0x1

    #@2a
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 203
    return-void

    #@31
    .line 214
    :cond_1
    const/4 v2, 0x0

    #@32
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    goto :goto_0

    #@36
    .line 220
    :catchall_0
    move-exception v1

    #@37
    .line 221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 220
    throw v1
.end method
