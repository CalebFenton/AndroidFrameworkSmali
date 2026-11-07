.class Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRadioVoice.java"

# interfaces
.implements Landroid/hardware/radio/voice/IRadioVoice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/voice/IRadioVoice$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mCachedHash:Ljava/lang/String;

.field private blacklist mCachedVersion:I

.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 1043
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1046
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mCachedVersion:I

    .line 1047
    const-string v0, "-1"

    iput-object v0, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 1044
    iput-object p1, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 1045
    return-void
.end method


# virtual methods
.method public blacklist acceptCall(I)V
    .registers 6
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1068
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1070
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1071
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1072
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_27

    .line 1073
    .local v1, "_status":Z
    if-eqz v1, :cond_1f

    .line 1078
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1079
    nop

    .line 1080
    return-void

    .line 1074
    .restart local v1    # "_status":Z
    :cond_1f
    :try_start_1f
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method acceptCall is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .end local p1    # "serial":I
    throw v2
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_27

    .line 1078
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .restart local p1    # "serial":I
    :catchall_27
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1079
    throw v1
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 1050
    iget-object v0, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist cancelPendingUssd(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1092
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1094
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1095
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1096
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_28

    .line 1097
    .local v1, "_status":Z
    if-eqz v1, :cond_20

    .line 1102
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1103
    nop

    .line 1104
    return-void

    .line 1098
    .restart local v1    # "_status":Z
    :cond_20
    :try_start_20
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method cancelPendingUssd is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .end local p1    # "serial":I
    throw v2
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_28

    .line 1102
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .restart local p1    # "serial":I
    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1103
    throw v1
.end method

.method public blacklist conference(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1116
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1118
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1119
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1120
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_28

    .line 1121
    .local v1, "_status":Z
    if-eqz v1, :cond_20

    .line 1126
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1127
    nop

    .line 1128
    return-void

    .line 1122
    .restart local v1    # "_status":Z
    :cond_20
    :try_start_20
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method conference is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .end local p1    # "serial":I
    throw v2
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_28

    .line 1126
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .restart local p1    # "serial":I
    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1127
    throw v1
.end method

.method public blacklist dial(ILandroid/hardware/radio/voice/Dial;)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "dialInfo"    # Landroid/hardware/radio/voice/Dial;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1141
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1143
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1144
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1145
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1146
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 1147
    .local v1, "_status":Z
    if-eqz v1, :cond_24

    .line 1152
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1153
    nop

    .line 1154
    return-void

    .line 1148
    .restart local v1    # "_status":Z
    :cond_24
    :try_start_24
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method dial is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "dialInfo":Landroid/hardware/radio/voice/Dial;
    throw v2
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 1152
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "dialInfo":Landroid/hardware/radio/voice/Dial;
    :catchall_2c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1153
    throw v1
.end method

.method public blacklist emergencyDial(ILandroid/hardware/radio/voice/Dial;I[Ljava/lang/String;IZZ)V
    .registers 13
    .param p1, "serial"    # I
    .param p2, "dialInfo"    # Landroid/hardware/radio/voice/Dial;
    .param p3, "categories"    # I
    .param p4, "urns"    # [Ljava/lang/String;
    .param p5, "routing"    # I
    .param p6, "hasKnownUserIntentEmergency"    # Z
    .param p7, "isTesting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1213
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1215
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1216
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1217
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1218
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1219
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1220
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1221
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1222
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1223
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_3b

    .line 1224
    .local v1, "_status":Z
    if-eqz v1, :cond_33

    .line 1229
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1230
    nop

    .line 1231
    return-void

    .line 1225
    .restart local v1    # "_status":Z
    :cond_33
    :try_start_33
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method emergencyDial is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "dialInfo":Landroid/hardware/radio/voice/Dial;
    .end local p3    # "categories":I
    .end local p4    # "urns":[Ljava/lang/String;
    .end local p5    # "routing":I
    .end local p6    # "hasKnownUserIntentEmergency":Z
    .end local p7    # "isTesting":Z
    throw v2
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_3b

    .line 1229
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "dialInfo":Landroid/hardware/radio/voice/Dial;
    .restart local p3    # "categories":I
    .restart local p4    # "urns":[Ljava/lang/String;
    .restart local p5    # "routing":I
    .restart local p6    # "hasKnownUserIntentEmergency":Z
    .restart local p7    # "isTesting":Z
    :catchall_3b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1230
    throw v1
.end method

.method public blacklist exitEmergencyCallbackMode(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1244
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1246
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1247
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1248
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x6

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_28

    .line 1249
    .local v1, "_status":Z
    if-eqz v1, :cond_20

    .line 1254
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1255
    nop

    .line 1256
    return-void

    .line 1250
    .restart local v1    # "_status":Z
    :cond_20
    :try_start_20
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method exitEmergencyCallbackMode is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .end local p1    # "serial":I
    throw v2
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_28

    .line 1254
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .restart local p1    # "serial":I
    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1255
    throw v1
.end method

.method public blacklist explicitCallTransfer(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1268
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1270
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1271
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1272
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x7

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_28

    .line 1273
    .local v1, "_status":Z
    if-eqz v1, :cond_20

    .line 1278
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1279
    nop

    .line 1280
    return-void

    .line 1274
    .restart local v1    # "_status":Z
    :cond_20
    :try_start_20
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method explicitCallTransfer is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .end local p1    # "serial":I
    throw v2
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_28

    .line 1278
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .restart local p1    # "serial":I
    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1279
    throw v1
.end method

.method public blacklist getCallForwardStatus(ILandroid/hardware/radio/voice/CallForwardInfo;)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "callInfo"    # Landroid/hardware/radio/voice/CallForwardInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1293
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1295
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1296
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1297
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1298
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x8

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 1299
    .local v1, "_status":Z
    if-eqz v1, :cond_25

    .line 1304
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1305
    nop

    .line 1306
    return-void

    .line 1300
    .restart local v1    # "_status":Z
    :cond_25
    :try_start_25
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getCallForwardStatus is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "callInfo":Landroid/hardware/radio/voice/CallForwardInfo;
    throw v2
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    .line 1304
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "callInfo":Landroid/hardware/radio/voice/CallForwardInfo;
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1305
    throw v1
.end method

.method public blacklist getCallWaiting(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1319
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1321
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1322
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1323
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1324
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x9

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 1325
    .local v1, "_status":Z
    if-eqz v1, :cond_24

    .line 1330
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1331
    nop

    .line 1332
    return-void

    .line 1326
    .restart local v1    # "_status":Z
    :cond_24
    :try_start_24
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getCallWaiting is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "serviceClass":I
    throw v2
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 1330
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "serviceClass":I
    :catchall_2c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1331
    throw v1
.end method

.method public blacklist getClip(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1344
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1346
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1347
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1348
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xa

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_29

    .line 1349
    .local v1, "_status":Z
    if-eqz v1, :cond_21

    .line 1354
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1355
    nop

    .line 1356
    return-void

    .line 1350
    .restart local v1    # "_status":Z
    :cond_21
    :try_start_21
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getClip is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .end local p1    # "serial":I
    throw v2
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 1354
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .restart local p1    # "serial":I
    :catchall_29
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1355
    throw v1
.end method

.method public blacklist getClir(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1368
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1370
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1371
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1372
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xb

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_29

    .line 1373
    .local v1, "_status":Z
    if-eqz v1, :cond_21

    .line 1378
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1379
    nop

    .line 1380
    return-void

    .line 1374
    .restart local v1    # "_status":Z
    :cond_21
    :try_start_21
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getClir is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .end local p1    # "serial":I
    throw v2
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 1378
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .restart local p1    # "serial":I
    :catchall_29
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1379
    throw v1
.end method

.method public blacklist getCurrentCalls(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1392
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1394
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1395
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1396
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xc

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_29

    .line 1397
    .local v1, "_status":Z
    if-eqz v1, :cond_21

    .line 1402
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1403
    nop

    .line 1404
    return-void

    .line 1398
    .restart local v1    # "_status":Z
    :cond_21
    :try_start_21
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getCurrentCalls is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .end local p1    # "serial":I
    throw v2
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 1402
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .restart local p1    # "serial":I
    :catchall_29
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1403
    throw v1
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 1054
    sget-object v0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized blacklist getInterfaceHash()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 2138
    :try_start_1
    const-string v0, "-1"

    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 2139
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2140
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_42

    .line 2142
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_17
    sget-object v2, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2143
    iget-object v2, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2144
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2145
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_17 .. :try_end_2f} :catchall_36

    .line 2147
    .end local v2    # "_status":Z
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2149
    goto :goto_3e

    .line 2147
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2149
    throw v2

    .line 2151
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_3e
    :goto_3e
    iget-object v0, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_40
    .catchall {:try_start_2f .. :try_end_40} :catchall_42

    monitor-exit p0

    return-object v0

    .line 2137
    :catchall_42
    move-exception v0

    :try_start_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2121
    iget v0, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_38

    .line 2122
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2123
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2125
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_11
    sget-object v2, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2126
    iget-object v2, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2127
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2128
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mCachedVersion:I
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_30

    .line 2130
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2132
    goto :goto_38

    .line 2130
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2132
    throw v2

    .line 2134
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_38
    :goto_38
    iget v0, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public blacklist getLastCallFailCause(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1416
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1418
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1419
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1420
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xd

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_29

    .line 1421
    .local v1, "_status":Z
    if-eqz v1, :cond_21

    .line 1426
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1427
    nop

    .line 1428
    return-void

    .line 1422
    .restart local v1    # "_status":Z
    :cond_21
    :try_start_21
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getLastCallFailCause is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .end local p1    # "serial":I
    throw v2
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 1426
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .restart local p1    # "serial":I
    :catchall_29
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1427
    throw v1
.end method

.method public blacklist getMute(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1440
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1442
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1443
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1444
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xe

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_29

    .line 1445
    .local v1, "_status":Z
    if-eqz v1, :cond_21

    .line 1450
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1451
    nop

    .line 1452
    return-void

    .line 1446
    .restart local v1    # "_status":Z
    :cond_21
    :try_start_21
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getMute is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .end local p1    # "serial":I
    throw v2
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 1450
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .restart local p1    # "serial":I
    :catchall_29
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1451
    throw v1
.end method

.method public blacklist getPreferredVoicePrivacy(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1464
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1466
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1467
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1468
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xf

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_29

    .line 1469
    .local v1, "_status":Z
    if-eqz v1, :cond_21

    .line 1474
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1475
    nop

    .line 1476
    return-void

    .line 1470
    .restart local v1    # "_status":Z
    :cond_21
    :try_start_21
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getPreferredVoicePrivacy is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .end local p1    # "serial":I
    throw v2
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 1474
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .restart local p1    # "serial":I
    :catchall_29
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1475
    throw v1
.end method

.method public blacklist getTtyMode(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1488
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1490
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1491
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1492
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x10

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_29

    .line 1493
    .local v1, "_status":Z
    if-eqz v1, :cond_21

    .line 1498
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1499
    nop

    .line 1500
    return-void

    .line 1494
    .restart local v1    # "_status":Z
    :cond_21
    :try_start_21
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getTtyMode is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .end local p1    # "serial":I
    throw v2
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 1498
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .restart local p1    # "serial":I
    :catchall_29
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1499
    throw v1
.end method

.method public blacklist handleStkCallSetupRequestFromSim(IZ)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "accept"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1515
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1517
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1518
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1519
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1520
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x11

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 1521
    .local v1, "_status":Z
    if-eqz v1, :cond_24

    .line 1526
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1527
    nop

    .line 1528
    return-void

    .line 1522
    .restart local v1    # "_status":Z
    :cond_24
    :try_start_24
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method handleStkCallSetupRequestFromSim is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "accept":Z
    throw v2
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 1526
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "accept":Z
    :catchall_2c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1527
    throw v1
.end method

.method public blacklist hangup(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "gsmIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1542
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1544
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1545
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1546
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1547
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x12

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 1548
    .local v1, "_status":Z
    if-eqz v1, :cond_24

    .line 1553
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1554
    nop

    .line 1555
    return-void

    .line 1549
    .restart local v1    # "_status":Z
    :cond_24
    :try_start_24
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method hangup is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "gsmIndex":I
    throw v2
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 1553
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "gsmIndex":I
    :catchall_2c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1554
    throw v1
.end method

.method public blacklist hangupForegroundResumeBackground(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1568
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1570
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1571
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1572
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x13

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_29

    .line 1573
    .local v1, "_status":Z
    if-eqz v1, :cond_21

    .line 1578
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1579
    nop

    .line 1580
    return-void

    .line 1574
    .restart local v1    # "_status":Z
    :cond_21
    :try_start_21
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method hangupForegroundResumeBackground is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .end local p1    # "serial":I
    throw v2
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 1578
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .restart local p1    # "serial":I
    :catchall_29
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1579
    throw v1
.end method

.method public blacklist hangupWaitingOrBackground(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1593
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1595
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1596
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1597
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x14

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_29

    .line 1598
    .local v1, "_status":Z
    if-eqz v1, :cond_21

    .line 1603
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1604
    nop

    .line 1605
    return-void

    .line 1599
    .restart local v1    # "_status":Z
    :cond_21
    :try_start_21
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method hangupWaitingOrBackground is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .end local p1    # "serial":I
    throw v2
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 1603
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .restart local p1    # "serial":I
    :catchall_29
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1604
    throw v1
.end method

.method public blacklist isVoNrEnabled(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1617
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1619
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1620
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1621
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x15

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_29

    .line 1622
    .local v1, "_status":Z
    if-eqz v1, :cond_21

    .line 1627
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1628
    nop

    .line 1629
    return-void

    .line 1623
    .restart local v1    # "_status":Z
    :cond_21
    :try_start_21
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method isVoNrEnabled is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .end local p1    # "serial":I
    throw v2
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 1627
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .restart local p1    # "serial":I
    :catchall_29
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1628
    throw v1
.end method

.method public blacklist rejectCall(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1641
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1643
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1644
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1645
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x16

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_29

    .line 1646
    .local v1, "_status":Z
    if-eqz v1, :cond_21

    .line 1651
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1652
    nop

    .line 1653
    return-void

    .line 1647
    .restart local v1    # "_status":Z
    :cond_21
    :try_start_21
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method rejectCall is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .end local p1    # "serial":I
    throw v2
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 1651
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .restart local p1    # "serial":I
    :catchall_29
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1652
    throw v1
.end method

.method public blacklist responseAcknowledgement()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1663
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1665
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1666
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x17

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_26

    .line 1667
    .local v1, "_status":Z
    if-eqz v1, :cond_1e

    .line 1672
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1673
    nop

    .line 1674
    return-void

    .line 1668
    .restart local v1    # "_status":Z
    :cond_1e
    :try_start_1e
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method responseAcknowledgement is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    throw v2
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_26

    .line 1672
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    :catchall_26
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1673
    throw v1
.end method

.method public blacklist sendBurstDtmf(ILjava/lang/String;II)V
    .registers 10
    .param p1, "serial"    # I
    .param p2, "dtmf"    # Ljava/lang/String;
    .param p3, "on"    # I
    .param p4, "off"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1689
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1691
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1692
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1693
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1694
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1695
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1696
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x18

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_32

    .line 1697
    .local v1, "_status":Z
    if-eqz v1, :cond_2a

    .line 1702
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1703
    nop

    .line 1704
    return-void

    .line 1698
    .restart local v1    # "_status":Z
    :cond_2a
    :try_start_2a
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method sendBurstDtmf is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "dtmf":Ljava/lang/String;
    .end local p3    # "on":I
    .end local p4    # "off":I
    throw v2
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_32

    .line 1702
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "dtmf":Ljava/lang/String;
    .restart local p3    # "on":I
    .restart local p4    # "off":I
    :catchall_32
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1703
    throw v1
.end method

.method public blacklist sendCdmaFeatureCode(ILjava/lang/String;)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "featureCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1719
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1721
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1722
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1723
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1724
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x19

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 1725
    .local v1, "_status":Z
    if-eqz v1, :cond_24

    .line 1730
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1731
    nop

    .line 1732
    return-void

    .line 1726
    .restart local v1    # "_status":Z
    :cond_24
    :try_start_24
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method sendCdmaFeatureCode is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "featureCode":Ljava/lang/String;
    throw v2
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 1730
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "featureCode":Ljava/lang/String;
    :catchall_2c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1731
    throw v1
.end method

.method public blacklist sendDtmf(ILjava/lang/String;)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1746
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1748
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1749
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1750
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1751
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1a

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 1752
    .local v1, "_status":Z
    if-eqz v1, :cond_24

    .line 1757
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1758
    nop

    .line 1759
    return-void

    .line 1753
    .restart local v1    # "_status":Z
    :cond_24
    :try_start_24
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method sendDtmf is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "s":Ljava/lang/String;
    throw v2
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 1757
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "s":Ljava/lang/String;
    :catchall_2c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1758
    throw v1
.end method

.method public blacklist sendUssd(ILjava/lang/String;)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "ussd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1779
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1781
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1782
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1783
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1784
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1b

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 1785
    .local v1, "_status":Z
    if-eqz v1, :cond_24

    .line 1790
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1791
    nop

    .line 1792
    return-void

    .line 1786
    .restart local v1    # "_status":Z
    :cond_24
    :try_start_24
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method sendUssd is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "ussd":Ljava/lang/String;
    throw v2
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 1790
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "ussd":Ljava/lang/String;
    :catchall_2c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1791
    throw v1
.end method

.method public blacklist separateConnection(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "gsmIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1811
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1813
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1814
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1815
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1816
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1c

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 1817
    .local v1, "_status":Z
    if-eqz v1, :cond_24

    .line 1822
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1823
    nop

    .line 1824
    return-void

    .line 1818
    .restart local v1    # "_status":Z
    :cond_24
    :try_start_24
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method separateConnection is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "gsmIndex":I
    throw v2
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 1822
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "gsmIndex":I
    :catchall_2c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1823
    throw v1
.end method

.method public blacklist setCallForward(ILandroid/hardware/radio/voice/CallForwardInfo;)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "callInfo"    # Landroid/hardware/radio/voice/CallForwardInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1837
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1839
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1840
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1841
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1842
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1d

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 1843
    .local v1, "_status":Z
    if-eqz v1, :cond_25

    .line 1848
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1849
    nop

    .line 1850
    return-void

    .line 1844
    .restart local v1    # "_status":Z
    :cond_25
    :try_start_25
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setCallForward is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "callInfo":Landroid/hardware/radio/voice/CallForwardInfo;
    throw v2
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    .line 1848
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "callInfo":Landroid/hardware/radio/voice/CallForwardInfo;
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1849
    throw v1
.end method

.method public blacklist setCallWaiting(IZI)V
    .registers 9
    .param p1, "serial"    # I
    .param p2, "enable"    # Z
    .param p3, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1864
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1866
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1867
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1868
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1869
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1870
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1e

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_2f

    .line 1871
    .local v1, "_status":Z
    if-eqz v1, :cond_27

    .line 1876
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1877
    nop

    .line 1878
    return-void

    .line 1872
    .restart local v1    # "_status":Z
    :cond_27
    :try_start_27
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setCallWaiting is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "enable":Z
    .end local p3    # "serviceClass":I
    throw v2
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_2f

    .line 1876
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "enable":Z
    .restart local p3    # "serviceClass":I
    :catchall_2f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1877
    throw v1
.end method

.method public blacklist setClir(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1891
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1893
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1894
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1895
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1896
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1f

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 1897
    .local v1, "_status":Z
    if-eqz v1, :cond_24

    .line 1902
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1903
    nop

    .line 1904
    return-void

    .line 1898
    .restart local v1    # "_status":Z
    :cond_24
    :try_start_24
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setClir is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "status":I
    throw v2
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 1902
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "status":I
    :catchall_2c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1903
    throw v1
.end method

.method public blacklist setMute(IZ)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1918
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1920
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1921
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1922
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1923
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x20

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 1924
    .local v1, "_status":Z
    if-eqz v1, :cond_24

    .line 1929
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1930
    nop

    .line 1931
    return-void

    .line 1925
    .restart local v1    # "_status":Z
    :cond_24
    :try_start_24
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setMute is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "enable":Z
    throw v2
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 1929
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "enable":Z
    :catchall_2c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1930
    throw v1
.end method

.method public blacklist setPreferredVoicePrivacy(IZ)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1945
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1947
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1948
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1949
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1950
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x21

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 1951
    .local v1, "_status":Z
    if-eqz v1, :cond_24

    .line 1956
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1957
    nop

    .line 1958
    return-void

    .line 1952
    .restart local v1    # "_status":Z
    :cond_24
    :try_start_24
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setPreferredVoicePrivacy is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "enable":Z
    throw v2
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 1956
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "enable":Z
    :catchall_2c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1957
    throw v1
.end method

.method public blacklist setResponseFunctions(Landroid/hardware/radio/voice/IRadioVoiceResponse;Landroid/hardware/radio/voice/IRadioVoiceIndication;)V
    .registers 8
    .param p1, "radioVoiceResponse"    # Landroid/hardware/radio/voice/IRadioVoiceResponse;
    .param p2, "radioVoiceIndication"    # Landroid/hardware/radio/voice/IRadioVoiceIndication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1969
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1971
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1972
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1973
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1974
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x22

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 1975
    .local v1, "_status":Z
    if-eqz v1, :cond_24

    .line 1980
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1981
    nop

    .line 1982
    return-void

    .line 1976
    .restart local v1    # "_status":Z
    :cond_24
    :try_start_24
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setResponseFunctions is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .end local p1    # "radioVoiceResponse":Landroid/hardware/radio/voice/IRadioVoiceResponse;
    .end local p2    # "radioVoiceIndication":Landroid/hardware/radio/voice/IRadioVoiceIndication;
    throw v2
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 1980
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .restart local p1    # "radioVoiceResponse":Landroid/hardware/radio/voice/IRadioVoiceResponse;
    .restart local p2    # "radioVoiceIndication":Landroid/hardware/radio/voice/IRadioVoiceIndication;
    :catchall_2c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1981
    throw v1
.end method

.method public blacklist setTtyMode(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1995
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1997
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1998
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1999
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2000
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x23

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 2001
    .local v1, "_status":Z
    if-eqz v1, :cond_24

    .line 2006
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2007
    nop

    .line 2008
    return-void

    .line 2002
    .restart local v1    # "_status":Z
    :cond_24
    :try_start_24
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setTtyMode is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "mode":I
    throw v2
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 2006
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "mode":I
    :catchall_2c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2007
    throw v1
.end method

.method public blacklist setVoNrEnabled(IZ)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2021
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2023
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2024
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2025
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2026
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x24

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 2027
    .local v1, "_status":Z
    if-eqz v1, :cond_24

    .line 2032
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2033
    nop

    .line 2034
    return-void

    .line 2028
    .restart local v1    # "_status":Z
    :cond_24
    :try_start_24
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setVoNrEnabled is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "enable":Z
    throw v2
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 2032
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "enable":Z
    :catchall_2c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2033
    throw v1
.end method

.method public blacklist startDtmf(ILjava/lang/String;)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2049
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2051
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2052
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2053
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2054
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x25

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 2055
    .local v1, "_status":Z
    if-eqz v1, :cond_24

    .line 2060
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2061
    nop

    .line 2062
    return-void

    .line 2056
    .restart local v1    # "_status":Z
    :cond_24
    :try_start_24
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method startDtmf is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "s":Ljava/lang/String;
    throw v2
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 2060
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "s":Ljava/lang/String;
    :catchall_2c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2061
    throw v1
.end method

.method public blacklist stopDtmf(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2074
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2076
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2077
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2078
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x26

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_29

    .line 2079
    .local v1, "_status":Z
    if-eqz v1, :cond_21

    .line 2084
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2085
    nop

    .line 2086
    return-void

    .line 2080
    .restart local v1    # "_status":Z
    :cond_21
    :try_start_21
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method stopDtmf is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .end local p1    # "serial":I
    throw v2
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 2084
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .restart local p1    # "serial":I
    :catchall_29
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2085
    throw v1
.end method

.method public blacklist switchWaitingOrHoldingAndActive(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2106
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2108
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2109
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2110
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x27

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_29

    .line 2111
    .local v1, "_status":Z
    if-eqz v1, :cond_21

    .line 2116
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2117
    nop

    .line 2118
    return-void

    .line 2112
    .restart local v1    # "_status":Z
    :cond_21
    :try_start_21
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method switchWaitingOrHoldingAndActive is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .end local p1    # "serial":I
    throw v2
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 2116
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    .restart local p1    # "serial":I
    :catchall_29
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2117
    throw v1
.end method
