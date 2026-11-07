.class final Landroid/view/Choreographer$CallbackQueue;
.super Ljava/lang/Object;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallbackQueue"
.end annotation


# instance fields
.field private greylist-max-o mHead:Landroid/view/Choreographer$CallbackRecord;

.field final synthetic blacklist this$0:Landroid/view/Choreographer;


# direct methods
.method private constructor blacklist <init>(Landroid/view/Choreographer;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1585
    iput-object p1, p0, Landroid/view/Choreographer$CallbackQueue;->this$0:Landroid/view/Choreographer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/Choreographer;Landroid/view/Choreographer-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/Choreographer$CallbackQueue;-><init>(Landroid/view/Choreographer;)V

    return-void
.end method


# virtual methods
.method public greylist addCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .param p1, "dueTime"    # J
    .param p3, "action"    # Ljava/lang/Object;
    .param p4, "token"    # Ljava/lang/Object;

    .line 1614
    iget-object v0, p0, Landroid/view/Choreographer$CallbackQueue;->this$0:Landroid/view/Choreographer;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/view/Choreographer;->-$$Nest$mobtainCallbackLocked(Landroid/view/Choreographer;JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;

    move-result-object v0

    .line 1615
    .local v0, "callback":Landroid/view/Choreographer$CallbackRecord;
    iget-object v1, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    .line 1616
    .local v1, "entry":Landroid/view/Choreographer$CallbackRecord;
    if-nez v1, :cond_d

    .line 1617
    iput-object v0, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    .line 1618
    return-void

    .line 1620
    :cond_d
    iget-wide v2, v1, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    cmp-long v2, p1, v2

    if-gez v2, :cond_18

    .line 1621
    iput-object v1, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 1622
    iput-object v0, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    .line 1623
    return-void

    .line 1625
    :cond_18
    :goto_18
    iget-object v2, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    if-eqz v2, :cond_2c

    .line 1626
    iget-object v2, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    iget-wide v2, v2, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    cmp-long v2, p1, v2

    if-gez v2, :cond_29

    .line 1627
    iget-object v2, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    iput-object v2, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 1628
    goto :goto_2c

    .line 1630
    :cond_29
    iget-object v1, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    goto :goto_18

    .line 1632
    :cond_2c
    :goto_2c
    iput-object v0, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 1633
    return-void
.end method

.method public greylist-max-o extractDueCallbacksLocked(J)Landroid/view/Choreographer$CallbackRecord;
    .registers 9
    .param p1, "now"    # J

    .line 1593
    iget-object v0, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    .line 1594
    .local v0, "callbacks":Landroid/view/Choreographer$CallbackRecord;
    const/4 v1, 0x0

    if-eqz v0, :cond_21

    iget-wide v2, v0, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    cmp-long v2, v2, p1

    if-lez v2, :cond_c

    goto :goto_21

    .line 1598
    :cond_c
    move-object v2, v0

    .line 1599
    .local v2, "last":Landroid/view/Choreographer$CallbackRecord;
    iget-object v3, v2, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 1600
    .local v3, "next":Landroid/view/Choreographer$CallbackRecord;
    :goto_f
    if-eqz v3, :cond_1e

    .line 1601
    iget-wide v4, v3, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    cmp-long v4, v4, p1

    if-lez v4, :cond_1a

    .line 1602
    iput-object v1, v2, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 1603
    goto :goto_1e

    .line 1605
    :cond_1a
    move-object v2, v3

    .line 1606
    iget-object v3, v3, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    goto :goto_f

    .line 1608
    :cond_1e
    :goto_1e
    iput-object v3, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    .line 1609
    return-object v0

    .line 1595
    .end local v2    # "last":Landroid/view/Choreographer$CallbackRecord;
    .end local v3    # "next":Landroid/view/Choreographer$CallbackRecord;
    :cond_21
    :goto_21
    return-object v1
.end method

.method public greylist-max-o hasDueCallbacksLocked(J)Z
    .registers 5
    .param p1, "now"    # J

    .line 1589
    iget-object v0, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    iget-wide v0, v0, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    cmp-long v0, v0, p1

    if-gtz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public greylist-max-o removeCallbacksLocked(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .param p1, "action"    # Ljava/lang/Object;
    .param p2, "token"    # Ljava/lang/Object;

    .line 1636
    const/4 v0, 0x0

    .line 1637
    .local v0, "predecessor":Landroid/view/Choreographer$CallbackRecord;
    iget-object v1, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    .local v1, "callback":Landroid/view/Choreographer$CallbackRecord;
    :goto_3
    if-eqz v1, :cond_24

    .line 1638
    iget-object v2, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 1639
    .local v2, "next":Landroid/view/Choreographer$CallbackRecord;
    if-eqz p1, :cond_d

    iget-object v3, v1, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    if-ne v3, p1, :cond_14

    :cond_d
    if-eqz p2, :cond_16

    iget-object v3, v1, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    if-ne v3, p2, :cond_14

    goto :goto_16

    .line 1648
    :cond_14
    move-object v0, v1

    goto :goto_22

    .line 1641
    :cond_16
    :goto_16
    if-eqz v0, :cond_1b

    .line 1642
    iput-object v2, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    goto :goto_1d

    .line 1644
    :cond_1b
    iput-object v2, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    .line 1646
    :goto_1d
    iget-object v3, p0, Landroid/view/Choreographer$CallbackQueue;->this$0:Landroid/view/Choreographer;

    invoke-static {v3, v1}, Landroid/view/Choreographer;->-$$Nest$mrecycleCallbackLocked(Landroid/view/Choreographer;Landroid/view/Choreographer$CallbackRecord;)V

    .line 1650
    :goto_22
    move-object v1, v2

    .line 1651
    .end local v2    # "next":Landroid/view/Choreographer$CallbackRecord;
    goto :goto_3

    .line 1652
    .end local v1    # "callback":Landroid/view/Choreographer$CallbackRecord;
    :cond_24
    return-void
.end method
