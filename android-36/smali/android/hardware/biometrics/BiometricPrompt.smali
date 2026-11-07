.class public Landroid/hardware/biometrics/BiometricPrompt;
.super Ljava/lang/Object;
.source "BiometricPrompt.java"

# interfaces
.implements Landroid/hardware/biometrics/BiometricAuthenticator;
.implements Landroid/hardware/biometrics/BiometricConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;,
        Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;,
        Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;,
        Landroid/hardware/biometrics/BiometricPrompt$OnAuthenticationCancelListener;,
        Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;,
        Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResultType;,
        Landroid/hardware/biometrics/BiometricPrompt$Builder;,
        Landroid/hardware/biometrics/BiometricPrompt$DismissedReason;
    }
.end annotation


# static fields
.field public static final whitelist AUTHENTICATION_RESULT_TYPE_BIOMETRIC:I = 0x2

.field public static final whitelist AUTHENTICATION_RESULT_TYPE_DEVICE_CREDENTIAL:I = 0x1

.field public static final blacklist DISMISSED_REASON_BIOMETRIC_CONFIRMED:I = 0x1

.field public static final blacklist DISMISSED_REASON_BIOMETRIC_CONFIRM_NOT_REQUIRED:I = 0x4

.field public static final blacklist DISMISSED_REASON_CONTENT_VIEW_MORE_OPTIONS:I = 0x8

.field public static final blacklist DISMISSED_REASON_CREDENTIAL_CONFIRMED:I = 0x7

.field public static final blacklist DISMISSED_REASON_ERROR:I = 0x5

.field public static final blacklist DISMISSED_REASON_ERROR_NO_WM:I = 0x9

.field public static final greylist-max-o DISMISSED_REASON_NEGATIVE:I = 0x2

.field public static final blacklist DISMISSED_REASON_SERVER_REQUESTED:I = 0x6

.field public static final greylist-max-o DISMISSED_REASON_USER_CANCEL:I = 0x3

.field public static final greylist-max-o HIDE_DIALOG_DELAY:I = 0x7d0

.field static final blacklist MAX_LOGO_DESCRIPTION_CHARACTER_NUMBER:I = 0x1e

.field private static final blacklist TAG:Ljava/lang/String; = "BiometricPrompt"


# instance fields
.field private blacklist mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

.field private final blacklist mBiometricServiceReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

.field private final blacklist mContentViewMoreOptionsButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mIsPromptShowing:Z

.field private final greylist-max-o mNegativeButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

.field private final blacklist mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

.field private final blacklist mService:Landroid/hardware/biometrics/IAuthService;

.field private final blacklist mToken:Landroid/os/IBinder;


# direct methods
.method public static synthetic blacklist $r8$lambda$AmOKJWAP3rm6xIAx9UacYo4XJXo(Landroid/hardware/biometrics/BiometricPrompt;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/biometrics/BiometricPrompt;->lambda$authenticateInternal$1(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Hibrh_rd9OmPbAUQ4I1QdZsKDCA(Landroid/hardware/biometrics/BiometricPrompt;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/biometrics/BiometricPrompt;->lambda$authenticateInternal$0(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAuthenticationCallback(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    .registers 1

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContentViewMoreOptionsButtonInfo(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;
    .registers 1

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContentViewMoreOptionsButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCryptoObject(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .registers 1

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/hardware/biometrics/BiometricPrompt;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsPromptShowing(Landroid/hardware/biometrics/BiometricPrompt;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mIsPromptShowing:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNegativeButtonInfo(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;
    .registers 1

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mNegativeButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsPromptShowing(Landroid/hardware/biometrics/BiometricPrompt;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/hardware/biometrics/BiometricPrompt;->mIsPromptShowing:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelAuthentication(Landroid/hardware/biometrics/BiometricPrompt;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt;->cancelAuthentication(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smconvertDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 1

    invoke-static {p0}, Landroid/hardware/biometrics/BiometricPrompt;->convertDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisCredentialAllowed(I)Z
    .registers 1

    invoke-static {p0}, Landroid/hardware/biometrics/BiometricPrompt;->isCredentialAllowed(I)Z

    move-result p0

    return p0
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;Landroid/hardware/biometrics/IAuthService;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "promptInfo"    # Landroid/hardware/biometrics/PromptInfo;
    .param p3, "negativeButtonInfo"    # Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;
    .param p4, "contentViewMoreOptionsButtonInfo"    # Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;
    .param p5, "service"    # Landroid/hardware/biometrics/IAuthService;

    .line 834
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 711
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mToken:Landroid/os/IBinder;

    .line 722
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$1;

    invoke-direct {v0, p0}, Landroid/hardware/biometrics/BiometricPrompt$1;-><init>(Landroid/hardware/biometrics/BiometricPrompt;)V

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mBiometricServiceReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 835
    iput-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    .line 836
    iput-object p2, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 837
    iput-object p3, p0, Landroid/hardware/biometrics/BiometricPrompt;->mNegativeButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    .line 838
    iput-object p4, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContentViewMoreOptionsButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    .line 839
    iput-object p5, p0, Landroid/hardware/biometrics/BiometricPrompt;->mService:Landroid/hardware/biometrics/IAuthService;

    .line 840
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mIsPromptShowing:Z

    .line 841
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/Context;Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;Landroid/hardware/biometrics/IAuthService;Landroid/hardware/biometrics/BiometricPrompt-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/hardware/biometrics/BiometricPrompt;-><init>(Landroid/content/Context;Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;Landroid/hardware/biometrics/IAuthService;)V

    return-void
.end method

.method private blacklist authenticateInternal(JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;I)J
    .registers 23
    .param p1, "operationId"    # J
    .param p3, "cancel"    # Landroid/os/CancellationSignal;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    .param p6, "userId"    # I

    .line 1481
    move-object/from16 v1, p0

    move-object/from16 v2, p5

    iget-object v0, v1, Landroid/hardware/biometrics/BiometricPrompt;->mCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    const-string v3, "BiometricPrompt"

    if-eqz v0, :cond_1c

    iget-object v0, v1, Landroid/hardware/biometrics/BiometricPrompt;->mCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getOpId()J

    move-result-wide v4

    cmp-long v0, v4, p1

    if-eqz v0, :cond_1c

    .line 1482
    const-string v0, "CryptoObject operation ID does not match argument; setting field to null"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    const/4 v0, 0x0

    iput-object v0, v1, Landroid/hardware/biometrics/BiometricPrompt;->mCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 1487
    :cond_1c
    const-wide/16 v4, -0x1

    :try_start_1e
    invoke-virtual/range {p3 .. p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1488
    const-string v0, "Authentication already canceled"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_29} :catch_99

    .line 1489
    return-wide v4

    .line 1492
    :cond_2a
    move-object/from16 v6, p4

    :try_start_2c
    iput-object v6, v1, Landroid/hardware/biometrics/BiometricPrompt;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1493
    iput-object v2, v1, Landroid/hardware/biometrics/BiometricPrompt;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    .line 1494
    iget-boolean v0, v1, Landroid/hardware/biometrics/BiometricPrompt;->mIsPromptShowing:Z

    if-eqz v0, :cond_48

    .line 1495
    iget-object v0, v1, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    const v7, 0x10401ad

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1496
    .local v0, "stringToSend":Ljava/lang/String;
    iget-object v7, v1, Landroid/hardware/biometrics/BiometricPrompt;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v8, Landroid/hardware/biometrics/BiometricPrompt$$ExternalSyntheticLambda0;

    invoke-direct {v8, v1, v0}, Landroid/hardware/biometrics/BiometricPrompt$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/biometrics/BiometricPrompt;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1500
    return-wide v4

    .line 1504
    .end local v0    # "stringToSend":Ljava/lang/String;
    :cond_48
    const-wide/16 v7, 0x0

    cmp-long v0, p1, v7

    if-eqz v0, :cond_6d

    .line 1509
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1510
    .local v0, "parcel":Landroid/os/Parcel;
    iget-object v7, v1, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8}, Landroid/hardware/biometrics/PromptInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1511
    invoke-virtual {v0, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1512
    new-instance v7, Landroid/hardware/biometrics/PromptInfo;

    invoke-direct {v7, v0}, Landroid/hardware/biometrics/PromptInfo;-><init>(Landroid/os/Parcel;)V

    .line 1513
    .local v7, "promptInfo":Landroid/hardware/biometrics/PromptInfo;
    invoke-virtual {v7}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v8

    if-nez v8, :cond_6b

    .line 1514
    const/16 v8, 0xf

    invoke-virtual {v7, v8}, Landroid/hardware/biometrics/PromptInfo;->setAuthenticators(I)V

    .line 1516
    .end local v0    # "parcel":Landroid/os/Parcel;
    :cond_6b
    move-object v15, v7

    goto :goto_71

    .line 1517
    .end local v7    # "promptInfo":Landroid/hardware/biometrics/PromptInfo;
    :cond_6d
    iget-object v0, v1, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    move-object v7, v0

    move-object v15, v7

    .line 1520
    .local v15, "promptInfo":Landroid/hardware/biometrics/PromptInfo;
    :goto_71
    iget-object v8, v1, Landroid/hardware/biometrics/BiometricPrompt;->mService:Landroid/hardware/biometrics/IAuthService;

    iget-object v9, v1, Landroid/hardware/biometrics/BiometricPrompt;->mToken:Landroid/os/IBinder;

    iget-object v13, v1, Landroid/hardware/biometrics/BiometricPrompt;->mBiometricServiceReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    iget-object v0, v1, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    .line 1521
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 1520
    move-wide/from16 v10, p1

    move/from16 v12, p6

    invoke-interface/range {v8 .. v15}, Landroid/hardware/biometrics/IAuthService;->authenticate(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;)J

    move-result-wide v7

    .line 1522
    .local v7, "authId":J
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$OnAuthenticationCancelListener;

    invoke-direct {v0, v1, v7, v8}, Landroid/hardware/biometrics/BiometricPrompt$OnAuthenticationCancelListener;-><init>(Landroid/hardware/biometrics/BiometricPrompt;J)V
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_8a} :catch_95

    move-object/from16 v9, p3

    :try_start_8c
    invoke-virtual {v9, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 1523
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/hardware/biometrics/BiometricPrompt;->mIsPromptShowing:Z
    :try_end_92
    .catch Landroid/os/RemoteException; {:try_start_8c .. :try_end_92} :catch_93

    .line 1525
    return-wide v7

    .line 1526
    .end local v7    # "authId":J
    .end local v15    # "promptInfo":Landroid/hardware/biometrics/PromptInfo;
    :catch_93
    move-exception v0

    goto :goto_9e

    :catch_95
    move-exception v0

    move-object/from16 v9, p3

    goto :goto_9e

    :catch_99
    move-exception v0

    move-object/from16 v9, p3

    move-object/from16 v6, p4

    .line 1527
    .local v0, "e":Landroid/os/RemoteException;
    :goto_9e
    const-string v7, "Remote exception while authenticating"

    invoke-static {v3, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1528
    iget-object v3, v1, Landroid/hardware/biometrics/BiometricPrompt;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Landroid/hardware/biometrics/BiometricPrompt$$ExternalSyntheticLambda1;

    invoke-direct {v7, v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/biometrics/BiometricPrompt;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    invoke-interface {v3, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1531
    return-wide v4
.end method

.method private blacklist authenticateInternal(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;I)V
    .registers 15
    .param p1, "crypto"    # Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    .param p5, "userId"    # I

    .line 1469
    iput-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt;->mCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 1470
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getOpId()J

    move-result-wide v0

    goto :goto_b

    :cond_9
    const-wide/16 v0, 0x0

    :goto_b
    move-wide v3, v0

    .line 1471
    .local v3, "operationId":J
    move-object v2, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    .end local p2    # "cancel":Landroid/os/CancellationSignal;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callback":Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    .end local p5    # "userId":I
    .local v5, "cancel":Landroid/os/CancellationSignal;
    .local v6, "executor":Ljava/util/concurrent/Executor;
    .local v7, "callback":Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    .local v8, "userId":I
    invoke-direct/range {v2 .. v8}, Landroid/hardware/biometrics/BiometricPrompt;->authenticateInternal(JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;I)J

    .line 1472
    return-void
.end method

.method private blacklist cancelAuthentication(J)V
    .registers 6
    .param p1, "requestId"    # J

    .line 1453
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mService:Landroid/hardware/biometrics/IAuthService;

    if-eqz v0, :cond_1a

    .line 1455
    :try_start_4
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mService:Landroid/hardware/biometrics/IAuthService;

    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1, p2}, Landroid/hardware/biometrics/IAuthService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;J)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    .line 1458
    goto :goto_1a

    .line 1456
    :catch_12
    move-exception v0

    .line 1457
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BiometricPrompt"

    const-string v2, "Unable to cancel authentication"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1460
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1a
    :goto_1a
    return-void
.end method

.method private static blacklist convertDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 6
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1541
    if-nez p0, :cond_4

    .line 1542
    const/4 v0, 0x0

    return-object v0

    .line 1545
    :cond_4
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_10

    .line 1546
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 1550
    :cond_10
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-lez v0, :cond_2c

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-gtz v0, :cond_1d

    goto :goto_2c

    .line 1554
    :cond_1d
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 1555
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1554
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_33

    .line 1551
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2c
    :goto_2c
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1558
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_33
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1559
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1560
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1561
    return-object v0
.end method

.method private static blacklist isCredentialAllowed(I)Z
    .registers 2
    .param p0, "allowedAuthenticators"    # I

    .line 1536
    const v0, 0x8000

    and-int/2addr v0, p0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private synthetic blacklist lambda$authenticateInternal$0(Ljava/lang/String;)V
    .registers 4
    .param p1, "stringToSend"    # Ljava/lang/String;

    .line 1497
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 1499
    return-void
.end method

.method private synthetic blacklist lambda$authenticateInternal$1(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    .line 1528
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    .line 1530
    const v1, 0x10401b0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1528
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public whitelist authenticate(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V
    .registers 14
    .param p1, "crypto"    # Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    .line 1368
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 1370
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isConfirmationRequested()Z

    move-result v3

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 1371
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isDeviceCredentialAllowed()Z

    move-result v4

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 1372
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    move v5, v0

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 1373
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v6

    .line 1368
    const/16 v1, 0x161

    const/4 v2, 0x1

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZZZZI)V

    .line 1375
    if-eqz p1, :cond_73

    .line 1378
    if-eqz p2, :cond_69

    .line 1381
    if-eqz p3, :cond_5f

    .line 1384
    if-eqz p4, :cond_55

    .line 1389
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v0

    .line 1390
    .local v0, "authenticators":I
    if-nez v0, :cond_36

    .line 1391
    const/16 v0, 0xf

    .line 1393
    :cond_36
    and-int/lit16 v1, v0, 0xff

    .line 1394
    .local v1, "biometricStrength":I
    and-int/lit8 v2, v1, -0x10

    if-nez v2, :cond_4b

    .line 1398
    iget-object v2, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .end local p1    # "crypto":Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .end local p2    # "cancel":Landroid/os/CancellationSignal;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callback":Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    .local v4, "crypto":Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .local v5, "cancel":Landroid/os/CancellationSignal;
    .local v6, "executor":Ljava/util/concurrent/Executor;
    .local v7, "callback":Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    invoke-direct/range {v3 .. v8}, Landroid/hardware/biometrics/BiometricPrompt;->authenticateInternal(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;I)V

    .line 1399
    return-void

    .line 1395
    .end local v4    # "crypto":Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .end local v5    # "cancel":Landroid/os/CancellationSignal;
    .end local v6    # "executor":Ljava/util/concurrent/Executor;
    .end local v7    # "callback":Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    .restart local p1    # "crypto":Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .restart local p2    # "cancel":Landroid/os/CancellationSignal;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "callback":Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    :cond_4b
    move-object v4, p1

    move-object v5, p2

    .end local p1    # "crypto":Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .end local p2    # "cancel":Landroid/os/CancellationSignal;
    .restart local v4    # "crypto":Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .restart local v5    # "cancel":Landroid/os/CancellationSignal;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only Strong biometrics supported with crypto"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1385
    .end local v0    # "authenticators":I
    .end local v1    # "biometricStrength":I
    .end local v4    # "crypto":Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .end local v5    # "cancel":Landroid/os/CancellationSignal;
    .restart local p1    # "crypto":Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .restart local p2    # "cancel":Landroid/os/CancellationSignal;
    :cond_55
    move-object v4, p1

    move-object v5, p2

    .end local p1    # "crypto":Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .end local p2    # "cancel":Landroid/os/CancellationSignal;
    .restart local v4    # "crypto":Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .restart local v5    # "cancel":Landroid/os/CancellationSignal;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must supply a callback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1382
    .end local v4    # "crypto":Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .end local v5    # "cancel":Landroid/os/CancellationSignal;
    .restart local p1    # "crypto":Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .restart local p2    # "cancel":Landroid/os/CancellationSignal;
    :cond_5f
    move-object v4, p1

    move-object v5, p2

    .end local p1    # "crypto":Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .end local p2    # "cancel":Landroid/os/CancellationSignal;
    .restart local v4    # "crypto":Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .restart local v5    # "cancel":Landroid/os/CancellationSignal;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must supply an executor"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1379
    .end local v4    # "crypto":Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .end local v5    # "cancel":Landroid/os/CancellationSignal;
    .restart local p1    # "crypto":Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .restart local p2    # "cancel":Landroid/os/CancellationSignal;
    :cond_69
    move-object v4, p1

    move-object v5, p2

    .end local p1    # "crypto":Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .end local p2    # "cancel":Landroid/os/CancellationSignal;
    .restart local v4    # "crypto":Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .restart local v5    # "cancel":Landroid/os/CancellationSignal;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must supply a cancellation signal"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1376
    .end local v4    # "crypto":Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .end local v5    # "cancel":Landroid/os/CancellationSignal;
    .restart local p1    # "crypto":Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .restart local p2    # "cancel":Landroid/os/CancellationSignal;
    :cond_73
    move-object v4, p1

    move-object v5, p2

    .end local p1    # "crypto":Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .end local p2    # "cancel":Landroid/os/CancellationSignal;
    .restart local v4    # "crypto":Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .restart local v5    # "cancel":Landroid/os/CancellationSignal;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must supply a crypto object"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist authenticate(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V
    .registers 11
    .param p1, "cancel"    # Landroid/os/CancellationSignal;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    .line 1433
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 1435
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isConfirmationRequested()Z

    move-result v3

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 1436
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isDeviceCredentialAllowed()Z

    move-result v4

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 1437
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    move v5, v0

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 1438
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v6

    .line 1433
    const/16 v1, 0x161

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZZZZI)V

    .line 1440
    if-eqz p1, :cond_4d

    .line 1443
    if-eqz p2, :cond_43

    .line 1446
    if-eqz p3, :cond_39

    .line 1449
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v6

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "cancel":Landroid/os/CancellationSignal;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    .local v3, "cancel":Landroid/os/CancellationSignal;
    .local v4, "executor":Ljava/util/concurrent/Executor;
    .local v5, "callback":Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    invoke-direct/range {v1 .. v6}, Landroid/hardware/biometrics/BiometricPrompt;->authenticateInternal(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;I)V

    .line 1450
    return-void

    .line 1447
    .end local v3    # "cancel":Landroid/os/CancellationSignal;
    .end local v4    # "executor":Ljava/util/concurrent/Executor;
    .end local v5    # "callback":Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    .restart local p1    # "cancel":Landroid/os/CancellationSignal;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    :cond_39
    move-object v3, p1

    move-object v4, p2

    .end local p1    # "cancel":Landroid/os/CancellationSignal;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local v3    # "cancel":Landroid/os/CancellationSignal;
    .restart local v4    # "executor":Ljava/util/concurrent/Executor;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must supply a callback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1444
    .end local v3    # "cancel":Landroid/os/CancellationSignal;
    .end local v4    # "executor":Ljava/util/concurrent/Executor;
    .restart local p1    # "cancel":Landroid/os/CancellationSignal;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    :cond_43
    move-object v3, p1

    move-object v4, p2

    .end local p1    # "cancel":Landroid/os/CancellationSignal;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local v3    # "cancel":Landroid/os/CancellationSignal;
    .restart local v4    # "executor":Ljava/util/concurrent/Executor;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must supply an executor"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1441
    .end local v3    # "cancel":Landroid/os/CancellationSignal;
    .end local v4    # "executor":Ljava/util/concurrent/Executor;
    .restart local p1    # "cancel":Landroid/os/CancellationSignal;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    :cond_4d
    move-object v3, p1

    move-object v4, p2

    .end local p1    # "cancel":Landroid/os/CancellationSignal;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local v3    # "cancel":Landroid/os/CancellationSignal;
    .restart local v4    # "executor":Ljava/util/concurrent/Executor;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must supply a cancellation signal"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist authenticateForOperation(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;J)J
    .registers 14
    .param p1, "cancel"    # Landroid/os/CancellationSignal;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    .param p4, "operationId"    # J

    .line 1311
    if-eqz p1, :cond_2a

    .line 1314
    if-eqz p2, :cond_20

    .line 1317
    if-eqz p3, :cond_16

    .line 1321
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v7

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-wide v2, p4

    .end local p1    # "cancel":Landroid/os/CancellationSignal;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    .end local p4    # "operationId":J
    .local v2, "operationId":J
    .local v4, "cancel":Landroid/os/CancellationSignal;
    .local v5, "executor":Ljava/util/concurrent/Executor;
    .local v6, "callback":Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    invoke-direct/range {v1 .. v7}, Landroid/hardware/biometrics/BiometricPrompt;->authenticateInternal(JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;I)J

    move-result-wide p1

    return-wide p1

    .line 1318
    .end local v2    # "operationId":J
    .end local v4    # "cancel":Landroid/os/CancellationSignal;
    .end local v5    # "executor":Ljava/util/concurrent/Executor;
    .end local v6    # "callback":Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    .restart local p1    # "cancel":Landroid/os/CancellationSignal;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    .restart local p4    # "operationId":J
    :cond_16
    move-object v4, p1

    move-object v5, p2

    .end local p1    # "cancel":Landroid/os/CancellationSignal;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local v4    # "cancel":Landroid/os/CancellationSignal;
    .restart local v5    # "executor":Ljava/util/concurrent/Executor;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must supply a callback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1315
    .end local v4    # "cancel":Landroid/os/CancellationSignal;
    .end local v5    # "executor":Ljava/util/concurrent/Executor;
    .restart local p1    # "cancel":Landroid/os/CancellationSignal;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    :cond_20
    move-object v4, p1

    move-object v5, p2

    .end local p1    # "cancel":Landroid/os/CancellationSignal;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local v4    # "cancel":Landroid/os/CancellationSignal;
    .restart local v5    # "executor":Ljava/util/concurrent/Executor;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must supply an executor"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1312
    .end local v4    # "cancel":Landroid/os/CancellationSignal;
    .end local v5    # "executor":Ljava/util/concurrent/Executor;
    .restart local p1    # "cancel":Landroid/os/CancellationSignal;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    :cond_2a
    move-object v4, p1

    move-object v5, p2

    .end local p1    # "cancel":Landroid/os/CancellationSignal;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local v4    # "cancel":Landroid/os/CancellationSignal;
    .restart local v5    # "executor":Ljava/util/concurrent/Executor;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must supply a cancellation signal"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist authenticateUser(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;I)V
    .registers 12
    .param p1, "cancel"    # Landroid/os/CancellationSignal;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    .param p4, "userId"    # I

    .line 1280
    if-eqz p1, :cond_25

    .line 1283
    if-eqz p2, :cond_1b

    .line 1286
    if-eqz p3, :cond_11

    .line 1290
    const-wide/16 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .end local p1    # "cancel":Landroid/os/CancellationSignal;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    .end local p4    # "userId":I
    .local v3, "cancel":Landroid/os/CancellationSignal;
    .local v4, "executor":Ljava/util/concurrent/Executor;
    .local v5, "callback":Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    .local v6, "userId":I
    invoke-direct/range {v0 .. v6}, Landroid/hardware/biometrics/BiometricPrompt;->authenticateInternal(JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;I)J

    .line 1291
    return-void

    .line 1287
    .end local v3    # "cancel":Landroid/os/CancellationSignal;
    .end local v4    # "executor":Ljava/util/concurrent/Executor;
    .end local v5    # "callback":Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    .end local v6    # "userId":I
    .restart local p1    # "cancel":Landroid/os/CancellationSignal;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    .restart local p4    # "userId":I
    :cond_11
    move-object v3, p1

    move-object v4, p2

    .end local p1    # "cancel":Landroid/os/CancellationSignal;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local v3    # "cancel":Landroid/os/CancellationSignal;
    .restart local v4    # "executor":Ljava/util/concurrent/Executor;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must supply a callback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1284
    .end local v3    # "cancel":Landroid/os/CancellationSignal;
    .end local v4    # "executor":Ljava/util/concurrent/Executor;
    .restart local p1    # "cancel":Landroid/os/CancellationSignal;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    :cond_1b
    move-object v3, p1

    move-object v4, p2

    .end local p1    # "cancel":Landroid/os/CancellationSignal;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local v3    # "cancel":Landroid/os/CancellationSignal;
    .restart local v4    # "executor":Ljava/util/concurrent/Executor;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must supply an executor"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1281
    .end local v3    # "cancel":Landroid/os/CancellationSignal;
    .end local v4    # "executor":Ljava/util/concurrent/Executor;
    .restart local p1    # "cancel":Landroid/os/CancellationSignal;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    :cond_25
    move-object v3, p1

    move-object v4, p2

    .end local p1    # "cancel":Landroid/os/CancellationSignal;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local v3    # "cancel":Landroid/os/CancellationSignal;
    .restart local v4    # "executor":Ljava/util/concurrent/Executor;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must supply a cancellation signal"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getAllowedAuthenticators()I
    .registers 2

    .line 968
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v0

    return v0
.end method

.method public blacklist getAllowedSensorIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 978
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getAllowedSensorIds()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getContentView()Landroid/hardware/biometrics/PromptContentView;
    .registers 2

    .line 936
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getContentView()Landroid/hardware/biometrics/PromptContentView;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 925
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLogoBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 864
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getLogoBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLogoDescription()Ljava/lang/String;
    .registers 2

    .line 878
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getLogoDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLogoRes()I
    .registers 2

    .line 852
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getLogoRes()I

    move-result v0

    return v0
.end method

.method public whitelist getNegativeButtonText()Ljava/lang/CharSequence;
    .registers 2

    .line 946
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .line 906
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 887
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isAllowBackgroundAuthentication()Z
    .registers 2

    .line 987
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isAllowBackgroundAuthentication()Z

    move-result v0

    return v0
.end method

.method public whitelist isConfirmationRequired()Z
    .registers 2

    .line 956
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isConfirmationRequested()Z

    move-result v0

    return v0
.end method

.method public blacklist shouldUseDefaultSubtitle()Z
    .registers 2

    .line 916
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isUseDefaultSubtitle()Z

    move-result v0

    return v0
.end method

.method public blacklist shouldUseDefaultTitle()Z
    .registers 2

    .line 897
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isUseDefaultTitle()Z

    move-result v0

    return v0
.end method
