.class Landroid/telecom/Conference$1;
.super Landroid/telecom/Connection$Listener;
.source "Conference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Conference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/Conference;


# direct methods
.method constructor <init>(Landroid/telecom/Conference;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/Conference;

    #@0
    .prologue
    .line 78
    iput-object p1, p0, Landroid/telecom/Conference$1;->this$0:Landroid/telecom/Conference;

    #@2
    invoke-direct {p0}, Landroid/telecom/Connection$Listener;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onDestroyed(Landroid/telecom/Connection;)V
    .locals 1
    .param p1, "c"    # Landroid/telecom/Connection;

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Landroid/telecom/Conference$1;->this$0:Landroid/telecom/Conference;

    #@2
    invoke-static {v0}, Landroid/telecom/Conference;->-get0(Landroid/telecom/Conference;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 82
    iget-object v0, p0, Landroid/telecom/Conference$1;->this$0:Landroid/telecom/Conference;

    #@e
    invoke-static {v0}, Landroid/telecom/Conference;->-wrap0(Landroid/telecom/Conference;)V

    #@11
    .line 80
    :cond_0
    return-void
.end method
