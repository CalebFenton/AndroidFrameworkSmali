.class Landroid/telecom/RemoteConnection$7;
.super Ljava/lang/Object;
.source "RemoteConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/RemoteConnection;->setPostDialWait(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/RemoteConnection;

.field final synthetic val$callback:Landroid/telecom/RemoteConnection$Callback;

.field final synthetic val$connection:Landroid/telecom/RemoteConnection;

.field final synthetic val$remainingDigits:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/RemoteConnection;
    .param p2, "val$callback"    # Landroid/telecom/RemoteConnection$Callback;
    .param p3, "val$connection"    # Landroid/telecom/RemoteConnection;
    .param p4, "val$remainingDigits"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1192
    iput-object p1, p0, Landroid/telecom/RemoteConnection$7;->this$0:Landroid/telecom/RemoteConnection;

    #@2
    iput-object p2, p0, Landroid/telecom/RemoteConnection$7;->val$callback:Landroid/telecom/RemoteConnection$Callback;

    #@4
    iput-object p3, p0, Landroid/telecom/RemoteConnection$7;->val$connection:Landroid/telecom/RemoteConnection;

    #@6
    iput-object p4, p0, Landroid/telecom/RemoteConnection$7;->val$remainingDigits:Ljava/lang/String;

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
    .line 1195
    iget-object v0, p0, Landroid/telecom/RemoteConnection$7;->val$callback:Landroid/telecom/RemoteConnection$Callback;

    #@2
    iget-object v1, p0, Landroid/telecom/RemoteConnection$7;->val$connection:Landroid/telecom/RemoteConnection;

    #@4
    iget-object v2, p0, Landroid/telecom/RemoteConnection$7;->val$remainingDigits:Ljava/lang/String;

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/telecom/RemoteConnection$Callback;->onPostDialWait(Landroid/telecom/RemoteConnection;Ljava/lang/String;)V

    #@9
    .line 1194
    return-void
.end method
