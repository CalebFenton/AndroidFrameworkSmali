.class public final Landroid/app/jank/AppJankStats;
.super Ljava/lang/Object;
.source "AppJankStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/jank/AppJankStats$WidgetState;,
        Landroid/app/jank/AppJankStats$WidgetCategory;
    }
.end annotation


# static fields
.field public static final whitelist WIDGET_CATEGORY_ANIMATION:Ljava/lang/String; = "animation"

.field public static final whitelist WIDGET_CATEGORY_KEYBOARD:Ljava/lang/String; = "keyboard"

.field public static final whitelist WIDGET_CATEGORY_MEDIA:Ljava/lang/String; = "media"

.field public static final whitelist WIDGET_CATEGORY_NAVIGATION:Ljava/lang/String; = "navigation"

.field public static final whitelist WIDGET_CATEGORY_OTHER:Ljava/lang/String; = "other"

.field public static final whitelist WIDGET_CATEGORY_SCROLL:Ljava/lang/String; = "scroll"

.field public static final whitelist WIDGET_CATEGORY_UNSPECIFIED:Ljava/lang/String; = "unspecified"

.field public static final whitelist WIDGET_STATE_ANIMATING:Ljava/lang/String; = "animating"

.field public static final whitelist WIDGET_STATE_DRAGGING:Ljava/lang/String; = "dragging"

.field public static final whitelist WIDGET_STATE_FLINGING:Ljava/lang/String; = "flinging"

.field public static final whitelist WIDGET_STATE_NONE:Ljava/lang/String; = "none"

.field public static final whitelist WIDGET_STATE_PLAYBACK:Ljava/lang/String; = "playback"

.field public static final whitelist WIDGET_STATE_PREDICTIVE_BACK:Ljava/lang/String; = "predictive_back"

.field public static final whitelist WIDGET_STATE_SCROLLING:Ljava/lang/String; = "scrolling"

.field public static final whitelist WIDGET_STATE_SWIPING:Ljava/lang/String; = "swiping"

.field public static final whitelist WIDGET_STATE_TAPPING:Ljava/lang/String; = "tapping"

.field public static final whitelist WIDGET_STATE_UNSPECIFIED:Ljava/lang/String; = "unspecified"

.field public static final whitelist WIDGET_STATE_ZOOMING:Ljava/lang/String; = "zooming"


# instance fields
.field private blacklist mJankyFrames:J

.field private blacklist mNavigationComponent:Ljava/lang/String;

.field private blacklist mRelativeFrameTimeHistogram:Landroid/app/jank/RelativeFrameTimeHistogram;

.field private blacklist mTotalFrames:J

.field private blacklist mUid:I

.field private blacklist mWidgetCategory:Ljava/lang/String;

.field private blacklist mWidgetId:Ljava/lang/String;

.field private blacklist mWidgetState:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/app/jank/RelativeFrameTimeHistogram;)V
    .registers 13
    .param p1, "appUid"    # I
    .param p2, "widgetId"    # Ljava/lang/String;
    .param p3, "navigationComponent"    # Ljava/lang/String;
    .param p4, "widgetCategory"    # Ljava/lang/String;
    .param p5, "widgetState"    # Ljava/lang/String;
    .param p6, "totalFrames"    # J
    .param p8, "jankyFrames"    # J
    .param p10, "relativeFrameTimeHistogram"    # Landroid/app/jank/RelativeFrameTimeHistogram;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput p1, p0, Landroid/app/jank/AppJankStats;->mUid:I

    .line 185
    iput-object p2, p0, Landroid/app/jank/AppJankStats;->mWidgetId:Ljava/lang/String;

    .line 186
    iput-object p3, p0, Landroid/app/jank/AppJankStats;->mNavigationComponent:Ljava/lang/String;

    .line 187
    const-string/jumbo v0, "unspecified"

    if-eqz p4, :cond_10

    move-object v1, p4

    goto :goto_11

    :cond_10
    move-object v1, v0

    :goto_11
    iput-object v1, p0, Landroid/app/jank/AppJankStats;->mWidgetCategory:Ljava/lang/String;

    .line 188
    if-eqz p5, :cond_16

    move-object v0, p5

    :cond_16
    iput-object v0, p0, Landroid/app/jank/AppJankStats;->mWidgetState:Ljava/lang/String;

    .line 189
    iput-wide p6, p0, Landroid/app/jank/AppJankStats;->mTotalFrames:J

    .line 190
    iput-wide p8, p0, Landroid/app/jank/AppJankStats;->mJankyFrames:J

    .line 191
    iput-object p10, p0, Landroid/app/jank/AppJankStats;->mRelativeFrameTimeHistogram:Landroid/app/jank/RelativeFrameTimeHistogram;

    .line 192
    return-void
.end method


# virtual methods
.method public whitelist getJankyFrameCount()J
    .registers 3

    .line 239
    iget-wide v0, p0, Landroid/app/jank/AppJankStats;->mJankyFrames:J

    return-wide v0
.end method

.method public whitelist getNavigationComponent()Ljava/lang/String;
    .registers 2

    .line 268
    iget-object v0, p0, Landroid/app/jank/AppJankStats;->mNavigationComponent:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRelativeFrameTimeHistogram()Landroid/app/jank/RelativeFrameTimeHistogram;
    .registers 2

    .line 259
    iget-object v0, p0, Landroid/app/jank/AppJankStats;->mRelativeFrameTimeHistogram:Landroid/app/jank/RelativeFrameTimeHistogram;

    return-object v0
.end method

.method public whitelist getTotalFrameCount()J
    .registers 3

    .line 248
    iget-wide v0, p0, Landroid/app/jank/AppJankStats;->mTotalFrames:J

    return-wide v0
.end method

.method public whitelist getUid()I
    .registers 2

    .line 200
    iget v0, p0, Landroid/app/jank/AppJankStats;->mUid:I

    return v0
.end method

.method public whitelist getWidgetCategory()Ljava/lang/String;
    .registers 2

    .line 220
    iget-object v0, p0, Landroid/app/jank/AppJankStats;->mWidgetCategory:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getWidgetId()Ljava/lang/String;
    .registers 2

    .line 209
    iget-object v0, p0, Landroid/app/jank/AppJankStats;->mWidgetId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getWidgetState()Ljava/lang/String;
    .registers 2

    .line 230
    iget-object v0, p0, Landroid/app/jank/AppJankStats;->mWidgetState:Ljava/lang/String;

    return-object v0
.end method
