.class public final Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;
.super Ljava/lang/Object;
.source "DisplayManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayListenerDelegate"
.end annotation


# instance fields
.field private final blacklist mDisplayInfo:Landroid/view/DisplayInfo;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mGenerationId:Ljava/util/concurrent/atomic/AtomicLong;

.field public volatile blacklist mInternalEventFlagsMask:J

.field private final blacklist mIsEventFilterExplicit:Z

.field public final greylist-max-o mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method public static synthetic blacklist $r8$lambda$U7s70EKugVQNzFVIVvJsNmT_WdQ(Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;JIILandroid/view/DisplayInfo;Z)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->lambda$sendDisplayEvent$0(JIILandroid/view/DisplayInfo;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mimplicitlyRegisterForRRChanges(Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->implicitlyRegisterForRRChanges()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/display/DisplayManager$DisplayListener;Ljava/util/concurrent/Executor;JLjava/lang/String;Z)V
    .registers 10
    .param p1, "listener"    # Landroid/hardware/display/DisplayManager$DisplayListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "internalEventFlag"    # J
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "isEventFilterExplicit"    # Z

    .line 1517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1510
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 1512
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mGenerationId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1518
    iput-object p2, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1519
    iput-object p1, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 1520
    iput-wide p3, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mInternalEventFlagsMask:J

    .line 1521
    iput-object p5, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mPackageName:Ljava/lang/String;

    .line 1522
    iput-boolean p6, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mIsEventFilterExplicit:Z

    .line 1523
    return-void
.end method

.method private blacklist handleDisplayEventInner(IILandroid/view/DisplayInfo;Z)V
    .registers 13
    .param p1, "displayId"    # I
    .param p2, "event"    # I
    .param p3, "info"    # Landroid/view/DisplayInfo;
    .param p4, "forceUpdate"    # Z

    .line 1565
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->-$$Nest$smextraLogging()Z

    move-result v0

    const-string v1, ")"

    const-string v2, ", listener="

    const-string v3, ", display="

    const-string v4, "DLD("

    const-string v5, "DisplayManager"

    if-eqz v0, :cond_68

    .line 1566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/hardware/display/DisplayManagerGlobal;->-$$Nest$smeventToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", mEventsMask="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v6, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mInternalEventFlagsMask:J

    .line 1568
    invoke-static {v6, v7}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", mPackageName="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", displayInfo="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 1571
    invoke-interface {v6}, Landroid/hardware/display/DisplayManager$DisplayListener;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1566
    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    :cond_68
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 1574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1576
    invoke-static {p2}, Landroid/hardware/display/DisplayManagerGlobal;->-$$Nest$smeventToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 1578
    invoke-interface {v2}, Landroid/hardware/display/DisplayManager$DisplayListener;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1575
    const/16 v1, 0x7f

    invoke-static {v0, v1}, Landroid/text/TextUtils;->trimToSize(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1574
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1580
    :cond_a8
    const-wide/16 v0, 0x20

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_17e

    goto/16 :goto_174

    .line 1642
    :pswitch_b1
    iget-wide v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mInternalEventFlagsMask:J

    const-wide/16 v4, 0x200

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_174

    .line 1644
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-interface {v0, p1}, Landroid/hardware/display/DisplayManager$DisplayListener;->onDisplayChanged(I)V

    goto/16 :goto_174

    .line 1636
    :pswitch_c1
    iget-wide v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mInternalEventFlagsMask:J

    const-wide/16 v4, 0x80

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_174

    .line 1638
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-interface {v0, p1}, Landroid/hardware/display/DisplayManager$DisplayListener;->onDisplayChanged(I)V

    goto/16 :goto_174

    .line 1630
    :pswitch_d1
    iget-wide v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mInternalEventFlagsMask:J

    const-wide/16 v4, 0x40

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_174

    .line 1632
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-interface {v0, p1}, Landroid/hardware/display/DisplayManager$DisplayListener;->onDisplayChanged(I)V

    goto/16 :goto_174

    .line 1624
    :pswitch_e1
    iget-wide v4, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mInternalEventFlagsMask:J

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_174

    .line 1626
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-interface {v0, p1}, Landroid/hardware/display/DisplayManager$DisplayListener;->onDisplayDisconnected(I)V

    goto/16 :goto_174

    .line 1618
    :pswitch_ef
    iget-wide v4, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mInternalEventFlagsMask:J

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_174

    .line 1620
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-interface {v0, p1}, Landroid/hardware/display/DisplayManager$DisplayListener;->onDisplayConnected(I)V

    goto/16 :goto_174

    .line 1612
    :pswitch_fd
    iget-wide v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mInternalEventFlagsMask:J

    const-wide/16 v4, 0x10

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_174

    .line 1614
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-interface {v0, p1}, Landroid/hardware/display/DisplayManager$DisplayListener;->onDisplayChanged(I)V

    goto :goto_174

    .line 1600
    :pswitch_10c
    iget-wide v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mInternalEventFlagsMask:J

    const-wide/16 v4, 0x8

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_174

    .line 1602
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-interface {v0, p1}, Landroid/hardware/display/DisplayManager$DisplayListener;->onDisplayChanged(I)V

    goto :goto_174

    .line 1606
    :pswitch_11b
    iget-wide v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mInternalEventFlagsMask:J

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_174

    .line 1608
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-interface {v0, p1}, Landroid/hardware/display/DisplayManager$DisplayListener;->onDisplayRemoved(I)V

    goto :goto_174

    .line 1587
    :pswitch_12a
    iget-wide v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mInternalEventFlagsMask:J

    const-wide/16 v6, 0x2

    and-long/2addr v0, v6

    cmp-long v0, v0, v2

    if-eqz v0, :cond_174

    .line 1589
    if-eqz p3, :cond_174

    if-nez p4, :cond_13f

    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p3, v0}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v0

    if-nez v0, :cond_174

    .line 1590
    :cond_13f
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->-$$Nest$smextraLogging()Z

    move-result v0

    if-eqz v0, :cond_15b

    .line 1591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending onDisplayChanged: Display Changed. Info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    :cond_15b
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, p3}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 1595
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-interface {v0, p1}, Landroid/hardware/display/DisplayManager$DisplayListener;->onDisplayChanged(I)V

    goto :goto_174

    .line 1582
    :pswitch_166
    iget-wide v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mInternalEventFlagsMask:J

    const-wide/16 v4, 0x1

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_174

    .line 1583
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-interface {v0, p1}, Landroid/hardware/display/DisplayManager$DisplayListener;->onDisplayAdded(I)V

    .line 1648
    :cond_174
    :goto_174
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_17d

    .line 1649
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1651
    :cond_17d
    return-void

    :pswitch_data_17e
    .packed-switch 0x1
        :pswitch_166
        :pswitch_12a
        :pswitch_11b
        :pswitch_10c
        :pswitch_fd
        :pswitch_ef
        :pswitch_e1
        :pswitch_d1
        :pswitch_c1
        :pswitch_b1
    .end packed-switch
.end method

.method private blacklist implicitlyRegisterForRRChanges()V
    .registers 5

    .line 1556
    iget-wide v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mInternalEventFlagsMask:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mIsEventFilterExplicit:Z

    if-nez v0, :cond_17

    .line 1558
    iget-wide v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mInternalEventFlagsMask:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->setEventsMask(J)V

    .line 1561
    :cond_17
    return-void
.end method

.method private synthetic blacklist lambda$sendDisplayEvent$0(JIILandroid/view/DisplayInfo;Z)V
    .registers 9
    .param p1, "generationId"    # J
    .param p3, "displayId"    # I
    .param p4, "event"    # I
    .param p5, "info"    # Landroid/view/DisplayInfo;
    .param p6, "forceUpdate"    # Z

    .line 1533
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mGenerationId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_d

    .line 1534
    invoke-direct {p0, p3, p4, p5, p6}, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->handleDisplayEventInner(IILandroid/view/DisplayInfo;Z)V

    .line 1536
    :cond_d
    return-void
.end method


# virtual methods
.method greylist-max-o clearEvents()V
    .registers 2

    .line 1545
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mGenerationId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 1546
    return-void
.end method

.method public blacklist isEventFilterExplicit()Z
    .registers 2

    .line 1541
    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mIsEventFilterExplicit:Z

    return v0
.end method

.method blacklist sendDisplayEvent(IILandroid/view/DisplayInfo;Z)V
    .registers 14
    .param p1, "displayId"    # I
    .param p2, "event"    # I
    .param p3, "info"    # Landroid/view/DisplayInfo;
    .param p4, "forceUpdate"    # Z

    .line 1527
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->-$$Nest$smextraLogging()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending Display Event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/hardware/display/DisplayManagerGlobal;->-$$Nest$smeventToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    :cond_22
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mGenerationId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    .line 1531
    .local v3, "generationId":J
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate$$ExternalSyntheticLambda0;

    move-object v2, p0

    move v5, p1

    move v6, p2

    move-object v7, p3

    move v8, p4

    .end local p1    # "displayId":I
    .end local p2    # "event":I
    .end local p3    # "info":Landroid/view/DisplayInfo;
    .end local p4    # "forceUpdate":Z
    .local v5, "displayId":I
    .local v6, "event":I
    .local v7, "info":Landroid/view/DisplayInfo;
    .local v8, "forceUpdate":Z
    invoke-direct/range {v1 .. v8}, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;JIILandroid/view/DisplayInfo;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1537
    return-void
.end method

.method blacklist setEventsMask(J)V
    .registers 3
    .param p1, "newInternalEventFlagsMask"    # J

    .line 1549
    iput-wide p1, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mInternalEventFlagsMask:J

    .line 1550
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flag: {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mInternalEventFlagsMask:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}, for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-interface {v1}, Landroid/hardware/display/DisplayManager$DisplayListener;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
