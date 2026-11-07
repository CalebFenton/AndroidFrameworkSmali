.class public Landroid/health/connect/HealthConnectException;
.super Ljava/lang/RuntimeException;
.source "HealthConnectException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/HealthConnectException$ErrorCode;
    }
.end annotation


# static fields
.field public static final whitelist ERROR_DATA_SYNC_IN_PROGRESS:I = 0x8

.field public static final whitelist ERROR_INTERNAL:I = 0x2

.field public static final whitelist ERROR_INVALID_ARGUMENT:I = 0x3

.field public static final whitelist ERROR_IO:I = 0x4

.field public static final whitelist ERROR_RATE_LIMIT_EXCEEDED:I = 0x7

.field public static final whitelist ERROR_REMOTE:I = 0x6

.field public static final whitelist ERROR_SECURITY:I = 0x5

.field public static final whitelist ERROR_UNKNOWN:I = 0x1

.field public static final whitelist ERROR_UNSUPPORTED_OPERATION:I = 0x9


# instance fields
.field private final blacklist mErrorCode:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 3
    .param p1, "errorCode"    # I

    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/health/connect/HealthConnectException;-><init>(ILjava/lang/String;)V

    .line 110
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 84
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 85
    iput p1, p0, Landroid/health/connect/HealthConnectException;->mErrorCode:I

    .line 86
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 98
    invoke-direct {p0, p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    iput p1, p0, Landroid/health/connect/HealthConnectException;->mErrorCode:I

    .line 100
    return-void
.end method


# virtual methods
.method public whitelist getErrorCode()I
    .registers 2

    .line 113
    iget v0, p0, Landroid/health/connect/HealthConnectException;->mErrorCode:I

    return v0
.end method
