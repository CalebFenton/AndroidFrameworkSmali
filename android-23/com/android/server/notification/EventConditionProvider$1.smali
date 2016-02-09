.class Lcom/android/server/notification/EventConditionProvider$1;
.super Ljava/lang/Object;
.source "EventConditionProvider.java"

# interfaces
.implements Lcom/android/server/notification/CalendarTracker$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/EventConditionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/EventConditionProvider;


# direct methods
.method constructor <init>(Lcom/android/server/notification/EventConditionProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/EventConditionProvider;

    #@0
    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/server/notification/EventConditionProvider$1;->this$0:Lcom/android/server/notification/EventConditionProvider;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 4

    #@0
    .prologue
    .line 309
    invoke-static {}, Lcom/android/server/notification/EventConditionProvider;->-get0()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const-string/jumbo v0, "ConditionProviders.ECP"

    #@9
    const-string/jumbo v1, "mTrackerCallback.onChanged"

    #@c
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 310
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider$1;->this$0:Lcom/android/server/notification/EventConditionProvider;

    #@11
    invoke-static {v0}, Lcom/android/server/notification/EventConditionProvider;->-get2(Lcom/android/server/notification/EventConditionProvider;)Landroid/os/Handler;

    #@14
    move-result-object v0

    #@15
    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider$1;->this$0:Lcom/android/server/notification/EventConditionProvider;

    #@17
    invoke-static {v1}, Lcom/android/server/notification/EventConditionProvider;->-get1(Lcom/android/server/notification/EventConditionProvider;)Ljava/lang/Runnable;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@1e
    .line 311
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider$1;->this$0:Lcom/android/server/notification/EventConditionProvider;

    #@20
    invoke-static {v0}, Lcom/android/server/notification/EventConditionProvider;->-get2(Lcom/android/server/notification/EventConditionProvider;)Landroid/os/Handler;

    #@23
    move-result-object v0

    #@24
    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider$1;->this$0:Lcom/android/server/notification/EventConditionProvider;

    #@26
    invoke-static {v1}, Lcom/android/server/notification/EventConditionProvider;->-get1(Lcom/android/server/notification/EventConditionProvider;)Ljava/lang/Runnable;

    #@29
    move-result-object v1

    #@2a
    const-wide/16 v2, 0x7d0

    #@2c
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@2f
    .line 308
    return-void
.end method
