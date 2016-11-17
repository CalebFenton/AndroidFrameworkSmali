.class Landroid/view/accessibility/CaptioningManager$MyContentObserver;
.super Landroid/database/ContentObserver;
.source "CaptioningManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/CaptioningManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyContentObserver"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/view/accessibility/CaptioningManager;


# direct methods
.method public constructor <init>(Landroid/view/accessibility/CaptioningManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/accessibility/CaptioningManager;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 227
    iput-object p1, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->this$0:Landroid/view/accessibility/CaptioningManager;

    #@2
    .line 228
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@5
    .line 230
    iput-object p2, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->mHandler:Landroid/os/Handler;

    #@7
    .line 227
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 235
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 236
    .local v1, "uriPath":Ljava/lang/String;
    const/16 v2, 0x2f

    #@6
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    #@9
    move-result v2

    #@a
    add-int/lit8 v2, v2, 0x1

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 237
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v2, "accessibility_captioning_enabled"

    #@13
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_0

    #@19
    .line 238
    iget-object v2, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->this$0:Landroid/view/accessibility/CaptioningManager;

    #@1b
    invoke-static {v2}, Landroid/view/accessibility/CaptioningManager;->-wrap0(Landroid/view/accessibility/CaptioningManager;)V

    #@1e
    .line 234
    :goto_0
    return-void

    #@1f
    .line 239
    :cond_0
    const-string/jumbo v2, "accessibility_captioning_locale"

    #@22
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_1

    #@28
    .line 240
    iget-object v2, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->this$0:Landroid/view/accessibility/CaptioningManager;

    #@2a
    invoke-static {v2}, Landroid/view/accessibility/CaptioningManager;->-wrap2(Landroid/view/accessibility/CaptioningManager;)V

    #@2d
    goto :goto_0

    #@2e
    .line 241
    :cond_1
    const-string/jumbo v2, "accessibility_captioning_font_scale"

    #@31
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v2

    #@35
    if-eqz v2, :cond_2

    #@37
    .line 242
    iget-object v2, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->this$0:Landroid/view/accessibility/CaptioningManager;

    #@39
    invoke-static {v2}, Landroid/view/accessibility/CaptioningManager;->-wrap1(Landroid/view/accessibility/CaptioningManager;)V

    #@3c
    goto :goto_0

    #@3d
    .line 246
    :cond_2
    iget-object v2, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->mHandler:Landroid/os/Handler;

    #@3f
    iget-object v3, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->this$0:Landroid/view/accessibility/CaptioningManager;

    #@41
    invoke-static {v3}, Landroid/view/accessibility/CaptioningManager;->-get0(Landroid/view/accessibility/CaptioningManager;)Ljava/lang/Runnable;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@48
    .line 247
    iget-object v2, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->mHandler:Landroid/os/Handler;

    #@4a
    iget-object v3, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->this$0:Landroid/view/accessibility/CaptioningManager;

    #@4c
    invoke-static {v3}, Landroid/view/accessibility/CaptioningManager;->-get0(Landroid/view/accessibility/CaptioningManager;)Ljava/lang/Runnable;

    #@4f
    move-result-object v3

    #@50
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@53
    goto :goto_0
.end method
