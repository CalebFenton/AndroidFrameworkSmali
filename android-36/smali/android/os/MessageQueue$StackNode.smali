.class Landroid/os/MessageQueue$StackNode;
.super Ljava/lang/Object;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MessageQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StackNode"
.end annotation


# instance fields
.field private final blacklist mType:I


# direct methods
.method constructor blacklist <init>(I)V
    .registers 2
    .param p1, "type"    # I

    .line 2501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2502
    iput p1, p0, Landroid/os/MessageQueue$StackNode;->mType:I

    .line 2503
    return-void
.end method


# virtual methods
.method final blacklist getNodeType()I
    .registers 2

    .line 2507
    iget v0, p0, Landroid/os/MessageQueue$StackNode;->mType:I

    return v0
.end method

.method final blacklist isMessageNode()Z
    .registers 2

    .line 2511
    iget v0, p0, Landroid/os/MessageQueue$StackNode;->mType:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
