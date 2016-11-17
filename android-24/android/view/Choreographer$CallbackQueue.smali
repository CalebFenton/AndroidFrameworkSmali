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
.field private mHead:Landroid/view/Choreographer$CallbackRecord;

.field final synthetic this$0:Landroid/view/Choreographer;


# direct methods
.method private constructor <init>(Landroid/view/Choreographer;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/Choreographer;

    #@0
    .prologue
    .line 876
    iput-object p1, p0, Landroid/view/Choreographer$CallbackQueue;->this$0:Landroid/view/Choreographer;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/Choreographer;Landroid/view/Choreographer$CallbackQueue;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/Choreographer;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/Choreographer$CallbackQueue;-><init>(Landroid/view/Choreographer;)V

    #@3
    return-void
.end method


# virtual methods
.method public addCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .param p1, "dueTime"    # J
    .param p3, "action"    # Ljava/lang/Object;
    .param p4, "token"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 904
    iget-object v2, p0, Landroid/view/Choreographer$CallbackQueue;->this$0:Landroid/view/Choreographer;

    #@2
    invoke-static {v2, p1, p2, p3, p4}, Landroid/view/Choreographer;->-wrap0(Landroid/view/Choreographer;JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;

    #@5
    move-result-object v0

    #@6
    .line 905
    .local v0, "callback":Landroid/view/Choreographer$CallbackRecord;
    iget-object v1, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    #@8
    .line 906
    .local v1, "entry":Landroid/view/Choreographer$CallbackRecord;
    if-nez v1, :cond_0

    #@a
    .line 907
    iput-object v0, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    #@c
    .line 908
    return-void

    #@d
    .line 910
    :cond_0
    iget-wide v2, v1, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    #@f
    cmp-long v2, p1, v2

    #@11
    if-gez v2, :cond_2

    #@13
    .line 911
    iput-object v1, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    #@15
    .line 912
    iput-object v0, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    #@17
    .line 913
    return-void

    #@18
    .line 920
    :cond_1
    iget-object v1, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    #@1a
    .line 915
    :cond_2
    iget-object v2, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    #@1c
    if-eqz v2, :cond_3

    #@1e
    .line 916
    iget-object v2, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    #@20
    iget-wide v2, v2, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    #@22
    cmp-long v2, p1, v2

    #@24
    if-gez v2, :cond_1

    #@26
    .line 917
    iget-object v2, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    #@28
    iput-object v2, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    #@2a
    .line 922
    :cond_3
    iput-object v0, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    #@2c
    .line 903
    return-void
.end method

.method public extractDueCallbacksLocked(J)Landroid/view/Choreographer$CallbackRecord;
    .locals 7
    .param p1, "now"    # J

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 884
    iget-object v0, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    #@3
    .line 885
    .local v0, "callbacks":Landroid/view/Choreographer$CallbackRecord;
    if-eqz v0, :cond_0

    #@5
    iget-wide v4, v0, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    #@7
    cmp-long v3, v4, p1

    #@9
    if-lez v3, :cond_1

    #@b
    .line 886
    :cond_0
    return-object v6

    #@c
    .line 889
    :cond_1
    move-object v1, v0

    #@d
    .line 890
    .local v1, "last":Landroid/view/Choreographer$CallbackRecord;
    iget-object v2, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    #@f
    .line 891
    .local v2, "next":Landroid/view/Choreographer$CallbackRecord;
    :goto_0
    if-eqz v2, :cond_2

    #@11
    .line 892
    iget-wide v4, v2, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    #@13
    cmp-long v3, v4, p1

    #@15
    if-lez v3, :cond_3

    #@17
    .line 893
    iput-object v6, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    #@19
    .line 899
    :cond_2
    iput-object v2, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    #@1b
    .line 900
    return-object v0

    #@1c
    .line 896
    :cond_3
    move-object v1, v2

    #@1d
    .line 897
    iget-object v2, v2, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    #@1f
    goto :goto_0
.end method

.method public hasDueCallbacksLocked(J)Z
    .locals 5
    .param p1, "now"    # J

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 880
    iget-object v1, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    #@7
    iget-wide v2, v1, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    #@9
    cmp-long v1, v2, p1

    #@b
    if-gtz v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public removeCallbacksLocked(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/Object;
    .param p2, "token"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 926
    const/4 v2, 0x0

    #@1
    .line 927
    .local v2, "predecessor":Landroid/view/Choreographer$CallbackRecord;
    iget-object v0, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    #@3
    .end local v2    # "predecessor":Landroid/view/Choreographer$CallbackRecord;
    .local v0, "callback":Landroid/view/Choreographer$CallbackRecord;
    :goto_0
    if-eqz v0, :cond_4

    #@5
    .line 928
    iget-object v1, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    #@7
    .line 929
    .local v1, "next":Landroid/view/Choreographer$CallbackRecord;
    if-eqz p1, :cond_0

    #@9
    iget-object v3, v0, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    #@b
    if-ne v3, p1, :cond_3

    #@d
    .line 930
    :cond_0
    if-eqz p2, :cond_1

    #@f
    iget-object v3, v0, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    #@11
    if-ne v3, p2, :cond_3

    #@13
    .line 931
    :cond_1
    if-eqz v2, :cond_2

    #@15
    .line 932
    iput-object v1, v2, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    #@17
    .line 936
    :goto_1
    iget-object v3, p0, Landroid/view/Choreographer$CallbackQueue;->this$0:Landroid/view/Choreographer;

    #@19
    invoke-static {v3, v0}, Landroid/view/Choreographer;->-wrap1(Landroid/view/Choreographer;Landroid/view/Choreographer$CallbackRecord;)V

    #@1c
    .line 940
    :goto_2
    move-object v0, v1

    #@1d
    goto :goto_0

    #@1e
    .line 934
    :cond_2
    iput-object v1, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    #@20
    goto :goto_1

    #@21
    .line 938
    :cond_3
    move-object v2, v0

    #@22
    .local v2, "predecessor":Landroid/view/Choreographer$CallbackRecord;
    goto :goto_2

    #@23
    .line 925
    .end local v1    # "next":Landroid/view/Choreographer$CallbackRecord;
    .end local v2    # "predecessor":Landroid/view/Choreographer$CallbackRecord;
    :cond_4
    return-void
.end method
