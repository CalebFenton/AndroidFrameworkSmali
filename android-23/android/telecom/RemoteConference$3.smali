.class Landroid/telecom/RemoteConference$3;
.super Ljava/lang/Object;
.source "RemoteConference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/RemoteConference;->addConnection(Landroid/telecom/RemoteConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/RemoteConference;

.field final synthetic val$callback:Landroid/telecom/RemoteConference$Callback;

.field final synthetic val$conference:Landroid/telecom/RemoteConference;

.field final synthetic val$connection:Landroid/telecom/RemoteConnection;


# direct methods
.method constructor <init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConnection;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/RemoteConference;
    .param p2, "val$callback"    # Landroid/telecom/RemoteConference$Callback;
    .param p3, "val$conference"    # Landroid/telecom/RemoteConference;
    .param p4, "val$connection"    # Landroid/telecom/RemoteConnection;

    #@0
    .prologue
    .line 200
    iput-object p1, p0, Landroid/telecom/RemoteConference$3;->this$0:Landroid/telecom/RemoteConference;

    #@2
    iput-object p2, p0, Landroid/telecom/RemoteConference$3;->val$callback:Landroid/telecom/RemoteConference$Callback;

    #@4
    iput-object p3, p0, Landroid/telecom/RemoteConference$3;->val$conference:Landroid/telecom/RemoteConference;

    #@6
    iput-object p4, p0, Landroid/telecom/RemoteConference$3;->val$connection:Landroid/telecom/RemoteConnection;

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
    .line 203
    iget-object v0, p0, Landroid/telecom/RemoteConference$3;->val$callback:Landroid/telecom/RemoteConference$Callback;

    #@2
    iget-object v1, p0, Landroid/telecom/RemoteConference$3;->val$conference:Landroid/telecom/RemoteConference;

    #@4
    iget-object v2, p0, Landroid/telecom/RemoteConference$3;->val$connection:Landroid/telecom/RemoteConnection;

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/telecom/RemoteConference$Callback;->onConnectionAdded(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConnection;)V

    #@9
    .line 202
    return-void
.end method
