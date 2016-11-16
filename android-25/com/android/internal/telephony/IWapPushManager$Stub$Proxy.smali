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
    .line 175
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 176
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 179
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "com.android.internal.telephony.IWapPushManager"

    #@d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 180
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@13
    .line 181
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@16
    .line 182
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    .line 183
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    .line 184
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 185
    if-eqz p6, :cond_0

    #@21
    move v5, v3

    #@22
    :goto_0
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 186
    if-eqz p7, :cond_1

    #@27
    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 187
    iget-object v3, p0, Lcom/android/internal/telephony/IWapPushManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2c
    const/4 v4, 0x2

    #@2d
    const/4 v5, 0x0

    #@2e
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@31
    .line 188
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@34
    .line 189
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
    .line 192
    .local v2, "_result":Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3e
    .line 193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 195
    return v2

    #@42
    .end local v2    # "_result":Z
    :cond_0
    move v5, v4

    #@43
    .line 185
    goto :goto_0

    #@44
    :cond_1
    move v3, v4

    #@45
    .line 186
    goto :goto_1

    #@46
    .line 189
    :cond_2
    const/4 v2, 0x0

    #@47
    .restart local v2    # "_result":Z
    goto :goto_2

    #@48
    .line 191
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@49
    .line 192
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4c
    .line 193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4f
    .line 191
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
    .line 231
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 232
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 235
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IWapPushManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 236
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 237
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 238
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 239
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    .line 240
    iget-object v3, p0, Lcom/android/internal/telephony/IWapPushManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/4 v4, 0x4

    #@1d
    const/4 v5, 0x0

    #@1e
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@21
    .line 241
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@24
    .line 242
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
    .line 245
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 248
    return v2

    #@32
    .line 242
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@33
    .restart local v2    # "_result":Z
    goto :goto_0

    #@34
    .line 244
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@35
    .line 245
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3b
    .line 244
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
    .line 144
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 145
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 148
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IWapPushManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 149
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 150
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 151
    if-eqz p3, :cond_0

    #@16
    .line 152
    const/4 v3, 0x1

    #@17
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 153
    const/4 v3, 0x0

    #@1b
    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 158
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/IWapPushManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/4 v4, 0x1

    #@21
    const/4 v5, 0x0

    #@22
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 159
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@28
    .line 160
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    move-result v2

    #@2c
    .line 163
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 166
    return v2

    #@33
    .line 156
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
    .line 162
    :catchall_0
    move-exception v3

    #@39
    .line 163
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 162
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
    .line 203
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 204
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 207
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "com.android.internal.telephony.IWapPushManager"

    #@d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 208
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@13
    .line 209
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@16
    .line 210
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    .line 211
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    .line 212
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 213
    if-eqz p6, :cond_0

    #@21
    move v5, v3

    #@22
    :goto_0
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 214
    if-eqz p7, :cond_1

    #@27
    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 215
    iget-object v3, p0, Lcom/android/internal/telephony/IWapPushManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2c
    const/4 v4, 0x3

    #@2d
    const/4 v5, 0x0

    #@2e
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@31
    .line 216
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@34
    .line 217
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
    .line 220
    .local v2, "_result":Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3e
    .line 221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 223
    return v2

    #@42
    .end local v2    # "_result":Z
    :cond_0
    move v5, v4

    #@43
    .line 213
    goto :goto_0

    #@44
    :cond_1
    move v3, v4

    #@45
    .line 214
    goto :goto_1

    #@46
    .line 217
    :cond_2
    const/4 v2, 0x0

    #@47
    .restart local v2    # "_result":Z
    goto :goto_2

    #@48
    .line 219
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@49
    .line 220
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4c
    .line 221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4f
    .line 219
    throw v3
.end method
