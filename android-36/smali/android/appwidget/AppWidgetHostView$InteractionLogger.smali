.class public Landroid/appwidget/AppWidgetHostView$InteractionLogger;
.super Ljava/lang/Object;
.source "AppWidgetHostView.java"

# interfaces
.implements Landroid/widget/RemoteViews$InteractionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/appwidget/AppWidgetHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InteractionLogger"
.end annotation


# static fields
.field public static final blacklist MAX_NUM_ITEMS:I = 0xa

.field private static final blacklist UPDATE_VISIBILITY_DELAY_MS:J = 0x3e8L


# instance fields
.field private final blacklist mClickedIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDurationMs:J

.field private blacklist mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

.field private blacklist mIsVisible:Z

.field private blacklist mPosition:Landroid/graphics/Rect;

.field private final blacklist mScrolledIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUpdateVisibilityScheduled:Z

.field private blacklist mVisibilityChangeMs:J

.field final synthetic blacklist this$0:Landroid/appwidget/AppWidgetHostView;


# direct methods
.method public static synthetic blacklist $r8$lambda$k2aDTj5dRJTFprZpsZLC0Oyvlsg(Landroid/appwidget/AppWidgetHostView$InteractionLogger;)V
    .registers 1

    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->lambda$scheduleUpdateVisibility$0()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDraw(Landroid/appwidget/AppWidgetHostView$InteractionLogger;)V
    .registers 1

    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->onDraw()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monPositionChanged(Landroid/appwidget/AppWidgetHostView$InteractionLogger;)V
    .registers 1

    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->onPositionChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monWindowFocusChanged(Landroid/appwidget/AppWidgetHostView$InteractionLogger;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->onWindowFocusChanged(Z)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/appwidget/AppWidgetHostView;)V
    .registers 4
    .param p1, "this$0"    # Landroid/appwidget/AppWidgetHostView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1071
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1054
    new-instance v0, Landroid/util/ArraySet;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mClickedIds:Ljava/util/Set;

    .line 1057
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mScrolledIds:Ljava/util/Set;

    .line 1059
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    .line 1062
    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mPosition:Landroid/graphics/Rect;

    .line 1065
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mDurationMs:J

    .line 1067
    iput-wide v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mVisibilityChangeMs:J

    .line 1068
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mIsVisible:Z

    .line 1069
    iput-boolean v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mUpdateVisibilityScheduled:Z

    .line 1072
    return-void
.end method

.method constructor blacklist <init>(Landroid/appwidget/AppWidgetHostView;Landroid/widget/RemoteViews$InteractionHandler;)V
    .registers 5
    .param p1, "this$0"    # Landroid/appwidget/AppWidgetHostView;
    .param p2, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1074
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1054
    new-instance v0, Landroid/util/ArraySet;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mClickedIds:Ljava/util/Set;

    .line 1057
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mScrolledIds:Ljava/util/Set;

    .line 1059
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    .line 1062
    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mPosition:Landroid/graphics/Rect;

    .line 1065
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mDurationMs:J

    .line 1067
    iput-wide v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mVisibilityChangeMs:J

    .line 1068
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mIsVisible:Z

    .line 1069
    iput-boolean v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mUpdateVisibilityScheduled:Z

    .line 1075
    iput-object p2, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    .line 1076
    return-void
.end method

.method private blacklist applyScrollOffset()V
    .registers 6

    .line 1159
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mPosition:Landroid/graphics/Rect;

    if-nez v0, :cond_5

    return-void

    .line 1160
    :cond_5
    const/4 v0, 0x0

    .line 1161
    .local v0, "dx":I
    const/4 v1, 0x0

    .line 1162
    .local v1, "dy":I
    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHostView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .local v2, "parent":Landroid/view/ViewParent;
    :goto_d
    if-eqz v2, :cond_30

    .line 1163
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_2b

    move-object v3, v2

    check-cast v3, Landroid/view/View;

    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v4

    if-nez v4, :cond_22

    .line 1164
    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v4

    if-eqz v4, :cond_2b

    .line 1165
    :cond_22
    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v0

    .line 1166
    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v1

    .line 1167
    goto :goto_30

    .line 1162
    .end local v3    # "view":Landroid/view/View;
    :cond_2b
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_d

    .line 1170
    .end local v2    # "parent":Landroid/view/ViewParent;
    :cond_30
    :goto_30
    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mPosition:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1171
    return-void
.end method

.method private blacklist getMetricsId(Landroid/view/View;)I
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 1135
    const v0, 0x10204ab

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 1136
    .local v0, "metricsTag":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_13

    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    .line 1137
    .local v1, "tag":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 1139
    .end local v1    # "tag":Ljava/lang/Integer;
    :cond_13
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    return v1
.end method

.method private synthetic blacklist lambda$scheduleUpdateVisibility$0()V
    .registers 2

    .line 1193
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->hasWindowFocus()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->updateVisibility(Z)V

    return-void
.end method

.method private blacklist onDraw()V
    .registers 3

    .line 1174
    invoke-static {}, Landroid/appwidget/flags/Flags;->engagementMetrics()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1175
    :cond_7
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1c

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isDirty()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1176
    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->scheduleUpdateVisibility()V

    .line 1178
    .end local v0    # "view":Landroid/view/View;
    :cond_1c
    return-void
.end method

.method private blacklist onPositionChanged()V
    .registers 3

    .line 1147
    invoke-static {}, Landroid/appwidget/flags/Flags;->engagementMetrics()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1148
    :cond_7
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mPosition:Landroid/graphics/Rect;

    .line 1149
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->this$0:Landroid/appwidget/AppWidgetHostView;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mPosition:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1150
    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->applyScrollOffset()V

    .line 1152
    :cond_1b
    return-void
.end method

.method private blacklist onWindowFocusChanged(Z)V
    .registers 3
    .param p1, "hasWindowFocus"    # Z

    .line 1181
    invoke-static {}, Landroid/appwidget/flags/Flags;->engagementMetrics()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1182
    :cond_7
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->updateVisibility(Z)V

    .line 1183
    return-void
.end method

.method private blacklist scheduleUpdateVisibility()V
    .registers 5

    .line 1189
    iget-boolean v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mUpdateVisibilityScheduled:Z

    if-eqz v0, :cond_5

    .line 1190
    return-void

    .line 1193
    :cond_5
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->this$0:Landroid/appwidget/AppWidgetHostView;

    new-instance v1, Landroid/appwidget/AppWidgetHostView$InteractionLogger$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/appwidget/AppWidgetHostView$InteractionLogger$$ExternalSyntheticLambda0;-><init>(Landroid/appwidget/AppWidgetHostView$InteractionLogger;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/appwidget/AppWidgetHostView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1194
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mUpdateVisibilityScheduled:Z

    .line 1195
    return-void
.end method

.method private blacklist testVisibility(Landroid/view/View;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 1229
    invoke-virtual {p1}, Landroid/view/View;->isAggregatedVisible()Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1230
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 1229
    :goto_1d
    return v0
.end method

.method private blacklist updateVisibility(Z)V
    .registers 11
    .param p1, "hasWindowFocus"    # Z

    .line 1202
    iget-boolean v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mIsVisible:Z

    .line 1203
    .local v0, "wasVisible":Z
    const/4 v1, 0x0

    if-eqz p1, :cond_f

    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-direct {p0, v2}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->testVisibility(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    move v2, v1

    .line 1204
    .local v2, "isVisible":Z
    :goto_10
    if-eqz v2, :cond_2c

    .line 1206
    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v3}, Landroid/appwidget/AppWidgetHostView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .local v3, "parent":Landroid/view/ViewParent;
    :goto_18
    if-eqz v3, :cond_2c

    if-eqz v2, :cond_2c

    .line 1208
    instance-of v4, v3, Landroid/view/View;

    if-eqz v4, :cond_2c

    move-object v4, v3

    check-cast v4, Landroid/view/View;

    .line 1209
    .local v4, "view":Landroid/view/View;
    invoke-direct {p0, v4}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->testVisibility(Landroid/view/View;)Z

    move-result v2

    .line 1207
    .end local v4    # "view":Landroid/view/View;
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_18

    .line 1216
    .end local v3    # "parent":Landroid/view/ViewParent;
    :cond_2c
    if-nez v0, :cond_37

    if-eqz v2, :cond_37

    .line 1218
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mVisibilityChangeMs:J

    goto :goto_47

    .line 1219
    :cond_37
    if-eqz v0, :cond_47

    if-nez v2, :cond_47

    .line 1221
    iget-wide v3, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mDurationMs:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mVisibilityChangeMs:J

    sub-long/2addr v5, v7

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mDurationMs:J

    .line 1224
    :cond_47
    :goto_47
    iput-boolean v2, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mIsVisible:Z

    .line 1225
    iput-boolean v1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mUpdateVisibilityScheduled:Z

    .line 1226
    return-void
.end method


# virtual methods
.method public blacklist getClickedIds()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1081
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mClickedIds:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getDurationMs()J
    .registers 3

    .line 1092
    iget-wide v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mDurationMs:J

    return-wide v0
.end method

.method public blacklist getPosition()Landroid/graphics/Rect;
    .registers 2

    .line 1098
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mPosition:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getScrolledIds()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1087
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mScrolledIds:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist onInteraction(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "response"    # Landroid/widget/RemoteViews$RemoteResponse;

    .line 1104
    invoke-static {}, Landroid/appwidget/flags/Flags;->engagementMetrics()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mClickedIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1d

    .line 1105
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mClickedIds:Ljava/util/Set;

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->getMetricsId(Landroid/view/View;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1107
    :cond_1d
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->this$0:Landroid/appwidget/AppWidgetHostView;

    iget-object v0, v0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 1108
    .local v0, "manager":Landroid/appwidget/AppWidgetManager;
    if-eqz v0, :cond_2e

    .line 1109
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->this$0:Landroid/appwidget/AppWidgetHostView;

    iget v1, v1, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->noteAppWidgetTapped(I)V

    .line 1112
    :cond_2e
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    if-eqz v1, :cond_39

    .line 1113
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-interface {v1, p1, p2, p3}, Landroid/widget/RemoteViews$InteractionHandler;->onInteraction(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z

    move-result v1

    return v1

    .line 1115
    :cond_39
    nop

    .line 1116
    invoke-virtual {p3, p1}, Landroid/widget/RemoteViews$RemoteResponse;->getLaunchOptions(Landroid/view/View;)Landroid/util/Pair;

    move-result-object v1

    .line 1115
    invoke-static {p1, p2, v1}, Landroid/widget/RemoteViews;->startPendingIntent(Landroid/view/View;Landroid/app/PendingIntent;Landroid/util/Pair;)Z

    move-result v1

    return v1
.end method

.method public blacklist onScroll(Landroid/widget/AbsListView;)V
    .registers 4
    .param p1, "view"    # Landroid/widget/AbsListView;

    .line 1122
    invoke-static {}, Landroid/appwidget/flags/Flags;->engagementMetrics()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1124
    :cond_7
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mScrolledIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1e

    .line 1125
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mScrolledIds:Ljava/util/Set;

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->getMetricsId(Landroid/view/View;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1128
    :cond_1e
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    if-eqz v0, :cond_27

    .line 1129
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-interface {v0, p1}, Landroid/widget/RemoteViews$InteractionHandler;->onScroll(Landroid/widget/AbsListView;)V

    .line 1131
    :cond_27
    return-void
.end method
