.class Landroid/widget/Chronometer$1;
.super Ljava/lang/Object;
.source "Chronometer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Chronometer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/Chronometer;


# direct methods
.method constructor blacklist <init>(Landroid/widget/Chronometer;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/Chronometer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 338
    iput-object p1, p0, Landroid/widget/Chronometer$1;->this$0:Landroid/widget/Chronometer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 341
    iget-object v0, p0, Landroid/widget/Chronometer$1;->this$0:Landroid/widget/Chronometer;

    invoke-static {v0}, Landroid/widget/Chronometer;->-$$Nest$fgetmRunning(Landroid/widget/Chronometer;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 342
    iget-object v0, p0, Landroid/widget/Chronometer$1;->this$0:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/widget/Chronometer;->-$$Nest$mupdateText(Landroid/widget/Chronometer;J)V

    .line 343
    iget-object v0, p0, Landroid/widget/Chronometer$1;->this$0:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->dispatchChronometerTick()V

    .line 344
    iget-object v0, p0, Landroid/widget/Chronometer$1;->this$0:Landroid/widget/Chronometer;

    invoke-static {v0}, Landroid/widget/Chronometer;->-$$Nest$mpostTickOnNextSecond(Landroid/widget/Chronometer;)V

    .line 346
    :cond_1b
    return-void
.end method
