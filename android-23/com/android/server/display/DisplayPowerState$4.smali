.class Lcom/android/server/display/DisplayPowerState$4;
.super Ljava/lang/Object;
.source "DisplayPowerState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerState;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/DisplayPowerState;

    #@0
    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerState;->-set0(Lcom/android/server/display/DisplayPowerState;Z)Z

    #@6
    .line 322
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    #@8
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->-get4(Lcom/android/server/display/DisplayPowerState;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 323
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    #@10
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->-get2(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/ColorFade;

    #@13
    move-result-object v0

    #@14
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    #@16
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerState;->-get3(Lcom/android/server/display/DisplayPowerState;)F

    #@19
    move-result v1

    #@1a
    invoke-virtual {v0, v1}, Lcom/android/server/display/ColorFade;->draw(F)Z

    #@1d
    .line 326
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    #@1f
    const/4 v1, 0x1

    #@20
    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerState;->-set1(Lcom/android/server/display/DisplayPowerState;Z)Z

    #@23
    .line 327
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    #@25
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->-wrap0(Lcom/android/server/display/DisplayPowerState;)V

    #@28
    .line 319
    return-void
.end method
