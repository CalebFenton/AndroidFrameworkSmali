.class Lcom/android/server/display/OverlayDisplayAdapter$1$1;
.super Landroid/database/ContentObserver;
.source "OverlayDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/OverlayDisplayAdapter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/OverlayDisplayAdapter$1;


# direct methods
.method constructor <init>(Lcom/android/server/display/OverlayDisplayAdapter$1;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/display/OverlayDisplayAdapter$1;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$1$1;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$1;

    #@2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@5
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$1$1;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$1;

    #@2
    iget-object v0, v0, Lcom/android/server/display/OverlayDisplayAdapter$1;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    #@4
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayAdapter;->-wrap0(Lcom/android/server/display/OverlayDisplayAdapter;)V

    #@7
    .line 120
    return-void
.end method
