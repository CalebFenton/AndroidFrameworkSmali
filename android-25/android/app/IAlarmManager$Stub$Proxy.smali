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
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 161
    iput-object p1, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 159
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 169
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
    .line 289
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 290
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 293
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IAlarmManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 294
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 295
    iget-object v3, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x6

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 296
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 297
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    .line 298
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
    .line 305
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 306
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 308
    return-object v2

    #@30
    .line 301
    :cond_0
    const/4 v2, 0x0

    #@31
    .local v2, "_result":Landroid/app/AlarmManager$AlarmClockInfo;
    goto :goto_0

    #@32
    .line 304
    .end local v2    # "_result":Landroid/app/AlarmManager$AlarmClockInfo;
    :catchall_0
    move-exception v3

    #@33
    .line 305
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 306
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 304
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
    .line 272
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 273
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 276
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.app.IAlarmManager"

    #@b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 277
    iget-object v4, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v5, 0x5

    #@11
    const/4 v6, 0x0

    #@12
    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 278
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 279
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-wide v2

    #@1c
    .line 282
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 285
    return-wide v2

    #@23
    .line 281
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    #@24
    .line 282
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 281
    throw v4
.end method

.method public remove(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .locals 5
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "listener"    # Landroid/app/IAlarmListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 250
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 251
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 253
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IAlarmManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 254
    if-eqz p1, :cond_1

    #@11
    .line 255
    const/4 v3, 0x1

    #@12
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 256
    const/4 v3, 0x0

    #@16
    invoke-virtual {p1, v0, v3}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@19
    .line 261
    :goto_0
    if-eqz p2, :cond_0

    #@1b
    invoke-interface {p2}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    #@1e
    move-result-object v2

    #@1f
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@22
    .line 262
    iget-object v2, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@24
    const/4 v3, 0x4

    #@25
    const/4 v4, 0x0

    #@26
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@29
    .line 263
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 266
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 248
    return-void

    #@33
    .line 259
    :cond_1
    const/4 v3, 0x0

    #@34
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    goto :goto_0

    #@38
    .line 265
    :catchall_0
    move-exception v2

    #@39
    .line 266
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 265
    throw v2
.end method

.method public set(Ljava/lang/String;IJJJILandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "triggerAtTime"    # J
    .param p5, "windowLength"    # J
    .param p7, "interval"    # J
    .param p9, "flags"    # I
    .param p10, "operation"    # Landroid/app/PendingIntent;
    .param p11, "listener"    # Landroid/app/IAlarmListener;
    .param p12, "listenerTag"    # Ljava/lang/String;
    .param p13, "workSource"    # Landroid/os/WorkSource;
    .param p14, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 174
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v1

    #@4
    .line 175
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    .line 177
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IAlarmManager"

    #@b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 178
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 179
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 180
    invoke-virtual {v1, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    #@17
    .line 181
    invoke-virtual {v1, p5, p6}, Landroid/os/Parcel;->writeLong(J)V

    #@1a
    .line 182
    invoke-virtual {v1, p7, p8}, Landroid/os/Parcel;->writeLong(J)V

    #@1d
    .line 183
    move/from16 v0, p9

    #@1f
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 184
    if-eqz p10, :cond_0

    #@24
    .line 185
    const/4 v3, 0x1

    #@25
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 186
    const/4 v3, 0x0

    #@29
    move-object/from16 v0, p10

    #@2b
    invoke-virtual {v0, v1, v3}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@2e
    .line 191
    :goto_0
    if-eqz p11, :cond_1

    #@30
    invoke-interface/range {p11 .. p11}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    #@33
    move-result-object v3

    #@34
    :goto_1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@37
    .line 192
    move-object/from16 v0, p12

    #@39
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3c
    .line 193
    if-eqz p13, :cond_2

    #@3e
    .line 194
    const/4 v3, 0x1

    #@3f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@42
    .line 195
    const/4 v3, 0x0

    #@43
    move-object/from16 v0, p13

    #@45
    invoke-virtual {v0, v1, v3}, Landroid/os/WorkSource;->writeToParcel(Landroid/os/Parcel;I)V

    #@48
    .line 200
    :goto_2
    if-eqz p14, :cond_3

    #@4a
    .line 201
    const/4 v3, 0x1

    #@4b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@4e
    .line 202
    const/4 v3, 0x0

    #@4f
    move-object/from16 v0, p14

    #@51
    invoke-virtual {v0, v1, v3}, Landroid/app/AlarmManager$AlarmClockInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@54
    .line 207
    :goto_3
    iget-object v3, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@56
    const/4 v4, 0x1

    #@57
    const/4 v5, 0x0

    #@58
    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@5b
    .line 208
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5e
    .line 211
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@61
    .line 212
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@64
    .line 172
    return-void

    #@65
    .line 189
    :cond_0
    const/4 v3, 0x0

    #@66
    :try_start_1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@69
    goto :goto_0

    #@6a
    .line 210
    :catchall_0
    move-exception v3

    #@6b
    .line 211
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@6e
    .line 212
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@71
    .line 210
    throw v3

    #@72
    .line 191
    :cond_1
    const/4 v3, 0x0

    #@73
    goto :goto_1

    #@74
    .line 198
    :cond_2
    const/4 v3, 0x0

    #@75
    :try_start_2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@78
    goto :goto_2

    #@79
    .line 205
    :cond_3
    const/4 v3, 0x0

    #@7a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7d
    goto :goto_3
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
    .line 217
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 218
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 221
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IAlarmManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 222
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@11
    .line 223
    iget-object v3, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x2

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 224
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 225
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
    .line 228
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 231
    return v2

    #@29
    .line 225
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2a
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2b
    .line 227
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2c
    .line 228
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 227
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
    .line 238
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.IAlarmManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 239
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 240
    iget-object v2, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x3

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 241
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 244
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 233
    return-void

    #@22
    .line 243
    :catchall_0
    move-exception v2

    #@23
    .line 244
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 243
    throw v2
.end method
