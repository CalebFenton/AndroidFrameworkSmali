.class Landroid/app/IAlarmManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAlarmManager.java"

# interfaces
.implements Landroid/app/IAlarmManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IAlarmManager$Stub;
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
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 153
    iput-object p1, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 151
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 157
    iget-object v0, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 161
    const-string/jumbo v0, "android.app.IAlarmManager"

    #@3
    return-object v0
.end method

.method public getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 6
    .param p1, "userId"    # I
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
    const-string/jumbo v3, "android.app.IAlarmManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 282
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 283
    iget-object v3, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x6

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

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    .line 286
    sget-object v3, Landroid/app/AlarmManager$AlarmClockInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@23
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    check-cast v2, Landroid/app/AlarmManager$AlarmClockInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 293
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 296
    return-object v2

    #@30
    .line 289
    :cond_0
    const/4 v2, 0x0

    #@31
    .local v2, "_result":Landroid/app/AlarmManager$AlarmClockInfo;
    goto :goto_0

    #@32
    .line 292
    .end local v2    # "_result":Landroid/app/AlarmManager$AlarmClockInfo;
    :catchall_0
    move-exception v3

    #@33
    .line 293
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 292
    throw v3
.end method

.method public getNextWakeFromIdleTime()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 260
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 261
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 264
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.app.IAlarmManager"

    #@b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 265
    iget-object v4, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v5, 0x5

    #@11
    const/4 v6, 0x0

    #@12
    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 266
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 267
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-wide v2

    #@1c
    .line 270
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 271
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 273
    return-wide v2

    #@23
    .line 269
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    #@24
    .line 270
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 271
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 269
    throw v4
.end method

.method public remove(Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 239
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 240
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 242
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.IAlarmManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 243
    if-eqz p1, :cond_0

    #@10
    .line 244
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 245
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 250
    :goto_0
    iget-object v2, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x4

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 251
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 254
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 237
    return-void

    #@29
    .line 248
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
    .line 253
    :catchall_0
    move-exception v2

    #@2f
    .line 254
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 253
    throw v2
.end method

.method public set(IJJJILandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "triggerAtTime"    # J
    .param p4, "windowLength"    # J
    .param p6, "interval"    # J
    .param p8, "flags"    # I
    .param p9, "operation"    # Landroid/app/PendingIntent;
    .param p10, "workSource"    # Landroid/os/WorkSource;
    .param p11, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 166
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v1

    #@4
    .line 167
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    .line 169
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IAlarmManager"

    #@b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 170
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 171
    invoke-virtual {v1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@14
    .line 172
    invoke-virtual {v1, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    #@17
    .line 173
    invoke-virtual {v1, p6, p7}, Landroid/os/Parcel;->writeLong(J)V

    #@1a
    .line 174
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 175
    if-eqz p9, :cond_0

    #@1f
    .line 176
    const/4 v3, 0x1

    #@20
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 177
    const/4 v3, 0x0

    #@24
    invoke-virtual {p9, v1, v3}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@27
    .line 182
    :goto_0
    if-eqz p10, :cond_1

    #@29
    .line 183
    const/4 v3, 0x1

    #@2a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 184
    const/4 v3, 0x0

    #@2e
    move-object/from16 v0, p10

    #@30
    invoke-virtual {v0, v1, v3}, Landroid/os/WorkSource;->writeToParcel(Landroid/os/Parcel;I)V

    #@33
    .line 189
    :goto_1
    if-eqz p11, :cond_2

    #@35
    .line 190
    const/4 v3, 0x1

    #@36
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@39
    .line 191
    const/4 v3, 0x0

    #@3a
    move-object/from16 v0, p11

    #@3c
    invoke-virtual {v0, v1, v3}, Landroid/app/AlarmManager$AlarmClockInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@3f
    .line 196
    :goto_2
    iget-object v3, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@41
    const/4 v4, 0x1

    #@42
    const/4 v5, 0x0

    #@43
    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@46
    .line 197
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@49
    .line 200
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@4c
    .line 201
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4f
    .line 164
    return-void

    #@50
    .line 180
    :cond_0
    const/4 v3, 0x0

    #@51
    :try_start_1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@54
    goto :goto_0

    #@55
    .line 199
    :catchall_0
    move-exception v3

    #@56
    .line 200
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@59
    .line 201
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@5c
    .line 199
    throw v3

    #@5d
    .line 187
    :cond_1
    const/4 v3, 0x0

    #@5e
    :try_start_2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@61
    goto :goto_1

    #@62
    .line 194
    :cond_2
    const/4 v3, 0x0

    #@63
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@66
    goto :goto_2
.end method

.method public setTime(J)Z
    .locals 7
    .param p1, "millis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 206
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 207
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 210
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IAlarmManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 211
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@11
    .line 212
    iget-object v3, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x2

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 213
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 214
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
    .line 217
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 220
    return v2

    #@29
    .line 214
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2a
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2b
    .line 216
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2c
    .line 217
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 216
    throw v3
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 5
    .param p1, "zone"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 224
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 225
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 227
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.IAlarmManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 228
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 229
    iget-object v2, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x3

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 230
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 233
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 234
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 222
    return-void

    #@22
    .line 232
    :catchall_0
    move-exception v2

    #@23
    .line 233
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 234
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 232
    throw v2
.end method
