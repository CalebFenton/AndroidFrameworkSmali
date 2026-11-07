.class public abstract Landroid/os/IRecoverySystem$Stub;
.super Landroid/os/Binder;
.source "IRecoverySystem.java"

# interfaces
.implements Landroid/os/IRecoverySystem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IRecoverySystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IRecoverySystem$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.IRecoverySystem"

.field static final blacklist TRANSACTION_allocateSpaceForUpdate:I = 0x1

.field static final greylist-max-o TRANSACTION_clearBcb:I = 0x4

.field static final blacklist TRANSACTION_clearLskf:I = 0x7

.field static final blacklist TRANSACTION_isLskfCaptured:I = 0x8

.field static final greylist-max-o TRANSACTION_rebootRecoveryWithCommand:I = 0x5

.field static final blacklist TRANSACTION_rebootWithLskf:I = 0xa

.field static final blacklist TRANSACTION_rebootWithLskfAssumeSlotSwitch:I = 0x9

.field static final blacklist TRANSACTION_requestLskf:I = 0x6

.field static final greylist-max-o TRANSACTION_setupBcb:I = 0x3

.field static final greylist-max-o TRANSACTION_uncrypt:I = 0x2


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 76
    nop

    .line 77
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 76
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/IRecoverySystem$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 78
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 66
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 67
    const-string v0, "android.os.IRecoverySystem"

    invoke-virtual {p0, p0, v0}, Landroid/os/IRecoverySystem$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 68
    if-eqz p1, :cond_d

    .line 71
    iput-object p1, p0, Landroid/os/IRecoverySystem$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 72
    return-void

    .line 69
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/os/IRecoverySystem;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 85
    if-nez p0, :cond_4

    .line 86
    const/4 v0, 0x0

    return-object v0

    .line 88
    :cond_4
    const-string v0, "android.os.IRecoverySystem"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 89
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IRecoverySystem;

    if-eqz v1, :cond_14

    .line 90
    move-object v1, v0

    check-cast v1, Landroid/os/IRecoverySystem;

    return-object v1

    .line 92
    :cond_14
    new-instance v1, Landroid/os/IRecoverySystem$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IRecoverySystem$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 101
    packed-switch p0, :pswitch_data_2a

    .line 145
    const/4 v0, 0x0

    return-object v0

    .line 141
    :pswitch_5
    const-string/jumbo v0, "rebootWithLskf"

    return-object v0

    .line 137
    :pswitch_9
    const-string/jumbo v0, "rebootWithLskfAssumeSlotSwitch"

    return-object v0

    .line 133
    :pswitch_d
    const-string/jumbo v0, "isLskfCaptured"

    return-object v0

    .line 129
    :pswitch_11
    const-string v0, "clearLskf"

    return-object v0

    .line 125
    :pswitch_14
    const-string/jumbo v0, "requestLskf"

    return-object v0

    .line 121
    :pswitch_18
    const-string/jumbo v0, "rebootRecoveryWithCommand"

    return-object v0

    .line 117
    :pswitch_1c
    const-string v0, "clearBcb"

    return-object v0

    .line 113
    :pswitch_1f
    const-string/jumbo v0, "setupBcb"

    return-object v0

    .line 109
    :pswitch_23
    const-string/jumbo v0, "uncrypt"

    return-object v0

    .line 105
    :pswitch_27
    const-string v0, "allocateSpaceForUpdate"

    return-object v0

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected blacklist allocateSpaceForUpdate_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 481
    iget-object v0, p0, Landroid/os/IRecoverySystem$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/IRecoverySystem$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/IRecoverySystem$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.RECOVERY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 482
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 96
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 499
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 152
    invoke-static {p1}, Landroid/os/IRecoverySystem$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 156
    const-string v0, "android.os.IRecoverySystem"

    .line 157
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 158
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 161
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    return v1

    .line 164
    :cond_16
    packed-switch p1, :pswitch_data_e8

    .line 274
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 261
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 265
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 266
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 267
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/IRecoverySystem$Stub;->rebootWithLskf(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v5

    .line 268
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    goto/16 :goto_e6

    .line 249
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Z
    .end local v5    # "_result":I
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 251
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 252
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 253
    invoke-virtual {p0, v2, v3}, Landroid/os/IRecoverySystem$Stub;->rebootWithLskfAssumeSlotSwitch(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 254
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    goto/16 :goto_e6

    .line 239
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 240
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 241
    invoke-virtual {p0, v2}, Landroid/os/IRecoverySystem$Stub;->isLskfCaptured(Ljava/lang/String;)Z

    move-result v3

    .line 242
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 244
    goto/16 :goto_e6

    .line 229
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 230
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    invoke-virtual {p0, v2}, Landroid/os/IRecoverySystem$Stub;->clearLskf(Ljava/lang/String;)Z

    move-result v3

    .line 232
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 234
    goto :goto_e6

    .line 217
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 219
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentSender;

    .line 220
    .local v3, "_arg1":Landroid/content/IntentSender;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 221
    invoke-virtual {p0, v2, v3}, Landroid/os/IRecoverySystem$Stub;->requestLskf(Ljava/lang/String;Landroid/content/IntentSender;)Z

    move-result v4

    .line 222
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 224
    goto :goto_e6

    .line 208
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/content/IntentSender;
    .end local v4    # "_result":Z
    :pswitch_8f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 209
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    invoke-virtual {p0, v2}, Landroid/os/IRecoverySystem$Stub;->rebootRecoveryWithCommand(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    goto :goto_e6

    .line 200
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_9d
    invoke-virtual {p0}, Landroid/os/IRecoverySystem$Stub;->clearBcb()Z

    move-result v2

    .line 201
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 203
    goto :goto_e6

    .line 191
    .end local v2    # "_result":Z
    :pswitch_a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, v2}, Landroid/os/IRecoverySystem$Stub;->setupBcb(Ljava/lang/String;)Z

    move-result v3

    .line 194
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 196
    goto :goto_e6

    .line 179
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 181
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IRecoverySystemProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRecoverySystemProgressListener;

    move-result-object v3

    .line 182
    .local v3, "_arg1":Landroid/os/IRecoverySystemProgressListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {p0, v2, v3}, Landroid/os/IRecoverySystem$Stub;->uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z

    move-result v4

    .line 184
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 186
    goto :goto_e6

    .line 169
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/IRecoverySystemProgressListener;
    .end local v4    # "_result":Z
    :pswitch_d4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 170
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {p0, v2}, Landroid/os/IRecoverySystem$Stub;->allocateSpaceForUpdate(Ljava/lang/String;)Z

    move-result v3

    .line 172
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 174
    nop

    .line 277
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :goto_e6
    return v1

    nop

    :pswitch_data_e8
    .packed-switch 0x1
        :pswitch_d4
        :pswitch_ba
        :pswitch_a8
        :pswitch_9d
        :pswitch_8f
        :pswitch_75
        :pswitch_63
        :pswitch_50
        :pswitch_39
        :pswitch_1e
    .end packed-switch
.end method

.method protected blacklist rebootWithLskfAssumeSlotSwitch_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 493
    iget-object v0, p0, Landroid/os/IRecoverySystem$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/IRecoverySystem$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/IRecoverySystem$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.RECOVERY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 494
    return-void
.end method
