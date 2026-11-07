.class public abstract Landroid/hardware/input/IInputSensorEventListener$Stub;
.super Landroid/os/Binder;
.source "IInputSensorEventListener.java"

# interfaces
.implements Landroid/hardware/input/IInputSensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/IInputSensorEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/IInputSensorEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onInputSensorAccuracyChanged:I = 0x2

.field static final blacklist TRANSACTION_onInputSensorChanged:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 36
    const-string v0, "android.hardware.input.IInputSensorEventListener"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/input/IInputSensorEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputSensorEventListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 44
    if-nez p0, :cond_4

    .line 45
    const/4 v0, 0x0

    return-object v0

    .line 47
    :cond_4
    const-string v0, "android.hardware.input.IInputSensorEventListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 48
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/input/IInputSensorEventListener;

    if-eqz v1, :cond_14

    .line 49
    move-object v1, v0

    check-cast v1, Landroid/hardware/input/IInputSensorEventListener;

    return-object v1

    .line 51
    :cond_14
    new-instance v1, Landroid/hardware/input/IInputSensorEventListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/input/IInputSensorEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 60
    packed-switch p0, :pswitch_data_c

    .line 72
    const/4 v0, 0x0

    return-object v0

    .line 68
    :pswitch_5
    const-string v0, "onInputSensorAccuracyChanged"

    return-object v0

    .line 64
    :pswitch_8
    const-string v0, "onInputSensorChanged"

    return-object v0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 55
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 181
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 79
    invoke-static {p1}, Landroid/hardware/input/IInputSensorEventListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 20
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    move/from16 v0, p1

    const-string v1, "android.hardware.input.IInputSensorEventListener"

    .line 84
    .local v1, "descriptor":Ljava/lang/String;
    const/4 v2, 0x1

    if-lt v0, v2, :cond_12

    const v3, 0xffffff

    if-gt v0, v3, :cond_12

    .line 85
    move-object/from16 v3, p2

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_14

    .line 84
    :cond_12
    move-object/from16 v3, p2

    .line 87
    :goto_14
    const v4, 0x5f4e5446

    if-ne v0, v4, :cond_1f

    .line 88
    move-object/from16 v4, p3

    invoke-virtual {v4, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    return v2

    .line 91
    :cond_1f
    move-object/from16 v4, p3

    packed-switch v0, :pswitch_data_5a

    .line 123
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    .line 112
    :pswitch_29
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 114
    .local v5, "_arg0":I
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 116
    .local v6, "_arg1":I
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 117
    .local v7, "_arg2":I
    invoke-virtual {v3}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 118
    invoke-virtual {p0, v5, v6, v7}, Landroid/hardware/input/IInputSensorEventListener$Stub;->onInputSensorAccuracyChanged(III)V

    .line 119
    goto :goto_58

    .line 96
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :pswitch_3c
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 98
    .local v9, "_arg0":I
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 100
    .local v10, "_arg1":I
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 102
    .local v11, "_arg2":I
    invoke-virtual {v3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 104
    .local v12, "_arg3":J
    invoke-virtual {v3}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v14

    .line 105
    .local v14, "_arg4":[F
    invoke-virtual {v3}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 106
    move-object v8, p0

    invoke-virtual/range {v8 .. v14}, Landroid/hardware/input/IInputSensorEventListener$Stub;->onInputSensorChanged(IIIJ[F)V

    .line 107
    nop

    .line 126
    .end local v9    # "_arg0":I
    .end local v10    # "_arg1":I
    .end local v11    # "_arg2":I
    .end local v12    # "_arg3":J
    .end local v14    # "_arg4":[F
    :goto_58
    return v2

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_29
    .end packed-switch
.end method
