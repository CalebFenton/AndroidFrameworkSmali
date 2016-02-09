.class Lcom/android/internal/telephony/IWapPushManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWapPushManager.java"

# interfaces
.implements Lcom/android/internal/telephony/IWapPushManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IWapPushManager$Stub;
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
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 132
    iput-object p1, p0, Lcom/android/internal/telephony/IWapPushManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 130
    return-void
.end method


# virtual methods
.method public addPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)Z
    .locals 6
    .param p1, "x_app_id"    # Ljava/lang/String;
    .param p2, "content_type"    # Ljava/lang/String;
    .param p3, "package_name"    # Ljava/lang/String;
    .param p4, "class_name"    # Ljava/lang/String;
    .param p5, "app_type"    # I
    .param p6, "need_signature"    # Z
    .param p7, "further_processing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 179
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 180
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 183
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "com.android.internal.telephony.IWapPushManager"

    #@d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 184
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@13
    .line 185
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@16
    .line 186
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    .line 187
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    .line 188
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 189
    if-eqz p6, :cond_0

    #@21
    move v5, v3

    #@22
    :goto_0
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 190
    if-eqz p7, :cond_1

    #@27
    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 191
    iget-object v3, p0, Lcom/android/internal/telephony/IWapPushManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2c
    const/4 v4, 0x2

    #@2d
    const/4 v5, 0x0

    #@2e
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@31
    .line 192
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@34
    .line 193
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    move-result v3

    #@38
    if-eqz v3, :cond_2

    #@3a
    const/4 v2, 0x1

    #@3b
    .line 196
    .local v2, "_result":Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3e
    .line 197
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 199
    return v2

    #@42
    .end local v2    # "_result":Z
    :cond_0
    move v5, v4

    #@43
    .line 189
    goto :goto_0

    #@44
    :cond_1
    move v3, v4

    #@45
    .line 190
    goto :goto_1

    #@46
    .line 193
    :cond_2
    const/4 v2, 0x0

    #@47
    .restart local v2    # "_result":Z
    goto :goto_2

    #@48
    .line 195
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@49
    .line 196
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4c
    .line 197
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4f
    .line 195
    throw v3
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/IWapPushManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public deletePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "x_app_id"    # Ljava/lang/String;
    .param p2, "content_type"    # Ljava/lang/String;
    .param p3, "package_name"    # Ljava/lang/String;
    .param p4, "class_name"    # Ljava/lang/String;
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
    .line 236
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 239
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IWapPushManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 240
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 241
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 242
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 243
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    .line 244
    iget-object v3, p0, Lcom/android/internal/telephony/IWapPushManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/4 v4, 0x4

    #@1d
    const/4 v5, 0x0

    #@1e
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@21
    .line 245
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@24
    .line 246
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_0

    #@2a
    const/4 v2, 0x1

    #@2b
    .line 249
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 252
    return v2

    #@32
    .line 246
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@33
    .restart local v2    # "_result":Z
    goto :goto_0

    #@34
    .line 248
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@35
    .line 249
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3b
    .line 248
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 140
    const-string/jumbo v0, "com.android.internal.telephony.IWapPushManager"

    #@3
    return-object v0
.end method

.method public processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I
    .locals 6
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "content_type"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 149
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 152
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IWapPushManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 153
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 154
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 155
    if-eqz p3, :cond_0

    #@16
    .line 156
    const/4 v3, 0x1

    #@17
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 157
    const/4 v3, 0x0

    #@1b
    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 162
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/IWapPushManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/4 v4, 0x1

    #@21
    const/4 v5, 0x0

    #@22
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 163
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@28
    .line 164
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    move-result v2

    #@2c
    .line 167
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 170
    return v2

    #@33
    .line 160
    .end local v2    # "_result":I
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
    .line 166
    :catchall_0
    move-exception v3

    #@39
    .line 167
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 166
    throw v3
.end method

.method public updatePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)Z
    .locals 6
    .param p1, "x_app_id"    # Ljava/lang/String;
    .param p2, "content_type"    # Ljava/lang/String;
    .param p3, "package_name"    # Ljava/lang/String;
    .param p4, "class_name"    # Ljava/lang/String;
    .param p5, "app_type"    # I
    .param p6, "need_signature"    # Z
    .param p7, "further_processing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 207
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 208
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 211
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "com.android.internal.telephony.IWapPushManager"

    #@d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 212
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@13
    .line 213
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@16
    .line 214
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    .line 215
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    .line 216
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 217
    if-eqz p6, :cond_0

    #@21
    move v5, v3

    #@22
    :goto_0
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 218
    if-eqz p7, :cond_1

    #@27
    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 219
    iget-object v3, p0, Lcom/android/internal/telephony/IWapPushManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2c
    const/4 v4, 0x3

    #@2d
    const/4 v5, 0x0

    #@2e
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@31
    .line 220
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@34
    .line 221
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    move-result v3

    #@38
    if-eqz v3, :cond_2

    #@3a
    const/4 v2, 0x1

    #@3b
    .line 224
    .local v2, "_result":Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3e
    .line 225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 227
    return v2

    #@42
    .end local v2    # "_result":Z
    :cond_0
    move v5, v4

    #@43
    .line 217
    goto :goto_0

    #@44
    :cond_1
    move v3, v4

    #@45
    .line 218
    goto :goto_1

    #@46
    .line 221
    :cond_2
    const/4 v2, 0x0

    #@47
    .restart local v2    # "_result":Z
    goto :goto_2

    #@48
    .line 223
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@49
    .line 224
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4c
    .line 225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4f
    .line 223
    throw v3
.end method
