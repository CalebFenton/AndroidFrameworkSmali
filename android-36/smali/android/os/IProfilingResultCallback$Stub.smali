.class public abstract Landroid/os/IProfilingResultCallback$Stub;
.super Landroid/os/Binder;
.source "IProfilingResultCallback.java"

# interfaces
.implements Landroid/os/IProfilingResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IProfilingResultCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IProfilingResultCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_deleteFile:I = 0x3

.field static final blacklist TRANSACTION_generateFile:I = 0x2

.field static final blacklist TRANSACTION_sendResult:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "android.os.IProfilingResultCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/IProfilingResultCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/IProfilingResultCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 45
    if-nez p0, :cond_4

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_4
    const-string v0, "android.os.IProfilingResultCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IProfilingResultCallback;

    if-eqz v1, :cond_14

    .line 50
    move-object v1, v0

    check-cast v1, Landroid/os/IProfilingResultCallback;

    return-object v1

    .line 52
    :cond_14
    new-instance v1, Landroid/os/IProfilingResultCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IProfilingResultCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 61
    packed-switch p0, :pswitch_data_e

    .line 77
    const/4 v0, 0x0

    return-object v0

    .line 73
    :pswitch_5
    const-string v0, "deleteFile"

    return-object v0

    .line 69
    :pswitch_8
    const-string v0, "generateFile"

    return-object v0

    .line 65
    :pswitch_b
    const-string v0, "sendResult"

    return-object v0

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 56
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 214
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 84
    invoke-static {p1}, Landroid/os/IProfilingResultCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 21
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    move/from16 v0, p1

    const-string v1, "android.os.IProfilingResultCallback"

    .line 89
    .local v1, "descriptor":Ljava/lang/String;
    const/4 v2, 0x1

    if-lt v0, v2, :cond_12

    const v3, 0xffffff

    if-gt v0, v3, :cond_12

    .line 90
    move-object/from16 v3, p2

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_14

    .line 89
    :cond_12
    move-object/from16 v3, p2

    .line 92
    :goto_14
    const v4, 0x5f4e5446

    if-ne v0, v4, :cond_1f

    .line 93
    move-object/from16 v4, p3

    invoke-virtual {v4, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    return v2

    .line 96
    :cond_1f
    move-object/from16 v4, p3

    packed-switch v0, :pswitch_data_76

    .line 142
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    .line 135
    :pswitch_29
    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 136
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    move-object/from16 v6, p0

    invoke-virtual {v6, v5}, Landroid/os/IProfilingResultCallback$Stub;->deleteFile(Ljava/lang/String;)V

    .line 138
    goto :goto_74

    .line 121
    .end local v5    # "_arg0":Ljava/lang/String;
    :pswitch_36
    move-object/from16 v6, p0

    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 123
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 125
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 127
    .local v9, "_arg2":J
    invoke-virtual {v3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 128
    .local v11, "_arg3":J
    invoke-virtual {v3}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 129
    invoke-virtual/range {v6 .. v12}, Landroid/os/IProfilingResultCallback$Stub;->generateFile(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 130
    goto :goto_74

    .line 101
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":J
    .end local v11    # "_arg3":J
    :pswitch_4f
    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 103
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 105
    .local v8, "_arg1":J
    invoke-virtual {v3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 107
    .local v10, "_arg2":J
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 109
    .local v12, "_arg3":I
    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 111
    .local v13, "_arg4":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 113
    .local v14, "_arg5":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 114
    .local v15, "_arg6":I
    invoke-virtual {v3}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 115
    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v15}, Landroid/os/IProfilingResultCallback$Stub;->sendResult(Ljava/lang/String;JJILjava/lang/String;Ljava/lang/String;I)V

    .line 116
    nop

    .line 145
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":J
    .end local v10    # "_arg2":J
    .end local v12    # "_arg3":I
    .end local v13    # "_arg4":Ljava/lang/String;
    .end local v14    # "_arg5":Ljava/lang/String;
    .end local v15    # "_arg6":I
    :goto_74
    return v2

    nop

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_36
        :pswitch_29
    .end packed-switch
.end method
