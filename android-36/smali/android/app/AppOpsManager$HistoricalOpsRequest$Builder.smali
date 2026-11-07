.class public final Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;
.super Ljava/lang/Object;
.source "AppOpsManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager$HistoricalOpsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAttributionTag:Ljava/lang/String;

.field private final blacklist mBeginTimeMillis:J

.field private final blacklist mEndTimeMillis:J

.field private blacklist mFilter:I

.field private blacklist mFlags:I

.field private blacklist mHistoryFlags:I

.field private blacklist mOpNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mUid:I


# direct methods
.method public constructor whitelist <init>(JJ)V
    .registers 8
    .param p1, "beginTimeMillis"    # J
    .param p3, "endTimeMillis"    # J

    .line 5519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5498
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mUid:I

    .line 5506
    const/16 v0, 0x1f

    iput v0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFlags:I

    .line 5520
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-ltz v0, :cond_17

    cmp-long v0, p1, p3

    if-gez v0, :cond_17

    move v0, v1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    const-string v2, "beginTimeMillis must be non negative and lesser than endTimeMillis"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 5522
    iput-wide p1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mBeginTimeMillis:J

    .line 5523
    iput-wide p3, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mEndTimeMillis:J

    .line 5524
    iput v1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mHistoryFlags:I

    .line 5525
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/AppOpsManager$HistoricalOpsRequest;
    .registers 14

    .line 5639
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOpsRequest;

    iget v1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mUid:I

    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mAttributionTag:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mOpNames:Ljava/util/List;

    iget v5, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mHistoryFlags:I

    iget v6, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFilter:I

    iget-wide v7, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mBeginTimeMillis:J

    iget-wide v9, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mEndTimeMillis:J

    iget v11, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFlags:I

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v12}, Landroid/app/AppOpsManager$HistoricalOpsRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJILandroid/app/AppOpsManager-IA;)V

    return-object v0
.end method

.method public whitelist setAttributionTag(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;
    .registers 3
    .param p1, "attributionTag"    # Ljava/lang/String;

    .line 5572
    iput-object p1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mAttributionTag:Ljava/lang/String;

    .line 5573
    iget v0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFilter:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFilter:I

    .line 5575
    return-object p0
.end method

.method public whitelist setFlags(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;
    .registers 3
    .param p1, "flags"    # I

    .line 5615
    const/16 v0, 0x1f

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 5616
    iput p1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFlags:I

    .line 5617
    return-object p0
.end method

.method public whitelist setHistoryFlags(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;
    .registers 3
    .param p1, "flags"    # I

    .line 5629
    const/4 v0, 0x7

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 5631
    iput p1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mHistoryFlags:I

    .line 5632
    return-object p0
.end method

.method public whitelist setOpNames(Ljava/util/List;)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;"
        }
    .end annotation

    .line 5585
    .local p1, "opNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_20

    .line 5586
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 5587
    .local v0, "opCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_20

    .line 5588
    nop

    .line 5589
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5588
    invoke-static {v2}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_19

    const/4 v2, 0x1

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    :goto_1a
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 5587
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 5592
    .end local v0    # "opCount":I
    .end local v1    # "i":I
    :cond_20
    iput-object p1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mOpNames:Ljava/util/List;

    .line 5594
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mOpNames:Ljava/util/List;

    if-nez v0, :cond_2d

    .line 5595
    iget v0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFilter:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFilter:I

    goto :goto_33

    .line 5597
    :cond_2d
    iget v0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFilter:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFilter:I

    .line 5600
    :goto_33
    return-object p0
.end method

.method public whitelist setPackageName(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 5554
    iput-object p1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mPackageName:Ljava/lang/String;

    .line 5556
    if-nez p1, :cond_b

    .line 5557
    iget v0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFilter:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFilter:I

    goto :goto_11

    .line 5559
    :cond_b
    iget v0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFilter:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFilter:I

    .line 5562
    :goto_11
    return-object p0
.end method

.method public whitelist setUid(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;
    .registers 6
    .param p1, "uid"    # I

    .line 5534
    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_9

    if-ltz p1, :cond_7

    goto :goto_9

    :cond_7
    const/4 v2, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    move v2, v0

    :goto_a
    const-string/jumbo v3, "uid must be -1 or non negative"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 5536
    iput p1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mUid:I

    .line 5538
    if-ne p1, v1, :cond_1b

    .line 5539
    iget v0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFilter:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFilter:I

    goto :goto_20

    .line 5541
    :cond_1b
    iget v1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFilter:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFilter:I

    .line 5544
    :goto_20
    return-object p0
.end method
