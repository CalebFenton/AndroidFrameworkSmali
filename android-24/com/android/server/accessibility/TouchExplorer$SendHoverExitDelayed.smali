.class Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;
.super Ljava/lang/Object;
.source "TouchExplorer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/TouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendHoverExitDelayed"
.end annotation


# instance fields
.field private final LOG_TAG_SEND_HOVER_DELAYED:Ljava/lang/String;

.field private mPointerIdBits:I

.field private mPolicyFlags:I

.field private mPrototype:Landroid/view/MotionEvent;

.field final synthetic this$0:Lcom/android/server/accessibility/TouchExplorer;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/TouchExplorer;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/accessibility/TouchExplorer;

    #@0
    .prologue
    .line 1214
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1215
    const-string/jumbo v0, "SendHoverExitDelayed"

    #@8
    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->LOG_TAG_SEND_HOVER_DELAYED:Ljava/lang/String;

    #@a
    .line 1214
    return-void
.end method

.method private clear()V
    .locals 1

    #@0
    .prologue
    .line 1241
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->mPrototype:Landroid/view/MotionEvent;

    #@2
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    #@5
    .line 1242
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->mPrototype:Landroid/view/MotionEvent;

    #@8
    .line 1243
    const/4 v0, -0x1

    #@9
    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->mPointerIdBits:I

    #@b
    .line 1244
    const/4 v0, 0x0

    #@c
    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->mPolicyFlags:I

    #@e
    .line 1240
    return-void
.end method

.method private isPending()Z
    .locals 1

    #@0
    .prologue
    .line 1237
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@2
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->-get1(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    #@0
    .prologue
    .line 1230
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->isPending()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1231
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@8
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->-get1(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@f
    .line 1232
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->clear()V

    #@12
    .line 1229
    :cond_0
    return-void
.end method

.method public forceSendAndRemove()V
    .locals 1

    #@0
    .prologue
    .line 1248
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->isPending()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1249
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->run()V

    #@9
    .line 1250
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    #@c
    .line 1247
    :cond_0
    return-void
.end method

.method public post(Landroid/view/MotionEvent;II)V
    .locals 4
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "pointerIdBits"    # I
    .param p3, "policyFlags"    # I

    #@0
    .prologue
    .line 1222
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    #@3
    .line 1223
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->mPrototype:Landroid/view/MotionEvent;

    #@9
    .line 1224
    iput p2, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->mPointerIdBits:I

    #@b
    .line 1225
    iput p3, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->mPolicyFlags:I

    #@d
    .line 1226
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@f
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->-get1(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    #@12
    move-result-object v0

    #@13
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@15
    invoke-static {v1}, Lcom/android/server/accessibility/TouchExplorer;->-get0(Lcom/android/server/accessibility/TouchExplorer;)I

    #@18
    move-result v1

    #@19
    int-to-long v2, v1

    #@1a
    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@1d
    .line 1221
    return-void
.end method

.method public run()V
    .locals 5

    #@0
    .prologue
    .line 1259
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@2
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->mPrototype:Landroid/view/MotionEvent;

    #@4
    .line 1260
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->mPointerIdBits:I

    #@6
    iget v3, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->mPolicyFlags:I

    #@8
    .line 1259
    const/16 v4, 0xa

    #@a
    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/server/accessibility/TouchExplorer;->-wrap2(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;III)V

    #@d
    .line 1261
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@f
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->-get2(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_0

    #@19
    .line 1262
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@1b
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->-get2(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    #@22
    .line 1263
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@24
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->-get2(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->post()V

    #@2b
    .line 1265
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@2d
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->-get3(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    #@34
    move-result v0

    #@35
    if-eqz v0, :cond_1

    #@37
    .line 1266
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@39
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->-get3(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    #@40
    .line 1267
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@42
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->-get3(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@45
    move-result-object v0

    #@46
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->post()V

    #@49
    .line 1269
    :cond_1
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->clear()V

    #@4c
    .line 1254
    return-void
.end method
