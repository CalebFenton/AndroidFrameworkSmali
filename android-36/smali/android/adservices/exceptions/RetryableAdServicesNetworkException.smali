.class public Landroid/adservices/exceptions/RetryableAdServicesNetworkException;
.super Landroid/adservices/exceptions/AdServicesNetworkException;
.source "RetryableAdServicesNetworkException.java"


# static fields
.field public static final blacklist DEFAULT_RETRY_AFTER_VALUE:Ljava/time/Duration;

.field public static final blacklist INVALID_RETRY_AFTER_MESSAGE:Ljava/lang/String; = "Retry-after time duration must be strictly greater than zero."

.field public static final blacklist UNSET_RETRY_AFTER_VALUE:Ljava/time/Duration;


# instance fields
.field private blacklist mRetryAfter:Ljava/time/Duration;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 36
    sget-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    sput-object v0, Landroid/adservices/exceptions/RetryableAdServicesNetworkException;->UNSET_RETRY_AFTER_VALUE:Ljava/time/Duration;

    .line 39
    const-wide/16 v0, 0x7530

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Landroid/adservices/exceptions/RetryableAdServicesNetworkException;->DEFAULT_RETRY_AFTER_VALUE:Ljava/time/Duration;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/time/Duration;)V
    .registers 5
    .param p1, "errorCode"    # I
    .param p2, "retryAfter"    # Ljava/time/Duration;

    .line 57
    invoke-direct {p0, p1}, Landroid/adservices/exceptions/AdServicesNetworkException;-><init>(I)V

    .line 59
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Landroid/adservices/exceptions/RetryableAdServicesNetworkException;->UNSET_RETRY_AFTER_VALUE:Ljava/time/Duration;

    .line 61
    invoke-virtual {p2, v0}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v0

    if-lez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 60
    :goto_11
    const-string v1, "Retry-after time duration must be strictly greater than zero."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 63
    iput-object p2, p0, Landroid/adservices/exceptions/RetryableAdServicesNetworkException;->mRetryAfter:Ljava/time/Duration;

    .line 64
    return-void
.end method


# virtual methods
.method public blacklist getRetryAfter()Ljava/time/Duration;
    .registers 2

    .line 86
    iget-object v0, p0, Landroid/adservices/exceptions/RetryableAdServicesNetworkException;->mRetryAfter:Ljava/time/Duration;

    return-object v0
.end method

.method public blacklist setRetryAfterToValidDuration(JJ)V
    .registers 7
    .param p1, "defaultDuration"    # J
    .param p3, "maxDuration"    # J

    .line 75
    iget-object v0, p0, Landroid/adservices/exceptions/RetryableAdServicesNetworkException;->mRetryAfter:Ljava/time/Duration;

    .line 77
    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 76
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/exceptions/RetryableAdServicesNetworkException;->mRetryAfter:Ljava/time/Duration;

    .line 78
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 94
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-virtual {p0}, Landroid/adservices/exceptions/RetryableAdServicesNetworkException;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 99
    invoke-virtual {p0}, Landroid/adservices/exceptions/RetryableAdServicesNetworkException;->getRetryAfter()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Duration;->toMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 94
    const-string v2, "%s: {Error code: %s, Retry after: %sms}"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
