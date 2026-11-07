.class final Landroid/os/MessageQueue$MatchBarrierToken;
.super Landroid/os/MessageQueue$MessageCompare;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MessageQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MatchBarrierToken"
.end annotation


# instance fields
.field blacklist mBarrierToken:I


# direct methods
.method constructor blacklist <init>(I)V
    .registers 3
    .param p1, "token"    # I

    .line 1175
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/MessageQueue$MessageCompare;-><init>(Landroid/os/MessageQueue-IA;)V

    .line 1176
    iput p1, p0, Landroid/os/MessageQueue$MatchBarrierToken;->mBarrierToken:I

    .line 1177
    return-void
.end method


# virtual methods
.method public blacklist compareMessage(Landroid/os/MessageQueue$MessageNode;Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;J)Z
    .registers 11
    .param p1, "n"    # Landroid/os/MessageQueue$MessageNode;
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "what"    # I
    .param p4, "object"    # Ljava/lang/Object;
    .param p5, "r"    # Ljava/lang/Runnable;
    .param p6, "when"    # J

    .line 1182
    invoke-static {p1}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v0

    .line 1183
    .local v0, "m":Landroid/os/Message;
    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v1, :cond_10

    iget v1, v0, Landroid/os/Message;->arg1:I

    iget v2, p0, Landroid/os/MessageQueue$MatchBarrierToken;->mBarrierToken:I

    if-ne v1, v2, :cond_10

    .line 1184
    const/4 v1, 0x1

    return v1

    .line 1186
    :cond_10
    const/4 v1, 0x0

    return v1
.end method
