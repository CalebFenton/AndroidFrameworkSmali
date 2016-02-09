.class Landroid/telecom/RemoteConference$5;
.super Ljava/lang/Object;
.source "RemoteConference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/RemoteConference;->setConnectionCapabilities(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/RemoteConference;

.field final synthetic val$callback:Landroid/telecom/RemoteConference$Callback;

.field final synthetic val$conference:Landroid/telecom/RemoteConference;


# direct methods
.method constructor <init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/RemoteConference;
    .param p2, "val$callback"    # Landroid/telecom/RemoteConference$Callback;
    .param p3, "val$conference"    # Landroid/telecom/RemoteConference;

    #@0
    .prologue
    .line 235
    iput-object p1, p0, Landroid/telecom/RemoteConference$5;->this$0:Landroid/telecom/RemoteConference;

    #@2
    iput-object p2, p0, Landroid/telecom/RemoteConference$5;->val$callback:Landroid/telecom/RemoteConference$Callback;

    #@4
    iput-object p3, p0, Landroid/telecom/RemoteConference$5;->val$conference:Landroid/telecom/RemoteConference;

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
    .line 238
    iget-object v0, p0, Landroid/telecom/RemoteConference$5;->val$callback:Landroid/telecom/RemoteConference$Callback;

    #@2
    .line 239
    iget-object v1, p0, Landroid/telecom/RemoteConference$5;->val$conference:Landroid/telecom/RemoteConference;

    #@4
    iget-object v2, p0, Landroid/telecom/RemoteConference$5;->this$0:Landroid/telecom/RemoteConference;

    #@6
    invoke-static {v2}, Landroid/telecom/RemoteConference;->-get0(Landroid/telecom/RemoteConference;)I

    #@9
    move-result v2

    #@a
    .line 238
    invoke-virtual {v0, v1, v2}, Landroid/telecom/RemoteConference$Callback;->onConnectionCapabilitiesChanged(Landroid/telecom/RemoteConference;I)V

    #@d
    .line 237
    return-void
.end method
