.class public abstract Landroid/permission/IPermissionChecker$Stub;
.super Landroid/os/Binder;
.source "IPermissionChecker.java"

# interfaces
.implements Landroid/permission/IPermissionChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/IPermissionChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/permission/IPermissionChecker$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_checkOp:I = 0x3

.field static final blacklist TRANSACTION_checkPermission:I = 0x1

.field static final blacklist TRANSACTION_finishDataDelivery:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 39
    const-string v0, "android.permission.IPermissionChecker"

    invoke-virtual {p0, p0, v0}, Landroid/permission/IPermissionChecker$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/permission/IPermissionChecker;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 47
    if-nez p0, :cond_4

    .line 48
    const/4 v0, 0x0

    return-object v0

    .line 50
    :cond_4
    const-string v0, "android.permission.IPermissionChecker"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 51
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/permission/IPermissionChecker;

    if-eqz v1, :cond_14

    .line 52
    move-object v1, v0

    check-cast v1, Landroid/permission/IPermissionChecker;

    return-object v1

    .line 54
    :cond_14
    new-instance v1, Landroid/permission/IPermissionChecker$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/permission/IPermissionChecker$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 58
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 25
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "android.permission.IPermissionChecker"

    .line 63
    .local v3, "descriptor":Ljava/lang/String;
    const/4 v4, 0x1

    if-lt v0, v4, :cond_13

    const v5, 0xffffff

    if-gt v0, v5, :cond_13

    .line 64
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    :cond_13
    const v5, 0x5f4e5446

    if-ne v0, v5, :cond_1c

    .line 67
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    return v4

    .line 70
    :cond_1c
    packed-switch v0, :pswitch_data_9c

    .line 127
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 110
    :pswitch_24
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 112
    .local v7, "_arg0":I
    sget-object v5, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroid/content/AttributionSourceState;

    .line 114
    .local v8, "_arg1":Landroid/content/AttributionSourceState;
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 116
    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 118
    .local v10, "_arg3":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    .line 119
    .local v11, "_arg4":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 120
    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Landroid/permission/IPermissionChecker$Stub;->checkOp(ILandroid/content/AttributionSourceState;Ljava/lang/String;ZZ)I

    move-result v5

    .line 121
    .local v5, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    goto :goto_9a

    .line 97
    .end local v5    # "_result":I
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Landroid/content/AttributionSourceState;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":Z
    .end local v11    # "_arg4":Z
    :pswitch_4d
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 99
    .local v5, "_arg0":I
    sget-object v6, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/AttributionSourceState;

    .line 101
    .local v6, "_arg1":Landroid/content/AttributionSourceState;
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 102
    .local v7, "_arg2":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 103
    move-object/from16 v12, p0

    invoke-virtual {v12, v5, v6, v7}, Landroid/permission/IPermissionChecker$Stub;->finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V

    .line 104
    invoke-virtual {v2}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    goto :goto_9a

    .line 75
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Landroid/content/AttributionSourceState;
    .end local v7    # "_arg2":Z
    :pswitch_69
    move-object/from16 v12, p0

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 77
    .local v13, "_arg0":Ljava/lang/String;
    sget-object v5, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Landroid/content/AttributionSourceState;

    .line 79
    .local v14, "_arg1":Landroid/content/AttributionSourceState;
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 81
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 83
    .local v16, "_arg3":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 85
    .local v17, "_arg4":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 87
    .local v18, "_arg5":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 88
    .local v19, "_arg6":I
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 89
    invoke-virtual/range {v12 .. v19}, Landroid/permission/IPermissionChecker$Stub;->checkPermission(Ljava/lang/String;Landroid/content/AttributionSourceState;Ljava/lang/String;ZZZI)I

    move-result v5

    .line 90
    .local v5, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    nop

    .line 130
    .end local v5    # "_result":I
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Landroid/content/AttributionSourceState;
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":Z
    .end local v17    # "_arg4":Z
    .end local v18    # "_arg5":Z
    .end local v19    # "_arg6":I
    :goto_9a
    return v4

    nop

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_69
        :pswitch_4d
        :pswitch_24
    .end packed-switch
.end method
