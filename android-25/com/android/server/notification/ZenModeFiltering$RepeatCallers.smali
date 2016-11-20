.class Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;
.super Ljava/lang/Object;
.source "ZenModeFiltering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeFiltering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RepeatCallers"
.end annotation


# instance fields
.field private final mCalls:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mThresholdMinutes:I


# direct methods
.method static synthetic -get0(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)Landroid/util/ArrayMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mCalls:Landroid/util/ArrayMap;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    #@2
    return v0
.end method

.method static synthetic -wrap0(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->isRepeat(Landroid/content/Context;Landroid/os/Bundle;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->recordCall(Landroid/content/Context;Landroid/os/Bundle;)V

    #@3
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 243
    new-instance v0, Landroid/util/ArrayMap;

    #@5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mCalls:Landroid/util/ArrayMap;

    #@a
    .line 241
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;-><init>()V

    #@3
    return-void
.end method

.method private declared-synchronized cleanUp(Landroid/util/ArrayMap;J)V
    .locals 8
    .param p2, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "calls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    monitor-enter p0

    #@1
    .line 267
    :try_start_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    #@4
    move-result v0

    #@5
    .line 268
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    #@7
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    #@9
    .line 269
    iget-object v4, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mCalls:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@e
    move-result-object v4

    #@f
    check-cast v4, Ljava/lang/Long;

    #@11
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    #@14
    move-result-wide v2

    #@15
    .line 270
    .local v2, "time":J
    cmp-long v4, v2, p2

    #@17
    if-gtz v4, :cond_0

    #@19
    sub-long v4, p2, v2

    #@1b
    iget v6, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    #@1d
    mul-int/lit16 v6, v6, 0x3e8

    #@1f
    mul-int/lit8 v6, v6, 0x3c

    #@21
    int-to-long v6, v6

    #@22
    cmp-long v4, v4, v6

    #@24
    if-lez v4, :cond_1

    #@26
    .line 271
    :cond_0
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 268
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@2b
    goto :goto_0

    #@2c
    .end local v2    # "time":J
    :cond_2
    monitor-exit p0

    #@2d
    .line 266
    return-void

    #@2e
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v4

    #@2f
    monitor-exit p0

    #@30
    throw v4
.end method

.method private declared-synchronized isRepeat(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 257
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->setThresholdMinutes(Landroid/content/Context;)V

    #@5
    .line 258
    iget v3, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    if-lez v3, :cond_0

    #@9
    if-nez p2, :cond_1

    #@b
    :cond_0
    monitor-exit p0

    #@c
    return v4

    #@d
    .line 259
    :cond_1
    :try_start_1
    invoke-static {p2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->peopleString(Landroid/os/Bundle;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    move-result-object v2

    #@11
    .line 260
    .local v2, "peopleString":Ljava/lang/String;
    if-nez v2, :cond_2

    #@13
    monitor-exit p0

    #@14
    return v4

    #@15
    .line 261
    :cond_2
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@18
    move-result-wide v0

    #@19
    .line 262
    .local v0, "now":J
    iget-object v3, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mCalls:Landroid/util/ArrayMap;

    #@1b
    invoke-direct {p0, v3, v0, v1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->cleanUp(Landroid/util/ArrayMap;J)V

    #@1e
    .line 263
    iget-object v3, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mCalls:Landroid/util/ArrayMap;

    #@20
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@23
    move-result v3

    #@24
    monitor-exit p0

    #@25
    return v3

    #@26
    .end local v0    # "now":J
    .end local v2    # "peopleString":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@27
    monitor-exit p0

    #@28
    throw v3
.end method

.method private static peopleString(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 6
    .param p0, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 284
    invoke-static {p0}, Lcom/android/server/notification/ValidateNotificationPeople;->getExtraPeople(Landroid/os/Bundle;)[Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 285
    .local v0, "extraPeople":[Ljava/lang/String;
    if-eqz v0, :cond_0

    #@7
    array-length v5, v0

    #@8
    if-nez v5, :cond_1

    #@a
    :cond_0
    return-object v4

    #@b
    .line 286
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    .line 287
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    #@11
    .local v2, "i":I
    :goto_0
    array-length v5, v0

    #@12
    if-ge v2, v5, :cond_5

    #@14
    .line 288
    aget-object v1, v0, v2

    #@16
    .line 289
    .local v1, "extraPerson":Ljava/lang/String;
    if-nez v1, :cond_3

    #@18
    .line 287
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 290
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 291
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@22
    move-result v5

    #@23
    if-nez v5, :cond_2

    #@25
    .line 292
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@28
    move-result v5

    #@29
    if-lez v5, :cond_4

    #@2b
    .line 293
    const/16 v5, 0x7c

    #@2d
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@30
    .line 295
    :cond_4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    goto :goto_1

    #@34
    .line 297
    .end local v1    # "extraPerson":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@37
    move-result v5

    #@38
    if-nez v5, :cond_6

    #@3a
    :goto_2
    return-object v4

    #@3b
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v4

    #@3f
    goto :goto_2
.end method

.method private declared-synchronized recordCall(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 247
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->setThresholdMinutes(Landroid/content/Context;)V

    #@4
    .line 248
    iget v3, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-lez v3, :cond_0

    #@8
    if-nez p2, :cond_1

    #@a
    :cond_0
    monitor-exit p0

    #@b
    return-void

    #@c
    .line 249
    :cond_1
    :try_start_1
    invoke-static {p2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->peopleString(Landroid/os/Bundle;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    move-result-object v2

    #@10
    .line 250
    .local v2, "peopleString":Ljava/lang/String;
    if-nez v2, :cond_2

    #@12
    monitor-exit p0

    #@13
    return-void

    #@14
    .line 251
    :cond_2
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@17
    move-result-wide v0

    #@18
    .line 252
    .local v0, "now":J
    iget-object v3, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mCalls:Landroid/util/ArrayMap;

    #@1a
    invoke-direct {p0, v3, v0, v1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->cleanUp(Landroid/util/ArrayMap;J)V

    #@1d
    .line 253
    iget-object v3, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mCalls:Landroid/util/ArrayMap;

    #@1f
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@26
    monitor-exit p0

    #@27
    .line 246
    return-void

    #@28
    .end local v0    # "now":J
    .end local v2    # "peopleString":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@29
    monitor-exit p0

    #@2a
    throw v3
.end method

.method private setThresholdMinutes(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 277
    iget v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    #@2
    if-gtz v0, :cond_0

    #@4
    .line 278
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    const v1, 0x10e0098

    #@b
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@e
    move-result v0

    #@f
    iput v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    #@11
    .line 276
    :cond_0
    return-void
.end method
