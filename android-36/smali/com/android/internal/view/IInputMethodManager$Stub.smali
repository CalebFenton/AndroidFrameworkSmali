.class public abstract Lcom/android/internal/view/IInputMethodManager$Stub;
.super Landroid/os/Binder;
.source "IInputMethodManager.java"

# interfaces
.implements Lcom/android/internal/view/IInputMethodManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputMethodManager"

.field static final blacklist PERMISSIONS_onImeSwitchButtonClickFromSystem:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_removeImeSurface:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_showInputMethodPickerFromSystem:[Ljava/lang/String;

.field static final blacklist TRANSACTION_acceptStylusHandwritingDelegation:I = 0x21

.field static final blacklist TRANSACTION_acceptStylusHandwritingDelegationAsync:I = 0x22

.field static final greylist-max-o TRANSACTION_addClient:I = 0x1

.field static final blacklist TRANSACTION_addVirtualStylusIdForTestSession:I = 0x24

.field static final blacklist TRANSACTION_getCurrentInputMethodInfoAsUser:I = 0x2

.field static final greylist-max-o TRANSACTION_getCurrentInputMethodSubtype:I = 0x13

.field static final greylist-max-o TRANSACTION_getEnabledInputMethodList:I = 0x4

.field static final blacklist TRANSACTION_getEnabledInputMethodListLegacy:I = 0x6

.field static final greylist-max-o TRANSACTION_getEnabledInputMethodSubtypeList:I = 0x7

.field static final blacklist TRANSACTION_getImeTrackerService:I = 0x26

.field static final greylist-max-o TRANSACTION_getInputMethodList:I = 0x3

.field static final blacklist TRANSACTION_getInputMethodListLegacy:I = 0x5

.field static final greylist-max-o TRANSACTION_getInputMethodWindowVisibleHeight:I = 0x16

.field static final greylist-max-o TRANSACTION_getLastInputMethodSubtype:I = 0x8

.field static final greylist-max-o TRANSACTION_hideSoftInput:I = 0xa

.field static final blacklist TRANSACTION_hideSoftInputFromServerForTest:I = 0xb

.field static final blacklist TRANSACTION_isImeTraceEnabled:I = 0x1b

.field static final greylist-max-o TRANSACTION_isInputMethodPickerShownForTest:I = 0x10

.field static final blacklist TRANSACTION_isStylusHandwritingAvailableAsUser:I = 0x23

.field static final blacklist TRANSACTION_onImeSwitchButtonClickFromSystem:I = 0x11

.field static final blacklist TRANSACTION_prepareStylusHandwritingDelegation:I = 0x20

.field static final blacklist TRANSACTION_removeImeSurface:I = 0x18

.field static final blacklist TRANSACTION_removeImeSurfaceFromWindowAsync:I = 0x19

.field static final blacklist TRANSACTION_reportPerceptibleAsync:I = 0x17

.field static final greylist-max-o TRANSACTION_setAdditionalInputMethodSubtypes:I = 0x14

.field static final blacklist TRANSACTION_setExplicitlyEnabledInputMethodSubtypes:I = 0x15

.field static final blacklist TRANSACTION_setStylusWindowIdleTimeoutForTest:I = 0x25

.field static final blacklist TRANSACTION_shouldShowImeSwitcherButtonForTest:I = 0x12

.field static final greylist-max-o TRANSACTION_showInputMethodPickerFromClient:I = 0xe

.field static final blacklist TRANSACTION_showInputMethodPickerFromSystem:I = 0xf

.field static final greylist-max-o TRANSACTION_showSoftInput:I = 0x9

.field static final blacklist TRANSACTION_startConnectionlessStylusHandwriting:I = 0x1f

.field static final blacklist TRANSACTION_startImeTrace:I = 0x1c

.field static final greylist-max-o TRANSACTION_startInputOrWindowGainedFocus:I = 0xc

.field static final blacklist TRANSACTION_startInputOrWindowGainedFocusAsync:I = 0xd

.field static final blacklist TRANSACTION_startProtoDump:I = 0x1a

.field static final blacklist TRANSACTION_startStylusHandwriting:I = 0x1e

.field static final blacklist TRANSACTION_stopImeTrace:I = 0x1d


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 1661
    const-string v0, "android.permission.WRITE_SECURE_SETTINGS"

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/view/IInputMethodManager$Stub;->PERMISSIONS_showInputMethodPickerFromSystem:[Ljava/lang/String;

    .line 1672
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/view/IInputMethodManager$Stub;->PERMISSIONS_onImeSwitchButtonClickFromSystem:[Ljava/lang/String;

    .line 1688
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/view/IInputMethodManager$Stub;->PERMISSIONS_removeImeSurface:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 217
    nop

    .line 218
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 217
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 219
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 207
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 208
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 209
    if-eqz p1, :cond_d

    .line 212
    iput-object p1, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 213
    return-void

    .line 210
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 226
    if-nez p0, :cond_4

    .line 227
    const/4 v0, 0x0

    return-object v0

    .line 229
    :cond_4
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 230
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/view/IInputMethodManager;

    if-eqz v1, :cond_14

    .line 231
    move-object v1, v0

    check-cast v1, Lcom/android/internal/view/IInputMethodManager;

    return-object v1

    .line 233
    :cond_14
    new-instance v1, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 242
    packed-switch p0, :pswitch_data_8a

    .line 398
    const/4 v0, 0x0

    return-object v0

    .line 394
    :pswitch_5
    const-string v0, "getImeTrackerService"

    return-object v0

    .line 390
    :pswitch_8
    const-string/jumbo v0, "setStylusWindowIdleTimeoutForTest"

    return-object v0

    .line 386
    :pswitch_c
    const-string v0, "addVirtualStylusIdForTestSession"

    return-object v0

    .line 382
    :pswitch_f
    const-string v0, "isStylusHandwritingAvailableAsUser"

    return-object v0

    .line 378
    :pswitch_12
    const-string v0, "acceptStylusHandwritingDelegationAsync"

    return-object v0

    .line 374
    :pswitch_15
    const-string v0, "acceptStylusHandwritingDelegation"

    return-object v0

    .line 370
    :pswitch_18
    const-string/jumbo v0, "prepareStylusHandwritingDelegation"

    return-object v0

    .line 366
    :pswitch_1c
    const-string/jumbo v0, "startConnectionlessStylusHandwriting"

    return-object v0

    .line 362
    :pswitch_20
    const-string/jumbo v0, "startStylusHandwriting"

    return-object v0

    .line 358
    :pswitch_24
    const-string/jumbo v0, "stopImeTrace"

    return-object v0

    .line 354
    :pswitch_28
    const-string/jumbo v0, "startImeTrace"

    return-object v0

    .line 350
    :pswitch_2c
    const-string v0, "isImeTraceEnabled"

    return-object v0

    .line 346
    :pswitch_2f
    const-string/jumbo v0, "startProtoDump"

    return-object v0

    .line 342
    :pswitch_33
    const-string/jumbo v0, "removeImeSurfaceFromWindowAsync"

    return-object v0

    .line 338
    :pswitch_37
    const-string/jumbo v0, "removeImeSurface"

    return-object v0

    .line 334
    :pswitch_3b
    const-string/jumbo v0, "reportPerceptibleAsync"

    return-object v0

    .line 330
    :pswitch_3f
    const-string v0, "getInputMethodWindowVisibleHeight"

    return-object v0

    .line 326
    :pswitch_42
    const-string/jumbo v0, "setExplicitlyEnabledInputMethodSubtypes"

    return-object v0

    .line 322
    :pswitch_46
    const-string/jumbo v0, "setAdditionalInputMethodSubtypes"

    return-object v0

    .line 318
    :pswitch_4a
    const-string v0, "getCurrentInputMethodSubtype"

    return-object v0

    .line 314
    :pswitch_4d
    const-string/jumbo v0, "shouldShowImeSwitcherButtonForTest"

    return-object v0

    .line 310
    :pswitch_51
    const-string v0, "onImeSwitchButtonClickFromSystem"

    return-object v0

    .line 306
    :pswitch_54
    const-string v0, "isInputMethodPickerShownForTest"

    return-object v0

    .line 302
    :pswitch_57
    const-string/jumbo v0, "showInputMethodPickerFromSystem"

    return-object v0

    .line 298
    :pswitch_5b
    const-string/jumbo v0, "showInputMethodPickerFromClient"

    return-object v0

    .line 294
    :pswitch_5f
    const-string/jumbo v0, "startInputOrWindowGainedFocusAsync"

    return-object v0

    .line 290
    :pswitch_63
    const-string/jumbo v0, "startInputOrWindowGainedFocus"

    return-object v0

    .line 286
    :pswitch_67
    const-string v0, "hideSoftInputFromServerForTest"

    return-object v0

    .line 282
    :pswitch_6a
    const-string v0, "hideSoftInput"

    return-object v0

    .line 278
    :pswitch_6d
    const-string/jumbo v0, "showSoftInput"

    return-object v0

    .line 274
    :pswitch_71
    const-string v0, "getLastInputMethodSubtype"

    return-object v0

    .line 270
    :pswitch_74
    const-string v0, "getEnabledInputMethodSubtypeList"

    return-object v0

    .line 266
    :pswitch_77
    const-string v0, "getEnabledInputMethodListLegacy"

    return-object v0

    .line 262
    :pswitch_7a
    const-string v0, "getInputMethodListLegacy"

    return-object v0

    .line 258
    :pswitch_7d
    const-string v0, "getEnabledInputMethodList"

    return-object v0

    .line 254
    :pswitch_80
    const-string v0, "getInputMethodList"

    return-object v0

    .line 250
    :pswitch_83
    const-string v0, "getCurrentInputMethodInfoAsUser"

    return-object v0

    .line 246
    :pswitch_86
    const-string v0, "addClient"

    return-object v0

    nop

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6d
        :pswitch_6a
        :pswitch_67
        :pswitch_63
        :pswitch_5f
        :pswitch_5b
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4d
        :pswitch_4a
        :pswitch_46
        :pswitch_42
        :pswitch_3f
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected blacklist addVirtualStylusIdForTestSession_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1715
    iget-object v0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TEST_INPUT_METHOD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1716
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 237
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1726
    const/16 v0, 0x25

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 405
    invoke-static {p1}, Lcom/android/internal/view/IInputMethodManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist hideSoftInputFromServerForTest_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1655
    iget-object v0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TEST_INPUT_METHOD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1656
    return-void
.end method

.method protected blacklist isInputMethodPickerShownForTest_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1669
    iget-object v0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TEST_INPUT_METHOD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1670
    return-void
.end method

.method protected blacklist onImeSwitchButtonClickFromSystem_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1675
    iget-object v0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Lcom/android/internal/view/IInputMethodManager$Stub;->PERMISSIONS_onImeSwitchButtonClickFromSystem:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    .line 1676
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 23
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 409
    move-object/from16 v0, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "com.android.internal.view.IInputMethodManager"

    .line 410
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_15

    const v1, 0xffffff

    if-gt v7, v1, :cond_15

    .line 411
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    :cond_15
    const v1, 0x5f4e5446

    if-ne v7, v1, :cond_1e

    .line 414
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 415
    return v11

    .line 417
    :cond_1e
    packed-switch v7, :pswitch_data_4ec

    .line 901
    move-object v14, v8

    move-object/from16 v17, v10

    move-object v10, v9

    .end local v10    # "descriptor":Ljava/lang/String;
    .local v17, "descriptor":Ljava/lang/String;
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 894
    .end local v17    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_2a
    invoke-virtual {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object v1

    .line 895
    .local v1, "_result":Lcom/android/internal/inputmethod/IImeTracker;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 896
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 897
    move-object v14, v8

    move-object/from16 v17, v10

    move-object v10, v9

    move v9, v11

    goto/16 :goto_4ea

    .line 884
    .end local v1    # "_result":Lcom/android/internal/inputmethod/IImeTracker;
    :pswitch_3b
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    .line 886
    .local v1, "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    invoke-virtual {v8}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 887
    .local v2, "_arg1":J
    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 888
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->setStylusWindowIdleTimeoutForTest(Lcom/android/internal/inputmethod/IInputMethodClient;J)V

    .line 889
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 890
    move-object v14, v8

    move-object/from16 v17, v10

    move-object v10, v9

    move v9, v11

    goto/16 :goto_4ea

    .line 875
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    .end local v2    # "_arg1":J
    :pswitch_57
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    .line 876
    .restart local v1    # "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 877
    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->addVirtualStylusIdForTestSession(Lcom/android/internal/inputmethod/IInputMethodClient;)V

    .line 878
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 879
    move-object v14, v8

    move-object/from16 v17, v10

    move-object v10, v9

    move v9, v11

    goto/16 :goto_4ea

    .line 863
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    :pswitch_6f
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 865
    .local v1, "_arg0":I
    invoke-virtual {v8}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 866
    .local v2, "_arg1":Z
    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 867
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->isStylusHandwritingAvailableAsUser(IZ)Z

    move-result v3

    .line 868
    .local v3, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 869
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 870
    move-object v14, v8

    move-object/from16 v17, v10

    move-object v10, v9

    move v9, v11

    goto/16 :goto_4ea

    .line 845
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":Z
    :pswitch_8b
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    .line 847
    .local v1, "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 849
    .local v2, "_arg1":I
    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 851
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 853
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 855
    .local v5, "_arg4":I
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/inputmethod/IBooleanListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IBooleanListener;

    move-result-object v6

    .line 856
    .local v6, "_arg5":Lcom/android/internal/inputmethod/IBooleanListener;
    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 857
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/view/IInputMethodManager$Stub;->acceptStylusHandwritingDelegationAsync(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/inputmethod/IBooleanListener;)V

    .line 858
    move-object/from16 v0, p0

    move-object v14, v8

    move-object/from16 v17, v10

    move-object v10, v9

    move v9, v11

    goto/16 :goto_4ea

    .line 827
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Lcom/android/internal/inputmethod/IBooleanListener;
    :pswitch_ba
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    .line 829
    .restart local v1    # "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 831
    .restart local v2    # "_arg1":I
    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 833
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 835
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 836
    .restart local v5    # "_arg4":I
    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 837
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputMethodManager$Stub;->acceptStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    .line 838
    .local v6, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 839
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 840
    move-object v14, v8

    move-object/from16 v17, v10

    move-object v10, v9

    move v9, v11

    goto/16 :goto_4ea

    .line 812
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    .end local v6    # "_result":Z
    :pswitch_e8
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    .line 814
    .restart local v1    # "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 816
    .restart local v2    # "_arg1":I
    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 818
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 819
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 820
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/view/IInputMethodManager$Stub;->prepareStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)V

    .line 821
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 822
    move-object v14, v8

    move-object/from16 v17, v10

    move-object v10, v9

    move v9, v11

    goto/16 :goto_4ea

    .line 794
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_10c
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    .line 796
    .restart local v1    # "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 798
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/view/inputmethod/CursorAnchorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/CursorAnchorInfo;

    .line 800
    .local v3, "_arg2":Landroid/view/inputmethod/CursorAnchorInfo;
    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 802
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 804
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    move-result-object v6

    .line 805
    .local v6, "_arg5":Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;
    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 806
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/view/IInputMethodManager$Stub;->startConnectionlessStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ILandroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V

    .line 807
    move-object v14, v8

    move-object/from16 v17, v10

    move-object v10, v9

    move v9, v11

    goto/16 :goto_4ea

    .line 785
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/view/inputmethod/CursorAnchorInfo;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;
    :pswitch_13d
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    .line 786
    .restart local v1    # "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 787
    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;)V

    .line 788
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 789
    move-object v14, v8

    move-object/from16 v17, v10

    move-object v10, v9

    move v9, v11

    goto/16 :goto_4ea

    .line 778
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    :pswitch_155
    invoke-virtual {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->stopImeTrace()V

    .line 779
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 780
    move-object v14, v8

    move-object/from16 v17, v10

    move-object v10, v9

    move v9, v11

    goto/16 :goto_4ea

    .line 772
    :pswitch_162
    invoke-virtual {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->startImeTrace()V

    .line 773
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 774
    move-object v14, v8

    move-object/from16 v17, v10

    move-object v10, v9

    move v9, v11

    goto/16 :goto_4ea

    .line 765
    :pswitch_16f
    invoke-virtual {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->isImeTraceEnabled()Z

    move-result v1

    .line 766
    .local v1, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 768
    move-object v14, v8

    move-object/from16 v17, v10

    move-object v10, v9

    move v9, v11

    goto/16 :goto_4ea

    .line 753
    .end local v1    # "_result":Z
    :pswitch_180
    invoke-virtual {v8}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 755
    .local v1, "_arg0":[B
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 757
    .restart local v2    # "_arg1":I
    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 758
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 759
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->startProtoDump([BILjava/lang/String;)V

    .line 760
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 761
    move-object v14, v8

    move-object/from16 v17, v10

    move-object v10, v9

    move v9, v11

    goto/16 :goto_4ea

    .line 745
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_19c
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 746
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 747
    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->removeImeSurfaceFromWindowAsync(Landroid/os/IBinder;)V

    .line 748
    move-object v14, v8

    move-object/from16 v17, v10

    move-object v10, v9

    move v9, v11

    goto/16 :goto_4ea

    .line 736
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_1ad
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 737
    .local v1, "_arg0":I
    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 738
    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->removeImeSurface(I)V

    .line 739
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    move-object v14, v8

    move-object/from16 v17, v10

    move-object v10, v9

    move v9, v11

    goto/16 :goto_4ea

    .line 726
    .end local v1    # "_arg0":I
    :pswitch_1c1
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 728
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v8}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 729
    .local v2, "_arg1":Z
    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 730
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->reportPerceptibleAsync(Landroid/os/IBinder;Z)V

    .line 731
    move-object v14, v8

    move-object/from16 v17, v10

    move-object v10, v9

    move v9, v11

    goto/16 :goto_4ea

    .line 716
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Z
    :pswitch_1d6
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    .line 717
    .local v1, "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 718
    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->getInputMethodWindowVisibleHeight(Lcom/android/internal/inputmethod/IInputMethodClient;)I

    move-result v2

    .line 719
    .local v2, "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 720
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 721
    move-object v14, v8

    move-object/from16 v17, v10

    move-object v10, v9

    move v9, v11

    goto/16 :goto_4ea

    .line 703
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    .end local v2    # "_result":I
    :pswitch_1f2
    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 705
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 707
    .local v2, "_arg1":[I
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 708
    .local v3, "_arg2":I
    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 709
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->setExplicitlyEnabledInputMethodSubtypes(Ljava/lang/String;[II)V

    .line 710
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    move-object v14, v8

    move-object/from16 v17, v10

    move-object v10, v9

    move v9, v11

    goto/16 :goto_4ea

    .line 690
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[I
    .end local v3    # "_arg2":I
    :pswitch_20e
    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 692
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/inputmethod/InputMethodSubtype;

    .line 694
    .local v2, "_arg1":[Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 695
    .restart local v3    # "_arg2":I
    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 696
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;I)V

    .line 697
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    move-object v14, v8

    move-object/from16 v17, v10

    move-object v10, v9

    move v9, v11

    goto/16 :goto_4ea

    .line 680
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[Landroid/view/inputmethod/InputMethodSubtype;
    .end local v3    # "_arg2":I
    :pswitch_22e
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 681
    .local v1, "_arg0":I
    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 682
    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCurrentInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    .line 683
    .local v2, "_result":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 684
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 685
    move-object v14, v8

    move-object/from16 v17, v10

    move-object v10, v9

    move v9, v11

    goto/16 :goto_4ea

    .line 672
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/view/inputmethod/InputMethodSubtype;
    :pswitch_246
    invoke-virtual {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->shouldShowImeSwitcherButtonForTest()Z

    move-result v1

    .line 673
    .local v1, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 674
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 675
    move-object v14, v8

    move-object/from16 v17, v10

    move-object v10, v9

    move v9, v11

    goto/16 :goto_4ea

    .line 665
    .end local v1    # "_result":Z
    :pswitch_257
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 666
    .local v1, "_arg0":I
    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 667
    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->onImeSwitchButtonClickFromSystem(I)V

    .line 668
    move-object v14, v8

    move-object/from16 v17, v10

    move-object v10, v9

    move v9, v11

    goto/16 :goto_4ea

    .line 657
    .end local v1    # "_arg0":I
    :pswitch_268
    invoke-virtual {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->isInputMethodPickerShownForTest()Z

    move-result v1

    .line 658
    .local v1, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 660
    move-object v14, v8

    move-object/from16 v17, v10

    move-object v10, v9

    move v9, v11

    goto/16 :goto_4ea

    .line 647
    .end local v1    # "_result":Z
    :pswitch_279
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 649
    .local v1, "_arg0":I
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 650
    .local v2, "_arg1":I
    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 651
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->showInputMethodPickerFromSystem(II)V

    .line 652
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    move-object v14, v8

    move-object/from16 v17, v10

    move-object v10, v9

    move v9, v11

    goto/16 :goto_4ea

    .line 636
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_291
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    .line 638
    .local v1, "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 639
    .restart local v2    # "_arg1":I
    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 640
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->showInputMethodPickerFromClient(Lcom/android/internal/inputmethod/IInputMethodClient;I)V

    .line 641
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 642
    move-object v14, v8

    move-object/from16 v17, v10

    move-object v10, v9

    move v9, v11

    goto/16 :goto_4ea

    .line 599
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    .end local v2    # "_arg1":I
    :pswitch_2ad
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 601
    .local v1, "_arg0":I
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v2

    .line 603
    .local v2, "_arg1":Lcom/android/internal/inputmethod/IInputMethodClient;
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 605
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 607
    .local v4, "_arg3":I
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 609
    .local v5, "_arg4":I
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 611
    .local v6, "_arg5":I
    sget-object v12, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v12}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/EditorInfo;

    .line 613
    .local v12, "_arg6":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteInputConnection;

    move-result-object v13

    .line 615
    .local v13, "_arg7":Lcom/android/internal/inputmethod/IRemoteInputConnection;
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    move-result-object v14

    .line 617
    .local v14, "_arg8":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    move-object v15, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .local v15, "descriptor":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 619
    .local v10, "_arg9":I
    move/from16 v16, v11

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 621
    .local v11, "_arg10":I
    sget-object v0, Landroid/window/ImeOnBackInvokedDispatcher;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/ImeOnBackInvokedDispatcher;

    .line 623
    .local v0, "_arg11":Landroid/window/ImeOnBackInvokedDispatcher;
    move-object v8, v13

    .end local v13    # "_arg7":Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .local v8, "_arg7":Lcom/android/internal/inputmethod/IRemoteInputConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v13

    .line 625
    .local v13, "_arg12":Z
    move-object v9, v14

    .end local v14    # "_arg8":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .local v9, "_arg8":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 627
    .local v14, "_arg13":I
    move-object/from16 v17, v15

    .end local v15    # "descriptor":Ljava/lang/String;
    .restart local v17    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    .line 628
    .local v15, "_arg14":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 629
    move-object v7, v12

    move-object v12, v0

    move-object/from16 v0, p0

    .end local v0    # "_arg11":Landroid/window/ImeOnBackInvokedDispatcher;
    .local v7, "_arg6":Landroid/view/inputmethod/EditorInfo;
    .local v12, "_arg11":Landroid/window/ImeOnBackInvokedDispatcher;
    invoke-virtual/range {v0 .. v15}, Lcom/android/internal/view/IInputMethodManager$Stub;->startInputOrWindowGainedFocusAsync(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;ZIZ)V

    .line 630
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    move-object/from16 v14, p2

    move-object/from16 v10, p3

    const/4 v9, 0x1

    goto/16 :goto_4ea

    .line 565
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/android/internal/inputmethod/IInputMethodClient;
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Landroid/view/inputmethod/EditorInfo;
    .end local v8    # "_arg7":Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .end local v9    # "_arg8":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .end local v11    # "_arg10":I
    .end local v12    # "_arg11":Landroid/window/ImeOnBackInvokedDispatcher;
    .end local v13    # "_arg12":Z
    .end local v14    # "_arg13":I
    .end local v15    # "_arg14":Z
    .end local v17    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_318
    move-object/from16 v17, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v17    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 567
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v2

    .line 569
    .restart local v2    # "_arg1":Lcom/android/internal/inputmethod/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 571
    .restart local v3    # "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 573
    .restart local v4    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 575
    .restart local v5    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 577
    .restart local v6    # "_arg5":I
    sget-object v0, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v14, p2

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/view/inputmethod/EditorInfo;

    .line 579
    .restart local v7    # "_arg6":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteInputConnection;

    move-result-object v8

    .line 581
    .restart local v8    # "_arg7":Lcom/android/internal/inputmethod/IRemoteInputConnection;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    move-result-object v9

    .line 583
    .restart local v9    # "_arg8":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 585
    .local v10, "_arg9":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 587
    .restart local v11    # "_arg10":I
    sget-object v0, Landroid/window/ImeOnBackInvokedDispatcher;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/window/ImeOnBackInvokedDispatcher;

    .line 589
    .restart local v12    # "_arg11":Landroid/window/ImeOnBackInvokedDispatcher;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v13

    .line 590
    .restart local v13    # "_arg12":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 591
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v13}, Lcom/android/internal/view/IInputMethodManager$Stub;->startInputOrWindowGainedFocus(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;Z)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v15

    .line 592
    .local v15, "_result":Lcom/android/internal/inputmethod/InputBindResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    move-object/from16 v0, p3

    move-object/from16 v16, v9

    const/4 v9, 0x1

    .end local v9    # "_arg8":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .local v16, "_arg8":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    invoke-virtual {v0, v15, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 594
    move-object v10, v0

    move-object/from16 v0, p0

    goto/16 :goto_4ea

    .line 558
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/android/internal/inputmethod/IInputMethodClient;
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Landroid/view/inputmethod/EditorInfo;
    .end local v8    # "_arg7":Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .end local v11    # "_arg10":I
    .end local v12    # "_arg11":Landroid/window/ImeOnBackInvokedDispatcher;
    .end local v13    # "_arg12":Z
    .end local v15    # "_result":Lcom/android/internal/inputmethod/InputBindResult;
    .end local v16    # "_arg8":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .end local v17    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_37f
    move-object v14, v8

    move-object v0, v9

    move-object/from16 v17, v10

    move v9, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v17    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->hideSoftInputFromServerForTest()V

    .line 559
    invoke-virtual {v0}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    move-object v10, v0

    move-object/from16 v0, p0

    goto/16 :goto_4ea

    .line 537
    .end local v17    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_38f
    move-object v14, v8

    move-object v0, v9

    move-object/from16 v17, v10

    move v9, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v17    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    .line 539
    .local v1, "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 541
    .local v2, "_arg1":Landroid/os/IBinder;
    sget-object v3, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/ImeTracker$Token;

    .line 543
    .local v3, "_arg2":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 545
    .restart local v4    # "_arg3":I
    sget-object v5, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ResultReceiver;

    .line 547
    .local v5, "_arg4":Landroid/os/ResultReceiver;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 549
    .restart local v6    # "_arg5":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 550
    .local v7, "_arg6":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 551
    move-object v10, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/view/IInputMethodManager$Stub;->hideSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)Z

    move-result v8

    .line 552
    .local v8, "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 554
    goto/16 :goto_4ea

    .line 513
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Landroid/view/inputmethod/ImeTracker$Token;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/os/ResultReceiver;
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Z
    .end local v8    # "_result":Z
    .end local v17    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_3ce
    move-object v14, v8

    move-object/from16 v17, v10

    move-object v10, v9

    move v9, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v17    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    .line 515
    .restart local v1    # "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 517
    .restart local v2    # "_arg1":Landroid/os/IBinder;
    sget-object v0, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/inputmethod/ImeTracker$Token;

    .line 519
    .restart local v3    # "_arg2":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 521
    .restart local v4    # "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 523
    .local v5, "_arg4":I
    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/ResultReceiver;

    .line 525
    .local v6, "_arg5":Landroid/os/ResultReceiver;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 527
    .local v7, "_arg6":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 528
    .local v8, "_arg7":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 529
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/view/IInputMethodManager$Stub;->showSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;IZ)Z

    move-result v11

    .line 530
    .local v11, "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 532
    goto/16 :goto_4ea

    .line 503
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Landroid/view/inputmethod/ImeTracker$Token;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/os/ResultReceiver;
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":Z
    .end local v11    # "_result":Z
    .end local v17    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_412
    move-object v14, v8

    move-object/from16 v17, v10

    move-object v10, v9

    move v9, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v17    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 504
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 505
    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->getLastInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    .line 506
    .local v2, "_result":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    invoke-virtual {v10, v2, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 508
    goto/16 :goto_4ea

    .line 489
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v17    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_42a
    move-object v14, v8

    move-object/from16 v17, v10

    move-object v10, v9

    move v9, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v17    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 491
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 493
    .local v2, "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 494
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 495
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->getEnabledInputMethodSubtypeList(Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v4

    .line 496
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    invoke-virtual {v10, v4, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 498
    goto/16 :goto_4ea

    .line 479
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v17    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_44a
    move-object v14, v8

    move-object/from16 v17, v10

    move-object v10, v9

    move v9, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v17    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 480
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 481
    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->getEnabledInputMethodListLegacy(I)Ljava/util/List;

    move-result-object v2

    .line 482
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    invoke-virtual {v10, v2, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 484
    goto/16 :goto_4ea

    .line 467
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v17    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_462
    move-object v14, v8

    move-object/from16 v17, v10

    move-object v10, v9

    move v9, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v17    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 469
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 470
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 471
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->getInputMethodListLegacy(II)Ljava/util/List;

    move-result-object v3

    .line 472
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    invoke-virtual {v10, v3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 474
    goto/16 :goto_4ea

    .line 457
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v17    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_47e
    move-object v14, v8

    move-object/from16 v17, v10

    move-object v10, v9

    move v9, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v17    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 458
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 459
    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->getEnabledInputMethodList(I)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    move-result-object v2

    .line 460
    .local v2, "_result":Lcom/android/internal/inputmethod/InputMethodInfoSafeList;
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    invoke-virtual {v10, v2, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 462
    goto :goto_4ea

    .line 445
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Lcom/android/internal/inputmethod/InputMethodInfoSafeList;
    .end local v17    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_495
    move-object v14, v8

    move-object/from16 v17, v10

    move-object v10, v9

    move v9, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v17    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 447
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 448
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 449
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->getInputMethodList(II)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    move-result-object v3

    .line 450
    .local v3, "_result":Lcom/android/internal/inputmethod/InputMethodInfoSafeList;
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    invoke-virtual {v10, v3, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 452
    goto :goto_4ea

    .line 435
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Lcom/android/internal/inputmethod/InputMethodInfoSafeList;
    .end local v17    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_4b0
    move-object v14, v8

    move-object/from16 v17, v10

    move-object v10, v9

    move v9, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v17    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 436
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 437
    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCurrentInputMethodInfoAsUser(I)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v2

    .line 438
    .local v2, "_result":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    invoke-virtual {v10, v2, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 440
    goto :goto_4ea

    .line 422
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/view/inputmethod/InputMethodInfo;
    .end local v17    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_4c7
    move-object v14, v8

    move-object/from16 v17, v10

    move-object v10, v9

    move v9, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v17    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    .line 424
    .local v1, "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteInputConnection;

    move-result-object v2

    .line 426
    .local v2, "_arg1":Lcom/android/internal/inputmethod/IRemoteInputConnection;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 427
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 428
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->addClient(Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V

    .line 429
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    nop

    .line 904
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/IInputMethodClient;
    .end local v2    # "_arg1":Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .end local v3    # "_arg2":I
    :goto_4ea
    return v9

    nop

    :pswitch_data_4ec
    .packed-switch 0x1
        :pswitch_4c7
        :pswitch_4b0
        :pswitch_495
        :pswitch_47e
        :pswitch_462
        :pswitch_44a
        :pswitch_42a
        :pswitch_412
        :pswitch_3ce
        :pswitch_38f
        :pswitch_37f
        :pswitch_318
        :pswitch_2ad
        :pswitch_291
        :pswitch_279
        :pswitch_268
        :pswitch_257
        :pswitch_246
        :pswitch_22e
        :pswitch_20e
        :pswitch_1f2
        :pswitch_1d6
        :pswitch_1c1
        :pswitch_1ad
        :pswitch_19c
        :pswitch_180
        :pswitch_16f
        :pswitch_162
        :pswitch_155
        :pswitch_13d
        :pswitch_10c
        :pswitch_e8
        :pswitch_ba
        :pswitch_8b
        :pswitch_6f
        :pswitch_57
        :pswitch_3b
        :pswitch_2a
    .end packed-switch
.end method

.method protected blacklist removeImeSurface_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1691
    iget-object v0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Lcom/android/internal/view/IInputMethodManager$Stub;->PERMISSIONS_removeImeSurface:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    .line 1692
    return-void
.end method

.method protected blacklist setStylusWindowIdleTimeoutForTest_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1720
    iget-object v0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TEST_INPUT_METHOD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1721
    return-void
.end method

.method protected blacklist shouldShowImeSwitcherButtonForTest_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1680
    iget-object v0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TEST_INPUT_METHOD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1681
    return-void
.end method

.method protected blacklist showInputMethodPickerFromSystem_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1664
    iget-object v0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Lcom/android/internal/view/IInputMethodManager$Stub;->PERMISSIONS_showInputMethodPickerFromSystem:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    .line 1665
    return-void
.end method

.method protected blacklist startImeTrace_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1699
    iget-object v0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_UI_TRACING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1700
    return-void
.end method

.method protected blacklist stopImeTrace_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1704
    iget-object v0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_UI_TRACING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1705
    return-void
.end method
