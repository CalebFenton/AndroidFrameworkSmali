.class Landroid/content/ClipboardManager$2;
.super Landroid/os/Handler;
.source "ClipboardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ClipboardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/ClipboardManager;


# direct methods
.method constructor <init>(Landroid/content/ClipboardManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/content/ClipboardManager;

    #@0
    .prologue
    .line 69
    iput-object p1, p0, Landroid/content/ClipboardManager$2;->this$0:Landroid/content/ClipboardManager;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 72
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 71
    :goto_0
    return-void

    #@6
    .line 74
    :pswitch_0
    iget-object v0, p0, Landroid/content/ClipboardManager$2;->this$0:Landroid/content/ClipboardManager;

    #@8
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->reportPrimaryClipChanged()V

    #@b
    goto :goto_0

    #@c
    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
