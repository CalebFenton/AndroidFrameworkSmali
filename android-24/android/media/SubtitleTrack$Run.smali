.class Landroid/media/SubtitleTrack$Run;
.super Ljava/lang/Object;
.source "SubtitleTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/SubtitleTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Run"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field public mEndTimeMs:J

.field public mFirstCue:Landroid/media/SubtitleTrack$Cue;

.field public mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

.field public mPrevRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

.field public mRunID:J

.field private mStoredEndTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/media/SubtitleTrack$Run;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/media/SubtitleTrack$Run;->-assertionsDisabled:Z

    #@b
    .line 621
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, -0x1

    #@2
    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 625
    iput-wide v2, p0, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J

    #@7
    .line 626
    const-wide/16 v0, 0x0

    #@9
    iput-wide v0, p0, Landroid/media/SubtitleTrack$Run;->mRunID:J

    #@b
    .line 627
    iput-wide v2, p0, Landroid/media/SubtitleTrack$Run;->mStoredEndTimeMs:J

    #@d
    .line 621
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/SubtitleTrack$Run;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/media/SubtitleTrack$Run;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public removeAtEndTimeMs()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 657
    iget-object v0, p0, Landroid/media/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    #@3
    .line 659
    .local v0, "prev":Landroid/media/SubtitleTrack$Run;
    iget-object v1, p0, Landroid/media/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 660
    iget-object v1, p0, Landroid/media/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    #@9
    iget-object v2, p0, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    #@b
    iput-object v2, v1, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    #@d
    .line 661
    iput-object v3, p0, Landroid/media/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    #@f
    .line 663
    :cond_0
    iget-object v1, p0, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 664
    iget-object v1, p0, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    #@15
    iput-object v0, v1, Landroid/media/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    #@17
    .line 665
    iput-object v3, p0, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    #@19
    .line 656
    :cond_1
    return-void
.end method

.method public storeByEndTimeMs(Landroid/util/LongSparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/media/SubtitleTrack$Run;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "runsByEndTime":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/media/SubtitleTrack$Run;>;"
    const/4 v1, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 631
    iget-wide v2, p0, Landroid/media/SubtitleTrack$Run;->mStoredEndTimeMs:J

    #@4
    invoke-virtual {p1, v2, v3}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    #@7
    move-result v0

    #@8
    .line 632
    .local v0, "ix":I
    if-ltz v0, :cond_3

    #@a
    .line 633
    iget-object v2, p0, Landroid/media/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    #@c
    if-nez v2, :cond_2

    #@e
    .line 634
    sget-boolean v2, Landroid/media/SubtitleTrack$Run;->-assertionsDisabled:Z

    #@10
    if-nez v2, :cond_1

    #@12
    invoke-virtual {p1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    if-ne p0, v2, :cond_0

    #@18
    const/4 v1, 0x1

    #@19
    :cond_0
    if-nez v1, :cond_1

    #@1b
    new-instance v1, Ljava/lang/AssertionError;

    #@1d
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@20
    throw v1

    #@21
    .line 635
    :cond_1
    iget-object v1, p0, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    #@23
    if-nez v1, :cond_6

    #@25
    .line 636
    invoke-virtual {p1, v0}, Landroid/util/LongSparseArray;->removeAt(I)V

    #@28
    .line 641
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/media/SubtitleTrack$Run;->removeAtEndTimeMs()V

    #@2b
    .line 645
    :cond_3
    iget-wide v2, p0, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J

    #@2d
    const-wide/16 v4, 0x0

    #@2f
    cmp-long v1, v2, v4

    #@31
    if-ltz v1, :cond_5

    #@33
    .line 646
    iput-object v6, p0, Landroid/media/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    #@35
    .line 647
    iget-wide v2, p0, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J

    #@37
    invoke-virtual {p1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@3a
    move-result-object v1

    #@3b
    check-cast v1, Landroid/media/SubtitleTrack$Run;

    #@3d
    iput-object v1, p0, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    #@3f
    .line 648
    iget-object v1, p0, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    #@41
    if-eqz v1, :cond_4

    #@43
    .line 649
    iget-object v1, p0, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    #@45
    iput-object p0, v1, Landroid/media/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    #@47
    .line 651
    :cond_4
    iget-wide v2, p0, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J

    #@49
    invoke-virtual {p1, v2, v3, p0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    #@4c
    .line 652
    iget-wide v2, p0, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J

    #@4e
    iput-wide v2, p0, Landroid/media/SubtitleTrack$Run;->mStoredEndTimeMs:J

    #@50
    .line 629
    :cond_5
    return-void

    #@51
    .line 638
    :cond_6
    iget-object v1, p0, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    #@53
    invoke-virtual {p1, v0, v1}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    #@56
    goto :goto_0
.end method
