.class Lcom/google/android/maps/MapView$Repainter;
.super Ljava/lang/Object;
.source "MapView.java"

# interfaces
.implements Landroid/com/google/googlenav/datarequest/DataRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/maps/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Repainter"
.end annotation


# instance fields
.field private mThread:Ljava/lang/Thread;

.field final synthetic this$0:Lcom/google/android/maps/MapView;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/maps/MapView;

    #@0
    .prologue
    .line 414
    iput-object p1, p0, Lcom/google/android/maps/MapView$Repainter;->this$0:Lcom/google/android/maps/MapView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onComplete(Landroid/com/google/googlenav/datarequest/DataRequest;)V
    .locals 1
    .param p1, "dataRequest"    # Landroid/com/google/googlenav/datarequest/DataRequest;

    #@0
    .prologue
    .line 444
    invoke-interface {p1}, Landroid/com/google/googlenav/datarequest/DataRequest;->isImmediate()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 445
    invoke-virtual {p0}, Lcom/google/android/maps/MapView$Repainter;->repaint()V

    #@9
    .line 443
    :cond_0
    return-void
.end method

.method public onNetworkError(IZLjava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "networkEverWorked"    # Z
    .param p3, "debugMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 449
    return-void
.end method

.method repaint()V
    .locals 1

    #@0
    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/android/maps/MapView$Repainter;->mThread:Ljava/lang/Thread;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/google/android/maps/MapView$Repainter;->mThread:Ljava/lang/Thread;

    #@6
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 422
    :goto_0
    return-void

    #@d
    .line 424
    :cond_0
    new-instance v0, Lcom/google/android/maps/MapView$Repainter$1;

    #@f
    invoke-direct {v0, p0}, Lcom/google/android/maps/MapView$Repainter$1;-><init>(Lcom/google/android/maps/MapView$Repainter;)V

    #@12
    iput-object v0, p0, Lcom/google/android/maps/MapView$Repainter;->mThread:Ljava/lang/Thread;

    #@14
    .line 434
    iget-object v0, p0, Lcom/google/android/maps/MapView$Repainter;->mThread:Ljava/lang/Thread;

    #@16
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@19
    goto :goto_0
.end method
