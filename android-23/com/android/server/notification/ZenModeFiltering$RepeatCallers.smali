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

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 236
    new-instance v0, Landroid/util/ArrayMap;

    #@5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mCalls:Landroid/util/ArrayMap;

    #@a
    .line 235
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

.method private declared-synchronized isRepeat(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 240
    :try_start_0
    iget v8, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    #@4
    if-gtz v8, :cond_0

    #@6
    .line 241
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@9
    move-result-object v8

    #@a
    const v9, 0x10e0090

    #@d
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    #@10
    move-result v8

    #@11
    iput v8, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    #@13
    .line 244
    :cond_0
    iget v8, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    if-lez v8, :cond_1

    #@17
    if-nez p2, :cond_2

    #@19
    :cond_1
    monitor-exit p0

    #@1a
    return v10

    #@1b
    .line 245
    :cond_2
    :try_start_1
    invoke-static {p2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->peopleString(Landroid/os/Bundle;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    move-result-object v3

    #@1f
    .line 246
    .local v3, "peopleString":Ljava/lang/String;
    if-nez v3, :cond_3

    #@21
    monitor-exit p0

    #@22
    return v10

    #@23
    .line 247
    :cond_3
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@26
    move-result-wide v4

    #@27
    .line 248
    .local v4, "now":J
    iget-object v8, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mCalls:Landroid/util/ArrayMap;

    #@29
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    #@2c
    move-result v0

    #@2d
    .line 249
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    #@2f
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_6

    #@31
    .line 250
    iget-object v8, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mCalls:Landroid/util/ArrayMap;

    #@33
    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@36
    move-result-object v8

    #@37
    check-cast v8, Ljava/lang/Long;

    #@39
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    #@3c
    move-result-wide v6

    #@3d
    .line 251
    .local v6, "time":J
    cmp-long v8, v6, v4

    #@3f
    if-gtz v8, :cond_4

    #@41
    sub-long v8, v4, v6

    #@43
    iget v10, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    #@45
    mul-int/lit16 v10, v10, 0x3e8

    #@47
    mul-int/lit8 v10, v10, 0x3c

    #@49
    int-to-long v10, v10

    #@4a
    cmp-long v8, v8, v10

    #@4c
    if-lez v8, :cond_5

    #@4e
    .line 252
    :cond_4
    iget-object v8, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mCalls:Landroid/util/ArrayMap;

    #@50
    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@53
    .line 249
    :cond_5
    add-int/lit8 v1, v1, -0x1

    #@55
    goto :goto_0

    #@56
    .line 255
    .end local v6    # "time":J
    :cond_6
    iget-object v8, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mCalls:Landroid/util/ArrayMap;

    #@58
    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@5b
    move-result v2

    #@5c
    .line 256
    .local v2, "isRepeat":Z
    iget-object v8, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mCalls:Landroid/util/ArrayMap;

    #@5e
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@61
    move-result-object v9

    #@62
    invoke-virtual {v8, v3, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@65
    monitor-exit p0

    #@66
    .line 257
    return v2

    #@67
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "isRepeat":Z
    .end local v3    # "peopleString":Ljava/lang/String;
    .end local v4    # "now":J
    :catchall_0
    move-exception v8

    #@68
    monitor-exit p0

    #@69
    throw v8
.end method

.method private static peopleString(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 6
    .param p0, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 261
    invoke-static {p0}, Lcom/android/server/notification/ValidateNotificationPeople;->getExtraPeople(Landroid/os/Bundle;)[Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 262
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
    .line 263
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    .line 264
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    #@11
    .local v2, "i":I
    :goto_0
    array-length v5, v0

    #@12
    if-ge v2, v5, :cond_5

    #@14
    .line 265
    aget-object v1, v0, v2

    #@16
    .line 266
    .local v1, "extraPerson":Ljava/lang/String;
    if-nez v1, :cond_3

    #@18
    .line 264
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 267
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 268
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@22
    move-result v5

    #@23
    if-nez v5, :cond_2

    #@25
    .line 269
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@28
    move-result v5

    #@29
    if-lez v5, :cond_4

    #@2b
    .line 270
    const/16 v5, 0x7c

    #@2d
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@30
    .line 272
    :cond_4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    goto :goto_1

    #@34
    .line 274
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
