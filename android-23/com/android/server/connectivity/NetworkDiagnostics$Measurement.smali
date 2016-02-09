.class Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
.super Ljava/lang/Object;
.source "NetworkDiagnostics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkDiagnostics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Measurement"
.end annotation


# static fields
.field private static final FAILED:Ljava/lang/String; = "FAILED"

.field private static final SUCCEEDED:Ljava/lang/String; = "SUCCEEDED"


# instance fields
.field public description:Ljava/lang/String;

.field public finishTime:J

.field public result:Ljava/lang/String;

.field public startTime:J

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

.field public thread:Ljava/lang/Thread;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/NetworkDiagnostics;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkDiagnostics;

    #@0
    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 113
    const-string/jumbo v0, ""

    #@8
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    #@a
    .line 116
    const-string/jumbo v0, ""

    #@d
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->result:Ljava/lang/String;

    #@f
    .line 108
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/NetworkDiagnostics;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkDiagnostics;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;)V

    #@3
    return-void
.end method

.method private maybeFixupTimes()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 138
    iget-wide v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->finishTime:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics;->-wrap0()J

    #@b
    move-result-wide v0

    #@c
    iput-wide v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->finishTime:J

    #@e
    .line 142
    :cond_0
    iget-wide v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->startTime:J

    #@10
    cmp-long v0, v0, v2

    #@12
    if-nez v0, :cond_1

    #@14
    iget-wide v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->finishTime:J

    #@16
    iput-wide v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->startTime:J

    #@18
    .line 135
    :cond_1
    return-void
.end method


# virtual methods
.method public recordFailure(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->maybeFixupTimes()V

    #@3
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "FAILED: "

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->result:Ljava/lang/String;

    #@19
    .line 130
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    #@1b
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkDiagnostics;->-get0(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/util/concurrent/CountDownLatch;

    #@1e
    move-result-object v0

    #@1f
    if-eqz v0, :cond_0

    #@21
    .line 131
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    #@23
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkDiagnostics;->-get0(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/util/concurrent/CountDownLatch;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@2a
    .line 127
    :cond_0
    return-void
.end method

.method public recordSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->maybeFixupTimes()V

    #@3
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "SUCCEEDED: "

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->result:Ljava/lang/String;

    #@19
    .line 122
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    #@1b
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkDiagnostics;->-get0(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/util/concurrent/CountDownLatch;

    #@1e
    move-result-object v0

    #@1f
    if-eqz v0, :cond_0

    #@21
    .line 123
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    #@23
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkDiagnostics;->-get0(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/util/concurrent/CountDownLatch;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@2a
    .line 119
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, ": "

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->result:Ljava/lang/String;

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    const-string/jumbo v1, " ("

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    iget-wide v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->finishTime:J

    #@21
    iget-wide v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->startTime:J

    #@23
    sub-long/2addr v2, v4

    #@24
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    const-string/jumbo v1, "ms)"

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    return-object v0
.end method
