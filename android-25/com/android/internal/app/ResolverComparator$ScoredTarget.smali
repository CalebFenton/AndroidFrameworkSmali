.class Lcom/android/internal/app/ResolverComparator$ScoredTarget;
.super Ljava/lang/Object;
.source "ResolverComparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScoredTarget"
.end annotation


# instance fields
.field public final componentInfo:Landroid/content/pm/ComponentInfo;

.field public lastTimeUsed:J

.field public launchCount:J

.field public score:F

.field public timeSpent:J


# direct methods
.method public constructor <init>(Landroid/content/pm/ComponentInfo;)V
    .locals 0
    .param p1, "ci"    # Landroid/content/pm/ComponentInfo;

    #@0
    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 225
    iput-object p1, p0, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->componentInfo:Landroid/content/pm/ComponentInfo;

    #@5
    .line 224
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "ScoredTarget{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->componentInfo:Landroid/content/pm/ComponentInfo;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 231
    const-string/jumbo v1, " score: "

    #@15
    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 231
    iget v1, p0, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->score:F

    #@1b
    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 232
    const-string/jumbo v1, " lastTimeUsed: "

    #@22
    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 232
    iget-wide v2, p0, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->lastTimeUsed:J

    #@28
    .line 230
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 233
    const-string/jumbo v1, " timeSpent: "

    #@2f
    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 233
    iget-wide v2, p0, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->timeSpent:J

    #@35
    .line 230
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 234
    const-string/jumbo v1, " launchCount: "

    #@3c
    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 234
    iget-wide v2, p0, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->launchCount:J

    #@42
    .line 230
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 235
    const-string/jumbo v1, "}"

    #@49
    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v0

    #@51
    return-object v0
.end method
