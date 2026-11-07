.class Lcom/android/i18n/timezone/WallTime$OffsetInterval;
.super Ljava/lang/Object;
.source "WallTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/timezone/WallTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OffsetInterval"
.end annotation


# instance fields
.field private final blacklist endWallTimeSeconds:I

.field private final blacklist isDst:I

.field private final blacklist startWallTimeSeconds:I

.field private final blacklist totalOffsetSeconds:I


# direct methods
.method private constructor blacklist <init>(IIII)V
    .registers 5
    .param p1, "startWallTimeSeconds"    # I
    .param p2, "endWallTimeSeconds"    # I
    .param p3, "isDst"    # I
    .param p4, "totalOffsetSeconds"    # I

    .line 651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 652
    iput p1, p0, Lcom/android/i18n/timezone/WallTime$OffsetInterval;->startWallTimeSeconds:I

    .line 653
    iput p2, p0, Lcom/android/i18n/timezone/WallTime$OffsetInterval;->endWallTimeSeconds:I

    .line 654
    iput p3, p0, Lcom/android/i18n/timezone/WallTime$OffsetInterval;->isDst:I

    .line 655
    iput p4, p0, Lcom/android/i18n/timezone/WallTime$OffsetInterval;->totalOffsetSeconds:I

    .line 656
    return-void
.end method

.method public static blacklist create(Lcom/android/i18n/timezone/ZoneInfoData;I)Lcom/android/i18n/timezone/WallTime$OffsetInterval;
    .registers 10
    .param p0, "zoneInfo"    # Lcom/android/i18n/timezone/ZoneInfoData;
    .param p1, "transitionIndex"    # I

    .line 610
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-lt p1, v1, :cond_62

    iget-object v2, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mTransitions:[J

    array-length v2, v2

    if-lt p1, v2, :cond_a

    goto :goto_62

    .line 614
    :cond_a
    if-ne p1, v1, :cond_27

    .line 615
    invoke-virtual {p0}, Lcom/android/i18n/timezone/ZoneInfoData;->getEarliestRawOffset()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    .line 616
    .local v1, "totalOffsetSeconds":I
    const/4 v2, 0x0

    .line 618
    .local v2, "isDst":I
    const/high16 v3, -0x80000000

    .line 619
    .local v3, "startWallTimeSeconds":I
    iget-object v4, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mTransitions:[J

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    .line 620
    invoke-static {v4, v5, v1}, Lcom/android/i18n/timezone/WallTime;->-$$Nest$smsaturated32BitAdd(JI)I

    move-result v4

    .line 621
    .local v4, "endWallTimeSeconds":I
    if-ne v3, v4, :cond_21

    .line 623
    return-object v0

    .line 625
    :cond_21
    new-instance v0, Lcom/android/i18n/timezone/WallTime$OffsetInterval;

    invoke-direct {v0, v3, v4, v2, v1}, Lcom/android/i18n/timezone/WallTime$OffsetInterval;-><init>(IIII)V

    return-object v0

    .line 629
    .end local v1    # "totalOffsetSeconds":I
    .end local v2    # "isDst":I
    .end local v3    # "startWallTimeSeconds":I
    .end local v4    # "endWallTimeSeconds":I
    :cond_27
    invoke-virtual {p0}, Lcom/android/i18n/timezone/ZoneInfoData;->getRawOffset()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    .line 630
    .local v1, "rawOffsetSeconds":I
    iget-object v2, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mTypes:[B

    aget-byte v2, v2, p1

    and-int/lit16 v2, v2, 0xff

    .line 631
    .local v2, "type":I
    iget-object v3, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mOffsets:[I

    aget v3, v3, v2

    add-int/2addr v3, v1

    .line 633
    .local v3, "totalOffsetSeconds":I
    iget-object v4, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mTransitions:[J

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_43

    .line 634
    const v4, 0x7fffffff

    .restart local v4    # "endWallTimeSeconds":I
    goto :goto_4d

    .line 636
    .end local v4    # "endWallTimeSeconds":I
    :cond_43
    iget-object v4, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mTransitions:[J

    add-int/lit8 v5, p1, 0x1

    aget-wide v4, v4, v5

    invoke-static {v4, v5, v3}, Lcom/android/i18n/timezone/WallTime;->-$$Nest$smsaturated32BitAdd(JI)I

    move-result v4

    .line 639
    .restart local v4    # "endWallTimeSeconds":I
    :goto_4d
    iget-object v5, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mIsDsts:[B

    aget-byte v5, v5, v2

    .line 640
    .local v5, "isDst":I
    iget-object v6, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mTransitions:[J

    aget-wide v6, v6, p1

    .line 641
    invoke-static {v6, v7, v3}, Lcom/android/i18n/timezone/WallTime;->-$$Nest$smsaturated32BitAdd(JI)I

    move-result v6

    .line 642
    .local v6, "startWallTimeSeconds":I
    if-ne v6, v4, :cond_5c

    .line 644
    return-object v0

    .line 646
    :cond_5c
    new-instance v0, Lcom/android/i18n/timezone/WallTime$OffsetInterval;

    invoke-direct {v0, v6, v4, v5, v3}, Lcom/android/i18n/timezone/WallTime$OffsetInterval;-><init>(IIII)V

    return-object v0

    .line 611
    .end local v1    # "rawOffsetSeconds":I
    .end local v2    # "type":I
    .end local v3    # "totalOffsetSeconds":I
    .end local v4    # "endWallTimeSeconds":I
    .end local v5    # "isDst":I
    .end local v6    # "startWallTimeSeconds":I
    :cond_62
    :goto_62
    return-object v0
.end method


# virtual methods
.method public blacklist containsWallTime(J)Z
    .registers 5
    .param p1, "wallTimeSeconds"    # J

    .line 659
    iget v0, p0, Lcom/android/i18n/timezone/WallTime$OffsetInterval;->startWallTimeSeconds:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_10

    iget v0, p0, Lcom/android/i18n/timezone/WallTime$OffsetInterval;->endWallTimeSeconds:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public blacklist getEndWallTimeSeconds()J
    .registers 3

    .line 671
    iget v0, p0, Lcom/android/i18n/timezone/WallTime$OffsetInterval;->endWallTimeSeconds:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public blacklist getIsDst()I
    .registers 2

    .line 663
    iget v0, p0, Lcom/android/i18n/timezone/WallTime$OffsetInterval;->isDst:I

    return v0
.end method

.method public blacklist getStartWallTimeSeconds()J
    .registers 3

    .line 675
    iget v0, p0, Lcom/android/i18n/timezone/WallTime$OffsetInterval;->startWallTimeSeconds:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public blacklist getTotalOffsetSeconds()I
    .registers 2

    .line 667
    iget v0, p0, Lcom/android/i18n/timezone/WallTime$OffsetInterval;->totalOffsetSeconds:I

    return v0
.end method
