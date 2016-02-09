.class Landroid/filterfw/core/SyncRunner$1;
.super Ljava/lang/Object;
.source "SyncRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/filterfw/core/SyncRunner;->scheduleFilterWake(Landroid/filterfw/core/Filter;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/filterfw/core/SyncRunner;

.field final synthetic val$conditionToWake:Landroid/os/ConditionVariable;

.field final synthetic val$filterToSchedule:Landroid/filterfw/core/Filter;


# direct methods
.method constructor <init>(Landroid/filterfw/core/SyncRunner;Landroid/filterfw/core/Filter;Landroid/os/ConditionVariable;)V
    .locals 0
    .param p1, "this$0"    # Landroid/filterfw/core/SyncRunner;
    .param p2, "val$filterToSchedule"    # Landroid/filterfw/core/Filter;
    .param p3, "val$conditionToWake"    # Landroid/os/ConditionVariable;

    #@0
    .prologue
    .line 181
    iput-object p1, p0, Landroid/filterfw/core/SyncRunner$1;->this$0:Landroid/filterfw/core/SyncRunner;

    #@2
    iput-object p2, p0, Landroid/filterfw/core/SyncRunner$1;->val$filterToSchedule:Landroid/filterfw/core/Filter;

    #@4
    iput-object p3, p0, Landroid/filterfw/core/SyncRunner$1;->val$conditionToWake:Landroid/os/ConditionVariable;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 184
    iget-object v0, p0, Landroid/filterfw/core/SyncRunner$1;->val$filterToSchedule:Landroid/filterfw/core/Filter;

    #@2
    const/4 v1, 0x4

    #@3
    invoke-virtual {v0, v1}, Landroid/filterfw/core/Filter;->unsetStatus(I)V

    #@6
    .line 185
    iget-object v0, p0, Landroid/filterfw/core/SyncRunner$1;->val$conditionToWake:Landroid/os/ConditionVariable;

    #@8
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    #@b
    .line 183
    return-void
.end method
