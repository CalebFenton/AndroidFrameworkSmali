.class Lcom/android/server/media/MediaRouterService$UserRecord$1;
.super Ljava/lang/Object;
.source "MediaRouterService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/MediaRouterService$UserRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/media/MediaRouterService$UserRecord;

.field final synthetic val$indent:Ljava/lang/String;

.field final synthetic val$pw:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaRouterService$UserRecord;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/media/MediaRouterService$UserRecord;
    .param p2, "val$pw"    # Ljava/io/PrintWriter;
    .param p3, "val$indent"    # Ljava/lang/String;

    #@0
    .prologue
    .line 577
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserRecord$1;->this$1:Lcom/android/server/media/MediaRouterService$UserRecord;

    #@2
    iput-object p2, p0, Lcom/android/server/media/MediaRouterService$UserRecord$1;->val$pw:Ljava/io/PrintWriter;

    #@4
    iput-object p3, p0, Lcom/android/server/media/MediaRouterService$UserRecord$1;->val$indent:Ljava/lang/String;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserRecord$1;->this$1:Lcom/android/server/media/MediaRouterService$UserRecord;

    #@2
    iget-object v0, v0, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    #@4
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserRecord$1;->val$pw:Ljava/io/PrintWriter;

    #@6
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserRecord$1;->val$indent:Ljava/lang/String;

    #@8
    invoke-virtual {v0, v1, v2}, Lcom/android/server/media/MediaRouterService$UserHandler;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@b
    .line 579
    return-void
.end method
