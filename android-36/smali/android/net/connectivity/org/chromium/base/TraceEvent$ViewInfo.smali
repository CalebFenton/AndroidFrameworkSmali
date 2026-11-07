.class public Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewInfo;
.super Ljava/lang/Object;
.source "TraceEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/TraceEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewInfo"
.end annotation


# instance fields
.field private blacklist mClassName:Ljava/lang/String;

.field private blacklist mId:I

.field private blacklist mIsDirty:Z

.field private blacklist mIsShown:Z

.field private blacklist mParentId:I

.field private blacklist mRes:Landroid/content/res/Resources;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmClassName(Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewInfo;->mClassName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewInfo;)I
    .registers 1

    iget p0, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewInfo;->mId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsDirty(Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewInfo;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewInfo;->mIsDirty:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsShown(Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewInfo;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewInfo;->mIsShown:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmParentId(Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewInfo;)I
    .registers 1

    iget p0, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewInfo;->mParentId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRes(Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewInfo;)Landroid/content/res/Resources;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewInfo;->mRes:Landroid/content/res/Resources;

    return-object p0
.end method

.method public constructor blacklist <init>(IIZZLjava/lang/String;Landroid/content/res/Resources;)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "parentId"    # I
    .param p3, "isShown"    # Z
    .param p4, "isDirty"    # Z
    .param p5, "className"    # Ljava/lang/String;
    .param p6, "res"    # Landroid/content/res/Resources;

    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 741
    iput p1, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewInfo;->mId:I

    .line 742
    iput p2, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewInfo;->mParentId:I

    .line 743
    iput-boolean p3, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewInfo;->mIsShown:Z

    .line 744
    iput-boolean p4, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewInfo;->mIsDirty:Z

    .line 745
    iput-object p5, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewInfo;->mClassName:Ljava/lang/String;

    .line 746
    iput-object p6, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewInfo;->mRes:Landroid/content/res/Resources;

    .line 747
    return-void
.end method
