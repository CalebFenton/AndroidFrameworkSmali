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
    .line 329
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 327
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@c
    .line 330
    const-wide/16 v0, 0x0

    #@e
    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    #@10
    .line 331
    const-wide v0, 0x7fffffffffffffffL

    #@15
    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    #@17
    .line 332
    const/4 v0, 0x0

    #@18
    iput v0, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    #@1a
    .line 329
    return-void
.end method

.method constructor <init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;
    .param p2, "seed"    # Lcom/android/server/AlarmManagerService$Alarm;

    #@0
    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 327
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@c
    .line 336
    iget-wide v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@e
    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    #@10
    .line 337
    iget-wide v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    #@12
    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    #@14
    .line 338
    iget v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    #@16
    iput v0, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    #@18
    .line 339
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1d
    .line 335
    return-void
.end method


# virtual methods
.method add(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 6
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    #@0
    .prologue
    .line 355
    const/4 v1, 0x0

    #@1
    .line 357
    .local v1, "newStart":Z
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@3
    sget-object v3, Lcom/android/server/AlarmManagerService;->sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    #@5
    invoke-static {v2, p1, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    #@8
    move-result v0

    #@9
    .line 358
    .local v0, "index":I
    if-gez v0, :cond_0

    #@b
    .line 359
    rsub-int/lit8 v2, v0, 0x0

    #@d
    add-int/lit8 v0, v2, -0x1

    #@f
    .line 361
    :cond_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@14
    .line 365
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@16
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    #@18
    cmp-long v2, v2, v4

    #@1a
    if-lez v2, :cond_1

    #@1c
    .line 366
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@1e
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    #@20
    .line 367
    const/4 v1, 0x1

    #@21
    .line 369
    :cond_1
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    #@23
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    #@25
    cmp-long v2, v2, v4

    #@27
    if-gez v2, :cond_2

    #@29
    .line 370
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    #@2b
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    #@2d
    .line 372
    :cond_2
    iget v2, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    #@2f
    iget v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    #@31
    or-int/2addr v2, v3

    #@32
    iput v2, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    #@34
    .line 377
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
    .line 351
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
    .line 347
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
    .line 477
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 478
    .local v0, "N":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@9
    .line 479
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    #@11
    .line 480
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@13
    invoke-virtual {v3}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_0

    #@1d
    .line 481
    const/4 v3, 0x1

    #@1e
    return v3

    #@1f
    .line 478
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@21
    goto :goto_0

    #@22
    .line 484
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_1
    const/4 v3, 0x0

    #@23
    return v3
.end method

.method hasWakeups()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 488
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v0

    #@7
    .line 489
    .local v0, "N":I
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@a
    .line 490
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    #@12
    .line 492
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    #@14
    and-int/lit8 v3, v3, 0x1

    #@16
    if-nez v3, :cond_0

    #@18
    .line 493
    const/4 v3, 0x1

    #@19
    return v3

    #@1a
    .line 489
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 496
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_1
    return v4
.end method

.method remove(I)Z
    .locals 10
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 447
    const/4 v1, 0x0

    #@1
    .line 448
    .local v1, "didRemove":Z
    const-wide/16 v6, 0x0

    #@3
    .line 449
    .local v6, "newStart":J
    const-wide v4, 0x7fffffffffffffffL

    #@8
    .line 450
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
    .line 451
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    #@19
    .line 452
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@1b
    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorUid()I

    #@1e
    move-result v3

    #@1f
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    #@22
    move-result v3

    #@23
    if-ne v3, p1, :cond_1

    #@25
    .line 453
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@2a
    .line 454
    const/4 v1, 0x1

    #@2b
    .line 455
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    #@2d
    if-eqz v3, :cond_0

    #@2f
    .line 456
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    #@31
    const/4 v8, 0x1

    #@32
    invoke-static {v3, v8}, Lcom/android/server/AlarmManagerService;->-set0(Lcom/android/server/AlarmManagerService;Z)Z

    #@35
    goto :goto_0

    #@36
    .line 459
    :cond_1
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@38
    cmp-long v3, v8, v6

    #@3a
    if-lez v3, :cond_2

    #@3c
    .line 460
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@3e
    .line 462
    :cond_2
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    #@40
    cmp-long v3, v8, v4

    #@42
    if-gez v3, :cond_3

    #@44
    .line 463
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    #@46
    .line 465
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@48
    goto :goto_0

    #@49
    .line 468
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_4
    if-eqz v1, :cond_5

    #@4b
    .line 470
    iput-wide v6, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    #@4d
    .line 471
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    #@4f
    .line 473
    :cond_5
    return v1
.end method

.method remove(Landroid/app/PendingIntent;)Z
    .locals 10
    .param p1, "operation"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 381
    const/4 v1, 0x0

    #@1
    .line 382
    .local v1, "didRemove":Z
    const-wide/16 v6, 0x0

    #@3
    .line 383
    .local v6, "newStart":J
    const-wide v4, 0x7fffffffffffffffL

    #@8
    .line 384
    .local v4, "newEnd":J
    const/4 v3, 0x0

    #@9
    .line 385
    .local v3, "newFlags":I
    const/4 v2, 0x0

    #@a
    .local v2, "i":I
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v8

    #@10
    if-ge v2, v8, :cond_4

    #@12
    .line 386
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    #@1a
    .line 387
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@1c
    invoke-virtual {v8, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v8

    #@20
    if-eqz v8, :cond_1

    #@22
    .line 388
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@27
    .line 389
    const/4 v1, 0x1

    #@28
    .line 390
    iget-object v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    #@2a
    if-eqz v8, :cond_0

    #@2c
    .line 391
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    #@2e
    const/4 v9, 0x1

    #@2f
    invoke-static {v8, v9}, Lcom/android/server/AlarmManagerService;->-set0(Lcom/android/server/AlarmManagerService;Z)Z

    #@32
    goto :goto_0

    #@33
    .line 394
    :cond_1
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@35
    cmp-long v8, v8, v6

    #@37
    if-lez v8, :cond_2

    #@39
    .line 395
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@3b
    .line 397
    :cond_2
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    #@3d
    cmp-long v8, v8, v4

    #@3f
    if-gez v8, :cond_3

    #@41
    .line 398
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    #@43
    .line 400
    :cond_3
    iget v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    #@45
    or-int/2addr v3, v8

    #@46
    .line 401
    add-int/lit8 v2, v2, 0x1

    #@48
    goto :goto_0

    #@49
    .line 404
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_4
    if-eqz v1, :cond_5

    #@4b
    .line 406
    iput-wide v6, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    #@4d
    .line 407
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    #@4f
    .line 408
    iput v3, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    #@51
    .line 410
    :cond_5
    return v1
.end method

.method remove(Ljava/lang/String;)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 414
    const/4 v1, 0x0

    #@1
    .line 415
    .local v1, "didRemove":Z
    const-wide/16 v6, 0x0

    #@3
    .line 416
    .local v6, "newStart":J
    const-wide v4, 0x7fffffffffffffffL

    #@8
    .line 417
    .local v4, "newEnd":J
    const/4 v3, 0x0

    #@9
    .line 418
    .local v3, "newFlags":I
    const/4 v2, 0x0

    #@a
    .local v2, "i":I
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v8

    #@10
    if-ge v2, v8, :cond_4

    #@12
    .line 419
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    #@1a
    .line 420
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@1c
    invoke-virtual {v8}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    #@1f
    move-result-object v8

    #@20
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v8

    #@24
    if-eqz v8, :cond_1

    #@26
    .line 421
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@2b
    .line 422
    const/4 v1, 0x1

    #@2c
    .line 423
    iget-object v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    #@2e
    if-eqz v8, :cond_0

    #@30
    .line 424
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    #@32
    const/4 v9, 0x1

    #@33
    invoke-static {v8, v9}, Lcom/android/server/AlarmManagerService;->-set0(Lcom/android/server/AlarmManagerService;Z)Z

    #@36
    goto :goto_0

    #@37
    .line 427
    :cond_1
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@39
    cmp-long v8, v8, v6

    #@3b
    if-lez v8, :cond_2

    #@3d
    .line 428
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@3f
    .line 430
    :cond_2
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    #@41
    cmp-long v8, v8, v4

    #@43
    if-gez v8, :cond_3

    #@45
    .line 431
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    #@47
    .line 433
    :cond_3
    iget v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    #@49
    or-int/2addr v3, v8

    #@4a
    .line 434
    add-int/lit8 v2, v2, 0x1

    #@4c
    goto :goto_0

    #@4d
    .line 437
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_4
    if-eqz v1, :cond_5

    #@4f
    .line 439
    iput-wide v6, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    #@51
    .line 440
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    #@53
    .line 441
    iput v3, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    #@55
    .line 443
    :cond_5
    return v1
.end method

.method size()I
    .locals 1

    #@0
    .prologue
    .line 343
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
    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x28

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 502
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
    .line 503
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
    .line 504
    const-string/jumbo v1, " start="

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    #@2d
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@30
    .line 505
    const-string/jumbo v1, " end="

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    #@38
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3b
    .line 506
    iget v1, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    #@3d
    if-eqz v1, :cond_0

    #@3f
    .line 507
    const-string/jumbo v1, " flgs=0x"

    #@42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    .line 508
    iget v1, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    #@47
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    .line 510
    :cond_0
    const/16 v1, 0x7d

    #@50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@53
    .line 511
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v1

    #@57
    return-object v1
.end method
