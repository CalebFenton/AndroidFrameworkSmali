.class Landroid/webkit/IWebViewUpdateService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWebViewUpdateService.java"

# interfaces
.implements Landroid/webkit/IWebViewUpdateService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/IWebViewUpdateService$Stub;
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
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 131
    iput-object p1, p0, Landroid/webkit/IWebViewUpdateService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 129
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 135
    iget-object v0, p0, Landroid/webkit/IWebViewUpdateService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "newProvider"    # Ljava/lang/String;
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
    .line 195
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 198
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.webkit.IWebViewUpdateService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 199
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 200
    iget-object v3, p0, Landroid/webkit/IWebViewUpdateService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x3

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 201
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 202
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result-object v2

    #@1f
    .line 205
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 208
    return-object v2

    #@26
    .line 204
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@27
    .line 205
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 204
    throw v3
.end method

.method public enableFallbackLogic(Z)V
    .locals 5
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 298
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 299
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 301
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.webkit.IWebViewUpdateService"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 302
    if-eqz p1, :cond_0

    #@11
    const/4 v2, 0x1

    #@12
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 303
    iget-object v2, p0, Landroid/webkit/IWebViewUpdateService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v3, 0x8

    #@19
    const/4 v4, 0x0

    #@1a
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    .line 304
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 307
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 296
    return-void

    #@27
    .line 306
    :catchall_0
    move-exception v2

    #@28
    .line 307
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 306
    throw v2
.end method

.method public getAllWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 236
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 237
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 240
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.webkit.IWebViewUpdateService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 241
    iget-object v3, p0, Landroid/webkit/IWebViewUpdateService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x5

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 242
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 243
    sget-object v3, Landroid/webkit/WebViewProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, [Landroid/webkit/WebViewProviderInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 246
    .local v2, "_result":[Landroid/webkit/WebViewProviderInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 249
    return-object v2

    #@27
    .line 245
    .end local v2    # "_result":[Landroid/webkit/WebViewProviderInfo;
    :catchall_0
    move-exception v3

    #@28
    .line 246
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 245
    throw v3
.end method

.method public getCurrentWebViewPackageName()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 256
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 257
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 260
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.webkit.IWebViewUpdateService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 261
    iget-object v3, p0, Landroid/webkit/IWebViewUpdateService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x6

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 262
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 263
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-object v2

    #@1c
    .line 266
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 269
    return-object v2

    #@23
    .line 265
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@24
    .line 266
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 265
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 139
    const-string/jumbo v0, "android.webkit.IWebViewUpdateService"

    #@3
    return-object v0
.end method

.method public getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 216
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 217
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 220
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.webkit.IWebViewUpdateService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 221
    iget-object v3, p0, Landroid/webkit/IWebViewUpdateService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x4

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 222
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 223
    sget-object v3, Landroid/webkit/WebViewProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, [Landroid/webkit/WebViewProviderInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 226
    .local v2, "_result":[Landroid/webkit/WebViewProviderInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 229
    return-object v2

    #@27
    .line 225
    .end local v2    # "_result":[Landroid/webkit/WebViewProviderInfo;
    :catchall_0
    move-exception v3

    #@28
    .line 226
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 225
    throw v3
.end method

.method public isFallbackPackage(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 277
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 278
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 281
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.webkit.IWebViewUpdateService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 282
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 283
    iget-object v3, p0, Landroid/webkit/IWebViewUpdateService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x7

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 284
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 285
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    const/4 v2, 0x1

    #@22
    .line 288
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 291
    return v2

    #@29
    .line 285
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2a
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2b
    .line 287
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2c
    .line 288
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 287
    throw v3
.end method

.method public notifyRelroCreationCompleted()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 146
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 147
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 149
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.webkit.IWebViewUpdateService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 150
    iget-object v2, p0, Landroid/webkit/IWebViewUpdateService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v3, 0x1

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 151
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 154
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 144
    return-void

    #@1f
    .line 153
    :catchall_0
    move-exception v2

    #@20
    .line 154
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 153
    throw v2
.end method

.method public waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 164
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 165
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 168
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.webkit.IWebViewUpdateService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 169
    iget-object v3, p0, Landroid/webkit/IWebViewUpdateService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x2

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 170
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 171
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 172
    sget-object v3, Landroid/webkit/WebViewProviderResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, Landroid/webkit/WebViewProviderResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 179
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 182
    return-object v2

    #@2d
    .line 175
    :cond_0
    const/4 v2, 0x0

    #@2e
    .local v2, "_result":Landroid/webkit/WebViewProviderResponse;
    goto :goto_0

    #@2f
    .line 178
    .end local v2    # "_result":Landroid/webkit/WebViewProviderResponse;
    :catchall_0
    move-exception v3

    #@30
    .line 179
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 178
    throw v3
.end method
