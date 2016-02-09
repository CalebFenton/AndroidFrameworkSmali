.class public Lcom/android/org/conscrypt/PinFailureLogger;
.super Ljava/lang/Object;
.source "PinFailureLogger.java"


# static fields
.field private static final LOG_INTERVAL_NANOS:J = 0x30b8a000L

.field private static lastLoggedNanos:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 29
    const-wide/16 v0, 0x0

    #@2
    sput-wide v0, Lcom/android/org/conscrypt/PinFailureLogger;->lastLoggedNanos:J

    #@4
    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static declared-synchronized log(Ljava/lang/String;ZZLjava/util/List;)V
    .locals 4
    .param p0, "cn"    # Ljava/lang/String;
    .param p1, "chainContainsUserCert"    # Z
    .param p2, "pinIsEnforcing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p3, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const-class v1, Lcom/android/org/conscrypt/PinFailureLogger;

    #@2
    monitor-enter v1

    #@3
    .line 35
    :try_start_0
    invoke-static {}, Lcom/android/org/conscrypt/PinFailureLogger;->timeToLog()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    monitor-exit v1

    #@a
    .line 36
    return-void

    #@b
    .line 39
    :cond_0
    :try_start_1
    invoke-static {p0, p1, p2, p3}, Lcom/android/org/conscrypt/PinFailureLogger;->writeToLog(Ljava/lang/String;ZZLjava/util/List;)V

    #@e
    .line 41
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@11
    move-result-wide v2

    #@12
    sput-wide v2, Lcom/android/org/conscrypt/PinFailureLogger;->lastLoggedNanos:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    monitor-exit v1

    #@15
    .line 33
    return-void

    #@16
    :catchall_0
    move-exception v0

    #@17
    monitor-exit v1

    #@18
    throw v0
.end method

.method protected static timeToLog()Z
    .locals 6

    #@0
    .prologue
    .line 66
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@3
    move-result-wide v0

    #@4
    .line 67
    .local v0, "currentTimeNanos":J
    sget-wide v2, Lcom/android/org/conscrypt/PinFailureLogger;->lastLoggedNanos:J

    #@6
    sub-long v2, v0, v2

    #@8
    const-wide/32 v4, 0x30b8a000

    #@b
    cmp-long v2, v2, v4

    #@d
    if-lez v2, :cond_0

    #@f
    const/4 v2, 0x1

    #@10
    :goto_0
    return v2

    #@11
    :cond_0
    const/4 v2, 0x0

    #@12
    goto :goto_0
.end method

.method protected static declared-synchronized writeToLog(Ljava/lang/String;ZZLjava/util/List;)V
    .locals 7
    .param p0, "cn"    # Ljava/lang/String;
    .param p1, "chainContainsUserCert"    # Z
    .param p2, "pinIsEnforcing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p3, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const-class v5, Lcom/android/org/conscrypt/PinFailureLogger;

    #@2
    monitor-enter v5

    #@3
    .line 47
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    .line 48
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 49
    const-string/jumbo v4, "|"

    #@e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 50
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@14
    .line 51
    const-string/jumbo v4, "|"

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 52
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1d
    .line 53
    const-string/jumbo v4, "|"

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 54
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@26
    move-result-object v1

    #@27
    .local v1, "cert$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2a
    move-result v4

    #@2b
    if-eqz v4, :cond_0

    #@2d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    .line 56
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    :try_start_1
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    #@36
    move-result-object v4

    #@37
    invoke-static {v4}, Llibcore/io/Base64;->encode([B)Ljava/lang/String;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    .line 60
    :goto_1
    :try_start_2
    const-string/jumbo v4, "|"

    #@41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@44
    goto :goto_0

    #@45
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "cert$iterator":Ljava/util/Iterator;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v4

    #@46
    monitor-exit v5

    #@47
    throw v4

    #@48
    .line 57
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v1    # "cert$iterator":Ljava/util/Iterator;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    #@49
    .line 58
    .local v2, "e":Ljava/security/cert/CertificateEncodingException;
    :try_start_3
    const-string/jumbo v4, "Error: could not encode certificate"

    #@4c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    goto :goto_1

    #@50
    .line 62
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_0
    const-string/jumbo v4, "exp_det_cert_pin_failure"

    #@53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v6

    #@57
    invoke-static {v4, v6}, Llibcore/io/DropBox;->addText(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@5a
    monitor-exit v5

    #@5b
    .line 46
    return-void
.end method
