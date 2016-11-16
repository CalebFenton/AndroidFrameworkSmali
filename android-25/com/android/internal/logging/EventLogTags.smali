.class public Lcom/android/internal/logging/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# static fields
.field public static final SYSUI_ACTION:I = 0x80000

.field public static final SYSUI_COUNT:I = 0x80002

.field public static final SYSUI_HISTOGRAM:I = 0x80003

.field public static final SYSUI_VIEW_VISIBILITY:I = 0x7ffff


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static writeSysuiAction(ILjava/lang/String;)V
    .locals 3
    .param p0, "category"    # I
    .param p1, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 30
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    const/4 v1, 0x1

    #@b
    aput-object p1, v0, v1

    #@d
    const/high16 v1, 0x80000

    #@f
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@12
    .line 29
    return-void
.end method

.method public static writeSysuiCount(Ljava/lang/String;I)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "increment"    # I

    #@0
    .prologue
    .line 34
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p0, v0, v1

    #@6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    const/4 v2, 0x1

    #@b
    aput-object v1, v0, v2

    #@d
    const v1, 0x80002

    #@10
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@13
    .line 33
    return-void
.end method

.method public static writeSysuiHistogram(Ljava/lang/String;I)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "bucket"    # I

    #@0
    .prologue
    .line 38
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p0, v0, v1

    #@6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    const/4 v2, 0x1

    #@b
    aput-object v1, v0, v2

    #@d
    const v1, 0x80003

    #@10
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@13
    .line 37
    return-void
.end method

.method public static writeSysuiViewVisibility(II)V
    .locals 3
    .param p0, "category"    # I
    .param p1, "visible"    # I

    #@0
    .prologue
    .line 26
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    const v1, 0x7ffff

    #@14
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@17
    .line 25
    return-void
.end method
