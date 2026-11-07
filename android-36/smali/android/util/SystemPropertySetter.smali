.class public Landroid/util/SystemPropertySetter;
.super Ljava/lang/Object;
.source "SystemPropertySetter.java"


# static fields
.field public static final blacklist PROPERTY_FAILURE_RETRY_DELAY_MILLIS:I = 0xc8

.field public static final blacklist PROPERTY_FAILURE_RETRY_LIMIT:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist setWithRetry(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;

    .line 56
    const/16 v0, 0xc8

    const-wide/16 v1, 0x5

    invoke-static {p0, p1, v0, v1, v2}, Landroid/util/SystemPropertySetter;->setWithRetry(Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 57
    return-void
.end method

.method public static blacklist setWithRetry(Ljava/lang/String;Ljava/lang/String;IJ)V
    .registers 9
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;
    .param p2, "maxRetry"    # I
    .param p3, "retryDelayMs"    # J

    .line 75
    if-ltz p2, :cond_36

    .line 78
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_1d

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "failure":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    .local v1, "attempt":I
    :goto_a
    if-ge v1, p2, :cond_1c

    .line 85
    :try_start_c
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_f} :catch_10

    .line 86
    return-void

    .line 87
    :catch_10
    move-exception v2

    .line 88
    .local v2, "e":Ljava/lang/RuntimeException;
    if-nez v0, :cond_14

    .line 89
    move-object v0, v2

    .line 92
    :cond_14
    :try_start_14
    invoke-static {p3, p4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_17} :catch_18

    .line 96
    goto :goto_19

    .line 93
    :catch_18
    move-exception v3

    .line 83
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 101
    .end local v1    # "attempt":I
    :cond_1c
    throw v0

    .line 79
    .end local v0    # "failure":Ljava/lang/RuntimeException;
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid retry delay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid retry count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
