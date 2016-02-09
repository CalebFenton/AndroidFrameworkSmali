.class Landroid/telecom/Call$7;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/Call;->firePostDialWait(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/Call;

.field final synthetic val$call:Landroid/telecom/Call;

.field final synthetic val$callback:Landroid/telecom/Call$Callback;

.field final synthetic val$remainingPostDialSequence:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/Call;
    .param p2, "val$callback"    # Landroid/telecom/Call$Callback;
    .param p3, "val$call"    # Landroid/telecom/Call;
    .param p4, "val$remainingPostDialSequence"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1185
    iput-object p1, p0, Landroid/telecom/Call$7;->this$0:Landroid/telecom/Call;

    #@2
    iput-object p2, p0, Landroid/telecom/Call$7;->val$callback:Landroid/telecom/Call$Callback;

    #@4
    iput-object p3, p0, Landroid/telecom/Call$7;->val$call:Landroid/telecom/Call;

    #@6
    iput-object p4, p0, Landroid/telecom/Call$7;->val$remainingPostDialSequence:Ljava/lang/String;

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
    .line 1188
    iget-object v0, p0, Landroid/telecom/Call$7;->val$callback:Landroid/telecom/Call$Callback;

    #@2
    iget-object v1, p0, Landroid/telecom/Call$7;->val$call:Landroid/telecom/Call;

    #@4
    iget-object v2, p0, Landroid/telecom/Call$7;->val$remainingPostDialSequence:Ljava/lang/String;

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/telecom/Call$Callback;->onPostDialWait(Landroid/telecom/Call;Ljava/lang/String;)V

    #@9
    .line 1187
    return-void
.end method
