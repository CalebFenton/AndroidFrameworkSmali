.class final Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SyntheticKeyboardHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    #@0
    .prologue
    .line 5132
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;->this$0:Landroid/view/ViewRootImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public process(Landroid/view/KeyEvent;)V
    .locals 20
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 5134
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    #@3
    move-result v2

    #@4
    and-int/lit16 v2, v2, 0x400

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 5135
    return-void

    #@9
    .line 5138
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    #@c
    move-result-object v17

    #@d
    .line 5139
    .local v17, "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@10
    move-result v18

    #@11
    .line 5140
    .local v18, "keyCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    #@14
    move-result v19

    #@15
    .line 5144
    .local v19, "metaState":I
    invoke-virtual/range {v17 .. v19}, Landroid/view/KeyCharacterMap;->getFallbackAction(II)Landroid/view/KeyCharacterMap$FallbackAction;

    #@18
    move-result-object v15

    #@19
    .line 5145
    .local v15, "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    if-eqz v15, :cond_1

    #@1b
    .line 5146
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    #@1e
    move-result v2

    #@1f
    or-int/lit16 v12, v2, 0x400

    #@21
    .line 5148
    .local v12, "flags":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    #@24
    move-result-wide v2

    #@25
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    #@28
    move-result-wide v4

    #@29
    .line 5149
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    #@2c
    move-result v6

    #@2d
    iget v7, v15, Landroid/view/KeyCharacterMap$FallbackAction;->keyCode:I

    #@2f
    .line 5150
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@32
    move-result v8

    #@33
    iget v9, v15, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    #@35
    .line 5151
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    #@38
    move-result v10

    #@39
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    #@3c
    move-result v11

    #@3d
    .line 5152
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    #@40
    move-result v13

    #@41
    const/4 v14, 0x0

    #@42
    .line 5147
    invoke-static/range {v2 .. v14}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    #@45
    move-result-object v16

    #@46
    .line 5153
    .local v16, "fallbackEvent":Landroid/view/KeyEvent;
    invoke-virtual {v15}, Landroid/view/KeyCharacterMap$FallbackAction;->recycle()V

    #@49
    .line 5154
    move-object/from16 v0, p0

    #@4b
    iget-object v2, v0, Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;->this$0:Landroid/view/ViewRootImpl;

    #@4d
    move-object/from16 v0, v16

    #@4f
    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    #@52
    .line 5133
    .end local v12    # "flags":I
    .end local v16    # "fallbackEvent":Landroid/view/KeyEvent;
    :cond_1
    return-void
.end method
