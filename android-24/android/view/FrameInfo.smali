.class final Landroid/view/FrameInfo;
.super Ljava/lang/Object;
.source "FrameInfo.java"


# static fields
.field private static final ANIMATION_START:I = 0x6

.field private static final DRAW_START:I = 0x8

.field private static final FLAGS:I = 0x0

.field public static final FLAG_WINDOW_LAYOUT_CHANGED:J = 0x1L

.field private static final HANDLE_INPUT_START:I = 0x5

.field private static final INTENDED_VSYNC:I = 0x1

.field private static final NEWEST_INPUT_EVENT:I = 0x4

.field private static final OLDEST_INPUT_EVENT:I = 0x3

.field private static final PERFORM_TRAVERSALS_START:I = 0x7

.field private static final VSYNC:I = 0x2


# instance fields
.field mFrameInfo:[J


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    const/16 v0, 0x9

    #@5
    new-array v0, v0, [J

    #@7
    iput-object v0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    #@9
    .line 41
    return-void
.end method


# virtual methods
.method public addFlags(J)V
    .locals 5
    .param p1, "flags"    # J

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    #@2
    const/4 v1, 0x0

    #@3
    aget-wide v2, v0, v1

    #@5
    or-long/2addr v2, p1

    #@6
    aput-wide v2, v0, v1

    #@8
    .line 114
    return-void
.end method

.method public markAnimationsStart()V
    .locals 4

    #@0
    .prologue
    .line 103
    iget-object v0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    #@2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@5
    move-result-wide v2

    #@6
    const/4 v1, 0x6

    #@7
    aput-wide v2, v0, v1

    #@9
    .line 102
    return-void
.end method

.method public markDrawStart()V
    .locals 4

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    #@2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@5
    move-result-wide v2

    #@6
    const/16 v1, 0x8

    #@8
    aput-wide v2, v0, v1

    #@a
    .line 110
    return-void
.end method

.method public markInputHandlingStart()V
    .locals 4

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    #@2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@5
    move-result-wide v2

    #@6
    const/4 v1, 0x5

    #@7
    aput-wide v2, v0, v1

    #@9
    .line 98
    return-void
.end method

.method public markPerformTraversalsStart()V
    .locals 4

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    #@2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@5
    move-result-wide v2

    #@6
    const/4 v1, 0x7

    #@7
    aput-wide v2, v0, v1

    #@9
    .line 106
    return-void
.end method

.method public setVsync(JJ)V
    .locals 7
    .param p1, "intendedVsync"    # J
    .param p3, "usedVsync"    # J

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 82
    iget-object v0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    #@4
    const/4 v1, 0x1

    #@5
    aput-wide p1, v0, v1

    #@7
    .line 83
    iget-object v0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    #@9
    const/4 v1, 0x2

    #@a
    aput-wide p3, v0, v1

    #@c
    .line 84
    iget-object v0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    #@e
    const-wide v2, 0x7fffffffffffffffL

    #@13
    const/4 v1, 0x3

    #@14
    aput-wide v2, v0, v1

    #@16
    .line 85
    iget-object v0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    #@18
    const/4 v1, 0x4

    #@19
    aput-wide v4, v0, v1

    #@1b
    .line 86
    iget-object v0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    #@1d
    const/4 v1, 0x0

    #@1e
    aput-wide v4, v0, v1

    #@20
    .line 81
    return-void
.end method

.method public updateInputEventTime(JJ)V
    .locals 5
    .param p1, "inputEventTime"    # J
    .param p3, "inputEventOldestTime"    # J

    #@0
    .prologue
    const/4 v3, 0x4

    #@1
    const/4 v2, 0x3

    #@2
    .line 90
    iget-object v0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    #@4
    aget-wide v0, v0, v2

    #@6
    cmp-long v0, p3, v0

    #@8
    if-gez v0, :cond_0

    #@a
    .line 91
    iget-object v0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    #@c
    aput-wide p3, v0, v2

    #@e
    .line 93
    :cond_0
    iget-object v0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    #@10
    aget-wide v0, v0, v3

    #@12
    cmp-long v0, p1, v0

    #@14
    if-lez v0, :cond_1

    #@16
    .line 94
    iget-object v0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    #@18
    aput-wide p1, v0, v3

    #@1a
    .line 89
    :cond_1
    return-void
.end method
