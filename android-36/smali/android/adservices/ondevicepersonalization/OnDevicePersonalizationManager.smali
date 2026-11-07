.class public Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;
.super Ljava/lang/Object;
.source "OnDevicePersonalizationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$ExecuteResult;,
        Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$FeatureStatus;
    }
.end annotation


# static fields
.field private static final blacklist ALT_ODP_MANAGING_SERVICE_PACKAGE_SUFFIX:Ljava/lang/String; = "com.google.android.ondevicepersonalization.services"

.field public static final blacklist FEATURE_DISABLED:I = 0x1

.field public static final blacklist FEATURE_ENABLED:I = 0x0

.field public static final blacklist FEATURE_UNSUPPORTED:I = 0x2

.field private static final blacklist INTENT_FILTER_ACTION:Ljava/lang/String; = "android.OnDevicePersonalizationService"

.field private static final blacklist ISOLATED_SERVICE_ERROR_MESSAGE:Ljava/lang/String; = "Error in the IsolatedService."

.field private static final blacklist ODP_DISABLED_ERROR_MESSAGE:Ljava/lang/String; = "Personalization disabled by device configuration."

.field private static final blacklist ODP_INTERNAL_ERROR_MESSAGE:Ljava/lang/String; = "Internal error in the OnDevicePersonalizationService."

.field private static final blacklist ODP_MANAGING_SERVICE_PACKAGE_SUFFIX:Ljava/lang/String; = "com.android.ondevicepersonalization.services"

.field private static final blacklist ODP_MANIFEST_ERROR_MESSAGE:Ljava/lang/String; = "OnDevicePersonalization manifest invalid."

.field private static final blacklist ODP_SERVICE_LOADING_ERROR_MESSAGE:Ljava/lang/String; = "Failed to load the isolated service."

.field private static final blacklist ODP_SERVICE_TIMEOUT_ERROR_MESSAGE:Ljava/lang/String; = "The isolated service timed out without returning."

.field public static final blacklist ON_DEVICE_PERSONALIZATION_SERVICE:Ljava/lang/String; = "on_device_personalization_service"

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mServiceBinder:Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/federatedcompute/internal/util/AbstractServiceBinder<",
            "Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateException(II[BLandroid/content/Context;)Ljava/lang/Exception;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->createException(II[BLandroid/content/Context;)Ljava/lang/Exception;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateException(II[BLandroid/content/Context;Z)Ljava/lang/Exception;
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->createException(II[BLandroid/content/Context;Z)Ljava/lang/Exception;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smlogApiCallStats(Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;Ljava/lang/String;IJJJI)V
    .registers 10

    invoke-static/range {p0 .. p9}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->logApiCallStats(Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;Ljava/lang/String;IJJJI)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 96
    const-class v0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->TAG:Ljava/lang/String;

    .line 97
    invoke-static {}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory;->getLogger()Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    move-result-object v0

    sput-object v0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 158
    nop

    .line 163
    const-string v0, "com.android.ondevicepersonalization.services"

    const-string v1, "com.google.android.ondevicepersonalization.services"

    invoke-static {v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 166
    invoke-static {}, Lcom/android/ondevicepersonalization/internal/util/build/SdkLevel;->isAtLeastU()Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v1, 0x200

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    new-instance v2, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$$ExternalSyntheticLambda0;-><init>()V

    .line 160
    const-string v3, "android.OnDevicePersonalizationService"

    invoke-static {p1, v3, v0, v1, v2}, Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;->getServiceBinderByIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILjava/util/function/Function;)Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;

    move-result-object v0

    .line 158
    invoke-direct {p0, p1, v0}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;-><init>(Landroid/content/Context;Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;)V

    .line 168
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/federatedcompute/internal/util/AbstractServiceBinder<",
            "Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;",
            ">;)V"
        }
    .end annotation

    .line 174
    .local p2, "serviceBinder":Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;, "Lcom/android/federatedcompute/internal/util/AbstractServiceBinder<Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->mContext:Landroid/content/Context;

    .line 176
    iput-object p2, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->mServiceBinder:Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;

    .line 177
    return-void
.end method

.method private static blacklist convertMessage(I)Ljava/lang/String;
    .registers 4
    .param p0, "errorCode"    # I

    .line 727
    packed-switch p0, :pswitch_data_36

    .line 742
    :pswitch_3
    sget-object v0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Unexpected error code while creating exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->w(Ljava/lang/String;)I

    .line 743
    const-string v0, ""

    return-object v0

    .line 740
    :pswitch_24
    const-string v0, "The isolated service timed out without returning."

    return-object v0

    .line 738
    :pswitch_27
    const-string v0, "Failed to load the isolated service."

    return-object v0

    .line 736
    :pswitch_2a
    const-string v0, "OnDevicePersonalization manifest invalid."

    return-object v0

    .line 733
    :pswitch_2d
    const-string v0, "Personalization disabled by device configuration."

    return-object v0

    .line 731
    :pswitch_30
    const-string v0, "Error in the IsolatedService."

    return-object v0

    .line 729
    :pswitch_33
    const-string v0, "Internal error in the OnDevicePersonalizationService."

    return-object v0

    :pswitch_data_36
    .packed-switch 0x64
        :pswitch_33
        :pswitch_3
        :pswitch_3
        :pswitch_30
        :pswitch_2d
        :pswitch_3
        :pswitch_2a
        :pswitch_2a
        :pswitch_27
        :pswitch_24
    .end packed-switch
.end method

.method private static blacklist createException(II[BLandroid/content/Context;)Ljava/lang/Exception;
    .registers 5
    .param p0, "errorCode"    # I
    .param p1, "isolatedServiceErrorCode"    # I
    .param p2, "serializedExceptionInfo"    # [B
    .param p3, "context"    # Landroid/content/Context;

    .line 782
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->createException(II[BLandroid/content/Context;Z)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist createException(II[BLandroid/content/Context;Z)Ljava/lang/Exception;
    .registers 11
    .param p0, "errorCode"    # I
    .param p1, "isolatedServiceErrorCode"    # I
    .param p2, "serializedExceptionInfo"    # [B
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "translateToLegacyErrorCode"    # Z

    .line 796
    if-eqz p4, :cond_6

    .line 797
    invoke-static {p0, p3}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->translateErrorCode(ILandroid/content/Context;)I

    move-result p0

    .line 799
    :cond_6
    invoke-static {p2}, Lcom/android/ondevicepersonalization/internal/util/ExceptionInfo;->fromByteArray([B)Ljava/lang/Exception;

    move-result-object v0

    .line 800
    .local v0, "cause":Ljava/lang/Exception;
    packed-switch p0, :pswitch_data_94

    .line 847
    :pswitch_d
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->convertMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    .line 842
    :pswitch_17
    new-instance v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationException;

    .line 844
    invoke-static {p0}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->convertMessage(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v1, v3, v2, v0}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 842
    return-object v1

    .line 837
    :pswitch_22
    new-instance v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationException;

    .line 839
    invoke-static {p0}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->convertMessage(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v3, v2, v0}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 837
    return-object v1

    .line 831
    :pswitch_2d
    new-instance v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationException;

    .line 834
    invoke-static {p0}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->convertMessage(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v1, v3, v2, v0}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 831
    return-object v1

    .line 824
    :pswitch_38
    new-instance v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationException;

    .line 826
    invoke-static {p0}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->convertMessage(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2, v0}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 824
    return-object v1

    .line 815
    :pswitch_43
    const/4 v1, 0x1

    if-lez p1, :cond_55

    const/16 v2, 0x80

    if-ge p1, v2, :cond_55

    .line 816
    new-instance v2, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationException;

    new-instance v3, Landroid/adservices/ondevicepersonalization/IsolatedServiceException;

    invoke-direct {v3, p1}, Landroid/adservices/ondevicepersonalization/IsolatedServiceException;-><init>(I)V

    invoke-direct {v2, v1, v3}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationException;-><init>(ILjava/lang/Throwable;)V

    goto :goto_5e

    .line 819
    :cond_55
    new-instance v2, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationException;

    .line 821
    invoke-static {p0}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->convertMessage(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3, v0}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 815
    :goto_5e
    return-object v2

    .line 813
    :pswitch_5f
    new-instance v1, Ljava/lang/ClassNotFoundException;

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    .line 802
    :pswitch_67
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    .line 805
    .local v1, "e":Ljava/lang/Exception;
    if-eqz v0, :cond_92

    .line 806
    :try_start_6e
    invoke-virtual {v1, v0}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_72

    goto :goto_92

    .line 808
    :catch_72
    move-exception v2

    .line 809
    .local v2, "e2":Ljava/lang/Exception;
    sget-object v3, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": could not update cause"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_93

    .line 810
    .end local v2    # "e2":Ljava/lang/Exception;
    :cond_92
    :goto_92
    nop

    .line 811
    :goto_93
    return-object v1

    :pswitch_data_94
    .packed-switch 0x65
        :pswitch_67
        :pswitch_5f
        :pswitch_43
        :pswitch_38
        :pswitch_d
        :pswitch_2d
        :pswitch_2d
        :pswitch_22
        :pswitch_17
    .end packed-switch
.end method

.method private static blacklist logApiCallStats(Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;Ljava/lang/String;IJJJI)V
    .registers 14
    .param p0, "service"    # Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    .param p1, "sdkPackageName"    # Ljava/lang/String;
    .param p2, "apiName"    # I
    .param p3, "latencyMillis"    # J
    .param p5, "rpcCallLatencyMillis"    # J
    .param p7, "rpcReturnLatencyMillis"    # J
    .param p9, "responseCode"    # I

    .line 860
    if-eqz p0, :cond_22

    .line 861
    :try_start_2
    invoke-interface/range {p0 .. p9}, Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;->logApiCallStats(Ljava/lang/String;IJJJI)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_22

    .line 864
    :catch_6
    move-exception v0

    .line 865
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Error logging API call stats"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    goto :goto_23

    .line 866
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_22
    :goto_22
    nop

    .line 867
    :goto_23
    return-void
.end method

.method private static blacklist translateErrorCode(ILandroid/content/Context;)I
    .registers 6
    .param p0, "errorCode"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 751
    const/16 v0, 0x6a

    if-ge p0, v0, :cond_5

    .line 754
    return p0

    .line 757
    :cond_5
    sget-object v0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    sget-object v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Translating to legacy error codes for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 759
    const/16 v0, 0x64

    .line 760
    .local v0, "translatedCode":I
    packed-switch p0, :pswitch_data_3a

    goto :goto_38

    .line 768
    :pswitch_2d
    const/16 v0, 0x67

    goto :goto_38

    .line 766
    :pswitch_30
    const/16 v0, 0x67

    goto :goto_38

    .line 764
    :pswitch_33
    const/16 v0, 0x66

    goto :goto_38

    .line 762
    :pswitch_36
    const/16 v0, 0x65

    .line 770
    :goto_38
    return v0

    nop

    :pswitch_data_3a
    .packed-switch 0x6a
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
    .end packed-switch
.end method

.method private static blacklist validateRequest(Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;)V
    .registers 4
    .param p0, "request"    # Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;

    .line 714
    invoke-virtual {p0}, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;->getService()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    invoke-virtual {p0}, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;->getService()Landroid/content/ComponentName;

    move-result-object v0

    .line 716
    .local v0, "service":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    .line 721
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 724
    return-void

    .line 722
    :cond_2e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "missing service class name"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 719
    :cond_36
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "missing service package name"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist execute(Landroid/content/ComponentName;Landroid/os/PersistableBundle;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 23
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "params"    # Landroid/os/PersistableBundle;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/os/PersistableBundle;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$ExecuteResult;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 215
    .local p4, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$ExecuteResult;Ljava/lang/Exception;>;"
    move-object/from16 v1, p0

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-static/range {p3 .. p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-static/range {p4 .. p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b5

    .line 224
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 227
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 230
    .local v6, "startTimeMillis":J
    :try_start_34
    iget-object v0, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->mServiceBinder:Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;

    .line 231
    move-object/from16 v2, p3

    invoke-virtual {v0, v2}, Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;->getService(Ljava/util/concurrent/Executor;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3f} :catch_a4

    move-object v8, v4

    .line 234
    .local v8, "odpService":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    :try_start_40
    new-instance v14, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$1;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_42} :catch_86

    move-object/from16 v5, p1

    move-object/from16 v3, p4

    move-object v4, v8

    move-object v0, v14

    .end local v8    # "odpService":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    .local v4, "odpService":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    :try_start_48
    invoke-direct/range {v0 .. v7}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$1;-><init>(Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;Landroid/content/ComponentName;J)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4b} :catch_83

    .line 310
    .end local v4    # "odpService":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    .restart local v8    # "odpService":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    .local v14, "callbackWrapper":Landroid/adservices/ondevicepersonalization/aidl/IExecuteCallback;
    :try_start_4b
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 311
    .local v11, "wrappedParams":Landroid/os/Bundle;
    const-string v0, "android.ondevicepersonalization.extra.app_params_serialized"

    new-instance v2, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;

    .line 313
    invoke-static/range {p2 .. p2}, Lcom/android/ondevicepersonalization/internal/util/PersistableBundleUtils;->toByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;-><init>([B)V

    .line 311
    invoke-virtual {v11, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 314
    iget-object v0, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->mContext:Landroid/content/Context;

    .line 315
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v9

    .line 316
    .local v9, "appPackageName":Ljava/lang/String;
    new-instance v0, Landroid/adservices/ondevicepersonalization/CallerMetadata$Builder;

    invoke-direct {v0}, Landroid/adservices/ondevicepersonalization/CallerMetadata$Builder;-><init>()V

    .line 320
    invoke-virtual {v0, v6, v7}, Landroid/adservices/ondevicepersonalization/CallerMetadata$Builder;->setStartTimeMillis(J)Landroid/adservices/ondevicepersonalization/CallerMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/adservices/ondevicepersonalization/CallerMetadata$Builder;->build()Landroid/adservices/ondevicepersonalization/CallerMetadata;

    move-result-object v12

    sget-object v13, Landroid/adservices/ondevicepersonalization/ExecuteOptionsParcel;->DEFAULT:Landroid/adservices/ondevicepersonalization/ExecuteOptionsParcel;

    .line 316
    move-object/from16 v10, p1

    invoke-interface/range {v8 .. v14}, Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;->execute(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/adservices/ondevicepersonalization/CallerMetadata;Landroid/adservices/ondevicepersonalization/ExecuteOptionsParcel;Landroid/adservices/ondevicepersonalization/aidl/IExecuteCallback;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_80} :catch_81

    .line 333
    .end local v9    # "appPackageName":Ljava/lang/String;
    .end local v11    # "wrappedParams":Landroid/os/Bundle;
    .end local v14    # "callbackWrapper":Landroid/adservices/ondevicepersonalization/aidl/IExecuteCallback;
    goto :goto_a1

    .line 323
    :catch_81
    move-exception v0

    goto :goto_89

    .end local v8    # "odpService":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    .restart local v4    # "odpService":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    :catch_83
    move-exception v0

    move-object v8, v4

    .end local v4    # "odpService":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    .restart local v8    # "odpService":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    goto :goto_89

    :catch_86
    move-exception v0

    move-object/from16 v3, p4

    .line 324
    .local v0, "e":Ljava/lang/Exception;
    :goto_89
    nop

    .line 326
    :try_start_8a
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 328
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v11, v4, v6

    .line 324
    const/4 v10, 0x1

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x64

    invoke-static/range {v8 .. v17}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->logApiCallStats(Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;Ljava/lang/String;IJJJI)V

    .line 332
    invoke-interface {v3, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_a1} :catch_a2

    .line 337
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "odpService":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    :goto_a1
    goto :goto_aa

    .line 335
    :catch_a2
    move-exception v0

    goto :goto_a7

    :catch_a4
    move-exception v0

    move-object/from16 v3, p4

    .line 336
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_a7
    invoke-interface {v3, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 338
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_aa
    return-void

    .line 225
    .end local v6    # "startTimeMillis":J
    :cond_ab
    move-object/from16 v3, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "missing service class name"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_b5
    move-object/from16 v3, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "missing service package name"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist executeInIsolatedService(Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 22
    .param p1, "request"    # Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceResponse;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 360
    .local p3, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceResponse;Ljava/lang/Exception;>;"
    move-object/from16 v1, p0

    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    invoke-static/range {p3 .. p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    invoke-static/range {p1 .. p1}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->validateRequest(Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;)V

    .line 363
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 366
    .local v6, "startTimeMillis":J
    :try_start_f
    iget-object v0, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->mServiceBinder:Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;

    .line 367
    move-object/from16 v2, p2

    invoke-virtual {v0, v2}, Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;->getService(Ljava/util/concurrent/Executor;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1a} :catch_9c

    move-object v8, v5

    .line 370
    .local v8, "odpService":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    :try_start_1b
    new-instance v14, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$2;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1d} :catch_7a

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object v5, v8

    move-object v0, v14

    .end local v8    # "odpService":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    .local v5, "odpService":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    :try_start_23
    invoke-direct/range {v0 .. v7}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$2;-><init>(Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;Ljava/util/concurrent/Executor;Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;Landroid/os/OutcomeReceiver;Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;J)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_77

    .line 462
    .end local v5    # "odpService":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    .restart local v8    # "odpService":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    .local v14, "callbackWrapper":Landroid/adservices/ondevicepersonalization/aidl/IExecuteCallback;
    :try_start_26
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 463
    .local v11, "wrappedParams":Landroid/os/Bundle;
    const-string v0, "android.ondevicepersonalization.extra.app_params_serialized"

    new-instance v2, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;

    .line 466
    invoke-virtual/range {p1 .. p1}, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;->getAppParams()Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ondevicepersonalization/internal/util/PersistableBundleUtils;->toByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;-><init>([B)V

    .line 463
    invoke-virtual {v11, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 467
    iget-object v0, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->mContext:Landroid/content/Context;

    .line 468
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v9

    .line 469
    .local v9, "appPackageName":Ljava/lang/String;
    nop

    .line 471
    invoke-virtual/range {p1 .. p1}, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;->getService()Landroid/content/ComponentName;

    move-result-object v10

    new-instance v0, Landroid/adservices/ondevicepersonalization/CallerMetadata$Builder;

    invoke-direct {v0}, Landroid/adservices/ondevicepersonalization/CallerMetadata$Builder;-><init>()V

    .line 473
    invoke-virtual {v0, v6, v7}, Landroid/adservices/ondevicepersonalization/CallerMetadata$Builder;->setStartTimeMillis(J)Landroid/adservices/ondevicepersonalization/CallerMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/adservices/ondevicepersonalization/CallerMetadata$Builder;->build()Landroid/adservices/ondevicepersonalization/CallerMetadata;

    move-result-object v12

    .line 474
    invoke-virtual/range {p1 .. p1}, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;->getOutputSpec()Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$OutputSpec;

    move-result-object v0

    if-nez v0, :cond_67

    .line 475
    sget-object v0, Landroid/adservices/ondevicepersonalization/ExecuteOptionsParcel;->DEFAULT:Landroid/adservices/ondevicepersonalization/ExecuteOptionsParcel;

    move-object v13, v0

    goto :goto_71

    .line 476
    :cond_67
    new-instance v0, Landroid/adservices/ondevicepersonalization/ExecuteOptionsParcel;

    invoke-virtual/range {p1 .. p1}, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;->getOutputSpec()Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$OutputSpec;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/adservices/ondevicepersonalization/ExecuteOptionsParcel;-><init>(Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$OutputSpec;)V

    move-object v13, v0

    .line 469
    :goto_71
    invoke-interface/range {v8 .. v14}, Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;->execute(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/adservices/ondevicepersonalization/CallerMetadata;Landroid/adservices/ondevicepersonalization/ExecuteOptionsParcel;Landroid/adservices/ondevicepersonalization/aidl/IExecuteCallback;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_74} :catch_75

    .line 488
    .end local v9    # "appPackageName":Ljava/lang/String;
    .end local v11    # "wrappedParams":Landroid/os/Bundle;
    .end local v14    # "callbackWrapper":Landroid/adservices/ondevicepersonalization/aidl/IExecuteCallback;
    goto :goto_99

    .line 478
    :catch_75
    move-exception v0

    goto :goto_7d

    .end local v8    # "odpService":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    .restart local v5    # "odpService":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    :catch_77
    move-exception v0

    move-object v8, v5

    .end local v5    # "odpService":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    .restart local v8    # "odpService":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    goto :goto_7d

    :catch_7a
    move-exception v0

    move-object/from16 v4, p3

    .line 479
    .local v0, "e":Ljava/lang/Exception;
    :goto_7d
    nop

    .line 481
    :try_start_7e
    invoke-virtual/range {p1 .. p1}, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;->getService()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 483
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v11, v2, v6

    .line 479
    const/4 v10, 0x1

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x64

    invoke-static/range {v8 .. v17}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->logApiCallStats(Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;Ljava/lang/String;IJJJI)V

    .line 487
    invoke-interface {v4, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_99} :catch_9a

    .line 492
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "odpService":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    :goto_99
    goto :goto_a2

    .line 490
    :catch_9a
    move-exception v0

    goto :goto_9f

    :catch_9c
    move-exception v0

    move-object/from16 v4, p3

    .line 491
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_9f
    invoke-interface {v4, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 493
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a2
    return-void
.end method

.method public blacklist queryFeatureAvailability(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 21
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 658
    .local p3, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Integer;Ljava/lang/Exception;>;"
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    invoke-static/range {p3 .. p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 665
    .local v5, "startTimeMillis":J
    move-object/from16 v1, p0

    :try_start_f
    iget-object v0, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->mServiceBinder:Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;

    .line 666
    move-object/from16 v2, p2

    invoke-virtual {v0, v2}, Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;->getService(Ljava/util/concurrent/Executor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_20} :catch_5f

    .line 669
    .local v4, "service":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    :try_start_20
    new-instance v0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$4;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_22} :catch_40

    move-object/from16 v3, p3

    :try_start_24
    invoke-direct/range {v0 .. v6}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$4;-><init>(Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;J)V

    .line 693
    .local v0, "callbackWrapper":Landroid/adservices/ondevicepersonalization/aidl/IIsFeatureEnabledCallback;
    new-instance v1, Landroid/adservices/ondevicepersonalization/CallerMetadata$Builder;

    invoke-direct {v1}, Landroid/adservices/ondevicepersonalization/CallerMetadata$Builder;-><init>()V

    .line 695
    invoke-virtual {v1, v5, v6}, Landroid/adservices/ondevicepersonalization/CallerMetadata$Builder;->setStartTimeMillis(J)Landroid/adservices/ondevicepersonalization/CallerMetadata$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/adservices/ondevicepersonalization/CallerMetadata$Builder;->build()Landroid/adservices/ondevicepersonalization/CallerMetadata;

    move-result-object v1
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_34} :catch_3c

    .line 693
    move-object/from16 v2, p1

    :try_start_36
    invoke-interface {v4, v2, v1, v0}, Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;->isFeatureEnabled(Ljava/lang/String;Landroid/adservices/ondevicepersonalization/CallerMetadata;Landroid/adservices/ondevicepersonalization/aidl/IIsFeatureEnabledCallback;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_3a

    .line 707
    .end local v0    # "callbackWrapper":Landroid/adservices/ondevicepersonalization/aidl/IIsFeatureEnabledCallback;
    goto :goto_5c

    .line 697
    :catch_3a
    move-exception v0

    goto :goto_45

    :catch_3c
    move-exception v0

    move-object/from16 v2, p1

    goto :goto_45

    :catch_40
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    .line 698
    .local v0, "e":Ljava/lang/Exception;
    :goto_45
    :try_start_45
    const-string v8, ""

    .line 702
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long v10, v9, v5

    .line 698
    const/16 v9, 0x18

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x64

    move-object v7, v4

    .end local v4    # "service":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    .local v7, "service":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    invoke-static/range {v7 .. v16}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->logApiCallStats(Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;Ljava/lang/String;IJJJI)V

    .line 706
    .end local v7    # "service":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    .restart local v4    # "service":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    invoke-interface {v3, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_5c} :catch_5d

    .line 710
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "service":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    :goto_5c
    goto :goto_67

    .line 708
    :catch_5d
    move-exception v0

    goto :goto_64

    :catch_5f
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    .line 709
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_64
    invoke-interface {v3, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 711
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_67
    return-void
.end method

.method public whitelist requestSurfacePackage(Landroid/adservices/ondevicepersonalization/SurfacePackageToken;Landroid/os/IBinder;IIILjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 27
    .param p1, "surfacePackageToken"    # Landroid/adservices/ondevicepersonalization/SurfacePackageToken;
    .param p2, "surfaceViewHostToken"    # Landroid/os/IBinder;
    .param p3, "displayId"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/ondevicepersonalization/SurfacePackageToken;",
            "Landroid/os/IBinder;",
            "III",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/view/SurfaceControlViewHost$SurfacePackage;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 529
    .local p7, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/view/SurfaceControlViewHost$SurfacePackage;Ljava/lang/Exception;>;"
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    invoke-static/range {p6 .. p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    invoke-static/range {p7 .. p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    if-lez p4, :cond_a9

    .line 537
    if-lez p5, :cond_9f

    .line 541
    if-ltz p3, :cond_95

    .line 544
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 547
    .local v5, "startTimeMillis":J
    move-object/from16 v1, p0

    :try_start_18
    iget-object v0, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->mServiceBinder:Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;

    .line 548
    move-object/from16 v2, p6

    invoke-virtual {v0, v2}, Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;->getService(Ljava/util/concurrent/Executor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;

    move-object v7, v4

    .line 549
    .local v7, "service":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2e} :catch_8e

    move-wide/from16 v17, v3

    .line 552
    .local v17, "serviceInvokedTimeMillis":J
    :try_start_30
    new-instance v14, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$3;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_32} :catch_73

    move-object/from16 v3, p7

    move-object v4, v7

    move-object v0, v14

    .end local v7    # "service":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    .local v4, "service":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    :try_start_36
    invoke-direct/range {v0 .. v6}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$3;-><init>(Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;J)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_70

    .line 609
    .end local v4    # "service":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    .restart local v7    # "service":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    .local v14, "callbackWrapper":Landroid/adservices/ondevicepersonalization/aidl/IRequestSurfacePackageCallback;
    nop

    .line 610
    :try_start_3a
    invoke-virtual/range {p1 .. p1}, Landroid/adservices/ondevicepersonalization/SurfacePackageToken;->getTokenString()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Landroid/adservices/ondevicepersonalization/CallerMetadata$Builder;

    invoke-direct {v0}, Landroid/adservices/ondevicepersonalization/CallerMetadata$Builder;-><init>()V

    .line 615
    invoke-virtual {v0, v5, v6}, Landroid/adservices/ondevicepersonalization/CallerMetadata$Builder;->setStartTimeMillis(J)Landroid/adservices/ondevicepersonalization/CallerMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/adservices/ondevicepersonalization/CallerMetadata$Builder;->build()Landroid/adservices/ondevicepersonalization/CallerMetadata;

    move-result-object v13

    .line 609
    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-interface/range {v7 .. v14}, Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;->requestSurfacePackage(Ljava/lang/String;Landroid/os/IBinder;IIILandroid/adservices/ondevicepersonalization/CallerMetadata;Landroid/adservices/ondevicepersonalization/aidl/IRequestSurfacePackageCallback;)V

    move-object v0, v14

    .line 617
    .end local v14    # "callbackWrapper":Landroid/adservices/ondevicepersonalization/aidl/IRequestSurfacePackageCallback;
    .local v0, "callbackWrapper":Landroid/adservices/ondevicepersonalization/aidl/IRequestSurfacePackageCallback;
    const-string v8, ""

    .line 621
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long v10, v1, v5

    .line 622
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long v12, v1, v17

    .line 617
    const/4 v9, 0x2

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    invoke-static/range {v7 .. v16}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->logApiCallStats(Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;Ljava/lang/String;IJJJI)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_6d} :catch_6e

    .line 636
    .end local v0    # "callbackWrapper":Landroid/adservices/ondevicepersonalization/aidl/IRequestSurfacePackageCallback;
    goto :goto_8b

    .line 626
    :catch_6e
    move-exception v0

    goto :goto_76

    .end local v7    # "service":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    .restart local v4    # "service":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    :catch_70
    move-exception v0

    move-object v7, v4

    .end local v4    # "service":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    .restart local v7    # "service":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    goto :goto_76

    :catch_73
    move-exception v0

    move-object/from16 v3, p7

    .line 627
    .local v0, "e":Ljava/lang/Exception;
    :goto_76
    :try_start_76
    const-string v8, ""

    .line 631
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long v10, v1, v5

    .line 627
    const/4 v9, 0x2

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x64

    invoke-static/range {v7 .. v16}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->logApiCallStats(Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;Ljava/lang/String;IJJJI)V

    .line 635
    invoke-interface {v3, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_8b} :catch_8c

    .line 640
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "service":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    .end local v17    # "serviceInvokedTimeMillis":J
    :goto_8b
    goto :goto_94

    .line 638
    :catch_8c
    move-exception v0

    goto :goto_91

    :catch_8e
    move-exception v0

    move-object/from16 v3, p7

    .line 639
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_91
    invoke-interface {v3, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 641
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_94
    return-void

    .line 542
    .end local v5    # "startTimeMillis":J
    :cond_95
    move-object/from16 v3, p7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayId must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :cond_9f
    move-object/from16 v3, p7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 534
    :cond_a9
    move-object/from16 v3, p7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "width must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
