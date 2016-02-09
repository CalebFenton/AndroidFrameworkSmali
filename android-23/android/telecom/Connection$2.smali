.class Landroid/telecom/Connection$2;
.super Landroid/telecom/Conference$Listener;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/Connection;


# direct methods
.method constructor <init>(Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/Connection;

    #@0
    .prologue
    .line 1046
    iput-object p1, p0, Landroid/telecom/Connection$2;->this$0:Landroid/telecom/Connection;

    #@2
    invoke-direct {p0}, Landroid/telecom/Conference$Listener;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onDestroyed(Landroid/telecom/Conference;)V
    .locals 1
    .param p1, "c"    # Landroid/telecom/Conference;

    #@0
    .prologue
    .line 1049
    iget-object v0, p0, Landroid/telecom/Connection$2;->this$0:Landroid/telecom/Connection;

    #@2
    invoke-static {v0}, Landroid/telecom/Connection;->-get0(Landroid/telecom/Connection;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1050
    iget-object v0, p0, Landroid/telecom/Connection$2;->this$0:Landroid/telecom/Connection;

    #@e
    invoke-static {v0}, Landroid/telecom/Connection;->-wrap0(Landroid/telecom/Connection;)V

    #@11
    .line 1048
    :cond_0
    return-void
.end method
