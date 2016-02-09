.class Lcom/android/server/power/Notifier$2;
.super Landroid/content/BroadcastReceiver;
.source "Notifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/Notifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/Notifier;


# direct methods
.method constructor <init>(Lcom/android/server/power/Notifier;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/Notifier;

    #@0
    .prologue
    .line 613
    iput-object p1, p0, Lcom/android/server/power/Notifier$2;->this$0:Lcom/android/server/power/Notifier;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 616
    const/4 v0, 0x3

    #@2
    new-array v0, v0, [Ljava/lang/Object;

    #@4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v1

    #@8
    const/4 v2, 0x0

    #@9
    aput-object v1, v0, v2

    #@b
    .line 617
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@e
    move-result-wide v2

    #@f
    iget-object v1, p0, Lcom/android/server/power/Notifier$2;->this$0:Lcom/android/server/power/Notifier;

    #@11
    invoke-static {v1}, Lcom/android/server/power/Notifier;->-get1(Lcom/android/server/power/Notifier;)J

    #@14
    move-result-wide v4

    #@15
    sub-long/2addr v2, v4

    #@16
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@19
    move-result-object v1

    #@1a
    aput-object v1, v0, v6

    #@1c
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f
    move-result-object v1

    #@20
    const/4 v2, 0x2

    #@21
    aput-object v1, v0, v2

    #@23
    .line 616
    const/16 v1, 0xaa6

    #@25
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@28
    .line 618
    iget-object v0, p0, Lcom/android/server/power/Notifier$2;->this$0:Lcom/android/server/power/Notifier;

    #@2a
    invoke-static {v0}, Lcom/android/server/power/Notifier;->-wrap2(Lcom/android/server/power/Notifier;)V

    #@2d
    .line 615
    return-void
.end method
