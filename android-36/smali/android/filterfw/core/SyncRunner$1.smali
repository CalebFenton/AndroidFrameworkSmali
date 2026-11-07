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
.field final synthetic blacklist val$conditionToWake:Landroid/os/ConditionVariable;

.field final synthetic blacklist val$filterToSchedule:Landroid/filterfw/core/Filter;


# direct methods
.method constructor blacklist <init>(Landroid/filterfw/core/SyncRunner;Landroid/filterfw/core/Filter;Landroid/os/ConditionVariable;)V
    .registers 4
    .param p1, "this$0"    # Landroid/filterfw/core/SyncRunner;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 181
    iput-object p2, p0, Landroid/filterfw/core/SyncRunner$1;->val$filterToSchedule:Landroid/filterfw/core/Filter;

    iput-object p3, p0, Landroid/filterfw/core/SyncRunner$1;->val$conditionToWake:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 184
    iget-object v0, p0, Landroid/filterfw/core/SyncRunner$1;->val$filterToSchedule:Landroid/filterfw/core/Filter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/filterfw/core/Filter;->unsetStatus(I)V

    .line 185
    iget-object v0, p0, Landroid/filterfw/core/SyncRunner$1;->val$conditionToWake:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 186
    return-void
.end method
