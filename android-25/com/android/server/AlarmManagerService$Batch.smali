.class final Lcom/android/server/AlarmManagerService$Batch;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Batch"
.end annotation


# instance fields
.field final alarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field end:J

.field flags:I

.field start:J

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;

    #@0
    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 368
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@c
    .line 371
    const-wide/16 v0, 0x0

    #@e
    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    #@10
    .line 372
    const-wide v0, 0x7fffffffffffffffL

    #@15
    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    #@17
    .line 373
    const/4 v0, 0x0

    #@18
    iput v0, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    #@1a
    .line 370
    return-void
.end method

.method constructor <init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;
    .param p2, "seed"    # Lcom/android/server/AlarmManagerService$Alarm;

    #@0
    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 368
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@c
    .line 377
    iget-wide v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@e
    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    #@10
    .line 378
    iget-wide v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    #@12
    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    #@14
    .line 379
    iget v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    #@16
    iput v0, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    #@18
    .line 380
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1d
    .line 376
    return-void
.end method


# virtual methods
.method add(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 6
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    #@0
    .prologue
    .line 396
    const/4 v1, 0x0

    #@1
    .line 398
    .local v1, "newStart":Z
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@3
    sget-object v3, Lcom/android/server/AlarmManagerService;->sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    #@5
    invoke-static {v2, p1, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    #@8
    move-result v0

    #@9
    .line 399
    .local v0, "index":I
    if-gez v0, :cond_0

    #@b
    .line 400
    rsub-int/lit8 v2, v0, 0x0

    #@d
    add-int/lit8 v0, v2, -0x1

    #@f
    .line 402
    :cond_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@14
    .line 406
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@16
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    #@18
    cmp-long v2, v2, v4

    #@1a
    if-lez v2, :cond_1

    #@1c
    .line 407
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@1e
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    #@20
    .line 408
    const/4 v1, 0x1

    #@21
    .line 410
    :cond_1
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    #@23
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    #@25
    cmp-long v2, v2, v4

    #@27
    if-gez v2, :cond_2

    #@29
    .line 411
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    #@2b
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    #@2d
    .line 413
    :cond_2
    iget v2, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    #@2f
    iget v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    #@31
    or-int/2addr v2, v3

    #@32
    iput v2, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    #@34
    .line 418
    return v1
.end method

.method canHold(JJ)Z
    .locals 5
    .param p1, "whenElapsed"    # J
    .param p3, "maxWhen"    # J

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 392
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    #@3
    cmp-long v1, v2, p1

    #@5
    if-ltz v1, :cond_0

    #@7
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    #@9
    cmp-long v1, v2, p3

    #@b
    if-gtz v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method get(I)Lcom/android/server/AlarmManagerService$Alarm;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    #@8
    return-object v0
.end method

.method hasPackage(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 567
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 568
    .local v0, "N":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@9
    .line 569
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    #@11
    .line 570
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v1, p1}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_0

    #@17
    .line 571
    const/4 v3, 0x1

    #@18
    return v3

    #@19
    .line 568
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 574
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_1
    const/4 v3, 0x0

    #@1d
    return v3
.end method

.method hasWakeups()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 578
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v0

    #@7
    .line 579
    .local v0, "N":I
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@a
    .line 580
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    #@12
    .line 582
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    #@14
    and-int/lit8 v3, v3, 0x1

    #@16
    if-nez v3, :cond_0

    #@18
    .line 583
    const/4 v3, 0x1

    #@19
    return v3

    #@1a
    .line 579
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 586
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_1
    return v4
.end method

.method remove(I)Z
    .locals 10
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 537
    const/4 v1, 0x0

    #@1
    .line 538
    .local v1, "didRemove":Z
    const-wide/16 v6, 0x0

    #@3
    .line 539
    .local v6, "newStart":J
    const-wide v4, 0x7fffffffffffffffL

    #@8
    .line 540
    .local v4, "newEnd":J
    const/4 v2, 0x0

    #@9
    .local v2, "i":I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v3

    #@f
    if-ge v2, v3, :cond_4

    #@11
    .line 541
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    #@19
    .line 542
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    #@1b
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    #@1e
    move-result v3

    #@1f
    if-ne v3, p1, :cond_1

    #@21
    .line 543
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@26
    .line 544
    const/4 v1, 0x1

    #@27
    .line 545
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    #@29
    if-eqz v3, :cond_0

    #@2b
    .line 546
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    #@2d
    const/4 v8, 0x1

    #@2e
    invoke-static {v3, v8}, Lcom/android/server/AlarmManagerService;->-set1(Lcom/android/server/AlarmManagerService;Z)Z

    #@31
    goto :goto_0

    #@32
    .line 549
    :cond_1
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@34
    cmp-long v3, v8, v6

    #@36
    if-lez v3, :cond_2

    #@38
    .line 550
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@3a
    .line 552
    :cond_2
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    #@3c
    cmp-long v3, v8, v4

    #@3e
    if-gez v3, :cond_3

    #@40
    .line 553
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    #@42
    .line 555
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@44
    goto :goto_0

    #@45
    .line 558
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_4
    if-eqz v1, :cond_5

    #@47
    .line 560
    iput-wide v6, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    #@49
    .line 561
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    #@4b
    .line 563
    :cond_5
    return v1
.end method

.method remove(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z
    .locals 10
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "listener"    # Landroid/app/IAlarmListener;

    #@0
    .prologue
    .line 422
    if-nez p1, :cond_0

    #@2
    if-nez p2, :cond_0

    #@4
    .line 427
    const/4 v8, 0x0

    #@5
    return v8

    #@6
    .line 429
    :cond_0
    const/4 v1, 0x0

    #@7
    .line 430
    .local v1, "didRemove":Z
    const-wide/16 v6, 0x0

    #@9
    .line 431
    .local v6, "newStart":J
    const-wide v4, 0x7fffffffffffffffL

    #@e
    .line 432
    .local v4, "newEnd":J
    const/4 v3, 0x0

    #@f
    .line 433
    .local v3, "newFlags":I
    const/4 v2, 0x0

    #@10
    .local v2, "i":I
    :cond_1
    :goto_0
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@15
    move-result v8

    #@16
    if-ge v2, v8, :cond_5

    #@18
    .line 434
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    #@20
    .line 435
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v0, p1, p2}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    #@23
    move-result v8

    #@24
    if-eqz v8, :cond_2

    #@26
    .line 436
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@2b
    .line 437
    const/4 v1, 0x1

    #@2c
    .line 438
    iget-object v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    #@2e
    if-eqz v8, :cond_1

    #@30
    .line 439
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    #@32
    const/4 v9, 0x1

    #@33
    invoke-static {v8, v9}, Lcom/android/server/AlarmManagerService;->-set1(Lcom/android/server/AlarmManagerService;Z)Z

    #@36
    goto :goto_0

    #@37
    .line 442
    :cond_2
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@39
    cmp-long v8, v8, v6

    #@3b
    if-lez v8, :cond_3

    #@3d
    .line 443
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@3f
    .line 445
    :cond_3
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    #@41
    cmp-long v8, v8, v4

    #@43
    if-gez v8, :cond_4

    #@45
    .line 446
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    #@47
    .line 448
    :cond_4
    iget v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    #@49
    or-int/2addr v3, v8

    #@4a
    .line 449
    add-int/lit8 v2, v2, 0x1

    #@4c
    goto :goto_0

    #@4d
    .line 452
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_5
    if-eqz v1, :cond_6

    #@4f
    .line 454
    iput-wide v6, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    #@51
    .line 455
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    #@53
    .line 456
    iput v3, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    #@55
    .line 458
    :cond_6
    return v1
.end method

.method remove(Ljava/lang/String;)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 462
    if-nez p1, :cond_0

    #@3
    .line 467
    return v8

    #@4
    .line 469
    :cond_0
    const/4 v1, 0x0

    #@5
    .line 470
    .local v1, "didRemove":Z
    const-wide/16 v6, 0x0

    #@7
    .line 471
    .local v6, "newStart":J
    const-wide v4, 0x7fffffffffffffffL

    #@c
    .line 472
    .local v4, "newEnd":J
    const/4 v3, 0x0

    #@d
    .line 473
    .local v3, "newFlags":I
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@12
    move-result v8

    #@13
    add-int/lit8 v2, v8, -0x1

    #@15
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_5

    #@17
    .line 474
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    #@1f
    .line 475
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    #@22
    move-result v8

    #@23
    if-eqz v8, :cond_2

    #@25
    .line 476
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@2a
    .line 477
    const/4 v1, 0x1

    #@2b
    .line 478
    iget-object v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    #@2d
    if-eqz v8, :cond_1

    #@2f
    .line 479
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    #@31
    const/4 v9, 0x1

    #@32
    invoke-static {v8, v9}, Lcom/android/server/AlarmManagerService;->-set1(Lcom/android/server/AlarmManagerService;Z)Z

    #@35
    .line 473
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    #@37
    goto :goto_0

    #@38
    .line 482
    :cond_2
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@3a
    cmp-long v8, v8, v6

    #@3c
    if-lez v8, :cond_3

    #@3e
    .line 483
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@40
    .line 485
    :cond_3
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    #@42
    cmp-long v8, v8, v4

    #@44
    if-gez v8, :cond_4

    #@46
    .line 486
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    #@48
    .line 488
    :cond_4
    iget v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    #@4a
    or-int/2addr v3, v8

    #@4b
    goto :goto_1

    #@4c
    .line 491
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_5
    if-eqz v1, :cond_6

    #@4e
    .line 493
    iput-wide v6, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    #@50
    .line 494
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    #@52
    .line 495
    iput v3, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    #@54
    .line 497
    :cond_6
    return v1
.end method

.method removeForStopped(I)Z
    .locals 12
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 501
    const/4 v1, 0x0

    #@1
    .line 502
    .local v1, "didRemove":Z
    const-wide/16 v8, 0x0

    #@3
    .line 503
    .local v8, "newStart":J
    const-wide v4, 0x7fffffffffffffffL

    #@8
    .line 504
    .local v4, "newEnd":J
    const/4 v6, 0x0

    #@9
    .line 505
    .local v6, "newFlags":I
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v7

    #@f
    add-int/lit8 v3, v7, -0x1

    #@11
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_4

    #@13
    .line 506
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    #@1b
    .line 508
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :try_start_0
    iget v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    #@1d
    if-ne v7, p1, :cond_1

    #@1f
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@22
    move-result-object v7

    #@23
    .line 509
    iget-object v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    #@25
    .line 508
    invoke-interface {v7, p1, v10}, Landroid/app/IActivityManager;->getAppStartMode(ILjava/lang/String;)I

    #@28
    move-result v7

    #@29
    .line 509
    const/4 v10, 0x2

    #@2a
    .line 508
    if-ne v7, v10, :cond_1

    #@2c
    .line 510
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@2e
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@31
    .line 511
    const/4 v1, 0x1

    #@32
    .line 512
    iget-object v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    #@34
    if-eqz v7, :cond_0

    #@36
    .line 513
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    #@38
    const/4 v10, 0x1

    #@39
    invoke-static {v7, v10}, Lcom/android/server/AlarmManagerService;->-set1(Lcom/android/server/AlarmManagerService;Z)Z

    #@3c
    .line 505
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, -0x1

    #@3e
    goto :goto_0

    #@3f
    .line 516
    :cond_1
    iget-wide v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@41
    cmp-long v7, v10, v8

    #@43
    if-lez v7, :cond_2

    #@45
    .line 517
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@47
    .line 519
    :cond_2
    iget-wide v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    #@49
    cmp-long v7, v10, v4

    #@4b
    if-gez v7, :cond_3

    #@4d
    .line 520
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    #@4f
    .line 522
    :cond_3
    iget v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@51
    or-int/2addr v6, v7

    #@52
    goto :goto_1

    #@53
    .line 527
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_4
    if-eqz v1, :cond_5

    #@55
    .line 529
    iput-wide v8, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    #@57
    .line 530
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    #@59
    .line 531
    iput v6, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    #@5b
    .line 533
    :cond_5
    return v1

    #@5c
    .line 524
    .restart local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :catch_0
    move-exception v2

    #@5d
    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method size()I
    .locals 1

    #@0
    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x28

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 592
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Batch{"

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$Batch;->hashCode()I

    #@10
    move-result v1

    #@11
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 593
    const-string/jumbo v1, " num="

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    #@21
    move-result v1

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    .line 594
    const-string/jumbo v1, " start="

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    #@2d
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@30
    .line 595
    const-string/jumbo v1, " end="

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    #@38
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3b
    .line 596
    iget v1, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    #@3d
    if-eqz v1, :cond_0

    #@3f
    .line 597
    const-string/jumbo v1, " flgs=0x"

    #@42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    .line 598
    iget v1, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    #@47
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    .line 600
    :cond_0
    const/16 v1, 0x7d

    #@50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@53
    .line 601
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v1

    #@57
    return-object v1
.end method
