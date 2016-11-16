.class public abstract Landroid/os/IVibratorService$Stub;
.super Landroid/os/Binder;
.source "IVibratorService.java"

# interfaces
.implements Landroid/os/IVibratorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IVibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IVibratorService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IVibratorService"

.field static final TRANSACTION_cancelVibrate:I = 0x4

.field static final TRANSACTION_hasVibrator:I = 0x1

.field static final TRANSACTION_vibrate:I = 0x2

.field static final TRANSACTION_vibratePattern:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "android.os.IVibratorService"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/os/IVibratorService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 24
    if-nez p0, :cond_0

    #@3
    .line 25
    return-object v1

    #@4
    .line 27
    :cond_0
    const-string/jumbo v1, "android.os.IVibratorService"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/os/IVibratorService;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Landroid/os/IVibratorService;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/IVibratorService$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/os/IVibratorService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 100
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v3

    #@7
    return v3

    #@8
    .line 43
    :sswitch_0
    const-string/jumbo v3, "android.os.IVibratorService"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 44
    const/4 v3, 0x1

    #@11
    return v3

    #@12
    .line 48
    :sswitch_1
    const-string/jumbo v3, "android.os.IVibratorService"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 49
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVibratorService$Stub;->hasVibrator()Z

    #@1d
    move-result v17

    #@1e
    .line 50
    .local v17, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@21
    .line 51
    if-eqz v17, :cond_0

    #@23
    const/4 v3, 0x1

    #@24
    :goto_0
    move-object/from16 v0, p3

    #@26
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 52
    const/4 v3, 0x1

    #@2a
    return v3

    #@2b
    .line 51
    :cond_0
    const/4 v3, 0x0

    #@2c
    goto :goto_0

    #@2d
    .line 56
    .end local v17    # "_result":Z
    :sswitch_2
    const-string/jumbo v3, "android.os.IVibratorService"

    #@30
    move-object/from16 v0, p2

    #@32
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@35
    .line 58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@38
    move-result v4

    #@39
    .line 60
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3c
    move-result-object v5

    #@3d
    .line 62
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@40
    move-result-wide v6

    #@41
    .line 64
    .local v6, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@44
    move-result v8

    #@45
    .line 66
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@48
    move-result-object v9

    #@49
    .local v9, "_arg4":Landroid/os/IBinder;
    move-object/from16 v3, p0

    #@4b
    .line 67
    invoke-virtual/range {v3 .. v9}, Landroid/os/IVibratorService$Stub;->vibrate(ILjava/lang/String;JILandroid/os/IBinder;)V

    #@4e
    .line 68
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@51
    .line 69
    const/4 v3, 0x1

    #@52
    return v3

    #@53
    .line 73
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":J
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":Landroid/os/IBinder;
    :sswitch_3
    const-string/jumbo v3, "android.os.IVibratorService"

    #@56
    move-object/from16 v0, p2

    #@58
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5b
    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5e
    move-result v4

    #@5f
    .line 77
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@62
    move-result-object v5

    #@63
    .line 79
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    #@66
    move-result-object v13

    #@67
    .line 81
    .local v13, "_arg2":[J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6a
    move-result v8

    #@6b
    .line 83
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6e
    move-result v15

    #@6f
    .line 85
    .local v15, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@72
    move-result-object v16

    #@73
    .local v16, "_arg5":Landroid/os/IBinder;
    move-object/from16 v10, p0

    #@75
    move v11, v4

    #@76
    move-object v12, v5

    #@77
    move v14, v8

    #@78
    .line 86
    invoke-virtual/range {v10 .. v16}, Landroid/os/IVibratorService$Stub;->vibratePattern(ILjava/lang/String;[JIILandroid/os/IBinder;)V

    #@7b
    .line 87
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7e
    .line 88
    const/4 v3, 0x1

    #@7f
    return v3

    #@80
    .line 92
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg3":I
    .end local v13    # "_arg2":[J
    .end local v15    # "_arg4":I
    .end local v16    # "_arg5":Landroid/os/IBinder;
    :sswitch_4
    const-string/jumbo v3, "android.os.IVibratorService"

    #@83
    move-object/from16 v0, p2

    #@85
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@88
    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@8b
    move-result-object v2

    #@8c
    .line 95
    .local v2, "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@8e
    invoke-virtual {v0, v2}, Landroid/os/IVibratorService$Stub;->cancelVibrate(Landroid/os/IBinder;)V

    #@91
    .line 96
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@94
    .line 97
    const/4 v3, 0x1

    #@95
    return v3

    #@96
    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
