.class Lcom/google/android/maps/MapView$Repainter$1;
.super Ljava/lang/Thread;
.source "MapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/maps/MapView$Repainter;->repaint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/maps/MapView$Repainter;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapView$Repainter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/android/maps/MapView$Repainter;

    #@0
    .prologue
    .line 424
    iput-object p1, p0, Lcom/google/android/maps/MapView$Repainter$1;->this$1:Lcom/google/android/maps/MapView$Repainter;

    #@2
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 427
    const-wide/16 v2, 0x1f4

    #@2
    :try_start_0
    invoke-static {v2, v3}, Lcom/google/android/maps/MapView$Repainter$1;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 431
    :goto_0
    iget-object v1, p0, Lcom/google/android/maps/MapView$Repainter$1;->this$1:Lcom/google/android/maps/MapView$Repainter;

    #@7
    iget-object v1, v1, Lcom/google/android/maps/MapView$Repainter;->this$0:Lcom/google/android/maps/MapView;

    #@9
    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->postInvalidate()V

    #@c
    .line 425
    return-void

    #@d
    .line 428
    :catch_0
    move-exception v0

    #@e
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method
