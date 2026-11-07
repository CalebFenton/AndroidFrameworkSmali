.class public Landroid/telephony/euicc/EuiccCardManager;
.super Ljava/lang/Object;
.source "EuiccCardManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/euicc/EuiccCardManager$ResultCallback;,
        Landroid/telephony/euicc/EuiccCardManager$ResetOption;,
        Landroid/telephony/euicc/EuiccCardManager$CancelReason;
    }
.end annotation


# static fields
.field public static final whitelist CANCEL_REASON_END_USER_REJECTED:I = 0x0

.field public static final whitelist CANCEL_REASON_POSTPONED:I = 0x1

.field public static final whitelist CANCEL_REASON_PPR_NOT_ALLOWED:I = 0x3

.field public static final whitelist CANCEL_REASON_TIMEOUT:I = 0x2

.field public static final whitelist RESET_OPTION_DELETE_FIELD_LOADED_TEST_PROFILES:I = 0x2

.field public static final whitelist RESET_OPTION_DELETE_OPERATIONAL_PROFILES:I = 0x1

.field public static final whitelist RESET_OPTION_RESET_DEFAULT_SMDP_ADDRESS:I = 0x4

.field public static final whitelist RESULT_CALLER_NOT_ALLOWED:I = -0x3

.field public static final whitelist RESULT_EUICC_NOT_FOUND:I = -0x2

.field public static final whitelist RESULT_OK:I = 0x0

.field public static final whitelist RESULT_PROFILE_DOES_NOT_EXIST:I = -0x4

.field public static final whitelist RESULT_PROFILE_NOT_FOUND:I = 0x1

.field public static final whitelist RESULT_UNKNOWN_ERROR:I = -0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "EuiccCardManager"


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    .line 170
    return-void
.end method

.method private greylist-max-o getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;
    .registers 2

    .line 175
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getEuiccCardControllerServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 173
    invoke-static {v0}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist authenticateServer(Ljava/lang/String;Ljava/lang/String;[B[B[B[BLjava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 20
    .param p1, "cardId"    # Ljava/lang/String;
    .param p2, "matchingId"    # Ljava/lang/String;
    .param p3, "serverSigned1"    # [B
    .param p4, "serverSignature1"    # [B
    .param p5, "euiccCiPkIdToBeUsed"    # [B
    .param p6, "serverCertificate"    # [B
    .param p7, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B[B[B[B",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "[B>;)V"
        }
    .end annotation

    .line 730
    .local p8, "callback":Landroid/telephony/euicc/EuiccCardManager$ResultCallback;, "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<[B>;"
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    .line 731
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Landroid/telephony/euicc/EuiccCardManager$17;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_22

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    :try_start_10
    invoke-direct {v8, p0, v9, v10}, Landroid/telephony/euicc/EuiccCardManager$17;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    .line 730
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->authenticateServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B[BLcom/android/internal/telephony/euicc/IAuthenticateServerCallback;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1e} :catch_20

    .line 752
    nop

    .line 753
    return-void

    .line 749
    :catch_20
    move-exception v0

    goto :goto_27

    :catch_22
    move-exception v0

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 750
    .local v0, "e":Landroid/os/RemoteException;
    :goto_27
    const-string v1, "EuiccCardManager"

    const-string v2, "Error calling authenticateServer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 751
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist cancelSession(Ljava/lang/String;[BILjava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 12
    .param p1, "cardId"    # Ljava/lang/String;
    .param p2, "transactionId"    # [B
    .param p3, "reason"    # I
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[BI",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "[B>;)V"
        }
    .end annotation

    .line 854
    .local p5, "callback":Landroid/telephony/euicc/EuiccCardManager$ResultCallback;, "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<[B>;"
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    .line 855
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Landroid/telephony/euicc/EuiccCardManager$20;

    invoke-direct {v5, p0, p4, p5}, Landroid/telephony/euicc/EuiccCardManager$20;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_1a

    .line 854
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .end local p1    # "cardId":Ljava/lang/String;
    .end local p2    # "transactionId":[B
    .end local p3    # "reason":I
    .local v2, "cardId":Ljava/lang/String;
    .local v3, "transactionId":[B
    .local v4, "reason":I
    :try_start_12
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->cancelSession(Ljava/lang/String;Ljava/lang/String;[BILcom/android/internal/telephony/euicc/ICancelSessionCallback;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_17

    .line 873
    nop

    .line 874
    return-void

    .line 870
    :catch_17
    move-exception v0

    move-object p1, v0

    goto :goto_1f

    .end local v2    # "cardId":Ljava/lang/String;
    .end local v3    # "transactionId":[B
    .end local v4    # "reason":I
    .restart local p1    # "cardId":Ljava/lang/String;
    .restart local p2    # "transactionId":[B
    .restart local p3    # "reason":I
    :catch_1a
    move-exception v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object p1, v0

    .line 871
    .end local p2    # "transactionId":[B
    .end local p3    # "reason":I
    .restart local v2    # "cardId":Ljava/lang/String;
    .restart local v3    # "transactionId":[B
    .restart local v4    # "reason":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1f
    const-string p2, "EuiccCardManager"

    const-string p3, "Error calling cancelSession"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 872
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist deleteProfile(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 8
    .param p1, "cardId"    # Ljava/lang/String;
    .param p2, "iccid"    # Ljava/lang/String;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 435
    .local p4, "callback":Landroid/telephony/euicc/EuiccCardManager$ResultCallback;, "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<Ljava/lang/Void;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$8;

    invoke-direct {v2, p0, p3, p4}, Landroid/telephony/euicc/EuiccCardManager$8;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->deleteProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IDeleteProfileCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 450
    nop

    .line 451
    return-void

    .line 447
    :catch_14
    move-exception v0

    .line 448
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "EuiccCardManager"

    const-string v2, "Error calling deleteProfile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 449
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist disableProfile(Ljava/lang/String;Ljava/lang/String;ZLjava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 12
    .param p1, "cardId"    # Ljava/lang/String;
    .param p2, "iccid"    # Ljava/lang/String;
    .param p3, "refresh"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 295
    .local p5, "callback":Landroid/telephony/euicc/EuiccCardManager$ResultCallback;, "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<Ljava/lang/Void;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Landroid/telephony/euicc/EuiccCardManager$4;

    invoke-direct {v5, p0, p4, p5}, Landroid/telephony/euicc/EuiccCardManager$4;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_1a

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .end local p1    # "cardId":Ljava/lang/String;
    .end local p2    # "iccid":Ljava/lang/String;
    .end local p3    # "refresh":Z
    .local v2, "cardId":Ljava/lang/String;
    .local v3, "iccid":Ljava/lang/String;
    .local v4, "refresh":Z
    :try_start_12
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->disableProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/euicc/IDisableProfileCallback;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_17

    .line 310
    nop

    .line 311
    return-void

    .line 307
    :catch_17
    move-exception v0

    move-object p1, v0

    goto :goto_1f

    .end local v2    # "cardId":Ljava/lang/String;
    .end local v3    # "iccid":Ljava/lang/String;
    .end local v4    # "refresh":Z
    .restart local p1    # "cardId":Ljava/lang/String;
    .restart local p2    # "iccid":Ljava/lang/String;
    .restart local p3    # "refresh":Z
    :catch_1a
    move-exception v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object p1, v0

    .line 308
    .end local p2    # "iccid":Ljava/lang/String;
    .end local p3    # "refresh":Z
    .restart local v2    # "cardId":Ljava/lang/String;
    .restart local v3    # "iccid":Ljava/lang/String;
    .restart local v4    # "refresh":Z
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1f
    const-string p2, "EuiccCardManager"

    const-string p3, "Error calling disableProfile"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist listNotifications(Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 8
    .param p1, "cardId"    # Ljava/lang/String;
    .param p2, "events"    # I
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "[",
            "Landroid/telephony/euicc/EuiccNotification;",
            ">;)V"
        }
    .end annotation

    .line 890
    .local p4, "callback":Landroid/telephony/euicc/EuiccCardManager$ResultCallback;, "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<[Landroid/telephony/euicc/EuiccNotification;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$21;

    invoke-direct {v2, p0, p3, p4}, Landroid/telephony/euicc/EuiccCardManager$21;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->listNotifications(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IListNotificationsCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 906
    nop

    .line 907
    return-void

    .line 903
    :catch_14
    move-exception v0

    .line 904
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "EuiccCardManager"

    const-string v2, "Error calling listNotifications"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 905
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist loadBoundProfilePackage(Ljava/lang/String;[BLjava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 8
    .param p1, "cardId"    # Ljava/lang/String;
    .param p2, "boundProfilePackage"    # [B
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "[B>;)V"
        }
    .end annotation

    .line 817
    .local p4, "callback":Landroid/telephony/euicc/EuiccCardManager$ResultCallback;, "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<[B>;"
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    .line 818
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$19;

    invoke-direct {v2, p0, p3, p4}, Landroid/telephony/euicc/EuiccCardManager$19;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    .line 817
    invoke-interface {v0, v1, p1, p2, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->loadBoundProfilePackage(Ljava/lang/String;Ljava/lang/String;[BLcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 835
    nop

    .line 836
    return-void

    .line 832
    :catch_14
    move-exception v0

    .line 833
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "EuiccCardManager"

    const-string v2, "Error calling loadBoundProfilePackage"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 834
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist prepareDownload(Ljava/lang/String;[B[B[B[BLjava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 16
    .param p1, "cardId"    # Ljava/lang/String;
    .param p2, "hashCc"    # [B
    .param p3, "smdpSigned2"    # [B
    .param p4, "smdpSignature2"    # [B
    .param p5, "smdpCertificate"    # [B
    .param p6, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B[B[B[B",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "[B>;)V"
        }
    .end annotation

    .line 778
    .local p7, "callback":Landroid/telephony/euicc/EuiccCardManager$ResultCallback;, "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<[B>;"
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    .line 779
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Landroid/telephony/euicc/EuiccCardManager$18;

    invoke-direct {v7, p0, p6, p7}, Landroid/telephony/euicc/EuiccCardManager$18;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_1c

    .line 778
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "cardId":Ljava/lang/String;
    .end local p2    # "hashCc":[B
    .end local p3    # "smdpSigned2":[B
    .end local p4    # "smdpSignature2":[B
    .end local p5    # "smdpCertificate":[B
    .local v2, "cardId":Ljava/lang/String;
    .local v3, "hashCc":[B
    .local v4, "smdpSigned2":[B
    .local v5, "smdpSignature2":[B
    .local v6, "smdpCertificate":[B
    :try_start_14
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->prepareDownload(Ljava/lang/String;Ljava/lang/String;[B[B[B[BLcom/android/internal/telephony/euicc/IPrepareDownloadCallback;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_19

    .line 799
    nop

    .line 800
    return-void

    .line 796
    :catch_19
    move-exception v0

    move-object p1, v0

    goto :goto_23

    .end local v2    # "cardId":Ljava/lang/String;
    .end local v3    # "hashCc":[B
    .end local v4    # "smdpSigned2":[B
    .end local v5    # "smdpSignature2":[B
    .end local v6    # "smdpCertificate":[B
    .restart local p1    # "cardId":Ljava/lang/String;
    .restart local p2    # "hashCc":[B
    .restart local p3    # "smdpSigned2":[B
    .restart local p4    # "smdpSignature2":[B
    .restart local p5    # "smdpCertificate":[B
    :catch_1c
    move-exception v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object p1, v0

    .line 797
    .end local p2    # "hashCc":[B
    .end local p3    # "smdpSigned2":[B
    .end local p4    # "smdpSignature2":[B
    .end local p5    # "smdpCertificate":[B
    .restart local v2    # "cardId":Ljava/lang/String;
    .restart local v3    # "hashCc":[B
    .restart local v4    # "smdpSigned2":[B
    .restart local v5    # "smdpSignature2":[B
    .restart local v6    # "smdpCertificate":[B
    .local p1, "e":Landroid/os/RemoteException;
    :goto_23
    const-string p2, "EuiccCardManager"

    const-string p3, "Error calling prepareDownload"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 798
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist removeNotificationFromList(Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 8
    .param p1, "cardId"    # Ljava/lang/String;
    .param p2, "seqNumber"    # I
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 989
    .local p4, "callback":Landroid/telephony/euicc/EuiccCardManager$ResultCallback;, "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<Ljava/lang/Void;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    .line 990
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$24;

    invoke-direct {v2, p0, p3, p4}, Landroid/telephony/euicc/EuiccCardManager$24;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    .line 989
    invoke-interface {v0, v1, p1, p2, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->removeNotificationFromList(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IRemoveNotificationFromListCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 1007
    nop

    .line 1008
    return-void

    .line 1004
    :catch_14
    move-exception v0

    .line 1005
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "EuiccCardManager"

    const-string v2, "Error calling removeNotificationFromList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1006
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist requestAllProfiles(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 7
    .param p1, "cardId"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "[",
            "Landroid/service/euicc/EuiccProfileInfo;",
            ">;)V"
        }
    .end annotation

    .line 193
    .local p3, "callback":Landroid/telephony/euicc/EuiccCardManager$ResultCallback;, "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<[Landroid/service/euicc/EuiccProfileInfo;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$1;

    invoke-direct {v2, p0, p2, p3}, Landroid/telephony/euicc/EuiccCardManager$1;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->getAllProfiles(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetAllProfilesCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 208
    nop

    .line 209
    return-void

    .line 205
    :catch_14
    move-exception v0

    .line 206
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "EuiccCardManager"

    const-string v2, "Error calling getAllProfiles"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist requestDefaultSmdpAddress(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 7
    .param p1, "cardId"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 499
    .local p3, "callback":Landroid/telephony/euicc/EuiccCardManager$ResultCallback;, "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$10;

    invoke-direct {v2, p0, p2, p3}, Landroid/telephony/euicc/EuiccCardManager$10;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->getDefaultSmdpAddress(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetDefaultSmdpAddressCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 514
    nop

    .line 515
    return-void

    .line 511
    :catch_14
    move-exception v0

    .line 512
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "EuiccCardManager"

    const-string v2, "Error calling getDefaultSmdpAddress"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 513
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist requestEnabledProfileForPort(Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 8
    .param p1, "cardId"    # Ljava/lang/String;
    .param p2, "portIndex"    # I
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "Landroid/service/euicc/EuiccProfileInfo;",
            ">;)V"
        }
    .end annotation

    .line 261
    .local p4, "callback":Landroid/telephony/euicc/EuiccCardManager$ResultCallback;, "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<Landroid/service/euicc/EuiccProfileInfo;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$3;

    invoke-direct {v2, p0, p3, p4}, Landroid/telephony/euicc/EuiccCardManager$3;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->getEnabledProfile(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IGetProfileCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 277
    nop

    .line 278
    return-void

    .line 274
    :catch_14
    move-exception v0

    .line 275
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "EuiccCardManager"

    const-string v2, "Error calling requestEnabledProfileForPort"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist requestEuiccChallenge(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 7
    .param p1, "cardId"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "[B>;)V"
        }
    .end annotation

    .line 625
    .local p3, "callback":Landroid/telephony/euicc/EuiccCardManager$ResultCallback;, "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<[B>;"
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$14;

    invoke-direct {v2, p0, p2, p3}, Landroid/telephony/euicc/EuiccCardManager$14;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->getEuiccChallenge(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetEuiccChallengeCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 640
    nop

    .line 641
    return-void

    .line 637
    :catch_14
    move-exception v0

    .line 638
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "EuiccCardManager"

    const-string v2, "Error calling getEuiccChallenge"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 639
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist requestEuiccInfo1(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 7
    .param p1, "cardId"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "[B>;)V"
        }
    .end annotation

    .line 656
    .local p3, "callback":Landroid/telephony/euicc/EuiccCardManager$ResultCallback;, "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<[B>;"
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$15;

    invoke-direct {v2, p0, p2, p3}, Landroid/telephony/euicc/EuiccCardManager$15;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->getEuiccInfo1(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetEuiccInfo1Callback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 671
    nop

    .line 672
    return-void

    .line 668
    :catch_14
    move-exception v0

    .line 669
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "EuiccCardManager"

    const-string v2, "Error calling getEuiccInfo1"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 670
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist requestEuiccInfo2(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 7
    .param p1, "cardId"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "[B>;)V"
        }
    .end annotation

    .line 687
    .local p3, "callback":Landroid/telephony/euicc/EuiccCardManager$ResultCallback;, "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<[B>;"
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$16;

    invoke-direct {v2, p0, p2, p3}, Landroid/telephony/euicc/EuiccCardManager$16;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->getEuiccInfo2(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 702
    nop

    .line 703
    return-void

    .line 699
    :catch_14
    move-exception v0

    .line 700
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "EuiccCardManager"

    const-string v2, "Error calling getEuiccInfo2"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 701
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist requestProfile(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 8
    .param p1, "cardId"    # Ljava/lang/String;
    .param p2, "iccid"    # Ljava/lang/String;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "Landroid/service/euicc/EuiccProfileInfo;",
            ">;)V"
        }
    .end annotation

    .line 225
    .local p4, "callback":Landroid/telephony/euicc/EuiccCardManager$ResultCallback;, "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<Landroid/service/euicc/EuiccProfileInfo;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$2;

    invoke-direct {v2, p0, p3, p4}, Landroid/telephony/euicc/EuiccCardManager$2;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->getProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetProfileCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 240
    nop

    .line 241
    return-void

    .line 237
    :catch_14
    move-exception v0

    .line 238
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "EuiccCardManager"

    const-string v2, "Error calling getProfile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist requestRulesAuthTable(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 7
    .param p1, "cardId"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "Landroid/telephony/euicc/EuiccRulesAuthTable;",
            ">;)V"
        }
    .end annotation

    .line 594
    .local p3, "callback":Landroid/telephony/euicc/EuiccCardManager$ResultCallback;, "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<Landroid/telephony/euicc/EuiccRulesAuthTable;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$13;

    invoke-direct {v2, p0, p2, p3}, Landroid/telephony/euicc/EuiccCardManager$13;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->getRulesAuthTable(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 609
    nop

    .line 610
    return-void

    .line 606
    :catch_14
    move-exception v0

    .line 607
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "EuiccCardManager"

    const-string v2, "Error calling getRulesAuthTable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 608
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist requestSmdsAddress(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 7
    .param p1, "cardId"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 530
    .local p3, "callback":Landroid/telephony/euicc/EuiccCardManager$ResultCallback;, "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$11;

    invoke-direct {v2, p0, p2, p3}, Landroid/telephony/euicc/EuiccCardManager$11;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->getSmdsAddress(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetSmdsAddressCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 545
    nop

    .line 546
    return-void

    .line 542
    :catch_14
    move-exception v0

    .line 543
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "EuiccCardManager"

    const-string v2, "Error calling getSmdsAddress"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 544
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist resetMemory(Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 8
    .param p1, "cardId"    # Ljava/lang/String;
    .param p2, "options"    # I
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 468
    .local p4, "callback":Landroid/telephony/euicc/EuiccCardManager$ResultCallback;, "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<Ljava/lang/Void;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$9;

    invoke-direct {v2, p0, p3, p4}, Landroid/telephony/euicc/EuiccCardManager$9;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->resetMemory(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IResetMemoryCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 483
    nop

    .line 484
    return-void

    .line 480
    :catch_14
    move-exception v0

    .line 481
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "EuiccCardManager"

    const-string v2, "Error calling resetMemory"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 482
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist retrieveNotification(Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 8
    .param p1, "cardId"    # Ljava/lang/String;
    .param p2, "seqNumber"    # I
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "Landroid/telephony/euicc/EuiccNotification;",
            ">;)V"
        }
    .end annotation

    .line 956
    .local p4, "callback":Landroid/telephony/euicc/EuiccCardManager$ResultCallback;, "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<Landroid/telephony/euicc/EuiccNotification;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$23;

    invoke-direct {v2, p0, p3, p4}, Landroid/telephony/euicc/EuiccCardManager$23;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->retrieveNotification(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IRetrieveNotificationCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 972
    nop

    .line 973
    return-void

    .line 969
    :catch_14
    move-exception v0

    .line 970
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "EuiccCardManager"

    const-string v2, "Error calling retrieveNotification"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 971
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist retrieveNotificationList(Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 8
    .param p1, "cardId"    # Ljava/lang/String;
    .param p2, "events"    # I
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "[",
            "Landroid/telephony/euicc/EuiccNotification;",
            ">;)V"
        }
    .end annotation

    .line 923
    .local p4, "callback":Landroid/telephony/euicc/EuiccCardManager$ResultCallback;, "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<[Landroid/telephony/euicc/EuiccNotification;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$22;

    invoke-direct {v2, p0, p3, p4}, Landroid/telephony/euicc/EuiccCardManager$22;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->retrieveNotificationList(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IRetrieveNotificationListCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 939
    nop

    .line 940
    return-void

    .line 936
    :catch_14
    move-exception v0

    .line 937
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "EuiccCardManager"

    const-string v2, "Error calling retrieveNotificationList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 938
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setDefaultSmdpAddress(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 8
    .param p1, "cardId"    # Ljava/lang/String;
    .param p2, "defaultSmdpAddress"    # Ljava/lang/String;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 562
    .local p4, "callback":Landroid/telephony/euicc/EuiccCardManager$ResultCallback;, "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<Ljava/lang/Void;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$12;

    invoke-direct {v2, p0, p3, p4}, Landroid/telephony/euicc/EuiccCardManager$12;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->setDefaultSmdpAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/ISetDefaultSmdpAddressCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 578
    nop

    .line 579
    return-void

    .line 575
    :catch_14
    move-exception v0

    .line 576
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "EuiccCardManager"

    const-string v2, "Error calling setDefaultSmdpAddress"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 577
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setNickname(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 12
    .param p1, "cardId"    # Ljava/lang/String;
    .param p2, "iccid"    # Ljava/lang/String;
    .param p3, "nickname"    # Ljava/lang/String;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 403
    .local p5, "callback":Landroid/telephony/euicc/EuiccCardManager$ResultCallback;, "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<Ljava/lang/Void;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Landroid/telephony/euicc/EuiccCardManager$7;

    invoke-direct {v5, p0, p4, p5}, Landroid/telephony/euicc/EuiccCardManager$7;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_1a

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .end local p1    # "cardId":Ljava/lang/String;
    .end local p2    # "iccid":Ljava/lang/String;
    .end local p3    # "nickname":Ljava/lang/String;
    .local v2, "cardId":Ljava/lang/String;
    .local v3, "iccid":Ljava/lang/String;
    .local v4, "nickname":Ljava/lang/String;
    :try_start_12
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->setNickname(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/ISetNicknameCallback;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_17

    .line 418
    nop

    .line 419
    return-void

    .line 415
    :catch_17
    move-exception v0

    move-object p1, v0

    goto :goto_1f

    .end local v2    # "cardId":Ljava/lang/String;
    .end local v3    # "iccid":Ljava/lang/String;
    .end local v4    # "nickname":Ljava/lang/String;
    .restart local p1    # "cardId":Ljava/lang/String;
    .restart local p2    # "iccid":Ljava/lang/String;
    .restart local p3    # "nickname":Ljava/lang/String;
    :catch_1a
    move-exception v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object p1, v0

    .line 416
    .end local p2    # "iccid":Ljava/lang/String;
    .end local p3    # "nickname":Ljava/lang/String;
    .restart local v2    # "cardId":Ljava/lang/String;
    .restart local v3    # "iccid":Ljava/lang/String;
    .restart local v4    # "nickname":Ljava/lang/String;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1f
    const-string p2, "EuiccCardManager"

    const-string p3, "Error calling setNickname"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 417
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist switchToProfile(Ljava/lang/String;Ljava/lang/String;IZLjava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 14
    .param p1, "cardId"    # Ljava/lang/String;
    .param p2, "iccid"    # Ljava/lang/String;
    .param p3, "portIndex"    # I
    .param p4, "refresh"    # Z
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "Landroid/service/euicc/EuiccProfileInfo;",
            ">;)V"
        }
    .end annotation

    .line 370
    .local p6, "callback":Landroid/telephony/euicc/EuiccCardManager$ResultCallback;, "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<Landroid/service/euicc/EuiccProfileInfo;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Landroid/telephony/euicc/EuiccCardManager$6;

    invoke-direct {v6, p0, p5, p6}, Landroid/telephony/euicc/EuiccCardManager$6;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_1b

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "cardId":Ljava/lang/String;
    .end local p2    # "iccid":Ljava/lang/String;
    .end local p3    # "portIndex":I
    .end local p4    # "refresh":Z
    .local v2, "cardId":Ljava/lang/String;
    .local v3, "iccid":Ljava/lang/String;
    .local v4, "portIndex":I
    .local v5, "refresh":Z
    :try_start_13
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->switchToProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLcom/android/internal/telephony/euicc/ISwitchToProfileCallback;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_18

    .line 385
    nop

    .line 386
    return-void

    .line 382
    :catch_18
    move-exception v0

    move-object p1, v0

    goto :goto_21

    .end local v2    # "cardId":Ljava/lang/String;
    .end local v3    # "iccid":Ljava/lang/String;
    .end local v4    # "portIndex":I
    .end local v5    # "refresh":Z
    .restart local p1    # "cardId":Ljava/lang/String;
    .restart local p2    # "iccid":Ljava/lang/String;
    .restart local p3    # "portIndex":I
    .restart local p4    # "refresh":Z
    :catch_1b
    move-exception v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object p1, v0

    .line 383
    .end local p2    # "iccid":Ljava/lang/String;
    .end local p3    # "portIndex":I
    .end local p4    # "refresh":Z
    .restart local v2    # "cardId":Ljava/lang/String;
    .restart local v3    # "iccid":Ljava/lang/String;
    .restart local v4    # "portIndex":I
    .restart local v5    # "refresh":Z
    .local p1, "e":Landroid/os/RemoteException;
    :goto_21
    const-string p2, "EuiccCardManager"

    const-string p3, "Error calling switchToProfile"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 384
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist switchToProfile(Ljava/lang/String;Ljava/lang/String;ZLjava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 13
    .param p1, "cardId"    # Ljava/lang/String;
    .param p2, "iccid"    # Ljava/lang/String;
    .param p3, "refresh"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "Landroid/service/euicc/EuiccProfileInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 332
    .local p5, "callback":Landroid/telephony/euicc/EuiccCardManager$ResultCallback;, "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<Landroid/service/euicc/EuiccProfileInfo;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Landroid/telephony/euicc/EuiccCardManager$5;

    invoke-direct {v6, p0, p4, p5}, Landroid/telephony/euicc/EuiccCardManager$5;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_1b

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    .end local p1    # "cardId":Ljava/lang/String;
    .end local p2    # "iccid":Ljava/lang/String;
    .end local p3    # "refresh":Z
    .local v2, "cardId":Ljava/lang/String;
    .local v3, "iccid":Ljava/lang/String;
    .local v5, "refresh":Z
    :try_start_13
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->switchToProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLcom/android/internal/telephony/euicc/ISwitchToProfileCallback;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_18

    .line 348
    nop

    .line 349
    return-void

    .line 345
    :catch_18
    move-exception v0

    move-object p1, v0

    goto :goto_20

    .end local v2    # "cardId":Ljava/lang/String;
    .end local v3    # "iccid":Ljava/lang/String;
    .end local v5    # "refresh":Z
    .restart local p1    # "cardId":Ljava/lang/String;
    .restart local p2    # "iccid":Ljava/lang/String;
    .restart local p3    # "refresh":Z
    :catch_1b
    move-exception v0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move-object p1, v0

    .line 346
    .end local p2    # "iccid":Ljava/lang/String;
    .end local p3    # "refresh":Z
    .restart local v2    # "cardId":Ljava/lang/String;
    .restart local v3    # "iccid":Ljava/lang/String;
    .restart local v5    # "refresh":Z
    .local p1, "e":Landroid/os/RemoteException;
    :goto_20
    const-string p2, "EuiccCardManager"

    const-string p3, "Error calling switchToProfile"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method
