.class Lcom/android/server/am/BaseErrorDialog$1;
.super Landroid/os/Handler;
.source "BaseErrorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BaseErrorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BaseErrorDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/BaseErrorDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/BaseErrorDialog;

    #@0
    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/server/am/BaseErrorDialog$1;->this$0:Lcom/android/server/am/BaseErrorDialog;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 78
    iget v0, p1, Landroid/os/Message;->what:I

    #@4
    if-nez v0, :cond_1

    #@6
    .line 79
    iget-object v0, p0, Lcom/android/server/am/BaseErrorDialog$1;->this$0:Lcom/android/server/am/BaseErrorDialog;

    #@8
    invoke-static {v0, v1}, Lcom/android/server/am/BaseErrorDialog;->-set0(Lcom/android/server/am/BaseErrorDialog;Z)Z

    #@b
    .line 80
    iget-object v0, p0, Lcom/android/server/am/BaseErrorDialog$1;->this$0:Lcom/android/server/am/BaseErrorDialog;

    #@d
    invoke-static {v0, v2}, Lcom/android/server/am/BaseErrorDialog;->-wrap0(Lcom/android/server/am/BaseErrorDialog;Z)V

    #@10
    .line 77
    :cond_0
    :goto_0
    return-void

    #@11
    .line 81
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    #@13
    if-ne v0, v2, :cond_0

    #@15
    .line 82
    iget-object v0, p0, Lcom/android/server/am/BaseErrorDialog$1;->this$0:Lcom/android/server/am/BaseErrorDialog;

    #@17
    invoke-static {v0, v1}, Lcom/android/server/am/BaseErrorDialog;->-wrap0(Lcom/android/server/am/BaseErrorDialog;Z)V

    #@1a
    goto :goto_0
.end method
