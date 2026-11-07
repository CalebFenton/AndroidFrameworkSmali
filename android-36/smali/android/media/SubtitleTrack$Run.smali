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
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field public greylist-max-o mEndTimeMs:J

.field public greylist-max-o mFirstCue:Landroid/media/SubtitleTrack$Cue;

.field public greylist-max-o mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

.field public greylist-max-o mPrevRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

.field public greylist-max-o mRunID:J

.field private greylist-max-o mStoredEndTimeMs:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 624
    const-class v0, Landroid/media/SubtitleTrack;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 5

    .line 624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 628
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J

    .line 629
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/media/SubtitleTrack$Run;->mRunID:J

    .line 630
    iput-wide v0, p0, Landroid/media/SubtitleTrack$Run;->mStoredEndTimeMs:J

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/SubtitleTrack-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/SubtitleTrack$Run;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o removeAtEndTimeMs()V
    .registers 5

    .line 660
    iget-object v0, p0, Landroid/media/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    .line 662
    .local v0, "prev":Landroid/media/SubtitleTrack$Run;
    iget-object v1, p0, Landroid/media/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    .line 663
    iget-object v1, p0, Landroid/media/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    iget-object v3, p0, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    iput-object v3, v1, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    .line 664
    iput-object v2, p0, Landroid/media/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    .line 666
    :cond_f
    iget-object v1, p0, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    if-eqz v1, :cond_19

    .line 667
    iget-object v1, p0, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    iput-object v0, v1, Landroid/media/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    .line 668
    iput-object v2, p0, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    .line 670
    :cond_19
    return-void
.end method

.method public greylist-max-o storeByEndTimeMs(Landroid/util/LongSparseArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Landroid/media/SubtitleTrack$Run;",
            ">;)V"
        }
    .end annotation

    .line 634
    .local p1, "runsByEndTime":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/media/SubtitleTrack$Run;>;"
    iget-wide v0, p0, Landroid/media/SubtitleTrack$Run;->mStoredEndTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v0

    .line 635
    .local v0, "ix":I
    if-ltz v0, :cond_1d

    .line 636
    iget-object v1, p0, Landroid/media/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    if-nez v1, :cond_1a

    .line 637
    nop

    .line 638
    iget-object v1, p0, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    if-nez v1, :cond_15

    .line 639
    invoke-virtual {p1, v0}, Landroid/util/LongSparseArray;->removeAt(I)V

    goto :goto_1a

    .line 641
    :cond_15
    iget-object v1, p0, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    invoke-virtual {p1, v0, v1}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 644
    :cond_1a
    :goto_1a
    invoke-virtual {p0}, Landroid/media/SubtitleTrack$Run;->removeAtEndTimeMs()V

    .line 648
    :cond_1d
    iget-wide v1, p0, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_43

    .line 649
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    .line 650
    iget-wide v1, p0, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J

    invoke-virtual {p1, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/SubtitleTrack$Run;

    iput-object v1, p0, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    .line 651
    iget-object v1, p0, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    if-eqz v1, :cond_3a

    .line 652
    iget-object v1, p0, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    iput-object p0, v1, Landroid/media/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    .line 654
    :cond_3a
    iget-wide v1, p0, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J

    invoke-virtual {p1, v1, v2, p0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 655
    iget-wide v1, p0, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J

    iput-wide v1, p0, Landroid/media/SubtitleTrack$Run;->mStoredEndTimeMs:J

    .line 657
    :cond_43
    return-void
.end method
