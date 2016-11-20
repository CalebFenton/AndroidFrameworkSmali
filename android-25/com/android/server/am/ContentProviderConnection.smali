.class public final Lcom/android/server/am/ContentProviderConnection;
.super Landroid/os/Binder;
.source "ContentProviderConnection.java"


# instance fields
.field public final client:Lcom/android/server/am/ProcessRecord;

.field public final createTime:J

.field public dead:Z

.field public numStableIncs:I

.field public numUnstableIncs:I

.field public final provider:Lcom/android/server/am/ContentProviderRecord;

.field public stableCount:I

.field public unstableCount:I

.field public waiting:Z


# direct methods
.method public constructor <init>(Lcom/android/server/am/ContentProviderRecord;Lcom/android/server/am/ProcessRecord;)V
    .locals 2
    .param p1, "_provider"    # Lcom/android/server/am/ContentProviderRecord;
    .param p2, "_client"    # Lcom/android/server/am/ProcessRecord;

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 43
    iput-object p1, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    #@5
    .line 44
    iput-object p2, p0, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    #@7
    .line 45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@a
    move-result-wide v0

    #@b
    iput-wide v0, p0, Lcom/android/server/am/ContentProviderConnection;->createTime:J

    #@d
    .line 42
    return-void
.end method


# virtual methods
.method public toClientString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 64
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/android/server/am/ContentProviderConnection;->toClientString(Ljava/lang/StringBuilder;)V

    #@a
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    return-object v1
.end method

.method public toClientString(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 75
    iget-object v2, p0, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    #@2
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9
    .line 76
    const-string/jumbo v2, " s"

    #@c
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 77
    iget v2, p0, Lcom/android/server/am/ContentProviderConnection;->stableCount:I

    #@11
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    .line 78
    const-string/jumbo v2, "/"

    #@17
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 79
    iget v2, p0, Lcom/android/server/am/ContentProviderConnection;->numStableIncs:I

    #@1c
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    .line 80
    const-string/jumbo v2, " u"

    #@22
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 81
    iget v2, p0, Lcom/android/server/am/ContentProviderConnection;->unstableCount:I

    #@27
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    .line 82
    const-string/jumbo v2, "/"

    #@2d
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    .line 83
    iget v2, p0, Lcom/android/server/am/ContentProviderConnection;->numUnstableIncs:I

    #@32
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    .line 84
    iget-boolean v2, p0, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    #@37
    if-eqz v2, :cond_0

    #@39
    .line 85
    const-string/jumbo v2, " WAITING"

    #@3c
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    .line 87
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/am/ContentProviderConnection;->dead:Z

    #@41
    if-eqz v2, :cond_1

    #@43
    .line 88
    const-string/jumbo v2, " DEAD"

    #@46
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    .line 90
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@4c
    move-result-wide v0

    #@4d
    .line 91
    .local v0, "nowReal":J
    const-string/jumbo v2, " "

    #@50
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    .line 92
    iget-wide v2, p0, Lcom/android/server/am/ContentProviderConnection;->createTime:J

    #@55
    sub-long v2, v0, v2

    #@57
    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@5a
    .line 74
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 58
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/android/server/am/ContentProviderConnection;->toShortString(Ljava/lang/StringBuilder;)V

    #@a
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    return-object v1
.end method

.method public toShortString(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    #@2
    invoke-virtual {v0}, Lcom/android/server/am/ContentProviderRecord;->toShortString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9
    .line 70
    const-string/jumbo v0, "->"

    #@c
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/am/ContentProviderConnection;->toClientString(Ljava/lang/StringBuilder;)V

    #@12
    .line 68
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 50
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "ContentProviderConnection{"

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 51
    invoke-virtual {p0, v0}, Lcom/android/server/am/ContentProviderConnection;->toShortString(Ljava/lang/StringBuilder;)V

    #@10
    .line 52
    const/16 v1, 0x7d

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@15
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    return-object v1
.end method
