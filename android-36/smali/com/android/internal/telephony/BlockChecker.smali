.class public Lcom/android/internal/telephony/BlockChecker;
.super Ljava/lang/Object;
.source "BlockChecker.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getBlockStatus(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 7

    .line 67
    const-string v0, "BlockChecker"

    .line 68
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 71
    :try_start_6
    invoke-static {p0, p1, p2}, Landroid/provider/BlockedNumberContract$SystemContract;->shouldSystemBlockNumber(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_a} :catch_23

    if-eqz p0, :cond_39

    .line 74
    :try_start_c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is blocked."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_20} :catch_21

    goto :goto_39

    :catch_21
    move-exception p1

    goto :goto_25

    :catch_23
    move-exception p1

    const/4 p0, 0x0

    .line 77
    :goto_25
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception checking for blocked number: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_39
    :goto_39
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    sub-long/2addr p1, v1

    const-wide/32 v1, 0xf4240

    div-long/2addr p1, v1

    long-to-int p1, p1

    const/16 p2, 0x1f4

    if-gt p1, p2, :cond_48

    goto :goto_61

    .line 81
    :cond_48
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Blocked number lookup took: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ms."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_61
    return p0
.end method

.method public static blacklist isBlocked(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 30
    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/BlockChecker;->isBlocked(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public static blacklist isBlocked(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 3

    .line 45
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/BlockChecker;->getBlockStatus(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method
