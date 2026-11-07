.class public abstract Landroid/adservices/customaudience/ICustomAudienceService$Stub;
.super Landroid/os/Binder;
.source "ICustomAudienceService.java"

# interfaces
.implements Landroid/adservices/customaudience/ICustomAudienceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/customaudience/ICustomAudienceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/customaudience/ICustomAudienceService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_fetchAndJoinCustomAudience:I = 0x2

.field static final blacklist TRANSACTION_joinCustomAudience:I = 0x1

.field static final blacklist TRANSACTION_leaveCustomAudience:I = 0x3

.field static final blacklist TRANSACTION_overrideCustomAudienceRemoteInfo:I = 0x5

.field static final blacklist TRANSACTION_removeCustomAudienceRemoteInfoOverride:I = 0x6

.field static final blacklist TRANSACTION_resetAllCustomAudienceOverrides:I = 0x7

.field static final blacklist TRANSACTION_scheduleCustomAudienceUpdate:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 83
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 84
    const-string v0, "android.adservices.customaudience.ICustomAudienceService"

    invoke-virtual {p0, p0, v0}, Landroid/adservices/customaudience/ICustomAudienceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/adservices/customaudience/ICustomAudienceService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 92
    if-nez p0, :cond_4

    .line 93
    const/4 v0, 0x0

    return-object v0

    .line 95
    :cond_4
    const-string v0, "android.adservices.customaudience.ICustomAudienceService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 96
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/adservices/customaudience/ICustomAudienceService;

    if-eqz v1, :cond_14

    .line 97
    move-object v1, v0

    check-cast v1, Landroid/adservices/customaudience/ICustomAudienceService;

    return-object v1

    .line 99
    :cond_14
    new-instance v1, Landroid/adservices/customaudience/ICustomAudienceService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/adservices/customaudience/ICustomAudienceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 108
    packed-switch p0, :pswitch_data_1a

    .line 140
    const/4 v0, 0x0

    return-object v0

    .line 136
    :pswitch_5
    const-string v0, "resetAllCustomAudienceOverrides"

    return-object v0

    .line 132
    :pswitch_8
    const-string v0, "removeCustomAudienceRemoteInfoOverride"

    return-object v0

    .line 128
    :pswitch_b
    const-string v0, "overrideCustomAudienceRemoteInfo"

    return-object v0

    .line 124
    :pswitch_e
    const-string v0, "scheduleCustomAudienceUpdate"

    return-object v0

    .line 120
    :pswitch_11
    const-string v0, "leaveCustomAudience"

    return-object v0

    .line 116
    :pswitch_14
    const-string v0, "fetchAndJoinCustomAudience"

    return-object v0

    .line 112
    :pswitch_17
    const-string v0, "joinCustomAudience"

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 103
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 434
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 147
    invoke-static {p1}, Landroid/adservices/customaudience/ICustomAudienceService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 151
    move-object v9, p2

    const-string v10, "android.adservices.customaudience.ICustomAudienceService"

    .line 152
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt p1, v11, :cond_e

    const v1, 0xffffff

    if-gt p1, v1, :cond_e

    .line 153
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    :cond_e
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_19

    .line 156
    move-object/from16 v12, p3

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    return v11

    .line 159
    :cond_19
    move-object/from16 v12, p3

    packed-switch p1, :pswitch_data_ec

    .line 251
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 244
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/adservices/customaudience/CustomAudienceOverrideCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/customaudience/CustomAudienceOverrideCallback;

    move-result-object v1

    .line 245
    .local v1, "_arg0":Landroid/adservices/customaudience/CustomAudienceOverrideCallback;
    invoke-virtual {p0, v1}, Landroid/adservices/customaudience/ICustomAudienceService$Stub;->resetAllCustomAudienceOverrides(Landroid/adservices/customaudience/CustomAudienceOverrideCallback;)V

    .line 246
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    goto/16 :goto_eb

    .line 230
    .end local v1    # "_arg0":Landroid/adservices/customaudience/CustomAudienceOverrideCallback;
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/adservices/common/AdTechIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/adservices/common/AdTechIdentifier;

    .line 234
    .local v2, "_arg1":Landroid/adservices/common/AdTechIdentifier;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 236
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/adservices/customaudience/CustomAudienceOverrideCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/customaudience/CustomAudienceOverrideCallback;

    move-result-object v4

    .line 237
    .local v4, "_arg3":Landroid/adservices/customaudience/CustomAudienceOverrideCallback;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/adservices/customaudience/ICustomAudienceService$Stub;->removeCustomAudienceRemoteInfoOverride(Ljava/lang/String;Landroid/adservices/common/AdTechIdentifier;Ljava/lang/String;Landroid/adservices/customaudience/CustomAudienceOverrideCallback;)V

    .line 238
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    goto/16 :goto_eb

    .line 210
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/adservices/common/AdTechIdentifier;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/adservices/customaudience/CustomAudienceOverrideCallback;
    :pswitch_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 212
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/adservices/common/AdTechIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/adservices/common/AdTechIdentifier;

    .line 214
    .restart local v2    # "_arg1":Landroid/adservices/common/AdTechIdentifier;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 216
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 218
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 220
    .local v5, "_arg4":J
    sget-object v7, Landroid/adservices/common/AdSelectionSignals;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/adservices/common/AdSelectionSignals;

    .line 222
    .local v7, "_arg5":Landroid/adservices/common/AdSelectionSignals;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/adservices/customaudience/CustomAudienceOverrideCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/customaudience/CustomAudienceOverrideCallback;

    move-result-object v8

    .line 223
    .local v8, "_arg6":Landroid/adservices/customaudience/CustomAudienceOverrideCallback;
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/adservices/customaudience/ICustomAudienceService$Stub;->overrideCustomAudienceRemoteInfo(Ljava/lang/String;Landroid/adservices/common/AdTechIdentifier;Ljava/lang/String;Ljava/lang/String;JLandroid/adservices/common/AdSelectionSignals;Landroid/adservices/customaudience/CustomAudienceOverrideCallback;)V

    .line 224
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    goto :goto_eb

    .line 200
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/adservices/common/AdTechIdentifier;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":J
    .end local v7    # "_arg5":Landroid/adservices/common/AdSelectionSignals;
    .end local v8    # "_arg6":Landroid/adservices/customaudience/CustomAudienceOverrideCallback;
    :pswitch_83
    sget-object v1, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;

    .line 202
    .local v1, "_arg0":Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateCallback;

    move-result-object v2

    .line 203
    .local v2, "_arg1":Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateCallback;
    invoke-virtual {p0, v1, v2}, Landroid/adservices/customaudience/ICustomAudienceService$Stub;->scheduleCustomAudienceUpdate(Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateCallback;)V

    .line 204
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    goto :goto_eb

    .line 186
    .end local v1    # "_arg0":Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;
    .end local v2    # "_arg1":Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateCallback;
    :pswitch_9a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/adservices/common/AdTechIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/adservices/common/AdTechIdentifier;

    .line 190
    .local v2, "_arg1":Landroid/adservices/common/AdTechIdentifier;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 192
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/adservices/customaudience/ICustomAudienceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/customaudience/ICustomAudienceCallback;

    move-result-object v4

    .line 193
    .local v4, "_arg3":Landroid/adservices/customaudience/ICustomAudienceCallback;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/adservices/customaudience/ICustomAudienceService$Stub;->leaveCustomAudience(Ljava/lang/String;Landroid/adservices/common/AdTechIdentifier;Ljava/lang/String;Landroid/adservices/customaudience/ICustomAudienceCallback;)V

    .line 194
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    goto :goto_eb

    .line 176
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/adservices/common/AdTechIdentifier;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/adservices/customaudience/ICustomAudienceCallback;
    :pswitch_b9
    sget-object v1, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;

    .line 178
    .local v1, "_arg0":Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/customaudience/FetchAndJoinCustomAudienceCallback;

    move-result-object v2

    .line 179
    .local v2, "_arg1":Landroid/adservices/customaudience/FetchAndJoinCustomAudienceCallback;
    invoke-virtual {p0, v1, v2}, Landroid/adservices/customaudience/ICustomAudienceService$Stub;->fetchAndJoinCustomAudience(Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;Landroid/adservices/customaudience/FetchAndJoinCustomAudienceCallback;)V

    .line 180
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    goto :goto_eb

    .line 164
    .end local v1    # "_arg0":Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;
    .end local v2    # "_arg1":Landroid/adservices/customaudience/FetchAndJoinCustomAudienceCallback;
    :pswitch_d0
    sget-object v1, Landroid/adservices/customaudience/CustomAudience;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/adservices/customaudience/CustomAudience;

    .line 166
    .local v1, "_arg0":Landroid/adservices/customaudience/CustomAudience;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/adservices/customaudience/ICustomAudienceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/customaudience/ICustomAudienceCallback;

    move-result-object v3

    .line 169
    .local v3, "_arg2":Landroid/adservices/customaudience/ICustomAudienceCallback;
    invoke-virtual {p0, v1, v2, v3}, Landroid/adservices/customaudience/ICustomAudienceService$Stub;->joinCustomAudience(Landroid/adservices/customaudience/CustomAudience;Ljava/lang/String;Landroid/adservices/customaudience/ICustomAudienceCallback;)V

    .line 170
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    nop

    .line 254
    .end local v1    # "_arg0":Landroid/adservices/customaudience/CustomAudience;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/adservices/customaudience/ICustomAudienceCallback;
    :goto_eb
    return v11

    :pswitch_data_ec
    .packed-switch 0x1
        :pswitch_d0
        :pswitch_b9
        :pswitch_9a
        :pswitch_83
        :pswitch_53
        :pswitch_33
        :pswitch_23
    .end packed-switch
.end method
