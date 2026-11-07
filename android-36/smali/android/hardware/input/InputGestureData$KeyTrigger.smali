.class public Landroid/hardware/input/InputGestureData$KeyTrigger;
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
    name = "KeyTrigger"
.end annotation


# instance fields
.field blacklist mAidlKeyTrigger:Landroid/hardware/input/AidlInputGestureData$KeyTrigger;


# direct methods
.method private constructor blacklist <init>(II)V
    .registers 6
    .param p1, "keycode"    # I
    .param p2, "modifierState"    # I

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    if-lez p1, :cond_1b

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v0

    if-gt p1, v0, :cond_1b

    .line 220
    new-instance v0, Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    invoke-direct {v0}, Landroid/hardware/input/AidlInputGestureData$KeyTrigger;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputGestureData$KeyTrigger;->mAidlKeyTrigger:Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    .line 221
    iget-object v0, p0, Landroid/hardware/input/InputGestureData$KeyTrigger;->mAidlKeyTrigger:Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    iput p1, v0, Landroid/hardware/input/AidlInputGestureData$KeyTrigger;->keycode:I

    .line 222
    iget-object v0, p0, Landroid/hardware/input/InputGestureData$KeyTrigger;->mAidlKeyTrigger:Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    iput p2, v0, Landroid/hardware/input/AidlInputGestureData$KeyTrigger;->modifierState:I

    .line 223
    return-void

    .line 218
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid keycode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>(IILandroid/hardware/input/InputGestureData-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/hardware/input/InputGestureData$KeyTrigger;-><init>(II)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/hardware/input/AidlInputGestureData$KeyTrigger;)V
    .registers 2
    .param p1, "aidlKeyTrigger"    # Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object p1, p0, Landroid/hardware/input/InputGestureData$KeyTrigger;->mAidlKeyTrigger:Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    .line 214
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/input/AidlInputGestureData$KeyTrigger;Landroid/hardware/input/InputGestureData-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/input/InputGestureData$KeyTrigger;-><init>(Landroid/hardware/input/AidlInputGestureData$KeyTrigger;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 241
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 242
    :cond_4
    instance-of v0, p1, Landroid/hardware/input/InputGestureData$KeyTrigger;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Landroid/hardware/input/InputGestureData$KeyTrigger;

    .line 243
    .local v0, "that":Landroid/hardware/input/InputGestureData$KeyTrigger;
    iget-object v1, p0, Landroid/hardware/input/InputGestureData$KeyTrigger;->mAidlKeyTrigger:Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    iget-object v2, v0, Landroid/hardware/input/InputGestureData$KeyTrigger;->mAidlKeyTrigger:Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 242
    .end local v0    # "that":Landroid/hardware/input/InputGestureData$KeyTrigger;
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAidlTrigger()Landroid/hardware/input/AidlInputGestureData$Trigger;
    .registers 3

    .line 234
    new-instance v0, Landroid/hardware/input/AidlInputGestureData$Trigger;

    invoke-direct {v0}, Landroid/hardware/input/AidlInputGestureData$Trigger;-><init>()V

    .line 235
    .local v0, "trigger":Landroid/hardware/input/AidlInputGestureData$Trigger;
    iget-object v1, p0, Landroid/hardware/input/InputGestureData$KeyTrigger;->mAidlKeyTrigger:Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    invoke-virtual {v0, v1}, Landroid/hardware/input/AidlInputGestureData$Trigger;->setKey(Landroid/hardware/input/AidlInputGestureData$KeyTrigger;)V

    .line 236
    return-object v0
.end method

.method public blacklist getKeycode()I
    .registers 2

    .line 226
    iget-object v0, p0, Landroid/hardware/input/InputGestureData$KeyTrigger;->mAidlKeyTrigger:Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    iget v0, v0, Landroid/hardware/input/AidlInputGestureData$KeyTrigger;->keycode:I

    return v0
.end method

.method public blacklist getModifierState()I
    .registers 2

    .line 230
    iget-object v0, p0, Landroid/hardware/input/InputGestureData$KeyTrigger;->mAidlKeyTrigger:Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    iget v0, v0, Landroid/hardware/input/AidlInputGestureData$KeyTrigger;->modifierState:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 248
    iget-object v0, p0, Landroid/hardware/input/InputGestureData$KeyTrigger;->mAidlKeyTrigger:Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    invoke-virtual {v0}, Landroid/hardware/input/AidlInputGestureData$KeyTrigger;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyTrigger{mKeycode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/InputGestureData$KeyTrigger;->mAidlKeyTrigger:Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    iget v1, v1, Landroid/hardware/input/AidlInputGestureData$KeyTrigger;->keycode:I

    .line 254
    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mModifierState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/InputGestureData$KeyTrigger;->mAidlKeyTrigger:Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    iget v1, v1, Landroid/hardware/input/AidlInputGestureData$KeyTrigger;->modifierState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    return-object v0
.end method
