.class final Landroid/os/MessageQueue$MatchHandler;
.super Landroid/os/MessageQueue$MessageCompare;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MessageQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MatchHandler"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 1639
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/MessageQueue$MessageCompare;-><init>(Landroid/os/MessageQueue-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/MessageQueue-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/MessageQueue$MatchHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compareMessage(Landroid/os/MessageQueue$MessageNode;Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;J)Z
    .registers 9
    .param p1, "n"    # Landroid/os/MessageQueue$MessageNode;
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "what"    # I
    .param p4, "object"    # Ljava/lang/Object;
    .param p5, "r"    # Ljava/lang/Runnable;
    .param p6, "when"    # J

    .line 1643
    invoke-static {p1}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v0

    iget-object v0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v0, p2, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
