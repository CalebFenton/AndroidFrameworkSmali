.class Landroid/telecom/RemoteConnection$1;
.super Ljava/lang/Object;
.source "RemoteConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/RemoteConnection;->setState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/RemoteConnection;

.field final synthetic val$callback:Landroid/telecom/RemoteConnection$Callback;

.field final synthetic val$connection:Landroid/telecom/RemoteConnection;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/RemoteConnection;
    .param p2, "val$callback"    # Landroid/telecom/RemoteConnection$Callback;
    .param p3, "val$connection"    # Landroid/telecom/RemoteConnection;
    .param p4, "val$state"    # I

    #@0
    .prologue
    .line 1022
    iput-object p1, p0, Landroid/telecom/RemoteConnection$1;->this$0:Landroid/telecom/RemoteConnection;

    #@2
    iput-object p2, p0, Landroid/telecom/RemoteConnection$1;->val$callback:Landroid/telecom/RemoteConnection$Callback;

    #@4
    iput-object p3, p0, Landroid/telecom/RemoteConnection$1;->val$connection:Landroid/telecom/RemoteConnection;

    #@6
    iput p4, p0, Landroid/telecom/RemoteConnection$1;->val$state:I

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
    .line 1025
    iget-object v0, p0, Landroid/telecom/RemoteConnection$1;->val$callback:Landroid/telecom/RemoteConnection$Callback;

    #@2
    iget-object v1, p0, Landroid/telecom/RemoteConnection$1;->val$connection:Landroid/telecom/RemoteConnection;

    #@4
    iget v2, p0, Landroid/telecom/RemoteConnection$1;->val$state:I

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/telecom/RemoteConnection$Callback;->onStateChanged(Landroid/telecom/RemoteConnection;I)V

    #@9
    .line 1024
    return-void
.end method
