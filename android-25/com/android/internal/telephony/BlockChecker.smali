.class public Lcom/android/internal/telephony/BlockChecker;
.super Ljava/lang/Object;
.source "BlockChecker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BlockChecker"

.field private static final VDBG:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static isBlocked(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    #@0
    .prologue
    .line 21
    const/4 v2, 0x0

    #@1
    .line 22
    .local v2, "isBlocked":Z
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@4
    move-result-wide v4

    #@5
    .line 25
    .local v4, "startTimeNano":J
    :try_start_0
    invoke-static {p0, p1}, Landroid/provider/BlockedNumberContract$SystemContract;->shouldSystemBlockNumber(Landroid/content/Context;Ljava/lang/String;)Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 27
    const-string/jumbo v3, "BlockChecker"

    #@e
    new-instance v6, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v6

    #@17
    const-string/jumbo v7, " is blocked."

    #@1a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v6

    #@1e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v6

    #@22
    invoke-static {v3, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 28
    const/4 v2, 0x1

    #@26
    .line 34
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@29
    move-result-wide v6

    #@2a
    sub-long/2addr v6, v4

    #@2b
    const-wide/32 v8, 0xf4240

    #@2e
    div-long/2addr v6, v8

    #@2f
    long-to-int v0, v6

    #@30
    .line 35
    .local v0, "durationMillis":I
    const/16 v3, 0x1f4

    #@32
    if-gt v0, v3, :cond_1

    #@34
    .line 38
    :goto_1
    return v2

    #@35
    .line 30
    .end local v0    # "durationMillis":I
    :catch_0
    move-exception v1

    #@36
    .line 31
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BlockChecker"

    #@39
    new-instance v6, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v7, "Exception checking for blocked number: "

    #@41
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v6

    #@45
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v6

    #@49
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v6

    #@4d
    invoke-static {v3, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    goto :goto_0

    #@51
    .line 36
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "durationMillis":I
    :cond_1
    const-string/jumbo v3, "BlockChecker"

    #@54
    new-instance v6, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v7, "Blocked number lookup took: "

    #@5c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v6

    #@60
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63
    move-result-object v6

    #@64
    const-string/jumbo v7, " ms."

    #@67
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v6

    #@6b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v6

    #@6f
    invoke-static {v3, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@72
    goto :goto_1
.end method
