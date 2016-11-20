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
        "Ljava/lang/Iterable",
        "<",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/Long;",
        "Landroid/media/SubtitleTrack$Cue;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/SubtitleTrack$CueList;

.field final synthetic val$lastTimeMs:J

.field final synthetic val$timeMs:J


# direct methods
.method constructor <init>(Landroid/media/SubtitleTrack$CueList;JJ)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/SubtitleTrack$CueList;
    .param p2, "val$lastTimeMs"    # J
    .param p4, "val$timeMs"    # J

    #@0
    .prologue
    .line 458
    iput-object p1, p0, Landroid/media/SubtitleTrack$CueList$1;->this$1:Landroid/media/SubtitleTrack$CueList;

    #@2
    iput-wide p2, p0, Landroid/media/SubtitleTrack$CueList$1;->val$lastTimeMs:J

    #@4
    iput-wide p4, p0, Landroid/media/SubtitleTrack$CueList$1;->val$timeMs:J

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v8, 0x1

    #@2
    .line 461
    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList$1;->this$1:Landroid/media/SubtitleTrack$CueList;

    #@4
    iget-boolean v1, v1, Landroid/media/SubtitleTrack$CueList;->DEBUG:Z

    #@6
    if-eqz v1, :cond_0

    #@8
    const-string/jumbo v1, "CueList"

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "slice ("

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    iget-wide v4, p0, Landroid/media/SubtitleTrack$CueList$1;->val$lastTimeMs:J

    #@19
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    const-string/jumbo v3, ", "

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    iget-wide v4, p0, Landroid/media/SubtitleTrack$CueList$1;->val$timeMs:J

    #@26
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    const-string/jumbo v3, "]="

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 463
    :cond_0
    :try_start_0
    new-instance v1, Landroid/media/SubtitleTrack$CueList$EntryIterator;

    #@3a
    iget-object v2, p0, Landroid/media/SubtitleTrack$CueList$1;->this$1:Landroid/media/SubtitleTrack$CueList;

    #@3c
    .line 464
    iget-object v3, p0, Landroid/media/SubtitleTrack$CueList$1;->this$1:Landroid/media/SubtitleTrack$CueList;

    #@3e
    invoke-static {v3}, Landroid/media/SubtitleTrack$CueList;->-get0(Landroid/media/SubtitleTrack$CueList;)Ljava/util/SortedMap;

    #@41
    move-result-object v3

    #@42
    iget-wide v4, p0, Landroid/media/SubtitleTrack$CueList$1;->val$lastTimeMs:J

    #@44
    add-long/2addr v4, v8

    #@45
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@48
    move-result-object v4

    #@49
    iget-wide v6, p0, Landroid/media/SubtitleTrack$CueList$1;->val$timeMs:J

    #@4b
    add-long/2addr v6, v8

    #@4c
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@4f
    move-result-object v5

    #@50
    invoke-interface {v3, v4, v5}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    #@53
    move-result-object v3

    #@54
    .line 463
    invoke-direct {v1, v2, v3}, Landroid/media/SubtitleTrack$CueList$EntryIterator;-><init>(Landroid/media/SubtitleTrack$CueList;Ljava/util/SortedMap;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@57
    return-object v1

    #@58
    .line 465
    :catch_0
    move-exception v0

    #@59
    .line 466
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Landroid/media/SubtitleTrack$CueList$EntryIterator;

    #@5b
    iget-object v2, p0, Landroid/media/SubtitleTrack$CueList$1;->this$1:Landroid/media/SubtitleTrack$CueList;

    #@5d
    const/4 v3, 0x0

    #@5e
    invoke-direct {v1, v2, v3}, Landroid/media/SubtitleTrack$CueList$EntryIterator;-><init>(Landroid/media/SubtitleTrack$CueList;Ljava/util/SortedMap;)V

    #@61
    return-object v1
.end method
