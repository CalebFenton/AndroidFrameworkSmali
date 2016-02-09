.class Landroid/widget/TextClock$2;
.super Landroid/content/BroadcastReceiver;
.source "TextClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextClock;


# direct methods
.method constructor <init>(Landroid/widget/TextClock;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/TextClock;

    #@0
    .prologue
    .line 154
    iput-object p1, p0, Landroid/widget/TextClock$2;->this$0:Landroid/widget/TextClock;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 157
    iget-object v1, p0, Landroid/widget/TextClock$2;->this$0:Landroid/widget/TextClock;

    #@2
    invoke-static {v1}, Landroid/widget/TextClock;->-get1(Landroid/widget/TextClock;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    if-nez v1, :cond_0

    #@8
    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    #@b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 158
    const-string/jumbo v1, "time-zone"

    #@18
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    .line 159
    .local v0, "timeZone":Ljava/lang/String;
    iget-object v1, p0, Landroid/widget/TextClock$2;->this$0:Landroid/widget/TextClock;

    #@1e
    invoke-static {v1, v0}, Landroid/widget/TextClock;->-wrap1(Landroid/widget/TextClock;Ljava/lang/String;)V

    #@21
    .line 161
    .end local v0    # "timeZone":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Landroid/widget/TextClock$2;->this$0:Landroid/widget/TextClock;

    #@23
    invoke-static {v1}, Landroid/widget/TextClock;->-wrap2(Landroid/widget/TextClock;)V

    #@26
    .line 156
    return-void
.end method
