.class Lcom/android/server/trust/TrustManagerService$1$1;
.super Ljava/lang/Object;
.source "TrustManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/trust/TrustManagerService$1;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/trust/TrustManagerService$1;

.field final synthetic val$fout:Ljava/io/PrintWriter;

.field final synthetic val$userInfos:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/server/trust/TrustManagerService$1;Ljava/io/PrintWriter;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/trust/TrustManagerService$1;
    .param p2, "val$fout"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 778
    .local p3, "val$userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$1$1;->this$1:Lcom/android/server/trust/TrustManagerService$1;

    #@2
    iput-object p2, p0, Lcom/android/server/trust/TrustManagerService$1$1;->val$fout:Ljava/io/PrintWriter;

    #@4
    iput-object p3, p0, Lcom/android/server/trust/TrustManagerService$1$1;->val$userInfos:Ljava/util/List;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    .line 781
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$1$1;->val$fout:Ljava/io/PrintWriter;

    #@2
    const-string/jumbo v3, "Trust manager state:"

    #@5
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8
    .line 782
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$1$1;->val$userInfos:Ljava/util/List;

    #@a
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "user$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Landroid/content/pm/UserInfo;

    #@1a
    .line 783
    .local v0, "user":Landroid/content/pm/UserInfo;
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService$1$1;->this$1:Lcom/android/server/trust/TrustManagerService$1;

    #@1c
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$1$1;->val$fout:Ljava/io/PrintWriter;

    #@1e
    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    #@20
    iget-object v5, p0, Lcom/android/server/trust/TrustManagerService$1$1;->this$1:Lcom/android/server/trust/TrustManagerService$1;

    #@22
    iget-object v5, v5, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@24
    invoke-static {v5}, Lcom/android/server/trust/TrustManagerService;->-get2(Lcom/android/server/trust/TrustManagerService;)I

    #@27
    move-result v5

    #@28
    if-ne v2, v5, :cond_0

    #@2a
    const/4 v2, 0x1

    #@2b
    :goto_1
    invoke-static {v3, v4, v0, v2}, Lcom/android/server/trust/TrustManagerService$1;->-wrap0(Lcom/android/server/trust/TrustManagerService$1;Ljava/io/PrintWriter;Landroid/content/pm/UserInfo;Z)V

    #@2e
    goto :goto_0

    #@2f
    :cond_0
    const/4 v2, 0x0

    #@30
    goto :goto_1

    #@31
    .line 780
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    return-void
.end method
