.class public Landroid/hardware/input/InputGestureData$TouchpadTrigger;
.super Ljava/lang/Object;
.source "InputGestureData.java"

# interfaces
.implements Landroid/hardware/input/InputGestureData$Trigger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputGestureData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TouchpadTrigger"
.end annotation


# instance fields
.field blacklist mAidlTouchpadTrigger:Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;


# direct methods
.method private constructor blacklist <init>(I)V
    .registers 5
    .param p1, "touchpadGestureType"    # I

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    const/4 v0, 0x1

    if-ne p1, v0, :cond_12

    .line 274
    new-instance v0, Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;

    invoke-direct {v0}, Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputGestureData$TouchpadTrigger;->mAidlTouchpadTrigger:Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;

    .line 275
    iget-object v0, p0, Landroid/hardware/input/InputGestureData$TouchpadTrigger;->mAidlTouchpadTrigger:Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;

    iput p1, v0, Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;->gestureType:I

    .line 276
    return-void

    .line 271
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid touchpadGestureType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>(ILandroid/hardware/input/InputGestureData-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/input/InputGestureData$TouchpadTrigger;-><init>(I)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;)V
    .registers 2
    .param p1, "aidlTouchpadTrigger"    # Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p1, p0, Landroid/hardware/input/InputGestureData$TouchpadTrigger;->mAidlTouchpadTrigger:Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;

    .line 267
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;Landroid/hardware/input/InputGestureData-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/input/InputGestureData$TouchpadTrigger;-><init>(Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 297
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 298
    :cond_4
    instance-of v0, p1, Landroid/hardware/input/InputGestureData$TouchpadTrigger;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Landroid/hardware/input/InputGestureData$TouchpadTrigger;

    .line 299
    .local v0, "that":Landroid/hardware/input/InputGestureData$TouchpadTrigger;
    iget-object v1, p0, Landroid/hardware/input/InputGestureData$TouchpadTrigger;->mAidlTouchpadTrigger:Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;

    iget-object v2, v0, Landroid/hardware/input/InputGestureData$TouchpadTrigger;->mAidlTouchpadTrigger:Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 298
    .end local v0    # "that":Landroid/hardware/input/InputGestureData$TouchpadTrigger;
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAidlTrigger()Landroid/hardware/input/AidlInputGestureData$Trigger;
    .registers 3

    .line 283
    new-instance v0, Landroid/hardware/input/AidlInputGestureData$Trigger;

    invoke-direct {v0}, Landroid/hardware/input/AidlInputGestureData$Trigger;-><init>()V

    .line 284
    .local v0, "trigger":Landroid/hardware/input/AidlInputGestureData$Trigger;
    iget-object v1, p0, Landroid/hardware/input/InputGestureData$TouchpadTrigger;->mAidlTouchpadTrigger:Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;

    invoke-virtual {v0, v1}, Landroid/hardware/input/AidlInputGestureData$Trigger;->setTouchpadGesture(Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;)V

    .line 285
    return-object v0
.end method

.method public blacklist getTouchpadGestureType()I
    .registers 2

    .line 279
    iget-object v0, p0, Landroid/hardware/input/InputGestureData$TouchpadTrigger;->mAidlTouchpadTrigger:Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;

    iget v0, v0, Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;->gestureType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 304
    iget-object v0, p0, Landroid/hardware/input/InputGestureData$TouchpadTrigger;->mAidlTouchpadTrigger:Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;

    invoke-virtual {v0}, Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TouchpadTrigger{mTouchpadGestureType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/InputGestureData$TouchpadTrigger;->mAidlTouchpadTrigger:Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;

    iget v1, v1, Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;->gestureType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
