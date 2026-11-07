.class public abstract Landroid/content/pm/ICrossProfileApps$Stub;
.super Landroid/os/Binder;
.source "ICrossProfileApps.java"

# interfaces
.implements Landroid/content/pm/ICrossProfileApps;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ICrossProfileApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/ICrossProfileApps$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.content.pm.ICrossProfileApps"

.field static final blacklist TRANSACTION_canConfigureInteractAcrossProfiles:I = 0x7

.field static final blacklist TRANSACTION_canInteractAcrossProfiles:I = 0x4

.field static final blacklist TRANSACTION_canRequestInteractAcrossProfiles:I = 0x5

.field static final blacklist TRANSACTION_canUserAttemptToConfigureInteractAcrossProfiles:I = 0x8

.field static final blacklist TRANSACTION_clearInteractAcrossProfilesAppOps:I = 0xa

.field static final greylist-max-o TRANSACTION_getTargetUserProfiles:I = 0x3

.field static final blacklist TRANSACTION_resetInteractAcrossProfilesAppOps:I = 0x9

.field static final blacklist TRANSACTION_setInteractAcrossProfilesAppOp:I = 0x6

.field static final greylist-max-o TRANSACTION_startActivityAsUser:I = 0x1

.field static final blacklist TRANSACTION_startActivityAsUserByIntent:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 63
    const-string v0, "android.content.pm.ICrossProfileApps"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/ICrossProfileApps$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/content/pm/ICrossProfileApps;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 71
    if-nez p0, :cond_4

    .line 72
    const/4 v0, 0x0

    return-object v0

    .line 74
    :cond_4
    const-string v0, "android.content.pm.ICrossProfileApps"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 75
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/content/pm/ICrossProfileApps;

    if-eqz v1, :cond_14

    .line 76
    move-object v1, v0

    check-cast v1, Landroid/content/pm/ICrossProfileApps;

    return-object v1

    .line 78
    :cond_14
    new-instance v1, Landroid/content/pm/ICrossProfileApps$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/ICrossProfileApps$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 87
    packed-switch p0, :pswitch_data_28

    .line 131
    const/4 v0, 0x0

    return-object v0

    .line 127
    :pswitch_5
    const-string v0, "clearInteractAcrossProfilesAppOps"

    return-object v0

    .line 123
    :pswitch_8
    const-string/jumbo v0, "resetInteractAcrossProfilesAppOps"

    return-object v0

    .line 119
    :pswitch_c
    const-string v0, "canUserAttemptToConfigureInteractAcrossProfiles"

    return-object v0

    .line 115
    :pswitch_f
    const-string v0, "canConfigureInteractAcrossProfiles"

    return-object v0

    .line 111
    :pswitch_12
    const-string/jumbo v0, "setInteractAcrossProfilesAppOp"

    return-object v0

    .line 107
    :pswitch_16
    const-string v0, "canRequestInteractAcrossProfiles"

    return-object v0

    .line 103
    :pswitch_19
    const-string v0, "canInteractAcrossProfiles"

    return-object v0

    .line 99
    :pswitch_1c
    const-string/jumbo v0, "getTargetUserProfiles"

    return-object v0

    .line 95
    :pswitch_20
    const-string/jumbo v0, "startActivityAsUserByIntent"

    return-object v0

    .line 91
    :pswitch_24
    const-string/jumbo v0, "startActivityAsUser"

    return-object v0

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 82
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 504
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 138
    invoke-static {p1}, Landroid/content/pm/ICrossProfileApps$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 142
    move-object v9, p2

    move-object/from16 v10, p3

    const-string v11, "android.content.pm.ICrossProfileApps"

    .line 143
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt p1, v12, :cond_10

    const v1, 0xffffff

    if-gt p1, v1, :cond_10

    .line 144
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    :cond_10
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_19

    .line 147
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    return v12

    .line 150
    :cond_19
    packed-switch p1, :pswitch_data_12e

    .line 285
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 277
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 278
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 279
    invoke-virtual {p0, v1}, Landroid/content/pm/ICrossProfileApps$Stub;->clearInteractAcrossProfilesAppOps(I)V

    .line 280
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    goto/16 :goto_12c

    .line 266
    .end local v1    # "_arg0":I
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 268
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 269
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/ICrossProfileApps$Stub;->resetInteractAcrossProfilesAppOps(ILjava/util/List;)V

    .line 271
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    goto/16 :goto_12c

    .line 254
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 256
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/ICrossProfileApps$Stub;->canUserAttemptToConfigureInteractAcrossProfiles(ILjava/lang/String;)Z

    move-result v3

    .line 259
    .local v3, "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 261
    goto/16 :goto_12c

    .line 242
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 244
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 245
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 246
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/ICrossProfileApps$Stub;->canConfigureInteractAcrossProfiles(ILjava/lang/String;)Z

    move-result v3

    .line 247
    .restart local v3    # "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 249
    goto/16 :goto_12c

    .line 229
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 231
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 233
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 234
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/pm/ICrossProfileApps$Stub;->setInteractAcrossProfilesAppOp(ILjava/lang/String;I)V

    .line 236
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    goto/16 :goto_12c

    .line 219
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 221
    invoke-virtual {p0, v1}, Landroid/content/pm/ICrossProfileApps$Stub;->canRequestInteractAcrossProfiles(Ljava/lang/String;)Z

    move-result v2

    .line 222
    .local v2, "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 224
    goto/16 :goto_12c

    .line 209
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_9b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 210
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {p0, v1}, Landroid/content/pm/ICrossProfileApps$Stub;->canInteractAcrossProfiles(Ljava/lang/String;)Z

    move-result v2

    .line 212
    .restart local v2    # "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 214
    goto/16 :goto_12c

    .line 199
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 200
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {p0, v1}, Landroid/content/pm/ICrossProfileApps$Stub;->getTargetUserProfiles(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 202
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {v10, v2, v12}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 204
    goto :goto_12c

    .line 178
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :pswitch_c0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 180
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "_arg2":Ljava/lang/String;
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 186
    .local v4, "_arg3":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 188
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 190
    .local v6, "_arg5":Landroid/os/IBinder;
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 191
    .local v7, "_arg6":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/content/pm/ICrossProfileApps$Stub;->startActivityAsUserByIntent(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    .line 193
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    goto :goto_12c

    .line 155
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/content/Intent;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/os/IBinder;
    .end local v7    # "_arg6":Landroid/os/Bundle;
    :pswitch_f3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 157
    .restart local v1    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 159
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 161
    .restart local v3    # "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/ComponentName;

    .line 163
    .local v4, "_arg3":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 165
    .restart local v5    # "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 167
    .local v6, "_arg5":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 169
    .local v7, "_arg6":Landroid/os/IBinder;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/os/Bundle;

    .line 170
    .local v8, "_arg7":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/content/pm/ICrossProfileApps$Stub;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;IZLandroid/os/IBinder;Landroid/os/Bundle;)V

    .line 172
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    nop

    .line 288
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/content/ComponentName;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Z
    .end local v7    # "_arg6":Landroid/os/IBinder;
    .end local v8    # "_arg7":Landroid/os/Bundle;
    :goto_12c
    return v12

    nop

    :pswitch_data_12e
    .packed-switch 0x1
        :pswitch_f3
        :pswitch_c0
        :pswitch_ae
        :pswitch_9b
        :pswitch_88
        :pswitch_71
        :pswitch_5a
        :pswitch_43
        :pswitch_30
        :pswitch_21
    .end packed-switch
.end method
