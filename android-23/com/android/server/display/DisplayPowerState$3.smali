.class Lcom/android/server/display/DisplayPowerState$3;
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
    .line 296
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

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
    const/4 v3, 0x1

    #@1
    .line 299
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    #@3
    const/4 v2, 0x0

    #@4
    invoke-static {v1, v2}, Lcom/android/server/display/DisplayPowerState;->-set3(Lcom/android/server/display/DisplayPowerState;Z)Z

    #@7
    .line 301
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    #@9
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerState;->-get7(Lcom/android/server/display/DisplayPowerState;)I

    #@c
    move-result v1

    #@d
    if-eq v1, v3, :cond_2

    #@f
    .line 302
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    #@11
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerState;->-get3(Lcom/android/server/display/DisplayPowerState;)F

    #@14
    move-result v1

    #@15
    const/4 v2, 0x0

    #@16
    cmpl-float v1, v1, v2

    #@18
    if-lez v1, :cond_2

    #@1a
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    #@1c
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerState;->-get6(Lcom/android/server/display/DisplayPowerState;)I

    #@1f
    move-result v0

    #@20
    .line 303
    .local v0, "brightness":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    #@22
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerState;->-get5(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    #@25
    move-result-object v1

    #@26
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    #@28
    invoke-static {v2}, Lcom/android/server/display/DisplayPowerState;->-get7(Lcom/android/server/display/DisplayPowerState;)I

    #@2b
    move-result v2

    #@2c
    invoke-virtual {v1, v2, v0}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->setState(II)Z

    #@2f
    move-result v1

    #@30
    if-eqz v1, :cond_3

    #@32
    .line 304
    invoke-static {}, Lcom/android/server/display/DisplayPowerState;->-get0()Z

    #@35
    move-result v1

    #@36
    if-eqz v1, :cond_0

    #@38
    .line 305
    const-string/jumbo v1, "DisplayPowerState"

    #@3b
    const-string/jumbo v2, "Screen ready"

    #@3e
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    .line 307
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    #@43
    invoke-static {v1, v3}, Lcom/android/server/display/DisplayPowerState;->-set2(Lcom/android/server/display/DisplayPowerState;Z)Z

    #@46
    .line 308
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    #@48
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerState;->-wrap0(Lcom/android/server/display/DisplayPowerState;)V

    #@4b
    .line 298
    :cond_1
    :goto_1
    return-void

    #@4c
    .line 302
    .end local v0    # "brightness":I
    :cond_2
    const/4 v0, 0x0

    #@4d
    .restart local v0    # "brightness":I
    goto :goto_0

    #@4e
    .line 310
    :cond_3
    invoke-static {}, Lcom/android/server/display/DisplayPowerState;->-get0()Z

    #@51
    move-result v1

    #@52
    if-eqz v1, :cond_1

    #@54
    .line 311
    const-string/jumbo v1, "DisplayPowerState"

    #@57
    const-string/jumbo v2, "Screen not ready"

    #@5a
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5d
    goto :goto_1
.end method
