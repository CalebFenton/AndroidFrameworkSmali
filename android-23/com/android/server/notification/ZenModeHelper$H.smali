.class final Lcom/android/server/notification/ZenModeHelper$H;
.super Landroid/os/Handler;
.source "ZenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final METRICS_PERIOD_MS:J = 0x1499700L

.field private static final MSG_DISPATCH:I = 0x1

.field private static final MSG_METRICS:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/notification/ZenModeHelper$H;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$H;->postDispatchOnZenModeChanged()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/notification/ZenModeHelper$H;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$H;->postMetricsTimer()V

    #@3
    return-void
.end method

.method private constructor <init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/ZenModeHelper;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 749
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$H;->this$0:Lcom/android/server/notification/ZenModeHelper;

    #@2
    .line 750
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 749
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;Lcom/android/server/notification/ZenModeHelper$H;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/ZenModeHelper;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ZenModeHelper$H;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;)V

    #@3
    return-void
.end method

.method private postDispatchOnZenModeChanged()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 754
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper$H;->removeMessages(I)V

    #@4
    .line 755
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper$H;->sendEmptyMessage(I)Z

    #@7
    .line 753
    return-void
.end method

.method private postMetricsTimer()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    .line 759
    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeHelper$H;->removeMessages(I)V

    #@4
    .line 760
    const-wide/32 v0, 0x1499700

    #@7
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/notification/ZenModeHelper$H;->sendEmptyMessageDelayed(IJ)Z

    #@a
    .line 758
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 765
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 764
    :goto_0
    return-void

    #@6
    .line 767
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$H;->this$0:Lcom/android/server/notification/ZenModeHelper;

    #@8
    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-wrap3(Lcom/android/server/notification/ZenModeHelper;)V

    #@b
    goto :goto_0

    #@c
    .line 770
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$H;->this$0:Lcom/android/server/notification/ZenModeHelper;

    #@e
    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-get2(Lcom/android/server/notification/ZenModeHelper;)Lcom/android/server/notification/ZenModeHelper$Metrics;

    #@11
    move-result-object v0

    #@12
    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper$Metrics;->-wrap0(Lcom/android/server/notification/ZenModeHelper$Metrics;)V

    #@15
    goto :goto_0

    #@16
    .line 765
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
