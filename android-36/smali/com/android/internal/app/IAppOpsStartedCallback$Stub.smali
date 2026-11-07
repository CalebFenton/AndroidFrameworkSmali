.class public abstract Lcom/android/internal/app/IAppOpsStartedCallback$Stub;
.super Landroid/os/Binder;
.source "IAppOpsStartedCallback.java"

# interfaces
.implements Lcom/android/internal/app/IAppOpsStartedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IAppOpsStartedCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IAppOpsStartedCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_opStarted:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string v0, "com.android.internal.app.IAppOpsStartedCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IAppOpsStartedCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsStartedCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 39
    if-nez p0, :cond_4

    .line 40
    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_4
    const-string v0, "com.android.internal.app.IAppOpsStartedCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 43
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/app/IAppOpsStartedCallback;

    if-eqz v1, :cond_14

    .line 44
    move-object v1, v0

    check-cast v1, Lcom/android/internal/app/IAppOpsStartedCallback;

    return-object v1

    .line 46
    :cond_14
    new-instance v1, Lcom/android/internal/app/IAppOpsStartedCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IAppOpsStartedCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 55
    packed-switch p0, :pswitch_data_8

    .line 63
    const/4 v0, 0x0

    return-object v0

    .line 59
    :pswitch_5
    const-string v0, "opStarted"

    return-object v0

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 50
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 70
    invoke-static {p1}, Lcom/android/internal/app/IAppOpsStartedCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 74
    move/from16 v0, p1

    const-string v1, "com.android.internal.app.IAppOpsStartedCallback"

    .line 75
    .local v1, "descriptor":Ljava/lang/String;
    const/4 v2, 0x1

    if-lt v0, v2, :cond_12

    const v3, 0xffffff

    if-gt v0, v3, :cond_12

    .line 76
    move-object/from16 v3, p2

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_14

    .line 75
    :cond_12
    move-object/from16 v3, p2

    .line 78
    :goto_14
    const v4, 0x5f4e5446

    if-ne v0, v4, :cond_1f

    .line 79
    move-object/from16 v4, p3

    invoke-virtual {v4, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    return v2

    .line 82
    :cond_1f
    move-object/from16 v4, p3

    packed-switch v0, :pswitch_data_5c

    .line 112
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    .line 87
    :pswitch_29
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 89
    .local v6, "_arg0":I
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 91
    .local v7, "_arg1":I
    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 93
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 95
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 97
    .local v10, "_arg4":I
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 99
    .local v11, "_arg5":I
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 101
    .local v12, "_arg6":I
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 103
    .local v13, "_arg7":I
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 105
    .local v14, "_arg8":I
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 106
    .local v15, "_arg9":I
    invoke-virtual {v3}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 107
    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/android/internal/app/IAppOpsStartedCallback$Stub;->opStarted(IILjava/lang/String;Ljava/lang/String;IIIIII)V

    .line 108
    nop

    .line 115
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v10    # "_arg4":I
    .end local v11    # "_arg5":I
    .end local v12    # "_arg6":I
    .end local v13    # "_arg7":I
    .end local v14    # "_arg8":I
    .end local v15    # "_arg9":I
    return v2

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_29
    .end packed-switch
.end method
