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
.field final synthetic this$0:Landroid/widget/Chronometer;


# direct methods
.method constructor <init>(Landroid/widget/Chronometer;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/Chronometer;

    #@0
    .prologue
    .line 305
    iput-object p1, p0, Landroid/widget/Chronometer$1;->this$0:Landroid/widget/Chronometer;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 308
    iget-object v0, p0, Landroid/widget/Chronometer$1;->this$0:Landroid/widget/Chronometer;

    #@2
    invoke-static {v0}, Landroid/widget/Chronometer;->-get0(Landroid/widget/Chronometer;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 309
    iget-object v0, p0, Landroid/widget/Chronometer$1;->this$0:Landroid/widget/Chronometer;

    #@a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@d
    move-result-wide v2

    #@e
    invoke-static {v0, v2, v3}, Landroid/widget/Chronometer;->-wrap0(Landroid/widget/Chronometer;J)V

    #@11
    .line 310
    iget-object v0, p0, Landroid/widget/Chronometer$1;->this$0:Landroid/widget/Chronometer;

    #@13
    invoke-virtual {v0}, Landroid/widget/Chronometer;->dispatchChronometerTick()V

    #@16
    .line 311
    iget-object v0, p0, Landroid/widget/Chronometer$1;->this$0:Landroid/widget/Chronometer;

    #@18
    iget-object v1, p0, Landroid/widget/Chronometer$1;->this$0:Landroid/widget/Chronometer;

    #@1a
    invoke-static {v1}, Landroid/widget/Chronometer;->-get1(Landroid/widget/Chronometer;)Ljava/lang/Runnable;

    #@1d
    move-result-object v1

    #@1e
    const-wide/16 v2, 0x3e8

    #@20
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Chronometer;->postDelayed(Ljava/lang/Runnable;J)Z

    #@23
    .line 307
    :cond_0
    return-void
.end method
