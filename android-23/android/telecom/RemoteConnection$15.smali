.class Landroid/telecom/RemoteConnection$15;
.super Ljava/lang/Object;
.source "RemoteConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/RemoteConnection;->setConference(Landroid/telecom/RemoteConference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/RemoteConnection;

.field final synthetic val$callback:Landroid/telecom/RemoteConnection$Callback;

.field final synthetic val$conference:Landroid/telecom/RemoteConference;

.field final synthetic val$connection:Landroid/telecom/RemoteConnection;


# direct methods
.method constructor <init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConference;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/RemoteConnection;
    .param p2, "val$callback"    # Landroid/telecom/RemoteConnection$Callback;
    .param p3, "val$connection"    # Landroid/telecom/RemoteConnection;
    .param p4, "val$conference"    # Landroid/telecom/RemoteConference;

    #@0
    .prologue
    .line 1269
    iput-object p1, p0, Landroid/telecom/RemoteConnection$15;->this$0:Landroid/telecom/RemoteConnection;

    #@2
    iput-object p2, p0, Landroid/telecom/RemoteConnection$15;->val$callback:Landroid/telecom/RemoteConnection$Callback;

    #@4
    iput-object p3, p0, Landroid/telecom/RemoteConnection$15;->val$connection:Landroid/telecom/RemoteConnection;

    #@6
    iput-object p4, p0, Landroid/telecom/RemoteConnection$15;->val$conference:Landroid/telecom/RemoteConference;

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
    .line 1272
    iget-object v0, p0, Landroid/telecom/RemoteConnection$15;->val$callback:Landroid/telecom/RemoteConnection$Callback;

    #@2
    iget-object v1, p0, Landroid/telecom/RemoteConnection$15;->val$connection:Landroid/telecom/RemoteConnection;

    #@4
    iget-object v2, p0, Landroid/telecom/RemoteConnection$15;->val$conference:Landroid/telecom/RemoteConference;

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/telecom/RemoteConnection$Callback;->onConferenceChanged(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConference;)V

    #@9
    .line 1271
    return-void
.end method
