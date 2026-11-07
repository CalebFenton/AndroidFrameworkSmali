.class public Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper;
.super Ljava/lang/Object;
.source "SubscriptionTerminatedHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper$TerminatedResult;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String;

.field private static final blacklist REASON_DEACTIVATED:Ljava/lang/String; = "deactivated"

.field private static final blacklist REASON_GIVEUP:Ljava/lang/String; = "giveup"

.field private static final blacklist REASON_NORESOURCE:Ljava/lang/String; = "noresource"

.field private static final blacklist REASON_PROBATION:Ljava/lang/String; = "probation"

.field private static final blacklist REASON_REJECTED:Ljava/lang/String; = "rejected"

.field private static final blacklist REASON_TIMEOUT:Ljava/lang/String; = "timeout"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/ims/rcs/uce/util/UceUtils;->getLogPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SubscriptionTerminated"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getAnalysisResult(Ljava/lang/String;JZ)Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper$TerminatedResult;
    .registers 11
    .param p0, "reason"    # Ljava/lang/String;
    .param p1, "retryAfterMillis"    # J
    .param p3, "allCapsHaveReceived"    # Z

    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "result":Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper$TerminatedResult;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    .line 104
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 91
    const-wide/16 v3, 0x0

    if-eqz v1, :cond_1e

    .line 95
    cmp-long v1, p1, v3

    if-lez v1, :cond_e9

    .line 96
    new-instance v1, Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper$TerminatedResult;

    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper$TerminatedResult;-><init>(Ljava/util/Optional;J)V

    move-object v0, v1

    goto/16 :goto_e9

    .line 99
    :cond_1e
    const-string v1, "deactivated"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 103
    invoke-static {p1, p2}, Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper;->getRequestRetryAfterMillis(J)J

    move-result-wide v5

    .line 104
    .local v5, "retry":J
    new-instance v1, Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper$TerminatedResult;

    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    invoke-direct {v1, v2, v5, v6}, Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper$TerminatedResult;-><init>(Ljava/util/Optional;J)V

    move-object v0, v1

    .line 105
    .end local v5    # "retry":J
    goto/16 :goto_e9

    :cond_36
    const-string v1, "probation"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 110
    invoke-static {p1, p2}, Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper;->getRequestRetryAfterMillis(J)J

    move-result-wide v5

    .line 111
    .restart local v5    # "retry":J
    new-instance v1, Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper$TerminatedResult;

    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    invoke-direct {v1, v2, v5, v6}, Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper$TerminatedResult;-><init>(Ljava/util/Optional;J)V

    move-object v0, v1

    .line 112
    .end local v5    # "retry":J
    goto/16 :goto_e9

    :cond_4e
    const-string v1, "rejected"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v5, 0x5

    if-eqz v1, :cond_67

    .line 117
    new-instance v1, Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper$TerminatedResult;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper$TerminatedResult;-><init>(Ljava/util/Optional;J)V

    move-object v0, v1

    goto/16 :goto_e9

    .line 118
    :cond_67
    const-string v1, "timeout"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 119
    cmp-long v1, p1, v3

    const/16 v2, 0x9

    if-lez v1, :cond_88

    .line 124
    invoke-static {p1, p2}, Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper;->getRequestRetryAfterMillis(J)J

    move-result-wide v5

    .line 125
    .restart local v5    # "retry":J
    new-instance v1, Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper$TerminatedResult;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    invoke-direct {v1, v2, v5, v6}, Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper$TerminatedResult;-><init>(Ljava/util/Optional;J)V

    move-object v0, v1

    .line 127
    .end local v5    # "retry":J
    goto :goto_e9

    :cond_88
    if-nez p3, :cond_99

    .line 133
    new-instance v1, Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper$TerminatedResult;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper$TerminatedResult;-><init>(Ljava/util/Optional;J)V

    move-object v0, v1

    goto :goto_e9

    .line 139
    :cond_99
    new-instance v1, Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper$TerminatedResult;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper$TerminatedResult;-><init>(Ljava/util/Optional;J)V

    move-object v0, v1

    goto :goto_e9

    .line 141
    :cond_a4
    const-string v1, "giveup"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 146
    invoke-static {p1, p2}, Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper;->getRequestRetryAfterMillis(J)J

    move-result-wide v1

    .line 147
    .local v1, "retry":J
    new-instance v6, Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper$TerminatedResult;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    invoke-direct {v6, v5, v1, v2}, Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper$TerminatedResult;-><init>(Ljava/util/Optional;J)V

    move-object v0, v6

    .line 148
    .end local v1    # "retry":J
    goto :goto_e9

    :cond_bf
    const-string v1, "noresource"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 153
    new-instance v1, Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper$TerminatedResult;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper$TerminatedResult;-><init>(Ljava/util/Optional;J)V

    move-object v0, v1

    goto :goto_e9

    .line 154
    :cond_d7
    cmp-long v1, p1, v3

    if-lez v1, :cond_e9

    .line 159
    invoke-static {p1, p2}, Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper;->getRequestRetryAfterMillis(J)J

    move-result-wide v5

    .line 160
    .restart local v5    # "retry":J
    new-instance v1, Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper$TerminatedResult;

    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    invoke-direct {v1, v2, v5, v6}, Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper$TerminatedResult;-><init>(Ljava/util/Optional;J)V

    move-object v0, v1

    .line 164
    .end local v5    # "retry":J
    :cond_e9
    :goto_e9
    if-nez v0, :cond_f5

    .line 165
    new-instance v1, Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper$TerminatedResult;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper$TerminatedResult;-><init>(Ljava/util/Optional;J)V

    move-object v0, v1

    .line 168
    :cond_f5
    sget-object v1, Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAnalysisResult: reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", retry="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", allCapsHaveReceived="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-object v0
.end method

.method private static blacklist getRequestRetryAfterMillis(J)J
    .registers 6
    .param p0, "retryAfterMillis"    # J

    .line 179
    invoke-static {}, Lcom/android/ims/rcs/uce/util/UceUtils;->getMinimumRequestRetryAfterMillis()J

    move-result-wide v0

    .line 180
    .local v0, "minRetryAfterMillis":J
    cmp-long v2, p0, v0

    if-gez v2, :cond_a

    move-wide v2, v0

    goto :goto_b

    :cond_a
    move-wide v2, p0

    :goto_b
    return-wide v2
.end method
