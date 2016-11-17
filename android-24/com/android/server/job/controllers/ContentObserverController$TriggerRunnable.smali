.class final Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;
.super Ljava/lang/Object;
.source "ContentObserverController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/ContentObserverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TriggerRunnable"
.end annotation


# instance fields
.field final mInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/ContentObserverController$JobInstance;)V
    .locals 0
    .param p1, "instance"    # Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@0
    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 243
    iput-object p1, p0, Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;->mInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@5
    .line 242
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    #@0
    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;->mInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@2
    invoke-virtual {v0}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->trigger()V

    #@5
    .line 246
    return-void
.end method
