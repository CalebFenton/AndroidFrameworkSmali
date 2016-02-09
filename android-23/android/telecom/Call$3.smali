.class Landroid/telecom/Call$3;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/Call;->fireChildrenChanged(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/Call;

.field final synthetic val$call:Landroid/telecom/Call;

.field final synthetic val$callback:Landroid/telecom/Call$Callback;

.field final synthetic val$children:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/Call;
    .param p2, "val$callback"    # Landroid/telecom/Call$Callback;
    .param p3, "val$call"    # Landroid/telecom/Call;

    #@0
    .prologue
    .line 1133
    .local p4, "val$children":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    iput-object p1, p0, Landroid/telecom/Call$3;->this$0:Landroid/telecom/Call;

    #@2
    iput-object p2, p0, Landroid/telecom/Call$3;->val$callback:Landroid/telecom/Call$Callback;

    #@4
    iput-object p3, p0, Landroid/telecom/Call$3;->val$call:Landroid/telecom/Call;

    #@6
    iput-object p4, p0, Landroid/telecom/Call$3;->val$children:Ljava/util/List;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 1136
    iget-object v0, p0, Landroid/telecom/Call$3;->val$callback:Landroid/telecom/Call$Callback;

    #@2
    iget-object v1, p0, Landroid/telecom/Call$3;->val$call:Landroid/telecom/Call;

    #@4
    iget-object v2, p0, Landroid/telecom/Call$3;->val$children:Ljava/util/List;

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/telecom/Call$Callback;->onChildrenChanged(Landroid/telecom/Call;Ljava/util/List;)V

    #@9
    .line 1135
    return-void
.end method
