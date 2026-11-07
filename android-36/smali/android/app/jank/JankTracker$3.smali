.class Landroid/app/jank/JankTracker$3;
.super Ljava/lang/Object;
.source "JankTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/jank/JankTracker;->mergeAppJankStats(Landroid/app/jank/AppJankStats;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/jank/JankTracker;

.field final synthetic blacklist val$appJankStats:Landroid/app/jank/AppJankStats;


# direct methods
.method constructor blacklist <init>(Landroid/app/jank/JankTracker;Landroid/app/jank/AppJankStats;)V
    .registers 3
    .param p1, "this$0"    # Landroid/app/jank/JankTracker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 153
    iput-object p1, p0, Landroid/app/jank/JankTracker$3;->this$0:Landroid/app/jank/JankTracker;

    iput-object p2, p0, Landroid/app/jank/JankTracker$3;->val$appJankStats:Landroid/app/jank/AppJankStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 156
    iget-object v0, p0, Landroid/app/jank/JankTracker$3;->this$0:Landroid/app/jank/JankTracker;

    invoke-static {v0}, Landroid/app/jank/JankTracker;->-$$Nest$fgetmJankDataProcessor(Landroid/app/jank/JankTracker;)Landroid/app/jank/JankDataProcessor;

    move-result-object v0

    if-nez v0, :cond_9

    .line 157
    return-void

    .line 159
    :cond_9
    iget-object v0, p0, Landroid/app/jank/JankTracker$3;->this$0:Landroid/app/jank/JankTracker;

    invoke-static {v0}, Landroid/app/jank/JankTracker;->-$$Nest$fgetmJankDataProcessor(Landroid/app/jank/JankTracker;)Landroid/app/jank/JankDataProcessor;

    move-result-object v0

    iget-object v1, p0, Landroid/app/jank/JankTracker$3;->val$appJankStats:Landroid/app/jank/AppJankStats;

    iget-object v2, p0, Landroid/app/jank/JankTracker$3;->this$0:Landroid/app/jank/JankTracker;

    invoke-static {v2}, Landroid/app/jank/JankTracker;->-$$Nest$fgetmActivityName(Landroid/app/jank/JankTracker;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/jank/JankDataProcessor;->mergeJankStats(Landroid/app/jank/AppJankStats;Ljava/lang/String;)V

    .line 160
    return-void
.end method
