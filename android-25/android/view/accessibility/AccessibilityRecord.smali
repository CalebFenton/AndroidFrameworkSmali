.class public Landroid/view/accessibility/AccessibilityRecord;
.super Ljava/lang/Object;
.source "AccessibilityRecord.java"


# static fields
.field private static final GET_SOURCE_PREFETCH_FLAGS:I = 0x7

.field private static final MAX_POOL_SIZE:I = 0xa

.field private static final PROPERTY_CHECKED:I = 0x1

.field private static final PROPERTY_ENABLED:I = 0x2

.field private static final PROPERTY_FULL_SCREEN:I = 0x80

.field private static final PROPERTY_IMPORTANT_FOR_ACCESSIBILITY:I = 0x200

.field private static final PROPERTY_PASSWORD:I = 0x4

.field private static final PROPERTY_SCROLLABLE:I = 0x100

.field private static final UNDEFINED:I = -0x1

.field private static sPool:Landroid/view/accessibility/AccessibilityRecord;

.field private static final sPoolLock:Ljava/lang/Object;

.field private static sPoolSize:I


# instance fields
.field mAddedCount:I

.field mBeforeText:Ljava/lang/CharSequence;

.field mBooleanProperties:I

.field mClassName:Ljava/lang/CharSequence;

.field mConnectionId:I

.field mContentDescription:Ljava/lang/CharSequence;

.field mCurrentItemIndex:I

.field mFromIndex:I

.field private mIsInPool:Z

.field mItemCount:I

.field mMaxScrollX:I

.field mMaxScrollY:I

.field private mNext:Landroid/view/accessibility/AccessibilityRecord;

.field mParcelableData:Landroid/os/Parcelable;

.field mRemovedCount:I

.field mScrollX:I

.field mScrollY:I

.field mSealed:Z

.field mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

.field mSourceWindowId:I

.field final mText:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field mToIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 74
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroid/view/accessibility/AccessibilityRecord;->sPoolLock:Ljava/lang/Object;

    #@7
    .line 56
    return-void
.end method

.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 81
    const/4 v0, 0x0

    #@5
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    #@7
    .line 82
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    #@9
    .line 83
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    #@b
    .line 84
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    #@d
    .line 85
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    #@f
    .line 86
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    #@11
    .line 87
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    #@13
    .line 88
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    #@15
    .line 89
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    #@17
    .line 91
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    #@19
    .line 92
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    #@1b
    .line 94
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    #@1d
    .line 101
    new-instance v0, Ljava/util/ArrayList;

    #@1f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@22
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    #@24
    .line 103
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    #@26
    .line 108
    return-void
.end method

.method private clearSourceNode()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 830
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 831
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@7
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    #@a
    .line 832
    iput-object v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@c
    .line 829
    :cond_0
    return-void
.end method

.method private getBooleanProperty(I)Z
    .locals 1
    .param p1, "property"    # I

    #@0
    .prologue
    .line 701
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    #@2
    and-int/2addr v0, p1

    #@3
    if-ne v0, p1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public static obtain()Landroid/view/accessibility/AccessibilityRecord;
    .locals 3

    #@0
    .prologue
    .line 738
    sget-object v2, Landroid/view/accessibility/AccessibilityRecord;->sPoolLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 739
    :try_start_0
    sget-object v1, Landroid/view/accessibility/AccessibilityRecord;->sPool:Landroid/view/accessibility/AccessibilityRecord;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 740
    sget-object v0, Landroid/view/accessibility/AccessibilityRecord;->sPool:Landroid/view/accessibility/AccessibilityRecord;

    #@9
    .line 741
    .local v0, "record":Landroid/view/accessibility/AccessibilityRecord;
    sget-object v1, Landroid/view/accessibility/AccessibilityRecord;->sPool:Landroid/view/accessibility/AccessibilityRecord;

    #@b
    iget-object v1, v1, Landroid/view/accessibility/AccessibilityRecord;->mNext:Landroid/view/accessibility/AccessibilityRecord;

    #@d
    sput-object v1, Landroid/view/accessibility/AccessibilityRecord;->sPool:Landroid/view/accessibility/AccessibilityRecord;

    #@f
    .line 742
    sget v1, Landroid/view/accessibility/AccessibilityRecord;->sPoolSize:I

    #@11
    add-int/lit8 v1, v1, -0x1

    #@13
    sput v1, Landroid/view/accessibility/AccessibilityRecord;->sPoolSize:I

    #@15
    .line 743
    const/4 v1, 0x0

    #@16
    iput-object v1, v0, Landroid/view/accessibility/AccessibilityRecord;->mNext:Landroid/view/accessibility/AccessibilityRecord;

    #@18
    .line 744
    const/4 v1, 0x0

    #@19
    iput-boolean v1, v0, Landroid/view/accessibility/AccessibilityRecord;->mIsInPool:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    monitor-exit v2

    #@1c
    .line 745
    return-object v0

    #@1d
    .line 747
    .end local v0    # "record":Landroid/view/accessibility/AccessibilityRecord;
    :cond_0
    :try_start_1
    new-instance v1, Landroid/view/accessibility/AccessibilityRecord;

    #@1f
    invoke-direct {v1}, Landroid/view/accessibility/AccessibilityRecord;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    monitor-exit v2

    #@23
    return-object v1

    #@24
    .line 738
    :catchall_0
    move-exception v1

    #@25
    monitor-exit v2

    #@26
    throw v1
.end method

.method public static obtain(Landroid/view/accessibility/AccessibilityRecord;)Landroid/view/accessibility/AccessibilityRecord;
    .locals 1
    .param p0, "record"    # Landroid/view/accessibility/AccessibilityRecord;

    #@0
    .prologue
    .line 726
    invoke-static {}, Landroid/view/accessibility/AccessibilityRecord;->obtain()Landroid/view/accessibility/AccessibilityRecord;

    #@3
    move-result-object v0

    #@4
    .line 727
    .local v0, "clone":Landroid/view/accessibility/AccessibilityRecord;
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityRecord;->init(Landroid/view/accessibility/AccessibilityRecord;)V

    #@7
    .line 728
    return-object v0
.end method

.method private setBooleanProperty(IZ)V
    .locals 2
    .param p1, "property"    # I
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 711
    if-eqz p2, :cond_0

    #@2
    .line 712
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    #@4
    or-int/2addr v0, p1

    #@5
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    #@7
    .line 710
    :goto_0
    return-void

    #@8
    .line 714
    :cond_0
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    #@a
    not-int v1, p1

    #@b
    and-int/2addr v0, v1

    #@c
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    #@e
    goto :goto_0
.end method


# virtual methods
.method clear()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    const/4 v1, -0x1

    #@3
    .line 807
    iput-boolean v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    #@5
    .line 808
    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    #@7
    .line 809
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    #@9
    .line 810
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    #@b
    .line 811
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    #@d
    .line 812
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    #@f
    .line 813
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    #@11
    .line 814
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    #@13
    .line 815
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    #@15
    .line 816
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    #@17
    .line 817
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    #@19
    .line 818
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    #@1b
    .line 819
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    #@1d
    .line 820
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    #@1f
    .line 821
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    #@21
    .line 822
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    #@23
    .line 823
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    #@25
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@28
    .line 824
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityRecord;->clearSourceNode()V

    #@2b
    .line 825
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    #@2d
    .line 826
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    #@2f
    .line 806
    return-void
.end method

.method enforceNotSealed()V
    .locals 2

    #@0
    .prologue
    .line 688
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->isSealed()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 689
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "Cannot perform this action on a sealed instance."

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 687
    :cond_0
    return-void
.end method

.method enforceSealed()V
    .locals 2

    #@0
    .prologue
    .line 676
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->isSealed()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 677
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "Cannot perform this action on a not sealed instance."

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 675
    :cond_0
    return-void
.end method

.method public getAddedCount()I
    .locals 1

    #@0
    .prologue
    .line 490
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    #@2
    return v0
.end method

.method public getBeforeText()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 563
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 532
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 584
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getCurrentItemIndex()I
    .locals 1

    #@0
    .prologue
    .line 345
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    #@2
    return v0
.end method

.method public getFromIndex()I
    .locals 1

    #@0
    .prologue
    .line 369
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    #@2
    return v0
.end method

.method public getItemCount()I
    .locals 1

    #@0
    .prologue
    .line 324
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    #@2
    return v0
.end method

.method public getMaxScrollX()I
    .locals 1

    #@0
    .prologue
    .line 452
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    #@2
    return v0
.end method

.method public getMaxScrollY()I
    .locals 1

    #@0
    .prologue
    .line 471
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    #@2
    return v0
.end method

.method public getParcelableData()Landroid/os/Parcelable;
    .locals 1

    #@0
    .prologue
    .line 605
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    #@2
    return-object v0
.end method

.method public getRemovedCount()I
    .locals 1

    #@0
    .prologue
    .line 511
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    #@2
    return v0
.end method

.method public getScrollX()I
    .locals 1

    #@0
    .prologue
    .line 414
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    #@2
    return v0
.end method

.method public getScrollY()I
    .locals 1

    #@0
    .prologue
    .line 433
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    #@2
    return v0
.end method

.method public getSource()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 168
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceSealed()V

    #@4
    .line 169
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 170
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@a
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 173
    :cond_0
    return-object v1
.end method

.method public getSourceNodeId()J
    .locals 2

    #@0
    .prologue
    .line 628
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@6
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    #@9
    move-result-wide v0

    #@a
    :goto_0
    return-wide v0

    #@b
    :cond_0
    const-wide/16 v0, -0x1

    #@d
    goto :goto_0
.end method

.method public getText()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 554
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getToIndex()I
    .locals 1

    #@0
    .prologue
    .line 394
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    #@2
    return v0
.end method

.method public getWindowId()I
    .locals 1

    #@0
    .prologue
    .line 193
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    #@2
    return v0
.end method

.method init(Landroid/view/accessibility/AccessibilityRecord;)V
    .locals 2
    .param p1, "record"    # Landroid/view/accessibility/AccessibilityRecord;

    #@0
    .prologue
    .line 779
    iget-boolean v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    #@2
    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    #@4
    .line 780
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    #@6
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    #@8
    .line 781
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    #@a
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    #@c
    .line 782
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    #@e
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    #@10
    .line 783
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    #@12
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    #@14
    .line 784
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    #@16
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    #@18
    .line 785
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    #@1a
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    #@1c
    .line 786
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    #@1e
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    #@20
    .line 787
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    #@22
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    #@24
    .line 788
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    #@26
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    #@28
    .line 789
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    #@2a
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    #@2c
    .line 790
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    #@2e
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    #@30
    .line 791
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    #@32
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    #@34
    .line 792
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    #@36
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    #@38
    .line 793
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    #@3a
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    #@3c
    .line 794
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    #@3e
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    #@40
    .line 795
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    #@42
    iget-object v1, p1, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    #@44
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@47
    .line 796
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    #@49
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    #@4b
    .line 797
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@4d
    if-eqz v0, :cond_0

    #@4f
    .line 798
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@51
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@54
    move-result-object v0

    #@55
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@57
    .line 800
    :cond_0
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    #@59
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    #@5b
    .line 778
    return-void
.end method

.method public isChecked()Z
    .locals 1

    #@0
    .prologue
    .line 202
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 223
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public isFullScreen()Z
    .locals 1

    #@0
    .prologue
    .line 265
    const/16 v0, 0x80

    #@2
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isImportantForAccessibility()Z
    .locals 1

    #@0
    .prologue
    .line 315
    const/16 v0, 0x200

    #@2
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isPassword()Z
    .locals 1

    #@0
    .prologue
    .line 244
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public isScrollable()Z
    .locals 1

    #@0
    .prologue
    .line 286
    const/16 v0, 0x100

    #@2
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method isSealed()Z
    .locals 1

    #@0
    .prologue
    .line 667
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    #@2
    return v0
.end method

.method public recycle()V
    .locals 3

    #@0
    .prologue
    .line 759
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mIsInPool:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 760
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Record already recycled!"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 762
    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->clear()V

    #@10
    .line 763
    sget-object v1, Landroid/view/accessibility/AccessibilityRecord;->sPoolLock:Ljava/lang/Object;

    #@12
    monitor-enter v1

    #@13
    .line 764
    :try_start_0
    sget v0, Landroid/view/accessibility/AccessibilityRecord;->sPoolSize:I

    #@15
    const/16 v2, 0xa

    #@17
    if-gt v0, v2, :cond_1

    #@19
    .line 765
    sget-object v0, Landroid/view/accessibility/AccessibilityRecord;->sPool:Landroid/view/accessibility/AccessibilityRecord;

    #@1b
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mNext:Landroid/view/accessibility/AccessibilityRecord;

    #@1d
    .line 766
    sput-object p0, Landroid/view/accessibility/AccessibilityRecord;->sPool:Landroid/view/accessibility/AccessibilityRecord;

    #@1f
    .line 767
    const/4 v0, 0x1

    #@20
    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mIsInPool:Z

    #@22
    .line 768
    sget v0, Landroid/view/accessibility/AccessibilityRecord;->sPoolSize:I

    #@24
    add-int/lit8 v0, v0, 0x1

    #@26
    sput v0, Landroid/view/accessibility/AccessibilityRecord;->sPoolSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    :cond_1
    monitor-exit v1

    #@29
    .line 758
    return-void

    #@2a
    .line 763
    :catchall_0
    move-exception v0

    #@2b
    monitor-exit v1

    #@2c
    throw v0
.end method

.method public setAddedCount(I)V
    .locals 0
    .param p1, "addedCount"    # I

    #@0
    .prologue
    .line 501
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    #@3
    .line 502
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    #@5
    .line 500
    return-void
.end method

.method public setBeforeText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "beforeText"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 574
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    #@3
    .line 575
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    #@5
    .line 573
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "isChecked"    # Z

    #@0
    .prologue
    .line 213
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    #@3
    .line 214
    const/4 v0, 0x1

    #@4
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    #@7
    .line 212
    return-void
.end method

.method public setClassName(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 543
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    #@3
    .line 544
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    #@5
    .line 542
    return-void
.end method

.method public setConnectionId(I)V
    .locals 2
    .param p1, "connectionId"    # I

    #@0
    .prologue
    .line 640
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    #@3
    .line 641
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    #@5
    .line 642
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 643
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@b
    iget v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    #@d
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setConnectionId(I)V

    #@10
    .line 639
    :cond_0
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 595
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    #@3
    .line 596
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    #@5
    .line 594
    return-void
.end method

.method public setCurrentItemIndex(I)V
    .locals 0
    .param p1, "currentItemIndex"    # I

    #@0
    .prologue
    .line 356
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    #@3
    .line 357
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    #@5
    .line 355
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    #@0
    .prologue
    .line 234
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    #@3
    .line 235
    const/4 v0, 0x2

    #@4
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    #@7
    .line 233
    return-void
.end method

.method public setFromIndex(I)V
    .locals 0
    .param p1, "fromIndex"    # I

    #@0
    .prologue
    .line 383
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    #@3
    .line 384
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    #@5
    .line 382
    return-void
.end method

.method public setFullScreen(Z)V
    .locals 1
    .param p1, "isFullScreen"    # Z

    #@0
    .prologue
    .line 276
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    #@3
    .line 277
    const/16 v0, 0x80

    #@5
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    #@8
    .line 275
    return-void
.end method

.method public setItemCount(I)V
    .locals 0
    .param p1, "itemCount"    # I

    #@0
    .prologue
    .line 335
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    #@3
    .line 336
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    #@5
    .line 334
    return-void
.end method

.method public setMaxScrollX(I)V
    .locals 0
    .param p1, "maxScrollX"    # I

    #@0
    .prologue
    .line 461
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    #@3
    .line 462
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    #@5
    .line 460
    return-void
.end method

.method public setMaxScrollY(I)V
    .locals 0
    .param p1, "maxScrollY"    # I

    #@0
    .prologue
    .line 480
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    #@3
    .line 481
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    #@5
    .line 479
    return-void
.end method

.method public setParcelableData(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "parcelableData"    # Landroid/os/Parcelable;

    #@0
    .prologue
    .line 616
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    #@3
    .line 617
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    #@5
    .line 615
    return-void
.end method

.method public setPassword(Z)V
    .locals 1
    .param p1, "isPassword"    # Z

    #@0
    .prologue
    .line 255
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    #@3
    .line 256
    const/4 v0, 0x4

    #@4
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    #@7
    .line 254
    return-void
.end method

.method public setRemovedCount(I)V
    .locals 0
    .param p1, "removedCount"    # I

    #@0
    .prologue
    .line 522
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    #@3
    .line 523
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    #@5
    .line 521
    return-void
.end method

.method public setScrollX(I)V
    .locals 0
    .param p1, "scrollX"    # I

    #@0
    .prologue
    .line 423
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    #@3
    .line 424
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    #@5
    .line 422
    return-void
.end method

.method public setScrollY(I)V
    .locals 0
    .param p1, "scrollY"    # I

    #@0
    .prologue
    .line 442
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    #@3
    .line 443
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    #@5
    .line 441
    return-void
.end method

.method public setScrollable(Z)V
    .locals 1
    .param p1, "scrollable"    # Z

    #@0
    .prologue
    .line 297
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    #@3
    .line 298
    const/16 v0, 0x100

    #@5
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    #@8
    .line 296
    return-void
.end method

.method public setSealed(Z)V
    .locals 1
    .param p1, "sealed"    # Z

    #@0
    .prologue
    .line 655
    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    #@2
    .line 656
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 657
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@8
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSealed(Z)V

    #@b
    .line 654
    :cond_0
    return-void
.end method

.method public setSource(Landroid/view/View;)V
    .locals 1
    .param p1, "source"    # Landroid/view/View;

    #@0
    .prologue
    .line 119
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    #@4
    .line 118
    return-void
.end method

.method public setSource(Landroid/view/View;I)V
    .locals 3
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 137
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    #@4
    .line 138
    const/4 v0, 0x1

    #@5
    .line 139
    .local v0, "important":Z
    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    #@7
    .line 140
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityRecord;->clearSourceNode()V

    #@a
    .line 141
    if-eqz p1, :cond_2

    #@c
    .line 142
    if-eq p2, v2, :cond_0

    #@e
    .line 143
    const v2, 0x7fffffff

    #@11
    if-ne p2, v2, :cond_3

    #@13
    .line 144
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isImportantForAccessibility()Z

    #@16
    move-result v0

    #@17
    .line 145
    .local v0, "important":Z
    invoke-virtual {p1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@1a
    move-result-object v2

    #@1b
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@1d
    .line 153
    .end local v0    # "important":Z
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityWindowId()I

    #@20
    move-result v2

    #@21
    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    #@23
    .line 155
    :cond_2
    const/16 v2, 0x200

    #@25
    invoke-direct {p0, v2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    #@28
    .line 136
    return-void

    #@29
    .line 147
    .local v0, "important":Z
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    #@2c
    move-result-object v1

    #@2d
    .line 148
    .local v1, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v1, :cond_1

    #@2f
    .line 149
    invoke-virtual {v1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@32
    move-result-object v2

    #@33
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@35
    goto :goto_0
.end method

.method public setToIndex(I)V
    .locals 0
    .param p1, "toIndex"    # I

    #@0
    .prologue
    .line 404
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    #@3
    .line 405
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    #@5
    .line 403
    return-void
.end method

.method public setWindowId(I)V
    .locals 0
    .param p1, "windowId"    # I

    #@0
    .prologue
    .line 184
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    #@2
    .line 183
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 839
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, " [ ClassName: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@11
    .line 840
    const-string/jumbo v1, "; Text: "

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    .line 841
    const-string/jumbo v1, "; ContentDescription: "

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@29
    .line 842
    const-string/jumbo v1, "; ItemCount: "

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    iget v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    .line 843
    const-string/jumbo v1, "; CurrentItemIndex: "

    #@38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    iget v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    .line 844
    const-string/jumbo v1, "; IsEnabled: "

    #@44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    const/4 v2, 0x2

    #@49
    invoke-direct {p0, v2}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    #@4c
    move-result v2

    #@4d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@50
    .line 845
    const-string/jumbo v1, "; IsPassword: "

    #@53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v1

    #@57
    const/4 v2, 0x4

    #@58
    invoke-direct {p0, v2}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    #@5b
    move-result v2

    #@5c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5f
    .line 846
    const-string/jumbo v1, "; IsChecked: "

    #@62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v1

    #@66
    const/4 v2, 0x1

    #@67
    invoke-direct {p0, v2}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    #@6a
    move-result v2

    #@6b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@6e
    .line 847
    const-string/jumbo v1, "; IsFullScreen: "

    #@71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v1

    #@75
    const/16 v2, 0x80

    #@77
    invoke-direct {p0, v2}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    #@7a
    move-result v2

    #@7b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@7e
    .line 848
    const-string/jumbo v1, "; Scrollable: "

    #@81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v1

    #@85
    const/16 v2, 0x100

    #@87
    invoke-direct {p0, v2}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    #@8a
    move-result v2

    #@8b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@8e
    .line 849
    const-string/jumbo v1, "; BeforeText: "

    #@91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v1

    #@95
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    #@97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@9a
    .line 850
    const-string/jumbo v1, "; FromIndex: "

    #@9d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v1

    #@a1
    iget v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    #@a3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a6
    .line 851
    const-string/jumbo v1, "; ToIndex: "

    #@a9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v1

    #@ad
    iget v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    #@af
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b2
    .line 852
    const-string/jumbo v1, "; ScrollX: "

    #@b5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v1

    #@b9
    iget v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    #@bb
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@be
    .line 853
    const-string/jumbo v1, "; ScrollY: "

    #@c1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v1

    #@c5
    iget v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    #@c7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ca
    .line 854
    const-string/jumbo v1, "; MaxScrollX: "

    #@cd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v1

    #@d1
    iget v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    #@d3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d6
    .line 855
    const-string/jumbo v1, "; MaxScrollY: "

    #@d9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v1

    #@dd
    iget v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    #@df
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e2
    .line 856
    const-string/jumbo v1, "; AddedCount: "

    #@e5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v1

    #@e9
    iget v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    #@eb
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ee
    .line 857
    const-string/jumbo v1, "; RemovedCount: "

    #@f1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v1

    #@f5
    iget v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    #@f7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fa
    .line 858
    const-string/jumbo v1, "; ParcelableData: "

    #@fd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v1

    #@101
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    #@103
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@106
    .line 859
    const-string/jumbo v1, " ]"

    #@109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    .line 860
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10f
    move-result-object v1

    #@110
    return-object v1
.end method
