.class final Lcom/android/server/media/MediaRouterService$UserRecord;
.super Ljava/lang/Object;
.source "MediaRouterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaRouterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UserRecord"
.end annotation


# instance fields
.field public final mClientRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaRouterService$ClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

.field public mTrustedState:Landroid/media/MediaRouterClientState;

.field public mUntrustedState:Landroid/media/MediaRouterClientState;

.field public final mUserId:I

.field final synthetic this$0:Lcom/android/server/media/MediaRouterService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRouterService;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/media/MediaRouterService;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 555
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->this$0:Lcom/android/server/media/MediaRouterService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 550
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    #@c
    .line 556
    iput p2, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mUserId:I

    #@e
    .line 557
    new-instance v0, Lcom/android/server/media/MediaRouterService$UserHandler;

    #@10
    invoke-direct {v0, p1, p0}, Lcom/android/server/media/MediaRouterService$UserHandler;-><init>(Lcom/android/server/media/MediaRouterService;Lcom/android/server/media/MediaRouterService$UserRecord;)V

    #@13
    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    #@15
    .line 555
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 561
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v3

    #@9
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v3

    #@d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@14
    .line 563
    new-instance v3, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    const-string/jumbo v4, "  "

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    .line 564
    .local v2, "indent":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    #@2a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@2d
    move-result v0

    #@2e
    .line 565
    .local v0, "clientCount":I
    if-eqz v0, :cond_0

    #@30
    .line 566
    const/4 v1, 0x0

    #@31
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@33
    .line 567
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    #@35
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@38
    move-result-object v3

    #@39
    check-cast v3, Lcom/android/server/media/MediaRouterService$ClientRecord;

    #@3b
    invoke-virtual {v3, p1, v2}, Lcom/android/server/media/MediaRouterService$ClientRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@3e
    .line 566
    add-int/lit8 v1, v1, 0x1

    #@40
    goto :goto_0

    #@41
    .line 570
    .end local v1    # "i":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v3

    #@4a
    const-string/jumbo v4, "<no clients>"

    #@4d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v3

    #@55
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@58
    .line 573
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v3

    #@61
    const-string/jumbo v4, "State"

    #@64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v3

    #@68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v3

    #@6c
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6f
    .line 574
    new-instance v3, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v3

    #@78
    const-string/jumbo v4, "mTrustedState="

    #@7b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v3

    #@7f
    iget-object v4, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mTrustedState:Landroid/media/MediaRouterClientState;

    #@81
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v3

    #@85
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v3

    #@89
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8c
    .line 575
    new-instance v3, Ljava/lang/StringBuilder;

    #@8e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@91
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v3

    #@95
    const-string/jumbo v4, "mUntrustedState="

    #@98
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v3

    #@9c
    iget-object v4, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mUntrustedState:Landroid/media/MediaRouterClientState;

    #@9e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v3

    #@a2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v3

    #@a6
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a9
    .line 577
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    #@ab
    new-instance v4, Lcom/android/server/media/MediaRouterService$UserRecord$1;

    #@ad
    invoke-direct {v4, p0, p1, v2}, Lcom/android/server/media/MediaRouterService$UserRecord$1;-><init>(Lcom/android/server/media/MediaRouterService$UserRecord;Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@b0
    .line 582
    const-wide/16 v6, 0x3e8

    #@b2
    .line 577
    invoke-virtual {v3, v4, v6, v7}, Lcom/android/server/media/MediaRouterService$UserHandler;->runWithScissors(Ljava/lang/Runnable;J)Z

    #@b5
    move-result v3

    #@b6
    if-nez v3, :cond_2

    #@b8
    .line 583
    new-instance v3, Ljava/lang/StringBuilder;

    #@ba
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@bd
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v3

    #@c1
    const-string/jumbo v4, "<could not dump handler state>"

    #@c4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v3

    #@c8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cb
    move-result-object v3

    #@cc
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@cf
    .line 560
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "User "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mUserId:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method
