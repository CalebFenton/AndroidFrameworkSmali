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
.field final synthetic greylist this$0:Lgov/nist/javax/sip/stack/SIPDialog;


# direct methods
.method constructor greylist <init>(Lgov/nist/javax/sip/stack/SIPDialog;)V
    .registers 2
    .param p1, "this$0"    # Lgov/nist/javax/sip/stack/SIPDialog;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 470
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPStackTimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected greylist runTask()V
    .registers 2

    .line 473
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->delete()V

    .line 474
    return-void
.end method
