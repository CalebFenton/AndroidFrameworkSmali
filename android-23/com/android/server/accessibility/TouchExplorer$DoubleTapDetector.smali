.class Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;
.super Ljava/lang/Object;
.source "TouchExplorer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/TouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoubleTapDetector"
.end annotation


# instance fields
.field private mDownEvent:Landroid/view/MotionEvent;

.field private mFirstTapEvent:Landroid/view/MotionEvent;

.field final synthetic this$0:Lcom/android/server/accessibility/TouchExplorer;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/TouchExplorer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/TouchExplorer;

    #@0
    .prologue
    .line 1087
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/TouchExplorer;Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/TouchExplorer;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    #@3
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1189
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1190
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    #@7
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    #@a
    .line 1191
    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    #@c
    .line 1193
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 1194
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    #@12
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    #@15
    .line 1195
    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    #@17
    .line 1188
    :cond_1
    return-void
.end method

.method public firstTapDetected()Z
    .locals 6

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1200
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 1201
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@8
    move-result-wide v2

    #@9
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    #@b
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    #@e
    move-result-wide v4

    #@f
    sub-long/2addr v2, v4

    #@10
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@12
    invoke-static {v1}, Lcom/android/server/accessibility/TouchExplorer;->-get2(Lcom/android/server/accessibility/TouchExplorer;)I

    #@15
    move-result v1

    #@16
    int-to-long v4, v1

    #@17
    cmp-long v1, v2, v4

    #@19
    if-gez v1, :cond_0

    #@1b
    const/4 v0, 0x1

    #@1c
    .line 1200
    :cond_0
    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;I)V
    .locals 26
    .param p1, "secondTapUp"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    .line 1146
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@3
    move-result v4

    #@4
    const/4 v5, 0x2

    #@5
    if-le v4, v5, :cond_0

    #@7
    .line 1147
    return-void

    #@8
    .line 1151
    :cond_0
    move-object/from16 v0, p0

    #@a
    iget-object v4, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@c
    invoke-static {v4}, Lcom/android/server/accessibility/TouchExplorer;->-get6(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {v4}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    #@13
    .line 1152
    move-object/from16 v0, p0

    #@15
    iget-object v4, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@17
    invoke-static {v4}, Lcom/android/server/accessibility/TouchExplorer;->-get7(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    #@1e
    .line 1153
    move-object/from16 v0, p0

    #@20
    iget-object v4, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@22
    invoke-static {v4}, Lcom/android/server/accessibility/TouchExplorer;->-get4(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v4}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    #@29
    .line 1155
    move-object/from16 v0, p0

    #@2b
    iget-object v4, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@2d
    invoke-static {v4}, Lcom/android/server/accessibility/TouchExplorer;->-get8(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    #@34
    move-result v4

    #@35
    if-eqz v4, :cond_1

    #@37
    .line 1156
    move-object/from16 v0, p0

    #@39
    iget-object v4, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@3b
    invoke-static {v4}, Lcom/android/server/accessibility/TouchExplorer;->-get8(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v4}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    #@42
    .line 1158
    :cond_1
    move-object/from16 v0, p0

    #@44
    iget-object v4, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@46
    invoke-static {v4}, Lcom/android/server/accessibility/TouchExplorer;->-get9(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@49
    move-result-object v4

    #@4a
    invoke-virtual {v4}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    #@4d
    move-result v4

    #@4e
    if-eqz v4, :cond_2

    #@50
    .line 1159
    move-object/from16 v0, p0

    #@52
    iget-object v4, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@54
    invoke-static {v4}, Lcom/android/server/accessibility/TouchExplorer;->-get9(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    #@57
    move-result-object v4

    #@58
    invoke-virtual {v4}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    #@5b
    .line 1162
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@5e
    move-result v4

    #@5f
    move-object/from16 v0, p1

    #@61
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@64
    move-result v22

    #@65
    .line 1163
    .local v22, "pointerId":I
    move-object/from16 v0, p1

    #@67
    move/from16 v1, v22

    #@69
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    #@6c
    move-result v23

    #@6d
    .line 1165
    .local v23, "pointerIndex":I
    move-object/from16 v0, p0

    #@6f
    iget-object v4, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@71
    invoke-static {v4}, Lcom/android/server/accessibility/TouchExplorer;->-get11(Lcom/android/server/accessibility/TouchExplorer;)Landroid/graphics/Point;

    #@74
    move-result-object v20

    #@75
    .line 1166
    .local v20, "clickLocation":Landroid/graphics/Point;
    move-object/from16 v0, p0

    #@77
    iget-object v4, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@79
    move-object/from16 v0, v20

    #@7b
    invoke-static {v4, v0}, Lcom/android/server/accessibility/TouchExplorer;->-wrap0(Lcom/android/server/accessibility/TouchExplorer;Landroid/graphics/Point;)I

    #@7e
    move-result v24

    #@7f
    .line 1167
    .local v24, "result":I
    if-nez v24, :cond_3

    #@81
    .line 1168
    return-void

    #@82
    .line 1172
    :cond_3
    const/4 v4, 0x1

    #@83
    new-array v10, v4, [Landroid/view/MotionEvent$PointerProperties;

    #@85
    .line 1173
    .local v10, "properties":[Landroid/view/MotionEvent$PointerProperties;
    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    #@87
    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    #@8a
    const/4 v5, 0x0

    #@8b
    aput-object v4, v10, v5

    #@8d
    .line 1174
    const/4 v4, 0x0

    #@8e
    aget-object v4, v10, v4

    #@90
    move-object/from16 v0, p1

    #@92
    move/from16 v1, v23

    #@94
    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    #@97
    .line 1175
    const/4 v4, 0x1

    #@98
    new-array v11, v4, [Landroid/view/MotionEvent$PointerCoords;

    #@9a
    .line 1176
    .local v11, "coords":[Landroid/view/MotionEvent$PointerCoords;
    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    #@9c
    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    #@9f
    const/4 v5, 0x0

    #@a0
    aput-object v4, v11, v5

    #@a2
    .line 1177
    const/4 v4, 0x0

    #@a3
    aget-object v4, v11, v4

    #@a5
    move-object/from16 v0, v20

    #@a7
    iget v5, v0, Landroid/graphics/Point;->x:I

    #@a9
    int-to-float v5, v5

    #@aa
    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    #@ac
    .line 1178
    const/4 v4, 0x0

    #@ad
    aget-object v4, v11, v4

    #@af
    move-object/from16 v0, v20

    #@b1
    iget v5, v0, Landroid/graphics/Point;->y:I

    #@b3
    int-to-float v5, v5

    #@b4
    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    #@b6
    .line 1179
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    #@b9
    move-result-wide v4

    #@ba
    .line 1180
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    #@bd
    move-result-wide v6

    #@be
    .line 1181
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    #@c1
    move-result v16

    #@c2
    .line 1182
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    #@c5
    move-result v18

    #@c6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    #@c9
    move-result v19

    #@ca
    .line 1180
    const/4 v8, 0x0

    #@cb
    const/4 v9, 0x1

    #@cc
    .line 1181
    const/4 v12, 0x0

    #@cd
    const/4 v13, 0x0

    #@ce
    const/high16 v14, 0x3f800000    # 1.0f

    #@d0
    const/high16 v15, 0x3f800000    # 1.0f

    #@d2
    const/16 v17, 0x0

    #@d4
    .line 1179
    invoke-static/range {v4 .. v19}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    #@d7
    move-result-object v21

    #@d8
    .line 1183
    .local v21, "event":Landroid/view/MotionEvent;
    const/4 v4, 0x1

    #@d9
    move/from16 v0, v24

    #@db
    if-ne v0, v4, :cond_4

    #@dd
    const/16 v25, 0x1

    #@df
    .line 1184
    .local v25, "targetAccessibilityFocus":Z
    :goto_0
    move-object/from16 v0, p0

    #@e1
    iget-object v4, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@e3
    move-object/from16 v0, v21

    #@e5
    move/from16 v1, p2

    #@e7
    move/from16 v2, v25

    #@e9
    invoke-static {v4, v0, v1, v2}, Lcom/android/server/accessibility/TouchExplorer;->-wrap2(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;IZ)V

    #@ec
    .line 1185
    invoke-virtual/range {v21 .. v21}, Landroid/view/MotionEvent;->recycle()V

    #@ef
    .line 1144
    return-void

    #@f0
    .line 1183
    .end local v25    # "targetAccessibilityFocus":Z
    :cond_4
    const/16 v25, 0x0

    #@f2
    .restart local v25    # "targetAccessibilityFocus":Z
    goto :goto_0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;I)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1092
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@4
    move-result v1

    #@5
    .line 1093
    .local v1, "actionIndex":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@8
    move-result v0

    #@9
    .line 1094
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    #@c
    .line 1091
    :goto_0
    :pswitch_0
    return-void

    #@d
    .line 1097
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 1098
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    #@13
    invoke-static {v2, p1}, Lcom/android/server/accessibility/GestureUtils;->isSamePointerContext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_1

    #@19
    .line 1101
    :cond_0
    :goto_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@1c
    move-result-object v2

    #@1d
    iput-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    #@1f
    goto :goto_0

    #@20
    .line 1099
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->clear()V

    #@23
    goto :goto_1

    #@24
    .line 1105
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    #@26
    if-nez v2, :cond_2

    #@28
    .line 1106
    return-void

    #@29
    .line 1108
    :cond_2
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    #@2b
    invoke-static {v2, p1}, Lcom/android/server/accessibility/GestureUtils;->isSamePointerContext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    #@2e
    move-result v2

    #@2f
    if-nez v2, :cond_3

    #@31
    .line 1109
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->clear()V

    #@34
    .line 1110
    return-void

    #@35
    .line 1112
    :cond_3
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    #@37
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@39
    invoke-static {v3}, Lcom/android/server/accessibility/TouchExplorer;->-get10(Lcom/android/server/accessibility/TouchExplorer;)I

    #@3c
    move-result v3

    #@3d
    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@3f
    invoke-static {v4}, Lcom/android/server/accessibility/TouchExplorer;->-get12(Lcom/android/server/accessibility/TouchExplorer;)I

    #@42
    move-result v4

    #@43
    invoke-static {v2, p1, v3, v4, v1}, Lcom/android/server/accessibility/GestureUtils;->isTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    #@46
    move-result v2

    #@47
    if-eqz v2, :cond_8

    #@49
    .line 1114
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    #@4b
    if-eqz v2, :cond_4

    #@4d
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    #@4f
    .line 1115
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@51
    invoke-static {v3}, Lcom/android/server/accessibility/TouchExplorer;->-get2(Lcom/android/server/accessibility/TouchExplorer;)I

    #@54
    move-result v3

    #@55
    .line 1114
    invoke-static {v2, p1, v3}, Lcom/android/server/accessibility/GestureUtils;->isTimedOut(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z

    #@58
    move-result v2

    #@59
    if-eqz v2, :cond_5

    #@5b
    .line 1116
    :cond_4
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@5e
    move-result-object v2

    #@5f
    iput-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    #@61
    .line 1117
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    #@63
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    #@66
    .line 1118
    iput-object v5, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    #@68
    .line 1119
    return-void

    #@69
    .line 1121
    :cond_5
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    #@6b
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@6d
    invoke-static {v3}, Lcom/android/server/accessibility/TouchExplorer;->-get2(Lcom/android/server/accessibility/TouchExplorer;)I

    #@70
    move-result v3

    #@71
    .line 1122
    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@73
    invoke-static {v4}, Lcom/android/server/accessibility/TouchExplorer;->-get1(Lcom/android/server/accessibility/TouchExplorer;)I

    #@76
    move-result v4

    #@77
    .line 1121
    invoke-static {v2, p1, v3, v4, v1}, Lcom/android/server/accessibility/GestureUtils;->isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    #@7a
    move-result v2

    #@7b
    if-eqz v2, :cond_6

    #@7d
    .line 1123
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->onDoubleTap(Landroid/view/MotionEvent;I)V

    #@80
    .line 1124
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    #@82
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    #@85
    .line 1125
    iput-object v5, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    #@87
    .line 1126
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    #@89
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    #@8c
    .line 1127
    iput-object v5, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    #@8e
    .line 1128
    return-void

    #@8f
    .line 1130
    :cond_6
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    #@91
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    #@94
    .line 1131
    iput-object v5, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    #@96
    .line 1138
    :cond_7
    :goto_2
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    #@98
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    #@9b
    .line 1139
    iput-object v5, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    #@9d
    goto/16 :goto_0

    #@9f
    .line 1133
    :cond_8
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    #@a1
    if-eqz v2, :cond_7

    #@a3
    .line 1134
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    #@a5
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    #@a8
    .line 1135
    iput-object v5, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    #@aa
    goto :goto_2

    #@ab
    .line 1094
    nop

    #@ac
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
