.class public Landroid/hardware/face/FaceManager;
.super Ljava/lang/Object;
.source "FaceManager.java"

# interfaces
.implements Landroid/hardware/biometrics/BiometricAuthenticator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/face/FaceManager$AuthenticationCallback;,
        Landroid/hardware/face/FaceManager$FaceServiceReceiver;,
        Landroid/hardware/face/FaceManager$OnAuthenticationCancelListener;,
        Landroid/hardware/face/FaceManager$FaceDetectionCallback;,
        Landroid/hardware/face/FaceManager$OnFaceDetectionCancelListener;,
        Landroid/hardware/face/FaceManager$EnrollmentCallback;,
        Landroid/hardware/face/FaceManager$OnEnrollCancelListener;,
        Landroid/hardware/face/FaceManager$GenerateChallengeCallback;,
        Landroid/hardware/face/FaceManager$SetFeatureCallback;,
        Landroid/hardware/face/FaceManager$GetFeatureCallback;,
        Landroid/hardware/face/FaceManager$RemovalCallback;,
        Landroid/hardware/face/FaceManager$LockoutResetCallback;,
        Landroid/hardware/face/FaceManager$AuthenticationResult;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FaceManager"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mExecutor:Landroid/os/HandlerExecutor;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mProps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorPropertiesInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mService:Landroid/hardware/face/IFaceService;

.field private final blacklist mToken:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/hardware/face/FaceManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/hardware/face/FaceManager;)Landroid/os/HandlerExecutor;
    .registers 1

    iget-object p0, p0, Landroid/hardware/face/FaceManager;->mExecutor:Landroid/os/HandlerExecutor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/hardware/face/FaceManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/hardware/face/FaceManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmProps(Landroid/hardware/face/FaceManager;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/face/FaceManager;->mProps:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelAuthentication(Landroid/hardware/face/FaceManager;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/FaceManager;->cancelAuthentication(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelEnrollment(Landroid/hardware/face/FaceManager;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/FaceManager;->cancelEnrollment(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelFaceDetect(Landroid/hardware/face/FaceManager;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/FaceManager;->cancelFaceDetect(J)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/hardware/face/IFaceService;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/hardware/face/IFaceService;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/face/FaceManager;->mProps:Ljava/util/List;

    .line 191
    iput-object p1, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 192
    iput-object p2, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    .line 193
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-nez v0, :cond_20

    .line 194
    const-string v0, "FaceManager"

    const-string v1, "FaceAuthenticationManagerService was null"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_20
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/face/FaceManager;->mHandler:Landroid/os/Handler;

    .line 197
    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/hardware/face/FaceManager;->mExecutor:Landroid/os/HandlerExecutor;

    .line 198
    const-string v0, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3f

    .line 200
    new-instance v0, Landroid/hardware/face/FaceManager$1;

    invoke-direct {v0, p0}, Landroid/hardware/face/FaceManager$1;-><init>(Landroid/hardware/face/FaceManager;)V

    invoke-virtual {p0, v0}, Landroid/hardware/face/FaceManager;->addAuthenticatorsRegisteredCallback(Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback;)V

    .line 208
    :cond_3f
    return-void
.end method

.method private blacklist cancelAuthentication(J)V
    .registers 6
    .param p1, "requestId"    # J

    .line 874
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_18

    .line 876
    :try_start_4
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1, p2}, Landroid/hardware/face/IFaceService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;J)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    .line 879
    goto :goto_18

    .line 877
    :catch_12
    move-exception v0

    .line 878
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 881
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    :goto_18
    return-void
.end method

.method private blacklist cancelEnrollment(J)V
    .registers 5
    .param p1, "requestId"    # J

    .line 864
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_12

    .line 866
    :try_start_4
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1, p2}, Landroid/hardware/face/IFaceService;->cancelEnrollment(Landroid/os/IBinder;J)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 869
    goto :goto_12

    .line 867
    :catch_c
    move-exception v0

    .line 868
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 871
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_12
    :goto_12
    return-void
.end method

.method private blacklist cancelFaceDetect(J)V
    .registers 6
    .param p1, "requestId"    # J

    .line 884
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-nez v0, :cond_5

    .line 885
    return-void

    .line 889
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1, p2}, Landroid/hardware/face/IFaceService;->cancelFaceDetect(Landroid/os/IBinder;Ljava/lang/String;J)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_12} :catch_14

    .line 892
    nop

    .line 893
    return-void

    .line 890
    :catch_14
    move-exception v0

    .line 891
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist getAuthHelpMessage(Landroid/content/Context;II)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "acquireInfo"    # I
    .param p2, "vendorCode"    # I

    .line 1304
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_ec

    :pswitch_4
    goto/16 :goto_c8

    .line 1358
    :pswitch_6
    const v0, 0x10403e4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1356
    :pswitch_e
    const v0, 0x10403e1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1362
    :pswitch_16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10700fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1364
    .local v1, "msgArray":[Ljava/lang/String;
    array-length v2, v1

    if-ge p2, v2, :cond_c8

    .line 1365
    aget-object v0, v1, p2

    return-object v0

    .line 1354
    .end local v1    # "msgArray":[Ljava/lang/String;
    :pswitch_27
    const v0, 0x10403ed

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1352
    :pswitch_2f
    const v0, 0x10403e7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1336
    :pswitch_37
    const v0, 0x10403ec

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1334
    :pswitch_3f
    const v0, 0x10403ee

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1332
    :pswitch_47
    const v0, 0x10403e8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1350
    :pswitch_4f
    const v0, 0x10403f9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1348
    :pswitch_57
    const v0, 0x10403f2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1346
    :pswitch_5f
    const v0, 0x10403ea

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1344
    :pswitch_67
    const v0, 0x10403f7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1312
    :pswitch_6f
    const v0, 0x10403e6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1330
    :pswitch_77
    const v0, 0x10403e9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1328
    :pswitch_7f
    const v0, 0x10403f8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1325
    :pswitch_87
    const v0, 0x10403f5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1322
    :pswitch_8f
    const v0, 0x10403f4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1319
    :pswitch_97
    const v0, 0x10403f6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1316
    :pswitch_9f
    const v0, 0x10403f3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1314
    :pswitch_a7
    const v0, 0x10403f0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1342
    :pswitch_af
    const v0, 0x10403f1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1340
    :pswitch_b7
    const v0, 0x10403ef

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1338
    :pswitch_bf
    const v0, 0x10403e3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1308
    :pswitch_c7
    return-object v0

    .line 1370
    :cond_c8
    :goto_c8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown authentication acquired message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FaceManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    return-object v0

    nop

    :pswitch_data_ec
    .packed-switch 0x0
        :pswitch_c7
        :pswitch_bf
        :pswitch_b7
        :pswitch_af
        :pswitch_a7
        :pswitch_9f
        :pswitch_97
        :pswitch_8f
        :pswitch_87
        :pswitch_7f
        :pswitch_77
        :pswitch_6f
        :pswitch_67
        :pswitch_5f
        :pswitch_57
        :pswitch_4f
        :pswitch_47
        :pswitch_3f
        :pswitch_37
        :pswitch_2f
        :pswitch_c7
        :pswitch_27
        :pswitch_16
        :pswitch_4
        :pswitch_4
        :pswitch_e
        :pswitch_6
    .end packed-switch
.end method

.method public static blacklist getEnrollHelpMessage(Landroid/content/Context;II)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "acquireInfo"    # I
    .param p2, "vendorCode"    # I

    .line 1379
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_ec

    :pswitch_4
    goto/16 :goto_c8

    .line 1430
    :pswitch_6
    const v0, 0x10403e4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1428
    :pswitch_e
    const v0, 0x10403e1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1432
    :pswitch_16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10700fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1434
    .local v1, "msgArray":[Ljava/lang/String;
    array-length v2, v1

    if-ge p2, v2, :cond_c8

    .line 1435
    aget-object v0, v1, p2

    return-object v0

    .line 1426
    .end local v1    # "msgArray":[Ljava/lang/String;
    :pswitch_27
    const v0, 0x10403ed

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1424
    :pswitch_2f
    const v0, 0x10403e7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1422
    :pswitch_37
    const v0, 0x10403ec

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1420
    :pswitch_3f
    const v0, 0x10403ee

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1418
    :pswitch_47
    const v0, 0x10403e8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1416
    :pswitch_4f
    const v0, 0x10403f9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1414
    :pswitch_57
    const v0, 0x10403f2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1412
    :pswitch_5f
    const v0, 0x10403ea

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1410
    :pswitch_67
    const v0, 0x10403f7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1408
    :pswitch_6f
    const v0, 0x10403e6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1406
    :pswitch_77
    const v0, 0x10403e9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1404
    :pswitch_7f
    const v0, 0x10403f8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1401
    :pswitch_87
    const v0, 0x10403f5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1398
    :pswitch_8f
    const v0, 0x10403f4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1395
    :pswitch_97
    const v0, 0x10403f6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1392
    :pswitch_9f
    const v0, 0x10403f3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1390
    :pswitch_a7
    const v0, 0x10403f0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1388
    :pswitch_af
    const v0, 0x10403f1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1386
    :pswitch_b7
    const v0, 0x10403ef

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1384
    :pswitch_bf
    const v0, 0x10403e3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1382
    :pswitch_c7
    return-object v0

    .line 1439
    :cond_c8
    :goto_c8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown enrollment acquired message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FaceManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    return-object v0

    nop

    :pswitch_data_ec
    .packed-switch 0x0
        :pswitch_c7
        :pswitch_bf
        :pswitch_b7
        :pswitch_af
        :pswitch_a7
        :pswitch_9f
        :pswitch_97
        :pswitch_8f
        :pswitch_87
        :pswitch_7f
        :pswitch_77
        :pswitch_6f
        :pswitch_67
        :pswitch_5f
        :pswitch_57
        :pswitch_4f
        :pswitch_47
        :pswitch_3f
        :pswitch_37
        :pswitch_2f
        :pswitch_c7
        :pswitch_27
        :pswitch_16
        :pswitch_4
        :pswitch_4
        :pswitch_e
        :pswitch_6
    .end packed-switch
.end method

.method public static blacklist getErrorString(Landroid/content/Context;II)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "errMsg"    # I
    .param p2, "vendorCode"    # I

    .line 899
    packed-switch p1, :pswitch_data_a0

    :pswitch_3
    goto :goto_75

    .line 927
    :pswitch_4
    const v0, 0x1040411

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 924
    :pswitch_c
    const v0, 0x1040408

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 922
    :pswitch_14
    const v0, 0x1040402

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 920
    :pswitch_1c
    const v0, 0x1040407

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 918
    :pswitch_24
    const v0, 0x104040b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 915
    :pswitch_2c
    const v0, 0x1040404

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 930
    :pswitch_34
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 932
    .local v0, "msgArray":[Ljava/lang/String;
    array-length v1, v0

    if-ge p2, v1, :cond_75

    .line 933
    aget-object v1, v0, p2

    return-object v1

    .line 913
    .end local v0    # "msgArray":[Ljava/lang/String;
    :pswitch_45
    const v0, 0x1040403

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 911
    :pswitch_4d
    const v0, 0x1040400

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 909
    :pswitch_55
    const v0, 0x1040406

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 907
    :pswitch_5d
    const v0, 0x1040409

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 904
    :pswitch_65
    const v0, 0x104040a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 901
    :pswitch_6d
    const v0, 0x1040401

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 941
    :cond_75
    :goto_75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid error message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    const v0, 0x104040c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_65
        :pswitch_5d
        :pswitch_55
        :pswitch_4d
        :pswitch_3
        :pswitch_45
        :pswitch_34
        :pswitch_2c
        :pswitch_24
        :pswitch_1c
        :pswitch_14
        :pswitch_3
        :pswitch_3
        :pswitch_c
        :pswitch_4
    .end packed-switch
.end method

.method public static blacklist getMappedAcquiredInfo(II)I
    .registers 4
    .param p0, "acquireInfo"    # I
    .param p1, "vendorCode"    # I

    .line 951
    const/4 v0, 0x2

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_e

    .line 973
    :pswitch_5
    return v1

    .line 971
    :pswitch_6
    add-int/lit16 v0, p1, 0x3e8

    return v0

    .line 969
    :pswitch_9
    return v0

    .line 964
    :pswitch_a
    const/4 v0, 0x1

    return v0

    .line 957
    :pswitch_c
    return v0

    .line 953
    :pswitch_d
    return v1

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private blacklist useHandler(Landroid/os/Handler;)V
    .registers 4
    .param p1, "handler"    # Landroid/os/Handler;

    .line 214
    if-eqz p1, :cond_e

    .line 215
    iput-object p1, p0, Landroid/hardware/face/FaceManager;->mHandler:Landroid/os/Handler;

    .line 216
    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/hardware/face/FaceManager;->mExecutor:Landroid/os/HandlerExecutor;

    goto :goto_29

    .line 217
    :cond_e
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    if-eq v0, v1, :cond_29

    .line 218
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/face/FaceManager;->mHandler:Landroid/os/Handler;

    .line 219
    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/hardware/face/FaceManager;->mExecutor:Landroid/os/HandlerExecutor;

    .line 221
    :cond_29
    :goto_29
    return-void
.end method


# virtual methods
.method public blacklist addAuthenticatorsRegisteredCallback(Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback;

    .line 783
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_10

    .line 785
    :try_start_4
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    invoke-interface {v0, p1}, Landroid/hardware/face/IFaceService;->addAuthenticatorsRegisteredCallback(Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 788
    goto :goto_17

    .line 786
    :catch_a
    move-exception v0

    .line 787
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 790
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_10
    const-string v0, "FaceManager"

    const-string v1, "addAuthenticatorsRegisteredCallback(): Service not connected!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :goto_17
    return-void
.end method

.method public blacklist addLockoutResetCallback(Landroid/hardware/face/FaceManager$LockoutResetCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/hardware/face/FaceManager$LockoutResetCallback;

    .line 815
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_25

    .line 817
    :try_start_4
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 818
    .local v0, "powerManager":Landroid/os/PowerManager;
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    new-instance v2, Landroid/hardware/face/FaceManager$2;

    invoke-direct {v2, p0, v0, p1}, Landroid/hardware/face/FaceManager$2;-><init>(Landroid/hardware/face/FaceManager;Landroid/os/PowerManager;Landroid/hardware/face/FaceManager$LockoutResetCallback;)V

    iget-object v3, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 840
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 818
    invoke-interface {v1, v2, v3}, Landroid/hardware/face/IFaceService;->addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;Ljava/lang/String;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1e} :catch_1f

    .line 843
    .end local v0    # "powerManager":Landroid/os/PowerManager;
    goto :goto_2c

    .line 841
    :catch_1f
    move-exception v0

    .line 842
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 845
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_25
    const-string v0, "FaceManager"

    const-string v1, "addLockoutResetCallback(): Service not connected!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :goto_2c
    return-void
.end method

.method public blacklist authenticate(Landroid/hardware/biometrics/CryptoObject;Landroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$AuthenticationCallback;Landroid/os/Handler;I)V
    .registers 13
    .param p1, "crypto"    # Landroid/hardware/biometrics/CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "callback"    # Landroid/hardware/face/FaceManager$AuthenticationCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 230
    new-instance v0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;

    invoke-direct {v0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;-><init>()V

    .line 231
    invoke-virtual {v0, p5}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->setUserId(I)Landroid/hardware/face/FaceAuthenticateOptions$Builder;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->build()Landroid/hardware/face/FaceAuthenticateOptions;

    move-result-object v6

    .line 230
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "crypto":Landroid/hardware/biometrics/CryptoObject;
    .end local p2    # "cancel":Landroid/os/CancellationSignal;
    .end local p3    # "callback":Landroid/hardware/face/FaceManager$AuthenticationCallback;
    .end local p4    # "handler":Landroid/os/Handler;
    .local v2, "crypto":Landroid/hardware/biometrics/CryptoObject;
    .local v3, "cancel":Landroid/os/CancellationSignal;
    .local v4, "callback":Landroid/hardware/face/FaceManager$AuthenticationCallback;
    .local v5, "handler":Landroid/os/Handler;
    invoke-virtual/range {v1 .. v6}, Landroid/hardware/face/FaceManager;->authenticate(Landroid/hardware/biometrics/CryptoObject;Landroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$AuthenticationCallback;Landroid/os/Handler;Landroid/hardware/face/FaceAuthenticateOptions;)V

    .line 233
    return-void
.end method

.method public blacklist authenticate(Landroid/hardware/biometrics/CryptoObject;Landroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$AuthenticationCallback;Landroid/os/Handler;Landroid/hardware/face/FaceAuthenticateOptions;)V
    .registers 16
    .param p1, "crypto"    # Landroid/hardware/biometrics/CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "callback"    # Landroid/hardware/face/FaceManager$AuthenticationCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "options"    # Landroid/hardware/face/FaceAuthenticateOptions;

    .line 259
    if-eqz p3, :cond_80

    .line 263
    const-string v1, "FaceManager"

    if-eqz p2, :cond_12

    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 264
    const-string v0, "authentication already canceled"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void

    .line 268
    :cond_12
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/hardware/face/FaceAuthenticateOptions;->setOpPackageName(Ljava/lang/String;)Landroid/hardware/face/FaceAuthenticateOptions;

    .line 269
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/hardware/face/FaceAuthenticateOptions;->setAttributionTag(Ljava/lang/String;)Landroid/hardware/face/FaceAuthenticateOptions;

    .line 271
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_7e

    .line 273
    :try_start_28
    new-instance v0, Landroid/hardware/face/FaceCallback;

    invoke-direct {v0, p3, p1}, Landroid/hardware/face/FaceCallback;-><init>(Landroid/hardware/face/FaceManager$AuthenticationCallback;Landroid/hardware/biometrics/CryptoObject;)V

    .line 274
    .local v0, "faceCallback":Landroid/hardware/face/FaceCallback;
    invoke-direct {p0, p4}, Landroid/hardware/face/FaceManager;->useHandler(Landroid/os/Handler;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_30} :catch_63
    .catchall {:try_start_28 .. :try_end_30} :catchall_60

    .line 275
    if-eqz p1, :cond_3d

    :try_start_32
    invoke-virtual {p1}, Landroid/hardware/biometrics/CryptoObject;->getOpId()J

    move-result-wide v2
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_36} :catch_3a
    .catchall {:try_start_32 .. :try_end_36} :catchall_37

    goto :goto_3f

    .line 290
    .end local v0    # "faceCallback":Landroid/hardware/face/FaceCallback;
    :catchall_37
    move-exception v0

    move-object v9, p5

    goto :goto_7a

    .line 282
    :catch_3a
    move-exception v0

    move-object v9, p5

    goto :goto_65

    .line 275
    .restart local v0    # "faceCallback":Landroid/hardware/face/FaceCallback;
    :cond_3d
    const-wide/16 v2, 0x0

    :goto_3f
    move-wide v6, v2

    .line 276
    .local v6, "operationId":J
    :try_start_40
    const-string v2, "FaceManager#authenticate"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 277
    iget-object v4, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v5, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    new-instance v8, Landroid/hardware/face/FaceManager$FaceServiceReceiver;

    invoke-direct {v8, p0, v0}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;-><init>(Landroid/hardware/face/FaceManager;Landroid/hardware/face/FaceCallback;)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_4e} :catch_63
    .catchall {:try_start_40 .. :try_end_4e} :catchall_60

    move-object v9, p5

    .end local p5    # "options":Landroid/hardware/face/FaceAuthenticateOptions;
    .local v9, "options":Landroid/hardware/face/FaceAuthenticateOptions;
    :try_start_4f
    invoke-interface/range {v4 .. v9}, Landroid/hardware/face/IFaceService;->authenticate(Landroid/os/IBinder;JLandroid/hardware/face/IFaceServiceReceiver;Landroid/hardware/face/FaceAuthenticateOptions;)J

    move-result-wide v2

    .line 279
    .local v2, "authId":J
    if-eqz p2, :cond_75

    .line 280
    new-instance p5, Landroid/hardware/face/FaceManager$OnAuthenticationCancelListener;

    invoke-direct {p5, p0, v2, v3}, Landroid/hardware/face/FaceManager$OnAuthenticationCancelListener;-><init>(Landroid/hardware/face/FaceManager;J)V

    invoke-virtual {p2, p5}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_5d} :catch_5e
    .catchall {:try_start_4f .. :try_end_5d} :catchall_79

    goto :goto_75

    .line 282
    .end local v0    # "faceCallback":Landroid/hardware/face/FaceCallback;
    .end local v2    # "authId":J
    .end local v6    # "operationId":J
    :catch_5e
    move-exception v0

    goto :goto_65

    .line 290
    .end local v9    # "options":Landroid/hardware/face/FaceAuthenticateOptions;
    .restart local p5    # "options":Landroid/hardware/face/FaceAuthenticateOptions;
    :catchall_60
    move-exception v0

    move-object v9, p5

    .end local p5    # "options":Landroid/hardware/face/FaceAuthenticateOptions;
    .restart local v9    # "options":Landroid/hardware/face/FaceAuthenticateOptions;
    goto :goto_7a

    .line 282
    .end local v9    # "options":Landroid/hardware/face/FaceAuthenticateOptions;
    .restart local p5    # "options":Landroid/hardware/face/FaceAuthenticateOptions;
    :catch_63
    move-exception v0

    move-object v9, p5

    .line 283
    .end local p5    # "options":Landroid/hardware/face/FaceAuthenticateOptions;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v9    # "options":Landroid/hardware/face/FaceAuthenticateOptions;
    :goto_65
    :try_start_65
    const-string p5, "Remote exception while authenticating: "

    invoke-static {v1, p5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 286
    iget-object p5, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 287
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p5, v1, v2}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p5

    .line 286
    invoke-virtual {p3, v1, p5}, Landroid/hardware/face/FaceManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V
    :try_end_75
    .catchall {:try_start_65 .. :try_end_75} :catchall_79

    .line 290
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_75
    :goto_75
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 291
    goto :goto_7f

    .line 290
    :catchall_79
    move-exception v0

    :goto_7a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 291
    throw v0

    .line 271
    .end local v9    # "options":Landroid/hardware/face/FaceAuthenticateOptions;
    .restart local p5    # "options":Landroid/hardware/face/FaceAuthenticateOptions;
    :cond_7e
    move-object v9, p5

    .line 293
    .end local p5    # "options":Landroid/hardware/face/FaceAuthenticateOptions;
    .restart local v9    # "options":Landroid/hardware/face/FaceAuthenticateOptions;
    :goto_7f
    return-void

    .line 260
    .end local v9    # "options":Landroid/hardware/face/FaceAuthenticateOptions;
    .restart local p5    # "options":Landroid/hardware/face/FaceAuthenticateOptions;
    :cond_80
    move-object v9, p5

    .end local p5    # "options":Landroid/hardware/face/FaceAuthenticateOptions;
    .restart local v9    # "options":Landroid/hardware/face/FaceAuthenticateOptions;
    new-instance p5, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must supply an authentication callback"

    invoke-direct {p5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p5
.end method

.method public blacklist detectFace(Landroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$FaceDetectionCallback;Landroid/hardware/face/FaceAuthenticateOptions;)V
    .registers 9
    .param p1, "cancel"    # Landroid/os/CancellationSignal;
    .param p2, "callback"    # Landroid/hardware/face/FaceManager$FaceDetectionCallback;
    .param p3, "options"    # Landroid/hardware/face/FaceAuthenticateOptions;

    .line 303
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-nez v0, :cond_5

    .line 304
    return-void

    .line 307
    :cond_5
    invoke-virtual {p1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    const-string v1, "FaceManager"

    if-eqz v0, :cond_13

    .line 308
    const-string v0, "Detection already cancelled"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-void

    .line 312
    :cond_13
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/hardware/face/FaceAuthenticateOptions;->setOpPackageName(Ljava/lang/String;)Landroid/hardware/face/FaceAuthenticateOptions;

    .line 313
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/hardware/face/FaceAuthenticateOptions;->setAttributionTag(Ljava/lang/String;)Landroid/hardware/face/FaceAuthenticateOptions;

    .line 315
    new-instance v0, Landroid/hardware/face/FaceCallback;

    invoke-direct {v0, p2}, Landroid/hardware/face/FaceCallback;-><init>(Landroid/hardware/face/FaceManager$FaceDetectionCallback;)V

    .line 318
    .local v0, "faceCallback":Landroid/hardware/face/FaceCallback;
    :try_start_2a
    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v3, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    new-instance v4, Landroid/hardware/face/FaceManager$FaceServiceReceiver;

    invoke-direct {v4, p0, v0}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;-><init>(Landroid/hardware/face/FaceManager;Landroid/hardware/face/FaceCallback;)V

    invoke-interface {v2, v3, v4, p3}, Landroid/hardware/face/IFaceService;->detectFace(Landroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Landroid/hardware/face/FaceAuthenticateOptions;)J

    move-result-wide v2

    .line 320
    .local v2, "authId":J
    new-instance v4, Landroid/hardware/face/FaceManager$OnFaceDetectionCancelListener;

    invoke-direct {v4, p0, v2, v3}, Landroid/hardware/face/FaceManager$OnFaceDetectionCancelListener;-><init>(Landroid/hardware/face/FaceManager;J)V

    invoke-virtual {p1, v4}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_3f} :catch_40

    .line 323
    .end local v2    # "authId":J
    goto :goto_46

    .line 321
    :catch_40
    move-exception v2

    .line 322
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Remote exception when requesting finger detect"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_46
    return-void
.end method

.method public blacklist enroll(I[BLandroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$EnrollmentCallback;[I)V
    .registers 16
    .param p1, "userId"    # I
    .param p2, "hardwareAuthToken"    # [B
    .param p3, "cancel"    # Landroid/os/CancellationSignal;
    .param p4, "callback"    # Landroid/hardware/face/FaceManager$EnrollmentCallback;
    .param p5, "disabledFeatures"    # [I

    .line 336
    new-instance v0, Landroid/hardware/face/FaceEnrollOptions$Builder;

    invoke-direct {v0}, Landroid/hardware/face/FaceEnrollOptions$Builder;-><init>()V

    .line 338
    invoke-virtual {v0}, Landroid/hardware/face/FaceEnrollOptions$Builder;->build()Landroid/hardware/face/FaceEnrollOptions;

    move-result-object v9

    .line 336
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "userId":I
    .end local p2    # "hardwareAuthToken":[B
    .end local p3    # "cancel":Landroid/os/CancellationSignal;
    .end local p4    # "callback":Landroid/hardware/face/FaceManager$EnrollmentCallback;
    .end local p5    # "disabledFeatures":[I
    .local v2, "userId":I
    .local v3, "hardwareAuthToken":[B
    .local v4, "cancel":Landroid/os/CancellationSignal;
    .local v5, "callback":Landroid/hardware/face/FaceManager$EnrollmentCallback;
    .local v6, "disabledFeatures":[I
    invoke-virtual/range {v1 .. v9}, Landroid/hardware/face/FaceManager;->enroll(I[BLandroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$EnrollmentCallback;[ILandroid/view/Surface;ZLandroid/hardware/face/FaceEnrollOptions;)V

    .line 340
    return-void
.end method

.method public blacklist enroll(I[BLandroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$EnrollmentCallback;[ILandroid/view/Surface;ZLandroid/hardware/face/FaceEnrollOptions;)V
    .registers 27
    .param p1, "userId"    # I
    .param p2, "hardwareAuthToken"    # [B
    .param p3, "cancel"    # Landroid/os/CancellationSignal;
    .param p4, "callback"    # Landroid/hardware/face/FaceManager$EnrollmentCallback;
    .param p5, "disabledFeatures"    # [I
    .param p6, "previewSurface"    # Landroid/view/Surface;
    .param p7, "debugConsent"    # Z
    .param p8, "options"    # Landroid/hardware/face/FaceEnrollOptions;

    .line 365
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    if-eqz v3, :cond_9b

    .line 369
    const-string v4, "FaceManager"

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 370
    const-string v0, "enrollment already canceled"

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return-void

    .line 374
    :cond_18
    const/4 v5, 0x0

    if-nez p2, :cond_26

    .line 375
    iget-object v0, v1, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 376
    const/4 v4, 0x2

    invoke-static {v0, v4, v5}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 375
    invoke-virtual {v3, v4, v0}, Landroid/hardware/face/FaceManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    .line 378
    return-void

    .line 381
    :cond_26
    invoke-virtual/range {p0 .. p1}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v6, v1, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 382
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e009e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    const/4 v7, 0x1

    if-lt v0, v6, :cond_48

    .line 383
    iget-object v0, v1, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 384
    invoke-static {v0, v7, v5}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 383
    invoke-virtual {v3, v7, v0}, Landroid/hardware/face/FaceManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    .line 386
    return-void

    .line 389
    :cond_48
    iget-object v0, v1, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_9a

    .line 391
    :try_start_4c
    new-instance v0, Landroid/hardware/face/FaceCallback;

    invoke-direct {v0, v3}, Landroid/hardware/face/FaceCallback;-><init>(Landroid/hardware/face/FaceManager$EnrollmentCallback;)V

    .line 392
    .local v0, "faceCallback":Landroid/hardware/face/FaceCallback;
    const-string v6, "FaceManager#enroll"

    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 393
    iget-object v8, v1, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v10, v1, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    new-instance v12, Landroid/hardware/face/FaceManager$FaceServiceReceiver;

    invoke-direct {v12, v1, v0}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;-><init>(Landroid/hardware/face/FaceManager;Landroid/hardware/face/FaceCallback;)V

    iget-object v6, v1, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 394
    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v13

    .line 393
    move/from16 v9, p1

    move-object/from16 v11, p2

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move/from16 v16, p7

    move-object/from16 v17, p8

    invoke-interface/range {v8 .. v17}, Landroid/hardware/face/IFaceService;->enroll(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[ILandroid/view/Surface;ZLandroid/hardware/face/FaceEnrollOptions;)J

    move-result-wide v12

    .line 396
    .local v12, "enrollId":J
    if-eqz v2, :cond_92

    .line 397
    new-instance v6, Landroid/hardware/face/FaceManager$OnEnrollCancelListener;

    const/4 v8, 0x0

    invoke-direct {v6, v1, v12, v13, v8}, Landroid/hardware/face/FaceManager$OnEnrollCancelListener;-><init>(Landroid/hardware/face/FaceManager;JLandroid/hardware/face/FaceManager-IA;)V

    invoke-virtual {v2, v6}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_80} :catch_83
    .catchall {:try_start_4c .. :try_end_80} :catchall_81

    goto :goto_92

    .line 407
    .end local v0    # "faceCallback":Landroid/hardware/face/FaceCallback;
    .end local v12    # "enrollId":J
    :catchall_81
    move-exception v0

    goto :goto_96

    .line 399
    :catch_83
    move-exception v0

    .line 400
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_84
    const-string v6, "Remote exception in enroll: "

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 403
    iget-object v4, v1, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 404
    invoke-static {v4, v7, v5}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v4

    .line 403
    invoke-virtual {v3, v7, v4}, Landroid/hardware/face/FaceManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V
    :try_end_92
    .catchall {:try_start_84 .. :try_end_92} :catchall_81

    .line 407
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_92
    :goto_92
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 408
    goto :goto_9a

    .line 407
    :goto_96
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 408
    throw v0

    .line 410
    :cond_9a
    :goto_9a
    return-void

    .line 366
    :cond_9b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "Must supply an enrollment callback"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist enrollRemotely(I[BLandroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$EnrollmentCallback;[I)V
    .registers 16
    .param p1, "userId"    # I
    .param p2, "hardwareAuthToken"    # [B
    .param p3, "cancel"    # Landroid/os/CancellationSignal;
    .param p4, "callback"    # Landroid/hardware/face/FaceManager$EnrollmentCallback;
    .param p5, "disabledFeatures"    # [I

    .line 432
    if-eqz p4, :cond_6e

    .line 436
    const-string v1, "FaceManager"

    if-eqz p3, :cond_12

    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 437
    const-string v0, "enrollRemotely is already canceled."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    return-void

    .line 441
    :cond_12
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_6a

    .line 443
    :try_start_16
    new-instance v0, Landroid/hardware/face/FaceCallback;

    invoke-direct {v0, p4}, Landroid/hardware/face/FaceCallback;-><init>(Landroid/hardware/face/FaceManager$EnrollmentCallback;)V

    .line 444
    .local v0, "faceCallback":Landroid/hardware/face/FaceCallback;
    const-string v2, "FaceManager#enrollRemotely"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 445
    iget-object v3, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v5, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    new-instance v7, Landroid/hardware/face/FaceManager$FaceServiceReceiver;

    invoke-direct {v7, p0, v0}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;-><init>(Landroid/hardware/face/FaceManager;Landroid/hardware/face/FaceCallback;)V

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 446
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_2f} :catch_4b
    .catchall {:try_start_16 .. :try_end_2f} :catchall_45

    .line 445
    move v4, p1

    move-object v6, p2

    move-object v9, p5

    .end local p1    # "userId":I
    .end local p2    # "hardwareAuthToken":[B
    .end local p5    # "disabledFeatures":[I
    .local v4, "userId":I
    .local v6, "hardwareAuthToken":[B
    .local v9, "disabledFeatures":[I
    :try_start_32
    invoke-interface/range {v3 .. v9}, Landroid/hardware/face/IFaceService;->enrollRemotely(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[I)J

    move-result-wide p1

    .line 448
    .local p1, "enrolId":J
    if-eqz p3, :cond_60

    .line 449
    new-instance p5, Landroid/hardware/face/FaceManager$OnEnrollCancelListener;

    const/4 v2, 0x0

    invoke-direct {p5, p0, p1, p2, v2}, Landroid/hardware/face/FaceManager$OnEnrollCancelListener;-><init>(Landroid/hardware/face/FaceManager;JLandroid/hardware/face/FaceManager-IA;)V

    invoke-virtual {p3, p5}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_41} :catch_42
    .catchall {:try_start_32 .. :try_end_41} :catchall_64

    goto :goto_60

    .line 451
    .end local v0    # "faceCallback":Landroid/hardware/face/FaceCallback;
    .end local p1    # "enrolId":J
    :catch_42
    move-exception v0

    move-object p1, v0

    goto :goto_50

    .line 459
    .end local v4    # "userId":I
    .end local v6    # "hardwareAuthToken":[B
    .end local v9    # "disabledFeatures":[I
    .local p1, "userId":I
    .restart local p2    # "hardwareAuthToken":[B
    .restart local p5    # "disabledFeatures":[I
    :catchall_45
    move-exception v0

    move v4, p1

    move-object v6, p2

    move-object v9, p5

    move-object p1, v0

    .end local p1    # "userId":I
    .end local p2    # "hardwareAuthToken":[B
    .end local p5    # "disabledFeatures":[I
    .restart local v4    # "userId":I
    .restart local v6    # "hardwareAuthToken":[B
    .restart local v9    # "disabledFeatures":[I
    goto :goto_66

    .line 451
    .end local v4    # "userId":I
    .end local v6    # "hardwareAuthToken":[B
    .end local v9    # "disabledFeatures":[I
    .restart local p1    # "userId":I
    .restart local p2    # "hardwareAuthToken":[B
    .restart local p5    # "disabledFeatures":[I
    :catch_4b
    move-exception v0

    move v4, p1

    move-object v6, p2

    move-object v9, p5

    move-object p1, v0

    .line 452
    .end local p2    # "hardwareAuthToken":[B
    .end local p5    # "disabledFeatures":[I
    .restart local v4    # "userId":I
    .restart local v6    # "hardwareAuthToken":[B
    .restart local v9    # "disabledFeatures":[I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_50
    :try_start_50
    const-string p2, "Remote exception in enrollRemotely: "

    invoke-static {v1, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 455
    iget-object p2, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 456
    const/4 p5, 0x1

    const/4 v0, 0x0

    invoke-static {p2, p5, v0}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p2

    .line 455
    invoke-virtual {p4, p5, p2}, Landroid/hardware/face/FaceManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V
    :try_end_60
    .catchall {:try_start_50 .. :try_end_60} :catchall_64

    .line 459
    .end local p1    # "e":Landroid/os/RemoteException;
    :cond_60
    :goto_60
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 460
    goto :goto_6d

    .line 459
    :catchall_64
    move-exception v0

    move-object p1, v0

    :goto_66
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 460
    throw p1

    .line 441
    .end local v4    # "userId":I
    .end local v6    # "hardwareAuthToken":[B
    .end local v9    # "disabledFeatures":[I
    .local p1, "userId":I
    .restart local p2    # "hardwareAuthToken":[B
    .restart local p5    # "disabledFeatures":[I
    :cond_6a
    move v4, p1

    move-object v6, p2

    move-object v9, p5

    .line 462
    .end local p1    # "userId":I
    .end local p2    # "hardwareAuthToken":[B
    .end local p5    # "disabledFeatures":[I
    .restart local v4    # "userId":I
    .restart local v6    # "hardwareAuthToken":[B
    .restart local v9    # "disabledFeatures":[I
    :goto_6d
    return-void

    .line 433
    .end local v4    # "userId":I
    .end local v6    # "hardwareAuthToken":[B
    .end local v9    # "disabledFeatures":[I
    .restart local p1    # "userId":I
    .restart local p2    # "hardwareAuthToken":[B
    .restart local p5    # "disabledFeatures":[I
    :cond_6e
    move v4, p1

    move-object v6, p2

    .end local p1    # "userId":I
    .end local p2    # "hardwareAuthToken":[B
    .restart local v4    # "userId":I
    .restart local v6    # "hardwareAuthToken":[B
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must supply an enrollment callback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist generateChallenge(IILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V
    .registers 11
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "callback"    # Landroid/hardware/face/FaceManager$GenerateChallengeCallback;

    .line 478
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_2a

    .line 480
    :try_start_4
    new-instance v0, Landroid/hardware/face/FaceCallback;

    invoke-direct {v0, p3}, Landroid/hardware/face/FaceCallback;-><init>(Landroid/hardware/face/FaceManager$GenerateChallengeCallback;)V

    .line 481
    .local v0, "faceCallback":Landroid/hardware/face/FaceCallback;
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    new-instance v5, Landroid/hardware/face/FaceManager$FaceServiceReceiver;

    invoke-direct {v5, p0, v0}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;-><init>(Landroid/hardware/face/FaceManager;Landroid/hardware/face/FaceCallback;)V

    iget-object v3, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 482
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_18} :catch_21

    .line 481
    move v3, p1

    move v4, p2

    .end local p1    # "sensorId":I
    .end local p2    # "userId":I
    .local v3, "sensorId":I
    .local v4, "userId":I
    :try_start_1a
    invoke-interface/range {v1 .. v6}, Landroid/hardware/face/IFaceService;->generateChallenge(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_1e

    .line 485
    .end local v0    # "faceCallback":Landroid/hardware/face/FaceCallback;
    goto :goto_2c

    .line 483
    :catch_1e
    move-exception v0

    move-object p1, v0

    goto :goto_25

    .end local v3    # "sensorId":I
    .end local v4    # "userId":I
    .restart local p1    # "sensorId":I
    .restart local p2    # "userId":I
    :catch_21
    move-exception v0

    move v3, p1

    move v4, p2

    move-object p1, v0

    .line 484
    .end local p2    # "userId":I
    .restart local v3    # "sensorId":I
    .restart local v4    # "userId":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_25
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 478
    .end local v3    # "sensorId":I
    .end local v4    # "userId":I
    .local p1, "sensorId":I
    .restart local p2    # "userId":I
    :cond_2a
    move v3, p1

    move v4, p2

    .line 487
    .end local p1    # "sensorId":I
    .end local p2    # "userId":I
    .restart local v3    # "sensorId":I
    .restart local v4    # "userId":I
    :goto_2c
    return-void
.end method

.method public blacklist generateChallenge(ILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "callback"    # Landroid/hardware/face/FaceManager$GenerateChallengeCallback;

    .line 497
    nop

    .line 498
    invoke-virtual {p0}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v0

    .line 499
    .local v0, "faceSensorProperties":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 500
    const-string v1, "FaceManager"

    const-string v2, "No sensors"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    return-void

    .line 504
    :cond_13
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v1, v1, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 505
    .local v1, "sensorId":I
    invoke-virtual {p0, v1, p1, p2}, Landroid/hardware/face/FaceManager;->generateChallenge(IILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V

    .line 506
    return-void
.end method

.method public blacklist getEnrolledFaces()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/face/Face;",
            ">;"
        }
    .end annotation

    .line 651
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEnrolledFaces(I)Ljava/util/List;
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/face/Face;",
            ">;"
        }
    .end annotation

    .line 625
    nop

    .line 626
    invoke-virtual {p0}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v0

    .line 627
    .local v0, "faceSensorProperties":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 628
    const-string v1, "FaceManager"

    const-string v2, "No sensors"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 632
    :cond_18
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v1, :cond_38

    .line 634
    :try_start_1c
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v2, v2, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    iget-object v3, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 635
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 634
    invoke-interface {v1, v2, p1, v3}, Landroid/hardware/face/IFaceService;->getEnrolledFaces(IILjava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_31} :catch_32

    return-object v1

    .line 636
    :catch_32
    move-exception v1

    .line 637
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 640
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_38
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getFeature(IILandroid/hardware/face/FaceManager$GetFeatureCallback;)V
    .registers 11
    .param p1, "userId"    # I
    .param p2, "feature"    # I
    .param p3, "callback"    # Landroid/hardware/face/FaceManager$GetFeatureCallback;

    .line 567
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_2a

    .line 569
    :try_start_4
    new-instance v0, Landroid/hardware/face/FaceCallback;

    invoke-direct {v0, p3}, Landroid/hardware/face/FaceCallback;-><init>(Landroid/hardware/face/FaceManager$GetFeatureCallback;)V

    .line 570
    .local v0, "faceCallback":Landroid/hardware/face/FaceCallback;
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    new-instance v5, Landroid/hardware/face/FaceManager$FaceServiceReceiver;

    invoke-direct {v5, p0, v0}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;-><init>(Landroid/hardware/face/FaceManager;Landroid/hardware/face/FaceCallback;)V

    iget-object v3, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 571
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_18} :catch_21

    .line 570
    move v3, p1

    move v4, p2

    .end local p1    # "userId":I
    .end local p2    # "feature":I
    .local v3, "userId":I
    .local v4, "feature":I
    :try_start_1a
    invoke-interface/range {v1 .. v6}, Landroid/hardware/face/IFaceService;->getFeature(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_1e

    .line 574
    .end local v0    # "faceCallback":Landroid/hardware/face/FaceCallback;
    goto :goto_2c

    .line 572
    :catch_1e
    move-exception v0

    move-object p1, v0

    goto :goto_25

    .end local v3    # "userId":I
    .end local v4    # "feature":I
    .restart local p1    # "userId":I
    .restart local p2    # "feature":I
    :catch_21
    move-exception v0

    move v3, p1

    move v4, p2

    move-object p1, v0

    .line 573
    .end local p2    # "feature":I
    .restart local v3    # "userId":I
    .restart local v4    # "feature":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_25
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 567
    .end local v3    # "userId":I
    .end local v4    # "feature":I
    .local p1, "userId":I
    .restart local p2    # "feature":I
    :cond_2a
    move v3, p1

    move v4, p2

    .line 576
    .end local p1    # "userId":I
    .end local p2    # "feature":I
    .restart local v3    # "userId":I
    .restart local v4    # "feature":I
    :goto_2c
    return-void
.end method

.method public blacklist getLockoutModeForUser(II)I
    .registers 4
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I

    .line 800
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_f

    .line 802
    :try_start_4
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    invoke-interface {v0, p1, p2}, Landroid/hardware/face/IFaceService;->getLockoutModeForUser(II)I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    .line 803
    :catch_b
    move-exception v0

    .line 804
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 807
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSensorProperties()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorProperties;",
            ">;"
        }
    .end annotation

    .line 724
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 725
    .local v0, "properties":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorProperties;>;"
    nop

    .line 726
    invoke-virtual {p0}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v1

    .line 727
    .local v1, "internalProperties":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 728
    .local v3, "internalProp":Landroid/hardware/face/FaceSensorPropertiesInternal;
    invoke-static {v3}, Landroid/hardware/face/FaceSensorProperties;->from(Landroid/hardware/face/FaceSensorPropertiesInternal;)Landroid/hardware/face/FaceSensorProperties;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 729
    .end local v3    # "internalProp":Landroid/hardware/face/FaceSensorPropertiesInternal;
    goto :goto_e

    .line 730
    :cond_22
    return-object v0
.end method

.method public blacklist getSensorPropertiesInternal()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorPropertiesInternal;",
            ">;"
        }
    .end annotation

    .line 745
    :try_start_0
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mProps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-nez v0, :cond_d

    goto :goto_1a

    .line 748
    :cond_d
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/face/IFaceService;->getSensorPropertiesInternal(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 746
    :cond_1a
    :goto_1a
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mProps:Ljava/util/List;
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_1d

    return-object v0

    .line 749
    :catch_1d
    move-exception v0

    .line 750
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 752
    .end local v0    # "e":Landroid/os/RemoteException;
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mProps:Ljava/util/List;

    return-object v0
.end method

.method public blacklist hasEnrolledTemplates()Z
    .registers 2

    .line 662
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v0

    return v0
.end method

.method public blacklist hasEnrolledTemplates(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 672
    nop

    .line 673
    invoke-virtual {p0}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v0

    .line 674
    .local v0, "faceSensorProperties":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    .line 675
    const-string v1, "FaceManager"

    const-string v3, "No sensors"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    return v2

    .line 679
    :cond_14
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v1, :cond_33

    .line 681
    :try_start_18
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v2, v2, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    iget-object v3, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 682
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 681
    invoke-interface {v1, v2, p1, v3}, Landroid/hardware/face/IFaceService;->hasEnrolledFaces(IILjava/lang/String;)Z

    move-result v1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_2c} :catch_2d

    return v1

    .line 683
    :catch_2d
    move-exception v1

    .line 684
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 687
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_33
    return v2
.end method

.method public blacklist isHardwareDetected()Z
    .registers 5

    .line 698
    nop

    .line 699
    invoke-virtual {p0}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v0

    .line 700
    .local v0, "faceSensorProperties":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "FaceManager"

    const/4 v3, 0x0

    if-eqz v1, :cond_14

    .line 701
    const-string v1, "No sensors"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    return v3

    .line 705
    :cond_14
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v1, :cond_33

    .line 707
    :try_start_18
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v2, v2, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    iget-object v3, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 708
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 707
    invoke-interface {v1, v2, v3}, Landroid/hardware/face/IFaceService;->isHardwareDetected(ILjava/lang/String;)Z

    move-result v1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_2c} :catch_2d

    return v1

    .line 709
    :catch_2d
    move-exception v1

    .line 710
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 713
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_33
    const-string v1, "isFaceHardwareDetected(): Service not connected!"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    return v3
.end method

.method public blacklist registerBiometricStateListener(Landroid/hardware/biometrics/BiometricStateListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/hardware/biometrics/BiometricStateListener;

    .line 763
    :try_start_0
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    invoke-interface {v0, p1}, Landroid/hardware/face/IFaceService;->registerBiometricStateListener(Landroid/hardware/biometrics/IBiometricStateListener;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 766
    nop

    .line 767
    return-void

    .line 764
    :catch_7
    move-exception v0

    .line 765
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist remove(Landroid/hardware/face/Face;ILandroid/hardware/face/FaceManager$RemovalCallback;)V
    .registers 11
    .param p1, "face"    # Landroid/hardware/face/Face;
    .param p2, "userId"    # I
    .param p3, "callback"    # Landroid/hardware/face/FaceManager$RemovalCallback;

    .line 589
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_2c

    .line 591
    :try_start_4
    new-instance v0, Landroid/hardware/face/FaceCallback;

    invoke-direct {v0, p3, p1}, Landroid/hardware/face/FaceCallback;-><init>(Landroid/hardware/face/FaceManager$RemovalCallback;Landroid/hardware/face/Face;)V

    .line 592
    .local v0, "faceCallback":Landroid/hardware/face/FaceCallback;
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v3

    new-instance v5, Landroid/hardware/face/FaceManager$FaceServiceReceiver;

    invoke-direct {v5, p0, v0}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;-><init>(Landroid/hardware/face/FaceManager;Landroid/hardware/face/FaceCallback;)V

    iget-object v4, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 593
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1c} :catch_24

    .line 592
    move v4, p2

    .end local p2    # "userId":I
    .local v4, "userId":I
    :try_start_1d
    invoke-interface/range {v1 .. v6}, Landroid/hardware/face/IFaceService;->remove(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_20} :catch_21

    .line 596
    .end local v0    # "faceCallback":Landroid/hardware/face/FaceCallback;
    goto :goto_2d

    .line 594
    :catch_21
    move-exception v0

    move-object p2, v0

    goto :goto_27

    .end local v4    # "userId":I
    .restart local p2    # "userId":I
    :catch_24
    move-exception v0

    move v4, p2

    move-object p2, v0

    .line 595
    .restart local v4    # "userId":I
    .local p2, "e":Landroid/os/RemoteException;
    :goto_27
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 589
    .end local v4    # "userId":I
    .local p2, "userId":I
    :cond_2c
    move v4, p2

    .line 598
    .end local p2    # "userId":I
    .restart local v4    # "userId":I
    :goto_2d
    return-void
.end method

.method public blacklist removeAll(ILandroid/hardware/face/FaceManager$RemovalCallback;)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "callback"    # Landroid/hardware/face/FaceManager$RemovalCallback;

    .line 606
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_22

    .line 608
    :try_start_4
    new-instance v0, Landroid/hardware/face/FaceCallback;

    invoke-direct {v0, p2}, Landroid/hardware/face/FaceCallback;-><init>(Landroid/hardware/face/FaceManager$RemovalCallback;)V

    .line 609
    .local v0, "faceCallback":Landroid/hardware/face/FaceCallback;
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    new-instance v3, Landroid/hardware/face/FaceManager$FaceServiceReceiver;

    invoke-direct {v3, p0, v0}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;-><init>(Landroid/hardware/face/FaceManager;Landroid/hardware/face/FaceCallback;)V

    iget-object v4, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 610
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 609
    invoke-interface {v1, v2, p1, v3, v4}, Landroid/hardware/face/IFaceService;->removeAll(Landroid/os/IBinder;ILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1b} :catch_1c

    .line 613
    .end local v0    # "faceCallback":Landroid/hardware/face/FaceCallback;
    goto :goto_22

    .line 611
    :catch_1c
    move-exception v0

    .line 612
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 615
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_22
    :goto_22
    return-void
.end method

.method public blacklist resetLockout(II[B)V
    .registers 11
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "hardwareAuthToken"    # [B

    .line 535
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_22

    .line 537
    :try_start_4
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 538
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_18

    .line 537
    move v3, p1

    move v4, p2

    move-object v5, p3

    .end local p1    # "sensorId":I
    .end local p2    # "userId":I
    .end local p3    # "hardwareAuthToken":[B
    .local v3, "sensorId":I
    .local v4, "userId":I
    .local v5, "hardwareAuthToken":[B
    :try_start_11
    invoke-interface/range {v1 .. v6}, Landroid/hardware/face/IFaceService;->resetLockout(Landroid/os/IBinder;II[BLjava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    .line 541
    goto :goto_25

    .line 539
    :catch_15
    move-exception v0

    move-object p1, v0

    goto :goto_1d

    .end local v3    # "sensorId":I
    .end local v4    # "userId":I
    .end local v5    # "hardwareAuthToken":[B
    .restart local p1    # "sensorId":I
    .restart local p2    # "userId":I
    .restart local p3    # "hardwareAuthToken":[B
    :catch_18
    move-exception v0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object p1, v0

    .line 540
    .end local p2    # "userId":I
    .end local p3    # "hardwareAuthToken":[B
    .restart local v3    # "sensorId":I
    .restart local v4    # "userId":I
    .restart local v5    # "hardwareAuthToken":[B
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1d
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 535
    .end local v3    # "sensorId":I
    .end local v4    # "userId":I
    .end local v5    # "hardwareAuthToken":[B
    .local p1, "sensorId":I
    .restart local p2    # "userId":I
    .restart local p3    # "hardwareAuthToken":[B
    :cond_22
    move v3, p1

    move v4, p2

    move-object v5, p3

    .line 543
    .end local p1    # "sensorId":I
    .end local p2    # "userId":I
    .end local p3    # "hardwareAuthToken":[B
    .restart local v3    # "sensorId":I
    .restart local v4    # "userId":I
    .restart local v5    # "hardwareAuthToken":[B
    :goto_25
    return-void
.end method

.method public blacklist revokeChallenge(IIJ)V
    .registers 13
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "challenge"    # J

    .line 515
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_22

    .line 517
    :try_start_4
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 518
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_18

    .line 517
    move v3, p1

    move v4, p2

    move-wide v6, p3

    .end local p1    # "sensorId":I
    .end local p2    # "userId":I
    .end local p3    # "challenge":J
    .local v3, "sensorId":I
    .local v4, "userId":I
    .local v6, "challenge":J
    :try_start_11
    invoke-interface/range {v1 .. v7}, Landroid/hardware/face/IFaceService;->revokeChallenge(Landroid/os/IBinder;IILjava/lang/String;J)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    .line 521
    goto :goto_25

    .line 519
    :catch_15
    move-exception v0

    move-object p1, v0

    goto :goto_1d

    .end local v3    # "sensorId":I
    .end local v4    # "userId":I
    .end local v6    # "challenge":J
    .restart local p1    # "sensorId":I
    .restart local p2    # "userId":I
    .restart local p3    # "challenge":J
    :catch_18
    move-exception v0

    move v3, p1

    move v4, p2

    move-wide v6, p3

    move-object p1, v0

    .line 520
    .end local p2    # "userId":I
    .end local p3    # "challenge":J
    .restart local v3    # "sensorId":I
    .restart local v4    # "userId":I
    .restart local v6    # "challenge":J
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1d
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 515
    .end local v3    # "sensorId":I
    .end local v4    # "userId":I
    .end local v6    # "challenge":J
    .local p1, "sensorId":I
    .restart local p2    # "userId":I
    .restart local p3    # "challenge":J
    :cond_22
    move v3, p1

    move v4, p2

    move-wide v6, p3

    .line 523
    .end local p1    # "sensorId":I
    .end local p2    # "userId":I
    .end local p3    # "challenge":J
    .restart local v3    # "sensorId":I
    .restart local v4    # "userId":I
    .restart local v6    # "challenge":J
    :goto_25
    return-void
.end method

.method public blacklist scheduleWatchdog()V
    .registers 3

    .line 857
    :try_start_0
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    invoke-interface {v0}, Landroid/hardware/face/IFaceService;->scheduleWatchdog()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 860
    nop

    .line 861
    return-void

    .line 858
    :catch_7
    move-exception v0

    .line 859
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setFeature(IIZ[BLandroid/hardware/face/FaceManager$SetFeatureCallback;)V
    .registers 15
    .param p1, "userId"    # I
    .param p2, "feature"    # I
    .param p3, "enabled"    # Z
    .param p4, "hardwareAuthToken"    # [B
    .param p5, "callback"    # Landroid/hardware/face/FaceManager$SetFeatureCallback;

    .line 551
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_2e

    .line 553
    :try_start_4
    new-instance v0, Landroid/hardware/face/FaceCallback;

    invoke-direct {v0, p5}, Landroid/hardware/face/FaceCallback;-><init>(Landroid/hardware/face/FaceManager$SetFeatureCallback;)V

    .line 554
    .local v0, "faceCallback":Landroid/hardware/face/FaceCallback;
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    new-instance v7, Landroid/hardware/face/FaceManager$FaceServiceReceiver;

    invoke-direct {v7, p0, v0}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;-><init>(Landroid/hardware/face/FaceManager;Landroid/hardware/face/FaceCallback;)V

    iget-object v3, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 555
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_18} :catch_23

    .line 554
    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    .end local p1    # "userId":I
    .end local p2    # "feature":I
    .end local p3    # "enabled":Z
    .end local p4    # "hardwareAuthToken":[B
    .local v3, "userId":I
    .local v4, "feature":I
    .local v5, "enabled":Z
    .local v6, "hardwareAuthToken":[B
    :try_start_1c
    invoke-interface/range {v1 .. v8}, Landroid/hardware/face/IFaceService;->setFeature(Landroid/os/IBinder;IIZ[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1f} :catch_20

    .line 558
    .end local v0    # "faceCallback":Landroid/hardware/face/FaceCallback;
    goto :goto_32

    .line 556
    :catch_20
    move-exception v0

    move-object p1, v0

    goto :goto_29

    .end local v3    # "userId":I
    .end local v4    # "feature":I
    .end local v5    # "enabled":Z
    .end local v6    # "hardwareAuthToken":[B
    .restart local p1    # "userId":I
    .restart local p2    # "feature":I
    .restart local p3    # "enabled":Z
    .restart local p4    # "hardwareAuthToken":[B
    :catch_23
    move-exception v0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object p1, v0

    .line 557
    .end local p2    # "feature":I
    .end local p3    # "enabled":Z
    .end local p4    # "hardwareAuthToken":[B
    .restart local v3    # "userId":I
    .restart local v4    # "feature":I
    .restart local v5    # "enabled":Z
    .restart local v6    # "hardwareAuthToken":[B
    .local p1, "e":Landroid/os/RemoteException;
    :goto_29
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 551
    .end local v3    # "userId":I
    .end local v4    # "feature":I
    .end local v5    # "enabled":Z
    .end local v6    # "hardwareAuthToken":[B
    .local p1, "userId":I
    .restart local p2    # "feature":I
    .restart local p3    # "enabled":Z
    .restart local p4    # "hardwareAuthToken":[B
    :cond_2e
    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    .line 560
    .end local p1    # "userId":I
    .end local p2    # "feature":I
    .end local p3    # "enabled":Z
    .end local p4    # "hardwareAuthToken":[B
    .restart local v3    # "userId":I
    .restart local v4    # "feature":I
    .restart local v5    # "enabled":Z
    .restart local v6    # "hardwareAuthToken":[B
    :goto_32
    return-void
.end method
