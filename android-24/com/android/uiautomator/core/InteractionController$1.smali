.class Lcom/android/uiautomator/core/InteractionController$1;
.super Ljava/lang/Object;
.source "InteractionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/uiautomator/core/InteractionController;->sendKeyAndWaitForEvent(IIIJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/uiautomator/core/InteractionController;

.field final synthetic val$keyCode:I

.field final synthetic val$metaState:I


# direct methods
.method constructor <init>(Lcom/android/uiautomator/core/InteractionController;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/uiautomator/core/InteractionController;
    .param p2, "val$keyCode"    # I
    .param p3, "val$metaState"    # I

    #@0
    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/uiautomator/core/InteractionController$1;->this$0:Lcom/android/uiautomator/core/InteractionController;

    #@2
    iput p2, p0, Lcom/android/uiautomator/core/InteractionController$1;->val$keyCode:I

    #@4
    iput p3, p0, Lcom/android/uiautomator/core/InteractionController$1;->val$metaState:I

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    #@0
    .prologue
    .line 191
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v4

    #@4
    .line 192
    .local v4, "eventTime":J
    new-instance v3, Landroid/view/KeyEvent;

    #@6
    .line 193
    move-object/from16 v0, p0

    #@8
    iget v9, v0, Lcom/android/uiautomator/core/InteractionController$1;->val$keyCode:I

    #@a
    move-object/from16 v0, p0

    #@c
    iget v11, v0, Lcom/android/uiautomator/core/InteractionController$1;->val$metaState:I

    #@e
    .line 192
    const/4 v8, 0x0

    #@f
    .line 193
    const/4 v10, 0x0

    #@10
    const/4 v12, -0x1

    #@11
    const/4 v13, 0x0

    #@12
    const/4 v14, 0x0

    #@13
    .line 194
    const/16 v15, 0x101

    #@15
    move-wide v6, v4

    #@16
    .line 192
    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    #@19
    .line 195
    .local v3, "downEvent":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    #@1b
    iget-object v2, v0, Lcom/android/uiautomator/core/InteractionController$1;->this$0:Lcom/android/uiautomator/core/InteractionController;

    #@1d
    invoke-static {v2, v3}, Lcom/android/uiautomator/core/InteractionController;->-wrap0(Lcom/android/uiautomator/core/InteractionController;Landroid/view/InputEvent;)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_0

    #@23
    .line 196
    new-instance v7, Landroid/view/KeyEvent;

    #@25
    .line 197
    move-object/from16 v0, p0

    #@27
    iget v13, v0, Lcom/android/uiautomator/core/InteractionController$1;->val$keyCode:I

    #@29
    move-object/from16 v0, p0

    #@2b
    iget v15, v0, Lcom/android/uiautomator/core/InteractionController$1;->val$metaState:I

    #@2d
    .line 196
    const/4 v12, 0x1

    #@2e
    .line 197
    const/4 v14, 0x0

    #@2f
    const/16 v16, -0x1

    #@31
    const/16 v17, 0x0

    #@33
    const/16 v18, 0x0

    #@35
    .line 198
    const/16 v19, 0x101

    #@37
    move-wide v8, v4

    #@38
    move-wide v10, v4

    #@39
    .line 196
    invoke-direct/range {v7 .. v19}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    #@3c
    .line 199
    .local v7, "upEvent":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    #@3e
    iget-object v2, v0, Lcom/android/uiautomator/core/InteractionController$1;->this$0:Lcom/android/uiautomator/core/InteractionController;

    #@40
    invoke-static {v2, v7}, Lcom/android/uiautomator/core/InteractionController;->-wrap0(Lcom/android/uiautomator/core/InteractionController;Landroid/view/InputEvent;)Z

    #@43
    .line 190
    .end local v7    # "upEvent":Landroid/view/KeyEvent;
    :cond_0
    return-void
.end method
