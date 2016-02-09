.class final Lcom/android/server/notification/ZenModeHelper$Metrics;
.super Lcom/android/server/notification/ZenModeHelper$Callback;
.source "ZenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Metrics"
.end annotation


# static fields
.field private static final COUNTER_PREFIX:Ljava/lang/String; = "dnd_mode_"

.field private static final MINIMUM_LOG_PERIOD_MS:J = 0xea60L


# instance fields
.field private mBeginningMs:J

.field private mPreviousZenMode:I

.field final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/notification/ZenModeHelper$Metrics;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$Metrics;->emit()V

    #@3
    return-void
.end method

.method private constructor <init>(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/notification/ZenModeHelper;

    #@0
    .prologue
    .line 717
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    #@2
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$Callback;-><init>()V

    #@5
    .line 721
    const/4 v0, -0x1

    #@6
    iput v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenMode:I

    #@8
    .line 722
    const-wide/16 v0, 0x0

    #@a
    iput-wide v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mBeginningMs:J

    #@c
    .line 717
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ZenModeHelper$Metrics;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/ZenModeHelper;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper$Metrics;-><init>(Lcom/android/server/notification/ZenModeHelper;)V

    #@3
    return-void
.end method

.method private emit()V
    .locals 7

    #@0
    .prologue
    .line 730
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    #@2
    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->-get1(Lcom/android/server/notification/ZenModeHelper;)Lcom/android/server/notification/ZenModeHelper$H;

    #@5
    move-result-object v4

    #@6
    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper$H;->-wrap1(Lcom/android/server/notification/ZenModeHelper$H;)V

    #@9
    .line 731
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@c
    move-result-wide v0

    #@d
    .line 732
    .local v0, "now":J
    iget-wide v4, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mBeginningMs:J

    #@f
    sub-long v2, v0, v4

    #@11
    .line 733
    .local v2, "since":J
    iget v4, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenMode:I

    #@13
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    #@15
    invoke-static {v5}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    #@18
    move-result v5

    #@19
    if-ne v4, v5, :cond_0

    #@1b
    const-wide/32 v4, 0xea60

    #@1e
    cmp-long v4, v2, v4

    #@20
    if-lez v4, :cond_2

    #@22
    .line 734
    :cond_0
    iget v4, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenMode:I

    #@24
    const/4 v5, -0x1

    #@25
    if-eq v4, v5, :cond_1

    #@27
    .line 735
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    #@29
    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->-get0(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;

    #@2c
    move-result-object v4

    #@2d
    new-instance v5, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v6, "dnd_mode_"

    #@35
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v5

    #@39
    iget v6, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenMode:I

    #@3b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v5

    #@43
    long-to-int v6, v2

    #@44
    invoke-static {v4, v5, v6}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    #@47
    .line 737
    :cond_1
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    #@49
    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    #@4c
    move-result v4

    #@4d
    iput v4, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenMode:I

    #@4f
    .line 738
    iput-wide v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mBeginningMs:J

    #@51
    .line 729
    :cond_2
    return-void
.end method


# virtual methods
.method onZenModeChanged()V
    .locals 0

    #@0
    .prologue
    .line 726
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$Metrics;->emit()V

    #@3
    .line 725
    return-void
.end method
