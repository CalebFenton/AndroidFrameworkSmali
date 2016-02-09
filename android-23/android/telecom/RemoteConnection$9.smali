.class Landroid/telecom/RemoteConnection$9;
.super Ljava/lang/Object;
.source "RemoteConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/RemoteConnection;->setVideoProvider(Landroid/telecom/RemoteConnection$VideoProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/RemoteConnection;

.field final synthetic val$callback:Landroid/telecom/RemoteConnection$Callback;

.field final synthetic val$connection:Landroid/telecom/RemoteConnection;

.field final synthetic val$videoProvider:Landroid/telecom/RemoteConnection$VideoProvider;


# direct methods
.method constructor <init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$VideoProvider;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/RemoteConnection;
    .param p2, "val$callback"    # Landroid/telecom/RemoteConnection$Callback;
    .param p3, "val$connection"    # Landroid/telecom/RemoteConnection;
    .param p4, "val$videoProvider"    # Landroid/telecom/RemoteConnection$VideoProvider;

    #@0
    .prologue
    .line 1173
    iput-object p1, p0, Landroid/telecom/RemoteConnection$9;->this$0:Landroid/telecom/RemoteConnection;

    #@2
    iput-object p2, p0, Landroid/telecom/RemoteConnection$9;->val$callback:Landroid/telecom/RemoteConnection$Callback;

    #@4
    iput-object p3, p0, Landroid/telecom/RemoteConnection$9;->val$connection:Landroid/telecom/RemoteConnection;

    #@6
    iput-object p4, p0, Landroid/telecom/RemoteConnection$9;->val$videoProvider:Landroid/telecom/RemoteConnection$VideoProvider;

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
    .line 1176
    iget-object v0, p0, Landroid/telecom/RemoteConnection$9;->val$callback:Landroid/telecom/RemoteConnection$Callback;

    #@2
    iget-object v1, p0, Landroid/telecom/RemoteConnection$9;->val$connection:Landroid/telecom/RemoteConnection;

    #@4
    iget-object v2, p0, Landroid/telecom/RemoteConnection$9;->val$videoProvider:Landroid/telecom/RemoteConnection$VideoProvider;

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/telecom/RemoteConnection$Callback;->onVideoProviderChanged(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$VideoProvider;)V

    #@9
    .line 1175
    return-void
.end method
