.class Landroid/view/HandlerActionQueue$HandlerAction;
.super Ljava/lang/Object;
.source "HandlerActionQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/HandlerActionQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandlerAction"
.end annotation


# instance fields
.field final greylist-max-o action:Ljava/lang/Runnable;

.field final greylist-max-o delay:J


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/Runnable;J)V
    .registers 4
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Landroid/view/HandlerActionQueue$HandlerAction;->action:Ljava/lang/Runnable;

    .line 117
    iput-wide p2, p0, Landroid/view/HandlerActionQueue$HandlerAction;->delay:J

    .line 118
    return-void
.end method


# virtual methods
.method public greylist-max-o matches(Ljava/lang/Runnable;)Z
    .registers 3
    .param p1, "otherAction"    # Ljava/lang/Runnable;

    .line 121
    if-nez p1, :cond_6

    iget-object v0, p0, Landroid/view/HandlerActionQueue$HandlerAction;->action:Ljava/lang/Runnable;

    if-eqz v0, :cond_12

    :cond_6
    iget-object v0, p0, Landroid/view/HandlerActionQueue$HandlerAction;->action:Ljava/lang/Runnable;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/view/HandlerActionQueue$HandlerAction;->action:Ljava/lang/Runnable;

    .line 122
    invoke-interface {v0, p1}, Ljava/lang/Runnable;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 121
    :goto_15
    return v0
.end method
