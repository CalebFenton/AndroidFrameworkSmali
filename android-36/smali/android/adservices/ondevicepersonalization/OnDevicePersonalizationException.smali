.class public Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationException;
.super Ljava/lang/Exception;
.source "OnDevicePersonalizationException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationException$ErrorCode;
    }
.end annotation


# static fields
.field public static final whitelist ERROR_INFERENCE_FAILED:I = 0x9

.field public static final whitelist ERROR_INFERENCE_MODEL_NOT_FOUND:I = 0x8

.field public static final whitelist ERROR_INVALID_TRAINING_MANIFEST:I = 0x7

.field public static final whitelist ERROR_ISOLATED_SERVICE_FAILED:I = 0x1

.field public static final whitelist ERROR_ISOLATED_SERVICE_LOADING_FAILED:I = 0x3

.field public static final whitelist ERROR_ISOLATED_SERVICE_MANIFEST_PARSING_FAILED:I = 0x4

.field public static final whitelist ERROR_ISOLATED_SERVICE_TIMEOUT:I = 0x5

.field public static final whitelist ERROR_PERSONALIZATION_DISABLED:I = 0x2

.field public static final whitelist ERROR_SCHEDULE_TRAINING_FAILED:I = 0x6

.field private static final blacklist VALID_ERROR_CODE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mErrorCode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 10

    .line 92
    nop

    .line 94
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 95
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 96
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 97
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 98
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 99
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 100
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 101
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 102
    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 93
    invoke-static/range {v1 .. v9}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationException;->VALID_ERROR_CODE:Ljava/util/Set;

    .line 92
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 2
    .param p1, "errorCode"    # I

    .line 124
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 125
    iput p1, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationException;->mErrorCode:I

    .line 126
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 131
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 132
    iput p1, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationException;->mErrorCode:I

    .line 133
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 145
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    iput p1, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationException;->mErrorCode:I

    .line 147
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/Throwable;)V
    .registers 3
    .param p1, "errorCode"    # I
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 138
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 139
    iput p1, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationException;->mErrorCode:I

    .line 140
    return-void
.end method

.method public static blacklist isValidErrorCode(I)Z
    .registers 3
    .param p0, "errorCode"    # I

    .line 158
    sget-object v0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationException;->VALID_ERROR_CODE:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public whitelist getErrorCode()I
    .registers 2

    .line 151
    iget v0, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationException;->mErrorCode:I

    return v0
.end method
