.class public final Landroid/os/VibrationEffect$Composition;
.super Ljava/lang/Object;
.source "VibrationEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Composition"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/VibrationEffect$Composition$UnreachableAfterRepeatingIndefinitelyException;,
        Landroid/os/VibrationEffect$Composition$DelayType;,
        Landroid/os/VibrationEffect$Composition$PrimitiveType;
    }
.end annotation


# static fields
.field public static final whitelist DELAY_TYPE_PAUSE:I = 0x0

.field public static final whitelist DELAY_TYPE_RELATIVE_START_OFFSET:I = 0x1

.field public static final whitelist PRIMITIVE_CLICK:I = 0x1

.field public static final whitelist PRIMITIVE_LOW_TICK:I = 0x8

.field public static final blacklist PRIMITIVE_NOOP:I = 0x0

.field public static final whitelist PRIMITIVE_QUICK_FALL:I = 0x6

.field public static final whitelist PRIMITIVE_QUICK_RISE:I = 0x4

.field public static final whitelist PRIMITIVE_SLOW_RISE:I = 0x5

.field public static final whitelist PRIMITIVE_SPIN:I = 0x3

.field public static final whitelist PRIMITIVE_THUD:I = 0x2

.field public static final whitelist PRIMITIVE_TICK:I = 0x7


# instance fields
.field private blacklist mRepeatIndex:I

.field private final blacklist mSegments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 1607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1604
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/VibrationEffect$Composition;->mSegments:Ljava/util/ArrayList;

    .line 1605
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/VibrationEffect$Composition;->mRepeatIndex:I

    .line 1607
    return-void
.end method

.method private blacklist addSegment(Landroid/os/vibrator/VibrationEffectSegment;)Landroid/os/VibrationEffect$Composition;
    .registers 3
    .param p1, "segment"    # Landroid/os/vibrator/VibrationEffectSegment;

    .line 1755
    iget v0, p0, Landroid/os/VibrationEffect$Composition;->mRepeatIndex:I

    if-gez v0, :cond_a

    .line 1758
    iget-object v0, p0, Landroid/os/VibrationEffect$Composition;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1759
    return-object p0

    .line 1756
    :cond_a
    new-instance v0, Landroid/os/VibrationEffect$Composition$UnreachableAfterRepeatingIndefinitelyException;

    invoke-direct {v0}, Landroid/os/VibrationEffect$Composition$UnreachableAfterRepeatingIndefinitelyException;-><init>()V

    throw v0
.end method

.method private blacklist addSegments(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;
    .registers 5
    .param p1, "effect"    # Landroid/os/VibrationEffect;

    .line 1763
    iget v0, p0, Landroid/os/VibrationEffect$Composition;->mRepeatIndex:I

    if-gez v0, :cond_30

    .line 1766
    instance-of v0, p1, Landroid/os/VibrationEffect$Composed;

    if-eqz v0, :cond_28

    move-object v0, p1

    check-cast v0, Landroid/os/VibrationEffect$Composed;

    .line 1769
    .local v0, "composed":Landroid/os/VibrationEffect$Composed;
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v1

    if-ltz v1, :cond_1e

    .line 1771
    iget-object v1, p0, Landroid/os/VibrationEffect$Composition;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/os/VibrationEffect$Composition;->mRepeatIndex:I

    .line 1773
    :cond_1e
    iget-object v1, p0, Landroid/os/VibrationEffect$Composition;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1774
    return-object p0

    .line 1767
    .end local v0    # "composed":Landroid/os/VibrationEffect$Composed;
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t add vendor effects to composition."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1764
    :cond_30
    new-instance v0, Landroid/os/VibrationEffect$Composition$UnreachableAfterRepeatingIndefinitelyException;

    invoke-direct {v0}, Landroid/os/VibrationEffect$Composition$UnreachableAfterRepeatingIndefinitelyException;-><init>()V

    throw v0
.end method

.method public static blacklist delayTypeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .line 1825
    packed-switch p0, :pswitch_data_e

    .line 1828
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 1827
    :pswitch_8
    const-string v0, "START_OFFSET"

    goto :goto_d

    .line 1826
    :pswitch_b
    const-string v0, "PAUSE"

    .line 1825
    :goto_d
    return-object v0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static blacklist primitiveToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "id"    # I

    .line 1804
    packed-switch p0, :pswitch_data_24

    .line 1814
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    .line 1813
    :pswitch_8
    const-string v0, "LOW_TICK"

    goto :goto_22

    .line 1812
    :pswitch_b
    const-string v0, "TICK"

    goto :goto_22

    .line 1811
    :pswitch_e
    const-string v0, "QUICK_FALL"

    goto :goto_22

    .line 1810
    :pswitch_11
    const-string v0, "SLOW_RISE"

    goto :goto_22

    .line 1809
    :pswitch_14
    const-string v0, "QUICK_RISE"

    goto :goto_22

    .line 1808
    :pswitch_17
    const-string v0, "SPIN"

    goto :goto_22

    .line 1807
    :pswitch_1a
    const-string v0, "THUD"

    goto :goto_22

    .line 1806
    :pswitch_1d
    const-string v0, "CLICK"

    goto :goto_22

    .line 1805
    :pswitch_20
    const-string v0, "NOOP"

    .line 1804
    :goto_22
    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public blacklist addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;
    .registers 3
    .param p1, "effect"    # Landroid/os/VibrationEffect;

    .line 1653
    invoke-direct {p0, p1}, Landroid/os/VibrationEffect$Composition;->addSegments(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    return-object v0
.end method

.method public blacklist addOffDuration(Ljava/time/Duration;)Landroid/os/VibrationEffect$Composition;
    .registers 6
    .param p1, "duration"    # Ljava/time/Duration;

    .line 1624
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    long-to-int v0, v0

    .line 1625
    .local v0, "durationMs":I
    const-string v1, "Off period must be non-negative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 1626
    if-lez v0, :cond_1a

    .line 1628
    new-instance v1, Landroid/os/vibrator/StepSegment;

    .line 1629
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    long-to-int v2, v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    .line 1628
    invoke-direct {p0, v1}, Landroid/os/VibrationEffect$Composition;->addSegment(Landroid/os/vibrator/VibrationEffectSegment;)Landroid/os/VibrationEffect$Composition;

    .line 1631
    :cond_1a
    return-object p0
.end method

.method public whitelist addPrimitive(I)Landroid/os/VibrationEffect$Composition;
    .registers 3
    .param p1, "primitiveId"    # I

    .line 1697
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IF)Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    return-object v0
.end method

.method public whitelist addPrimitive(IF)Landroid/os/VibrationEffect$Composition;
    .registers 4
    .param p1, "primitiveId"    # I
    .param p2, "scale"    # F

    .line 1712
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    return-object v0
.end method

.method public whitelist addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;
    .registers 5
    .param p1, "primitiveId"    # I
    .param p2, "scale"    # F
    .param p3, "delay"    # I

    .line 1730
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFII)Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    return-object v0
.end method

.method public whitelist addPrimitive(IFII)Landroid/os/VibrationEffect$Composition;
    .registers 7
    .param p1, "primitiveId"    # I
    .param p2, "scale"    # F
    .param p3, "delay"    # I
    .param p4, "delayType"    # I

    .line 1749
    new-instance v0, Landroid/os/vibrator/PrimitiveSegment;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/os/vibrator/PrimitiveSegment;-><init>(IFII)V

    .line 1750
    .local v0, "primitive":Landroid/os/vibrator/PrimitiveSegment;
    invoke-virtual {v0}, Landroid/os/vibrator/PrimitiveSegment;->validate()V

    .line 1751
    invoke-direct {p0, v0}, Landroid/os/VibrationEffect$Composition;->addSegment(Landroid/os/vibrator/VibrationEffectSegment;)Landroid/os/VibrationEffect$Composition;

    move-result-object v1

    return-object v1
.end method

.method public whitelist compose()Landroid/os/VibrationEffect;
    .registers 4

    .line 1788
    iget-object v0, p0, Landroid/os/VibrationEffect$Composition;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1792
    new-instance v0, Landroid/os/VibrationEffect$Composed;

    iget-object v1, p0, Landroid/os/VibrationEffect$Composition;->mSegments:Ljava/util/ArrayList;

    iget v2, p0, Landroid/os/VibrationEffect$Composition;->mRepeatIndex:I

    invoke-direct {v0, v1, v2}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    .line 1793
    .local v0, "effect":Landroid/os/VibrationEffect;
    invoke-virtual {v0}, Landroid/os/VibrationEffect;->validate()V

    .line 1794
    return-object v0

    .line 1789
    .end local v0    # "effect":Landroid/os/VibrationEffect;
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Composition must have at least one element to compose."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist repeatEffectIndefinitely(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;
    .registers 6
    .param p1, "effect"    # Landroid/os/VibrationEffect;

    .line 1677
    invoke-virtual {p1}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    const-string v1, "Can\'t repeat an indefinitely repeating effect. Consider addEffect instead."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1679
    iget-object v0, p0, Landroid/os/VibrationEffect$Composition;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1680
    .local v0, "previousSegmentCount":I
    invoke-direct {p0, p1}, Landroid/os/VibrationEffect$Composition;->addSegments(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    .line 1682
    iput v0, p0, Landroid/os/VibrationEffect$Composition;->mRepeatIndex:I

    .line 1683
    return-object p0
.end method
