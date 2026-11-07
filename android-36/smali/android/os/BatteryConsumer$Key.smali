.class public final Landroid/os/BatteryConsumer$Key;
.super Ljava/lang/Object;
.source "BatteryConsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation


# instance fields
.field final blacklist mDurationColumnIndex:I

.field final blacklist mPowerColumnIndex:I

.field public final blacklist powerComponentId:I

.field public final blacklist powerState:I

.field public final blacklist processState:I

.field public final blacklist screenState:I


# direct methods
.method private constructor blacklist <init>(IIIIII)V
    .registers 7
    .param p1, "powerComponentId"    # I
    .param p2, "processState"    # I
    .param p3, "screenState"    # I
    .param p4, "powerState"    # I
    .param p5, "powerColumnIndex"    # I
    .param p6, "durationColumnIndex"    # I

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    iput p1, p0, Landroid/os/BatteryConsumer$Key;->powerComponentId:I

    .line 399
    iput p2, p0, Landroid/os/BatteryConsumer$Key;->processState:I

    .line 400
    iput p3, p0, Landroid/os/BatteryConsumer$Key;->screenState:I

    .line 401
    iput p4, p0, Landroid/os/BatteryConsumer$Key;->powerState:I

    .line 403
    iput p5, p0, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    .line 404
    iput p6, p0, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    .line 405
    return-void
.end method

.method synthetic constructor blacklist <init>(IIIIIILandroid/os/BatteryConsumer-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/os/BatteryConsumer$Key;-><init>(IIIIII)V

    return-void
.end method

.method public static blacklist toString(IIII)Ljava/lang/String;
    .registers 6
    .param p0, "powerComponent"    # I
    .param p1, "processState"    # I
    .param p2, "screenState"    # I
    .param p3, "powerState"    # I

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 459
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x13

    if-ge p0, v1, :cond_11

    .line 460
    invoke-static {p0}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 462
    :cond_11
    const-string v1, "CUSTOM/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 464
    :goto_1a
    if-eqz p1, :cond_28

    .line 465
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 466
    invoke-static {p1}, Landroid/os/BatteryConsumer;->processStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    :cond_28
    if-eqz p2, :cond_38

    .line 469
    const-string v1, ":scr-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-static {}, Landroid/os/BatteryConsumer;->-$$Nest$sfgetsScreenStateNames()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    :cond_38
    if-eqz p3, :cond_48

    .line 473
    const-string v1, ":pwr-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-static {}, Landroid/os/BatteryConsumer;->-$$Nest$sfgetsPowerStateNames()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    :cond_48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 436
    move-object v0, p1

    check-cast v0, Landroid/os/BatteryConsumer$Key;

    .line 437
    .local v0, "key":Landroid/os/BatteryConsumer$Key;
    iget v1, p0, Landroid/os/BatteryConsumer$Key;->powerComponentId:I

    iget v2, v0, Landroid/os/BatteryConsumer$Key;->powerComponentId:I

    if-ne v1, v2, :cond_1d

    iget v1, p0, Landroid/os/BatteryConsumer$Key;->processState:I

    iget v2, v0, Landroid/os/BatteryConsumer$Key;->processState:I

    if-ne v1, v2, :cond_1d

    iget v1, p0, Landroid/os/BatteryConsumer$Key;->screenState:I

    iget v2, v0, Landroid/os/BatteryConsumer$Key;->screenState:I

    if-ne v1, v2, :cond_1d

    iget v1, p0, Landroid/os/BatteryConsumer$Key;->powerState:I

    iget v2, v0, Landroid/os/BatteryConsumer$Key;->powerState:I

    if-ne v1, v2, :cond_1d

    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 445
    iget v0, p0, Landroid/os/BatteryConsumer$Key;->powerComponentId:I

    .line 446
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/os/BatteryConsumer$Key;->processState:I

    add-int/2addr v1, v2

    .line 447
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/os/BatteryConsumer$Key;->screenState:I

    add-int/2addr v0, v2

    .line 448
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/os/BatteryConsumer$Key;->powerState:I

    add-int/2addr v1, v2

    .line 449
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method blacklist matches(IIII)Z
    .registers 8
    .param p1, "powerComponent"    # I
    .param p2, "processState"    # I
    .param p3, "screenState"    # I
    .param p4, "powerState"    # I

    .line 413
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_9

    iget v2, p0, Landroid/os/BatteryConsumer$Key;->powerComponentId:I

    if-eq v2, p1, :cond_9

    .line 414
    return v0

    .line 416
    :cond_9
    iget v2, p0, Landroid/os/BatteryConsumer$Key;->processState:I

    if-nez v2, :cond_e

    .line 418
    return v0

    .line 420
    :cond_e
    if-eq p2, v1, :cond_15

    iget v1, p0, Landroid/os/BatteryConsumer$Key;->processState:I

    if-eq v1, p2, :cond_15

    .line 421
    return v0

    .line 423
    :cond_15
    if-eqz p3, :cond_1c

    iget v1, p0, Landroid/os/BatteryConsumer$Key;->screenState:I

    if-eq v1, p3, :cond_1c

    .line 424
    return v0

    .line 426
    :cond_1c
    if-eqz p4, :cond_23

    iget v1, p0, Landroid/os/BatteryConsumer$Key;->powerState:I

    if-eq v1, p4, :cond_23

    .line 427
    return v0

    .line 429
    :cond_23
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 481
    iget v0, p0, Landroid/os/BatteryConsumer$Key;->powerComponentId:I

    iget v1, p0, Landroid/os/BatteryConsumer$Key;->processState:I

    iget v2, p0, Landroid/os/BatteryConsumer$Key;->screenState:I

    iget v3, p0, Landroid/os/BatteryConsumer$Key;->powerState:I

    invoke-static {v0, v1, v2, v3}, Landroid/os/BatteryConsumer$Key;->toString(IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
