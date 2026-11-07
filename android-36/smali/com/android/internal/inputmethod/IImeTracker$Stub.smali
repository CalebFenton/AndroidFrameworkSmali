.class public abstract Lcom/android/internal/inputmethod/IImeTracker$Stub;
.super Landroid/os/Binder;
.source "IImeTracker.java"

# interfaces
.implements Lcom/android/internal/inputmethod/IImeTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/IImeTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/IImeTracker$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_finishTrackingPendingImeVisibilityRequests:I = 0x9

.field static final blacklist TRANSACTION_hasPendingImeVisibilityRequests:I = 0x8

.field static final blacklist TRANSACTION_onCancelled:I = 0x4

.field static final blacklist TRANSACTION_onDispatched:I = 0x7

.field static final blacklist TRANSACTION_onFailed:I = 0x3

.field static final blacklist TRANSACTION_onHidden:I = 0x6

.field static final blacklist TRANSACTION_onProgress:I = 0x2

.field static final blacklist TRANSACTION_onShown:I = 0x5

.field static final blacklist TRANSACTION_onStart:I = 0x1


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 126
    nop

    .line 127
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 126
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/inputmethod/IImeTracker$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 128
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 116
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 117
    const-string v0, "com.android.internal.inputmethod.IImeTracker"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 118
    if-eqz p1, :cond_d

    .line 121
    iput-object p1, p0, Lcom/android/internal/inputmethod/IImeTracker$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 122
    return-void

    .line 119
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IImeTracker;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 135
    if-nez p0, :cond_4

    .line 136
    const/4 v0, 0x0

    return-object v0

    .line 138
    :cond_4
    const-string v0, "com.android.internal.inputmethod.IImeTracker"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 139
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/inputmethod/IImeTracker;

    if-eqz v1, :cond_14

    .line 140
    move-object v1, v0

    check-cast v1, Lcom/android/internal/inputmethod/IImeTracker;

    return-object v1

    .line 142
    :cond_14
    new-instance v1, Lcom/android/internal/inputmethod/IImeTracker$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/inputmethod/IImeTracker$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 151
    packed-switch p0, :pswitch_data_20

    .line 191
    const/4 v0, 0x0

    return-object v0

    .line 187
    :pswitch_5
    const-string v0, "finishTrackingPendingImeVisibilityRequests"

    return-object v0

    .line 183
    :pswitch_8
    const-string v0, "hasPendingImeVisibilityRequests"

    return-object v0

    .line 179
    :pswitch_b
    const-string v0, "onDispatched"

    return-object v0

    .line 175
    :pswitch_e
    const-string v0, "onHidden"

    return-object v0

    .line 171
    :pswitch_11
    const-string v0, "onShown"

    return-object v0

    .line 167
    :pswitch_14
    const-string v0, "onCancelled"

    return-object v0

    .line 163
    :pswitch_17
    const-string v0, "onFailed"

    return-object v0

    .line 159
    :pswitch_1a
    const-string v0, "onProgress"

    return-object v0

    .line 155
    :pswitch_1d
    const-string v0, "onStart"

    return-object v0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1a
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

    .line 146
    return-object p0
.end method

.method protected blacklist finishTrackingPendingImeVisibilityRequests_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 523
    iget-object v0, p0, Lcom/android/internal/inputmethod/IImeTracker$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TEST_INPUT_METHOD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 524
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 528
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 198
    invoke-static {p1}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist hasPendingImeVisibilityRequests_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 518
    iget-object v0, p0, Lcom/android/internal/inputmethod/IImeTracker$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TEST_INPUT_METHOD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 519
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 202
    const-string v0, "com.android.internal.inputmethod.IImeTracker"

    .line 203
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 204
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 207
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    return v1

    .line 210
    :cond_16
    packed-switch p1, :pswitch_data_c6

    .line 303
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 296
    :pswitch_1e
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 297
    .local v2, "_arg0":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 298
    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->finishTrackingPendingImeVisibilityRequests(Lcom/android/internal/infra/AndroidFuture;)V

    .line 299
    goto/16 :goto_c4

    .line 288
    .end local v2    # "_arg0":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_2e
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->hasPendingImeVisibilityRequests()Z

    move-result v2

    .line 289
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 291
    goto/16 :goto_c4

    .line 281
    .end local v2    # "_result":Z
    :pswitch_3a
    sget-object v2, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/ImeTracker$Token;

    .line 282
    .local v2, "_arg0":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 283
    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->onDispatched(Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 284
    goto/16 :goto_c4

    .line 273
    .end local v2    # "_arg0":Landroid/view/inputmethod/ImeTracker$Token;
    :pswitch_4a
    sget-object v2, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/ImeTracker$Token;

    .line 274
    .restart local v2    # "_arg0":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 275
    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->onHidden(Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 276
    goto :goto_c4

    .line 265
    .end local v2    # "_arg0":Landroid/view/inputmethod/ImeTracker$Token;
    :pswitch_59
    sget-object v2, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/ImeTracker$Token;

    .line 266
    .restart local v2    # "_arg0":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 267
    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->onShown(Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 268
    goto :goto_c4

    .line 255
    .end local v2    # "_arg0":Landroid/view/inputmethod/ImeTracker$Token;
    :pswitch_68
    sget-object v2, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/ImeTracker$Token;

    .line 257
    .restart local v2    # "_arg0":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 258
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 260
    goto :goto_c4

    .line 245
    .end local v2    # "_arg0":Landroid/view/inputmethod/ImeTracker$Token;
    .end local v3    # "_arg1":I
    :pswitch_7b
    sget-object v2, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/ImeTracker$Token;

    .line 247
    .restart local v2    # "_arg0":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 248
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 249
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 250
    goto :goto_c4

    .line 235
    .end local v2    # "_arg0":Landroid/view/inputmethod/ImeTracker$Token;
    .end local v3    # "_arg1":I
    :pswitch_8e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 237
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 238
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->onProgress(Landroid/os/IBinder;I)V

    .line 240
    goto :goto_c4

    .line 215
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    :pswitch_9d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 217
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 219
    .local v6, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 221
    .local v7, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 223
    .local v8, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 225
    .local v9, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 226
    .local v10, "_arg5":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->onStart(Ljava/lang/String;IIIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v2

    .line 228
    .local v2, "_result":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 230
    nop

    .line 306
    .end local v2    # "_result":Landroid/view/inputmethod/ImeTracker$Token;
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":Z
    :goto_c4
    return v1

    nop

    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_9d
        :pswitch_8e
        :pswitch_7b
        :pswitch_68
        :pswitch_59
        :pswitch_4a
        :pswitch_3a
        :pswitch_2e
        :pswitch_1e
    .end packed-switch
.end method
