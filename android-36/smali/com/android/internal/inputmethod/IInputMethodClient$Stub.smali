.class public abstract Lcom/android/internal/inputmethod/IInputMethodClient$Stub;
.super Landroid/os/Binder;
.source "IInputMethodClient.java"

# interfaces
.implements Lcom/android/internal/inputmethod/IInputMethodClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/IInputMethodClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/IInputMethodClient$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onBindAccessibilityService:I = 0x3

.field static final blacklist TRANSACTION_onBindMethod:I = 0x1

.field static final blacklist TRANSACTION_onStartInputResult:I = 0x2

.field static final blacklist TRANSACTION_onUnbindAccessibilityService:I = 0x5

.field static final blacklist TRANSACTION_onUnbindMethod:I = 0x4

.field static final blacklist TRANSACTION_reportFullscreenMode:I = 0xa

.field static final blacklist TRANSACTION_scheduleStartInputIfNecessary:I = 0x9

.field static final blacklist TRANSACTION_setActive:I = 0x6

.field static final blacklist TRANSACTION_setImeTraceEnabled:I = 0xb

.field static final blacklist TRANSACTION_setImeVisibility:I = 0x8

.field static final blacklist TRANSACTION_setInteractive:I = 0x7

.field static final blacklist TRANSACTION_throwExceptionFromSystem:I = 0xc


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 67
    const-string v0, "com.android.internal.inputmethod.IInputMethodClient"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 75
    if-nez p0, :cond_4

    .line 76
    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_4
    const-string v0, "com.android.internal.inputmethod.IInputMethodClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 79
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/inputmethod/IInputMethodClient;

    if-eqz v1, :cond_14

    .line 80
    move-object v1, v0

    check-cast v1, Lcom/android/internal/inputmethod/IInputMethodClient;

    return-object v1

    .line 82
    :cond_14
    new-instance v1, Lcom/android/internal/inputmethod/IInputMethodClient$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 91
    packed-switch p0, :pswitch_data_30

    .line 143
    const/4 v0, 0x0

    return-object v0

    .line 139
    :pswitch_5
    const-string/jumbo v0, "throwExceptionFromSystem"

    return-object v0

    .line 135
    :pswitch_9
    const-string/jumbo v0, "setImeTraceEnabled"

    return-object v0

    .line 131
    :pswitch_d
    const-string/jumbo v0, "reportFullscreenMode"

    return-object v0

    .line 127
    :pswitch_11
    const-string/jumbo v0, "scheduleStartInputIfNecessary"

    return-object v0

    .line 123
    :pswitch_15
    const-string/jumbo v0, "setImeVisibility"

    return-object v0

    .line 119
    :pswitch_19
    const-string/jumbo v0, "setInteractive"

    return-object v0

    .line 115
    :pswitch_1d
    const-string/jumbo v0, "setActive"

    return-object v0

    .line 111
    :pswitch_21
    const-string v0, "onUnbindAccessibilityService"

    return-object v0

    .line 107
    :pswitch_24
    const-string v0, "onUnbindMethod"

    return-object v0

    .line 103
    :pswitch_27
    const-string v0, "onBindAccessibilityService"

    return-object v0

    .line 99
    :pswitch_2a
    const-string v0, "onStartInputResult"

    return-object v0

    .line 95
    :pswitch_2d
    const-string v0, "onBindMethod"

    return-object v0

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
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

    .line 86
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 463
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 150
    invoke-static {p1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    const-string v0, "com.android.internal.inputmethod.IInputMethodClient"

    .line 155
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 156
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 159
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    return v1

    .line 162
    :cond_16
    packed-switch p1, :pswitch_data_d4

    .line 276
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 269
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->throwExceptionFromSystem(Ljava/lang/String;)V

    .line 272
    goto/16 :goto_d3

    .line 261
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 262
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 263
    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->setImeTraceEnabled(Z)V

    .line 264
    goto/16 :goto_d3

    .line 253
    .end local v2    # "_arg0":Z
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 254
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 255
    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->reportFullscreenMode(Z)V

    .line 256
    goto/16 :goto_d3

    .line 245
    .end local v2    # "_arg0":Z
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 246
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 247
    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->scheduleStartInputIfNecessary(Z)V

    .line 248
    goto/16 :goto_d3

    .line 235
    .end local v2    # "_arg0":Z
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 237
    .restart local v2    # "_arg0":Z
    sget-object v3, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/ImeTracker$Token;

    .line 238
    .local v3, "_arg1":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->setImeVisibility(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 240
    goto/16 :goto_d3

    .line 225
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Landroid/view/inputmethod/ImeTracker$Token;
    :pswitch_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 227
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 228
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->setInteractive(ZZ)V

    .line 230
    goto :goto_d3

    .line 215
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Z
    :pswitch_71
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 217
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 218
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 219
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->setActive(ZZ)V

    .line 220
    goto :goto_d3

    .line 205
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Z
    :pswitch_80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 207
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 208
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->onUnbindAccessibilityService(II)V

    .line 210
    goto :goto_d3

    .line 195
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_8f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 197
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 198
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->onUnbindMethod(II)V

    .line 200
    goto :goto_d3

    .line 185
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_9e
    sget-object v2, Lcom/android/internal/inputmethod/InputBindResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/inputmethod/InputBindResult;

    .line 187
    .local v2, "_arg0":Lcom/android/internal/inputmethod/InputBindResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 188
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->onBindAccessibilityService(Lcom/android/internal/inputmethod/InputBindResult;I)V

    .line 190
    goto :goto_d3

    .line 175
    .end local v2    # "_arg0":Lcom/android/internal/inputmethod/InputBindResult;
    .end local v3    # "_arg1":I
    :pswitch_b1
    sget-object v2, Lcom/android/internal/inputmethod/InputBindResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/inputmethod/InputBindResult;

    .line 177
    .restart local v2    # "_arg0":Lcom/android/internal/inputmethod/InputBindResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 178
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->onStartInputResult(Lcom/android/internal/inputmethod/InputBindResult;I)V

    .line 180
    goto :goto_d3

    .line 167
    .end local v2    # "_arg0":Lcom/android/internal/inputmethod/InputBindResult;
    .end local v3    # "_arg1":I
    :pswitch_c4
    sget-object v2, Lcom/android/internal/inputmethod/InputBindResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/inputmethod/InputBindResult;

    .line 168
    .restart local v2    # "_arg0":Lcom/android/internal/inputmethod/InputBindResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->onBindMethod(Lcom/android/internal/inputmethod/InputBindResult;)V

    .line 170
    nop

    .line 279
    .end local v2    # "_arg0":Lcom/android/internal/inputmethod/InputBindResult;
    :goto_d3
    return v1

    :pswitch_data_d4
    .packed-switch 0x1
        :pswitch_c4
        :pswitch_b1
        :pswitch_9e
        :pswitch_8f
        :pswitch_80
        :pswitch_71
        :pswitch_62
        :pswitch_4e
        :pswitch_42
        :pswitch_36
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method
