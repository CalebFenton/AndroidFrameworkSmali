.class public abstract Landroid/app/prediction/IPredictionManager$Stub;
.super Landroid/os/Binder;
.source "IPredictionManager.java"

# interfaces
.implements Landroid/app/prediction/IPredictionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/prediction/IPredictionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/prediction/IPredictionManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createPredictionSession:I = 0x1

.field static final blacklist TRANSACTION_notifyAppTargetEvent:I = 0x2

.field static final blacklist TRANSACTION_notifyLaunchLocationShown:I = 0x3

.field static final blacklist TRANSACTION_onDestroyPredictionSession:I = 0x8

.field static final blacklist TRANSACTION_registerPredictionUpdates:I = 0x5

.field static final blacklist TRANSACTION_requestPredictionUpdate:I = 0x7

.field static final blacklist TRANSACTION_requestServiceFeatures:I = 0x9

.field static final blacklist TRANSACTION_sortAppTargets:I = 0x4

.field static final blacklist TRANSACTION_unregisterPredictionUpdates:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 55
    const-string v0, "android.app.prediction.IPredictionManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/prediction/IPredictionManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/prediction/IPredictionManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 63
    if-nez p0, :cond_4

    .line 64
    const/4 v0, 0x0

    return-object v0

    .line 66
    :cond_4
    const-string v0, "android.app.prediction.IPredictionManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 67
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/prediction/IPredictionManager;

    if-eqz v1, :cond_14

    .line 68
    move-object v1, v0

    check-cast v1, Landroid/app/prediction/IPredictionManager;

    return-object v1

    .line 70
    :cond_14
    new-instance v1, Landroid/app/prediction/IPredictionManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/prediction/IPredictionManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 79
    packed-switch p0, :pswitch_data_28

    .line 119
    const/4 v0, 0x0

    return-object v0

    .line 115
    :pswitch_5
    const-string/jumbo v0, "requestServiceFeatures"

    return-object v0

    .line 111
    :pswitch_9
    const-string/jumbo v0, "onDestroyPredictionSession"

    return-object v0

    .line 107
    :pswitch_d
    const-string/jumbo v0, "requestPredictionUpdate"

    return-object v0

    .line 103
    :pswitch_11
    const-string/jumbo v0, "unregisterPredictionUpdates"

    return-object v0

    .line 99
    :pswitch_15
    const-string/jumbo v0, "registerPredictionUpdates"

    return-object v0

    .line 95
    :pswitch_19
    const-string/jumbo v0, "sortAppTargets"

    return-object v0

    .line 91
    :pswitch_1d
    const-string/jumbo v0, "notifyLaunchLocationShown"

    return-object v0

    .line 87
    :pswitch_21
    const-string/jumbo v0, "notifyAppTargetEvent"

    return-object v0

    .line 83
    :pswitch_25
    const-string v0, "createPredictionSession"

    return-object v0

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 74
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 421
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 126
    invoke-static {p1}, Landroid/app/prediction/IPredictionManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    const-string v0, "android.app.prediction.IPredictionManager"

    .line 131
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 132
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 135
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    return v1

    .line 138
    :cond_16
    packed-switch p1, :pswitch_data_10e

    .line 243
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 233
    :pswitch_1e
    sget-object v2, Landroid/app/prediction/AppPredictionSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/prediction/AppPredictionSessionId;

    .line 235
    .local v2, "_arg0":Landroid/app/prediction/AppPredictionSessionId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v3

    .line 236
    .local v3, "_arg1":Landroid/os/IRemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 237
    invoke-virtual {p0, v2, v3}, Landroid/app/prediction/IPredictionManager$Stub;->requestServiceFeatures(Landroid/app/prediction/AppPredictionSessionId;Landroid/os/IRemoteCallback;)V

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    goto/16 :goto_10d

    .line 224
    .end local v2    # "_arg0":Landroid/app/prediction/AppPredictionSessionId;
    .end local v3    # "_arg1":Landroid/os/IRemoteCallback;
    :pswitch_39
    sget-object v2, Landroid/app/prediction/AppPredictionSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/prediction/AppPredictionSessionId;

    .line 225
    .restart local v2    # "_arg0":Landroid/app/prediction/AppPredictionSessionId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 226
    invoke-virtual {p0, v2}, Landroid/app/prediction/IPredictionManager$Stub;->onDestroyPredictionSession(Landroid/app/prediction/AppPredictionSessionId;)V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    goto/16 :goto_10d

    .line 215
    .end local v2    # "_arg0":Landroid/app/prediction/AppPredictionSessionId;
    :pswitch_4c
    sget-object v2, Landroid/app/prediction/AppPredictionSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/prediction/AppPredictionSessionId;

    .line 216
    .restart local v2    # "_arg0":Landroid/app/prediction/AppPredictionSessionId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {p0, v2}, Landroid/app/prediction/IPredictionManager$Stub;->requestPredictionUpdate(Landroid/app/prediction/AppPredictionSessionId;)V

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    goto/16 :goto_10d

    .line 204
    .end local v2    # "_arg0":Landroid/app/prediction/AppPredictionSessionId;
    :pswitch_5f
    sget-object v2, Landroid/app/prediction/AppPredictionSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/prediction/AppPredictionSessionId;

    .line 206
    .restart local v2    # "_arg0":Landroid/app/prediction/AppPredictionSessionId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/prediction/IPredictionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/prediction/IPredictionCallback;

    move-result-object v3

    .line 207
    .local v3, "_arg1":Landroid/app/prediction/IPredictionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    invoke-virtual {p0, v2, v3}, Landroid/app/prediction/IPredictionManager$Stub;->unregisterPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    goto/16 :goto_10d

    .line 193
    .end local v2    # "_arg0":Landroid/app/prediction/AppPredictionSessionId;
    .end local v3    # "_arg1":Landroid/app/prediction/IPredictionCallback;
    :pswitch_7a
    sget-object v2, Landroid/app/prediction/AppPredictionSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/prediction/AppPredictionSessionId;

    .line 195
    .restart local v2    # "_arg0":Landroid/app/prediction/AppPredictionSessionId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/prediction/IPredictionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/prediction/IPredictionCallback;

    move-result-object v3

    .line 196
    .restart local v3    # "_arg1":Landroid/app/prediction/IPredictionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {p0, v2, v3}, Landroid/app/prediction/IPredictionManager$Stub;->registerPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    goto/16 :goto_10d

    .line 180
    .end local v2    # "_arg0":Landroid/app/prediction/AppPredictionSessionId;
    .end local v3    # "_arg1":Landroid/app/prediction/IPredictionCallback;
    :pswitch_95
    sget-object v2, Landroid/app/prediction/AppPredictionSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/prediction/AppPredictionSessionId;

    .line 182
    .restart local v2    # "_arg0":Landroid/app/prediction/AppPredictionSessionId;
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;

    .line 184
    .local v3, "_arg1":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/prediction/IPredictionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/prediction/IPredictionCallback;

    move-result-object v4

    .line 185
    .local v4, "_arg2":Landroid/app/prediction/IPredictionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/prediction/IPredictionManager$Stub;->sortAppTargets(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    goto :goto_10d

    .line 167
    .end local v2    # "_arg0":Landroid/app/prediction/AppPredictionSessionId;
    .end local v3    # "_arg1":Landroid/content/pm/ParceledListSlice;
    .end local v4    # "_arg2":Landroid/app/prediction/IPredictionCallback;
    :pswitch_b7
    sget-object v2, Landroid/app/prediction/AppPredictionSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/prediction/AppPredictionSessionId;

    .line 169
    .restart local v2    # "_arg0":Landroid/app/prediction/AppPredictionSessionId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ParceledListSlice;

    .line 172
    .local v4, "_arg2":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/prediction/IPredictionManager$Stub;->notifyLaunchLocationShown(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    goto :goto_10d

    .line 156
    .end local v2    # "_arg0":Landroid/app/prediction/AppPredictionSessionId;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/content/pm/ParceledListSlice;
    :pswitch_d5
    sget-object v2, Landroid/app/prediction/AppPredictionSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/prediction/AppPredictionSessionId;

    .line 158
    .restart local v2    # "_arg0":Landroid/app/prediction/AppPredictionSessionId;
    sget-object v3, Landroid/app/prediction/AppTargetEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/prediction/AppTargetEvent;

    .line 159
    .local v3, "_arg1":Landroid/app/prediction/AppTargetEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    invoke-virtual {p0, v2, v3}, Landroid/app/prediction/IPredictionManager$Stub;->notifyAppTargetEvent(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;)V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    goto :goto_10d

    .line 143
    .end local v2    # "_arg0":Landroid/app/prediction/AppPredictionSessionId;
    .end local v3    # "_arg1":Landroid/app/prediction/AppTargetEvent;
    :pswitch_ef
    sget-object v2, Landroid/app/prediction/AppPredictionContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/prediction/AppPredictionContext;

    .line 145
    .local v2, "_arg0":Landroid/app/prediction/AppPredictionContext;
    sget-object v3, Landroid/app/prediction/AppPredictionSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/prediction/AppPredictionSessionId;

    .line 147
    .local v3, "_arg1":Landroid/app/prediction/AppPredictionSessionId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 148
    .local v4, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/prediction/IPredictionManager$Stub;->createPredictionSession(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;Landroid/os/IBinder;)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    nop

    .line 246
    .end local v2    # "_arg0":Landroid/app/prediction/AppPredictionContext;
    .end local v3    # "_arg1":Landroid/app/prediction/AppPredictionSessionId;
    .end local v4    # "_arg2":Landroid/os/IBinder;
    :goto_10d
    return v1

    :pswitch_data_10e
    .packed-switch 0x1
        :pswitch_ef
        :pswitch_d5
        :pswitch_b7
        :pswitch_95
        :pswitch_7a
        :pswitch_5f
        :pswitch_4c
        :pswitch_39
        :pswitch_1e
    .end packed-switch
.end method
