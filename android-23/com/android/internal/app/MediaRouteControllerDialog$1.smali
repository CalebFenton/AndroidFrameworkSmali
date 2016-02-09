.class Lcom/android/internal/app/MediaRouteControllerDialog$1;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/MediaRouteControllerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/MediaRouteControllerDialog$1$1;
    }
.end annotation


# instance fields
.field private final mStopTrackingTouch:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/internal/app/MediaRouteControllerDialog;


# direct methods
.method constructor <init>(Lcom/android/internal/app/MediaRouteControllerDialog;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/app/MediaRouteControllerDialog;

    #@0
    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteControllerDialog$1;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 144
    new-instance v0, Lcom/android/internal/app/MediaRouteControllerDialog$1$1;

    #@7
    invoke-direct {v0, p0}, Lcom/android/internal/app/MediaRouteControllerDialog$1$1;-><init>(Lcom/android/internal/app/MediaRouteControllerDialog$1;)V

    #@a
    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$1;->mStopTrackingTouch:Ljava/lang/Runnable;

    #@c
    .line 143
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    #@0
    .prologue
    .line 173
    if-eqz p3, :cond_0

    #@2
    .line 174
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$1;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    #@4
    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->-get0(Lcom/android/internal/app/MediaRouteControllerDialog;)Landroid/media/MediaRouter$RouteInfo;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p2}, Landroid/media/MediaRouter$RouteInfo;->requestSetVolume(I)V

    #@b
    .line 172
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    #@0
    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$1;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    #@2
    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->-get3(Lcom/android/internal/app/MediaRouteControllerDialog;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 157
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$1;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    #@a
    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->-get2(Lcom/android/internal/app/MediaRouteControllerDialog;)Landroid/widget/SeekBar;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog$1;->mStopTrackingTouch:Ljava/lang/Runnable;

    #@10
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@13
    .line 155
    :goto_0
    return-void

    #@14
    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$1;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    #@16
    const/4 v1, 0x1

    #@17
    invoke-static {v0, v1}, Lcom/android/internal/app/MediaRouteControllerDialog;->-set0(Lcom/android/internal/app/MediaRouteControllerDialog;Z)Z

    #@1a
    goto :goto_0
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    #@0
    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$1;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    #@2
    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->-get2(Lcom/android/internal/app/MediaRouteControllerDialog;)Landroid/widget/SeekBar;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog$1;->mStopTrackingTouch:Ljava/lang/Runnable;

    #@8
    const-wide/16 v2, 0xfa

    #@a
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/SeekBar;->postDelayed(Ljava/lang/Runnable;J)Z

    #@d
    .line 164
    return-void
.end method
