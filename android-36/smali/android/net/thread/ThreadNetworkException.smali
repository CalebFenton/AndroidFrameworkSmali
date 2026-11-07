.class public Landroid/net/thread/ThreadNetworkException;
.super Ljava/lang/Exception;
.source "ThreadNetworkException.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/thread/ThreadNetworkException$ErrorCode;
    }
.end annotation


# static fields
.field public static final whitelist ERROR_ABORTED:I = 0x2

.field public static final whitelist ERROR_BUSY:I = 0x5

.field public static final whitelist ERROR_FAILED_PRECONDITION:I = 0x6

.field public static final whitelist ERROR_INTERNAL_ERROR:I = 0x1

.field private static final blacklist ERROR_MAX:I = 0xd

.field private static final blacklist ERROR_MIN:I = 0x1

.field public static final whitelist ERROR_REJECTED_BY_PEER:I = 0x8

.field public static final whitelist ERROR_RESOURCE_EXHAUSTED:I = 0xa

.field public static final whitelist ERROR_RESPONSE_BAD_FORMAT:I = 0x9

.field public static final whitelist ERROR_THREAD_DISABLED:I = 0xc

.field public static final whitelist ERROR_TIMEOUT:I = 0x3

.field public static final whitelist ERROR_UNAVAILABLE:I = 0x4

.field public static final whitelist ERROR_UNKNOWN:I = 0xb

.field public static final whitelist ERROR_UNSUPPORTED_CHANNEL:I = 0x7

.field public static final whitelist ERROR_UNSUPPORTED_FEATURE:I = 0xd


# instance fields
.field private final blacklist mErrorCode:I


# direct methods
.method public constructor whitelist <init>(ILjava/lang/String;)V
    .registers 8
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 162
    const-string v0, "message cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 163
    const/16 v0, 0xd

    const/4 v1, 0x1

    if-lt p1, v1, :cond_15

    if-gt p1, v0, :cond_15

    .line 173
    iput p1, p0, Landroid/net/thread/ThreadNetworkException;->mErrorCode:I

    .line 174
    return-void

    .line 164
    :cond_15
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "errorCode cannot be "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (allowedRange = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public whitelist getErrorCode()I
    .registers 2

    .line 178
    iget v0, p0, Landroid/net/thread/ThreadNetworkException;->mErrorCode:I

    return v0
.end method
