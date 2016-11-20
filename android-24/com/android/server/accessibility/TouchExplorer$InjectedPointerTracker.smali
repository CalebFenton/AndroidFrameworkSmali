.class Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;
.super Ljava/lang/Object;
.source "TouchExplorer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/TouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InjectedPointerTracker"
.end annotation


# static fields
.field private static final LOG_TAG_INJECTED_POINTER_TRACKER:Ljava/lang/String; = "InjectedPointerTracker"


# instance fields
.field private mInjectedPointersDown:I

.field private mLastInjectedDownEventTime:J

.field private mLastInjectedHoverEvent:Landroid/view/MotionEvent;

.field private mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

.field final synthetic this$0:Lcom/android/server/accessibility/TouchExplorer;


# direct methods
.method static synthetic -get0(Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;)Landroid/view/MotionEvent;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    #@2
    return-object p1
.end method

.method constructor <init>(Lcom/android/server/accessibility/TouchExplorer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/TouchExplorer;

    #@0
    .prologue
    .line 1312
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 1373
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    #@3
    .line 1372
    return-void
.end method

.method public getInjectedPointerDownCount()I
    .locals 1

    #@0
    .prologue
    .line 1387
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    #@2
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getInjectedPointersDown()I
    .locals 1

    #@0
    .prologue
    .line 1394
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    #@2
    return v0
.end method

.method public getLastInjectedDownEventTime()J
    .locals 2

    #@0
    .prologue
    .line 1380
    iget-wide v0, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedDownEventTime:J

    #@2
    return-wide v0
.end method

.method public getLastInjectedHoverEvent()Landroid/view/MotionEvent;
    .locals 1

    #@0
    .prologue
    .line 1412
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    #@2
    return-object v0
.end method

.method public getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;
    .locals 1

    #@0
    .prologue
    .line 1419
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    #@2
    return-object v0
.end method

.method public isInjectedPointerDown(I)Z
    .locals 4
    .param p1, "pointerId"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1404
    shl-int v0, v1, p1

    #@4
    .line 1405
    .local v0, "pointerFlag":I
    iget v3, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    #@6
    and-int/2addr v3, v0

    #@7
    if-eqz v3, :cond_0

    #@9
    :goto_0
    return v1

    #@a
    :cond_0
    move v1, v2

    #@b
    goto :goto_0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 1333
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@4
    move-result v0

    #@5
    .line 1334
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    #@8
    .line 1332
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    #@9
    .line 1337
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@c
    move-result v3

    #@d
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@10
    move-result v2

    #@11
    .line 1338
    .local v2, "pointerId":I
    shl-int v1, v4, v2

    #@13
    .line 1339
    .local v1, "pointerFlag":I
    iget v3, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    #@15
    or-int/2addr v3, v1

    #@16
    iput v3, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    #@18
    .line 1340
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    #@1b
    move-result-wide v4

    #@1c
    iput-wide v4, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedDownEventTime:J

    #@1e
    goto :goto_0

    #@1f
    .line 1344
    .end local v1    # "pointerFlag":I
    .end local v2    # "pointerId":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@22
    move-result v3

    #@23
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@26
    move-result v2

    #@27
    .line 1345
    .restart local v2    # "pointerId":I
    shl-int v1, v4, v2

    #@29
    .line 1346
    .restart local v1    # "pointerFlag":I
    iget v3, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    #@2b
    not-int v4, v1

    #@2c
    and-int/2addr v3, v4

    #@2d
    iput v3, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    #@2f
    .line 1347
    iget v3, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    #@31
    if-nez v3, :cond_0

    #@33
    .line 1348
    const-wide/16 v4, 0x0

    #@35
    iput-wide v4, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedDownEventTime:J

    #@37
    goto :goto_0

    #@38
    .line 1354
    .end local v1    # "pointerFlag":I
    .end local v2    # "pointerId":I
    :pswitch_3
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    #@3a
    if-eqz v3, :cond_1

    #@3c
    .line 1355
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    #@3e
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    #@41
    .line 1357
    :cond_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@44
    move-result-object v3

    #@45
    iput-object v3, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    #@47
    .line 1358
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    #@49
    if-eqz v3, :cond_2

    #@4b
    .line 1359
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    #@4d
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    #@50
    .line 1361
    :cond_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@53
    move-result-object v3

    #@54
    iput-object v3, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    #@56
    goto :goto_0

    #@57
    .line 1334
    nop

    #@58
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1424
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 1425
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "========================="

    #@8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 1426
    const-string/jumbo v2, "\nDown pointers #"

    #@e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 1427
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    #@13
    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    #@16
    move-result v2

    #@17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    .line 1428
    const-string/jumbo v2, " [ "

    #@1d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    .line 1429
    const/4 v1, 0x0

    #@21
    .local v1, "i":I
    :goto_0
    const/16 v2, 0x20

    #@23
    if-ge v1, v2, :cond_1

    #@25
    .line 1430
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    #@27
    and-int/2addr v2, v1

    #@28
    if-eqz v2, :cond_0

    #@2a
    .line 1431
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    .line 1432
    const-string/jumbo v2, " "

    #@30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 1429
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@35
    goto :goto_0

    #@36
    .line 1435
    :cond_1
    const-string/jumbo v2, "]"

    #@39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    .line 1436
    const-string/jumbo v2, "\n========================="

    #@3f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    .line 1437
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    return-object v2
.end method
