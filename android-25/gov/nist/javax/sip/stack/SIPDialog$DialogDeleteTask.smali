.class Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;
.super Lgov/nist/javax/sip/stack/SIPStackTimerTask;
.source "SIPDialog.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov/nist/javax/sip/stack/SIPDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DialogDeleteTask"
.end annotation


# instance fields
.field final synthetic this$0:Lgov/nist/javax/sip/stack/SIPDialog;


# direct methods
.method constructor <init>(Lgov/nist/javax/sip/stack/SIPDialog;)V
    .locals 0
    .param p1, "this$0"    # Lgov/nist/javax/sip/stack/SIPDialog;

    #@0
    .prologue
    .line 470
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@2
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPStackTimerTask;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method protected runTask()V
    .locals 1

    #@0
    .prologue
    .line 473
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->delete()V

    #@5
    .line 472
    return-void
.end method
