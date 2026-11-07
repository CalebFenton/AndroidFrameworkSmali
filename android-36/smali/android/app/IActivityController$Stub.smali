.class public abstract Landroid/app/IActivityController$Stub;
.super Landroid/os/Binder;
.source "IActivityController.java"

# interfaces
.implements Landroid/app/IActivityController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IActivityController$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.IActivityController"

.field static final greylist-max-o TRANSACTION_activityResuming:I = 0x2

.field static final greylist-max-o TRANSACTION_activityStarting:I = 0x1

.field static final greylist-max-o TRANSACTION_appCrashed:I = 0x3

.field static final greylist-max-o TRANSACTION_appEarlyNotResponding:I = 0x4

.field static final greylist-max-o TRANSACTION_appNotResponding:I = 0x5

.field static final greylist-max-o TRANSACTION_systemNotResponding:I = 0x6


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 79
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 80
    const-string v0, "android.app.IActivityController"

    invoke-virtual {p0, p0, v0}, Landroid/app/IActivityController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 88
    if-nez p0, :cond_4

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 91
    :cond_4
    const-string v0, "android.app.IActivityController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 92
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/IActivityController;

    if-eqz v1, :cond_14

    .line 93
    move-object v1, v0

    check-cast v1, Landroid/app/IActivityController;

    return-object v1

    .line 95
    :cond_14
    new-instance v1, Landroid/app/IActivityController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IActivityController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 104
    packed-switch p0, :pswitch_data_18

    .line 132
    const/4 v0, 0x0

    return-object v0

    .line 128
    :pswitch_5
    const-string/jumbo v0, "systemNotResponding"

    return-object v0

    .line 124
    :pswitch_9
    const-string v0, "appNotResponding"

    return-object v0

    .line 120
    :pswitch_c
    const-string v0, "appEarlyNotResponding"

    return-object v0

    .line 116
    :pswitch_f
    const-string v0, "appCrashed"

    return-object v0

    .line 112
    :pswitch_12
    const-string v0, "activityResuming"

    return-object v0

    .line 108
    :pswitch_15
    const-string v0, "activityStarting"

    return-object v0

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 99
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 409
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 139
    invoke-static {p1}, Landroid/app/IActivityController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 18
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 143
    move-object v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.app.IActivityController"

    .line 144
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt p1, v11, :cond_10

    const v1, 0xffffff

    if-gt p1, v1, :cond_10

    .line 145
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    :cond_10
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_19

    .line 148
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    return v11

    .line 151
    :cond_19
    packed-switch p1, :pswitch_data_bc

    .line 235
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 226
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 228
    invoke-virtual {p0, v1}, Landroid/app/IActivityController$Stub;->systemNotResponding(Ljava/lang/String;)I

    move-result v2

    .line 229
    .local v2, "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    goto/16 :goto_bb

    .line 212
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 214
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 216
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 218
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/IActivityController$Stub;->appNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result v4

    .line 219
    .local v4, "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    goto :goto_bb

    .line 198
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 200
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 202
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 203
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/IActivityController$Stub;->appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result v4

    .line 205
    .restart local v4    # "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    goto :goto_bb

    .line 178
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 180
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 182
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 184
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 186
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 188
    .local v5, "_arg4":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 189
    .local v7, "_arg5":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/app/IActivityController$Stub;->appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    move-result v12

    .line 191
    .local v12, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 193
    goto :goto_bb

    .line 168
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":J
    .end local v7    # "_arg5":Ljava/lang/String;
    .end local v12    # "_result":Z
    :pswitch_8f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 169
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    invoke-virtual {p0, v1}, Landroid/app/IActivityController$Stub;->activityResuming(Ljava/lang/String;)Z

    move-result v2

    .line 171
    .local v2, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 173
    goto :goto_bb

    .line 156
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_a1
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 158
    .local v1, "_arg0":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityController$Stub;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v3

    .line 161
    .local v3, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 163
    nop

    .line 238
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :goto_bb
    return v11

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_a1
        :pswitch_8f
        :pswitch_68
        :pswitch_4e
        :pswitch_34
        :pswitch_21
    .end packed-switch
.end method
