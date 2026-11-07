.class Landroid/media/SubtitleTrack$CueList$1;
.super Ljava/lang/Object;
.source "SubtitleTrack.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/SubtitleTrack$CueList;->entriesBetween(JJ)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Landroid/util/Pair<",
        "Ljava/lang/Long;",
        "Landroid/media/SubtitleTrack$Cue;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/SubtitleTrack$CueList;

.field final synthetic blacklist val$lastTimeMs:J

.field final synthetic blacklist val$timeMs:J


# direct methods
.method constructor blacklist <init>(Landroid/media/SubtitleTrack$CueList;JJ)V
    .registers 6
    .param p1, "this$0"    # Landroid/media/SubtitleTrack$CueList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 461
    iput-object p1, p0, Landroid/media/SubtitleTrack$CueList$1;->this$0:Landroid/media/SubtitleTrack$CueList;

    iput-wide p2, p0, Landroid/media/SubtitleTrack$CueList$1;->val$lastTimeMs:J

    iput-wide p4, p0, Landroid/media/SubtitleTrack$CueList$1;->val$timeMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;>;"
        }
    .end annotation

    .line 464
    iget-object v0, p0, Landroid/media/SubtitleTrack$CueList$1;->this$0:Landroid/media/SubtitleTrack$CueList;

    iget-boolean v0, v0, Landroid/media/SubtitleTrack$CueList;->DEBUG:Z

    if-eqz v0, :cond_32

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "slice ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/SubtitleTrack$CueList$1;->val$lastTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/SubtitleTrack$CueList$1;->val$timeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CueList"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_32
    :try_start_32
    new-instance v0, Landroid/media/SubtitleTrack$CueList$EntryIterator;

    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList$1;->this$0:Landroid/media/SubtitleTrack$CueList;

    iget-object v2, p0, Landroid/media/SubtitleTrack$CueList$1;->this$0:Landroid/media/SubtitleTrack$CueList;

    invoke-static {v2}, Landroid/media/SubtitleTrack$CueList;->-$$Nest$fgetmCues(Landroid/media/SubtitleTrack$CueList;)Ljava/util/SortedMap;

    move-result-object v2

    iget-wide v3, p0, Landroid/media/SubtitleTrack$CueList$1;->val$lastTimeMs:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    .line 467
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v7, p0, Landroid/media/SubtitleTrack$CueList$1;->val$timeMs:J

    add-long/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/media/SubtitleTrack$CueList$EntryIterator;-><init>(Landroid/media/SubtitleTrack$CueList;Ljava/util/SortedMap;)V
    :try_end_53
    .catch Ljava/lang/IllegalArgumentException; {:try_start_32 .. :try_end_53} :catch_54

    .line 466
    return-object v0

    .line 468
    :catch_54
    move-exception v0

    .line 469
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Landroid/media/SubtitleTrack$CueList$EntryIterator;

    iget-object v2, p0, Landroid/media/SubtitleTrack$CueList$1;->this$0:Landroid/media/SubtitleTrack$CueList;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/media/SubtitleTrack$CueList$EntryIterator;-><init>(Landroid/media/SubtitleTrack$CueList;Ljava/util/SortedMap;)V

    return-object v1
.end method
