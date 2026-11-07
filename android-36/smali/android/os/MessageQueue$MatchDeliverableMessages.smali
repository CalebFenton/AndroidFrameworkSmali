.class final Landroid/os/MessageQueue$MatchDeliverableMessages;
.super Landroid/os/MessageQueue$MessageCompare;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MessageQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MatchDeliverableMessages"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 268
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/MessageQueue$MessageCompare;-><init>(Landroid/os/MessageQueue-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/MessageQueue-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/MessageQueue$MatchDeliverableMessages;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compareMessage(Landroid/os/MessageQueue$MessageNode;Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;J)Z
    .registers 10
    .param p1, "n"    # Landroid/os/MessageQueue$MessageNode;
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "what"    # I
    .param p4, "object"    # Ljava/lang/Object;
    .param p5, "r"    # Ljava/lang/Runnable;
    .param p6, "when"    # J

    .line 272
    invoke-static {p1}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v0

    iget-wide v0, v0, Landroid/os/Message;->when:J

    cmp-long v0, v0, p6

    if-gtz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method
