.class Landroid/telecom/RemoteConnection$13;
.super Ljava/lang/Object;
.source "RemoteConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/RemoteConnection;->setCallerDisplayName(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/RemoteConnection;

.field final synthetic val$callback:Landroid/telecom/RemoteConnection$Callback;

.field final synthetic val$callerDisplayName:Ljava/lang/String;

.field final synthetic val$connection:Landroid/telecom/RemoteConnection;

.field final synthetic val$presentation:I


# direct methods
.method constructor <init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/RemoteConnection;
    .param p2, "val$callback"    # Landroid/telecom/RemoteConnection$Callback;
    .param p3, "val$connection"    # Landroid/telecom/RemoteConnection;
    .param p4, "val$callerDisplayName"    # Ljava/lang/String;
    .param p5, "val$presentation"    # I

    #@0
    .prologue
    .line 1235
    iput-object p1, p0, Landroid/telecom/RemoteConnection$13;->this$0:Landroid/telecom/RemoteConnection;

    #@2
    iput-object p2, p0, Landroid/telecom/RemoteConnection$13;->val$callback:Landroid/telecom/RemoteConnection$Callback;

    #@4
    iput-object p3, p0, Landroid/telecom/RemoteConnection$13;->val$connection:Landroid/telecom/RemoteConnection;

    #@6
    iput-object p4, p0, Landroid/telecom/RemoteConnection$13;->val$callerDisplayName:Ljava/lang/String;

    #@8
    iput p5, p0, Landroid/telecom/RemoteConnection$13;->val$presentation:I

    #@a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@d
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 1238
    iget-object v0, p0, Landroid/telecom/RemoteConnection$13;->val$callback:Landroid/telecom/RemoteConnection$Callback;

    #@2
    .line 1239
    iget-object v1, p0, Landroid/telecom/RemoteConnection$13;->val$connection:Landroid/telecom/RemoteConnection;

    #@4
    iget-object v2, p0, Landroid/telecom/RemoteConnection$13;->val$callerDisplayName:Ljava/lang/String;

    #@6
    iget v3, p0, Landroid/telecom/RemoteConnection$13;->val$presentation:I

    #@8
    .line 1238
    invoke-virtual {v0, v1, v2, v3}, Landroid/telecom/RemoteConnection$Callback;->onCallerDisplayNameChanged(Landroid/telecom/RemoteConnection;Ljava/lang/String;I)V

    #@b
    .line 1237
    return-void
.end method
