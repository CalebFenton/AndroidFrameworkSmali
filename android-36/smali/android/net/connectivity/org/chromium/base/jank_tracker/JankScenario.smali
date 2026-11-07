.class public Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;
.super Ljava/lang/Object;
.source "JankScenario.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario$Type;
    }
.end annotation


# static fields
.field public static final blacklist COMBINED_WEBVIEW_SCROLLING:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

.field public static final blacklist FEED_SCROLLING:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

.field public static final blacklist NEW_TAB_PAGE:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

.field public static final blacklist OMNIBOX_FOCUS:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

.field public static final blacklist OPEN_LINK_IN_NEW_TAB:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

.field public static final blacklist PERIODIC_REPORTING:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

.field public static final blacklist STARTUP:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

.field public static final blacklist START_SURFACE_HOMEPAGE:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

.field public static final blacklist START_SURFACE_TAB_SWITCHER:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

.field public static final blacklist TAB_SWITCHER:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

.field public static final blacklist WEBVIEW_SCROLLING:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;


# instance fields
.field private final blacklist mId:J

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 50
    new-instance v0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;-><init>(IJ)V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;->PERIODIC_REPORTING:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

    .line 52
    new-instance v0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;-><init>(IJ)V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;->OMNIBOX_FOCUS:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

    .line 53
    new-instance v0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;-><init>(IJ)V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;->NEW_TAB_PAGE:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

    .line 54
    new-instance v0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

    const/4 v1, 0x4

    invoke-direct {v0, v1, v2, v3}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;-><init>(IJ)V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;->STARTUP:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

    .line 55
    new-instance v0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

    const/4 v1, 0x5

    invoke-direct {v0, v1, v2, v3}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;-><init>(IJ)V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;->TAB_SWITCHER:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

    .line 56
    new-instance v0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

    const/4 v1, 0x6

    invoke-direct {v0, v1, v2, v3}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;-><init>(IJ)V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;->OPEN_LINK_IN_NEW_TAB:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

    .line 58
    new-instance v0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

    const/4 v1, 0x7

    invoke-direct {v0, v1, v2, v3}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;-><init>(IJ)V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;->START_SURFACE_HOMEPAGE:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

    .line 60
    new-instance v0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

    const/16 v1, 0x8

    invoke-direct {v0, v1, v2, v3}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;-><init>(IJ)V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;->START_SURFACE_TAB_SWITCHER:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

    .line 62
    new-instance v0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

    const/16 v1, 0x9

    invoke-direct {v0, v1, v2, v3}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;-><init>(IJ)V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;->FEED_SCROLLING:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

    .line 63
    new-instance v0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v2, v3}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;-><init>(IJ)V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;->WEBVIEW_SCROLLING:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

    .line 65
    new-instance v0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

    const/16 v1, 0xb

    invoke-direct {v0, v1, v2, v3}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;-><init>(IJ)V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;->COMBINED_WEBVIEW_SCROLLING:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

    return-void
.end method

.method public constructor blacklist <init>(IJ)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "id"    # J

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;->mType:I

    .line 73
    iput-wide p2, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;->mId:J

    .line 74
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 86
    const/4 v0, 0x0

    if-eqz p1, :cond_1f

    instance-of v1, p1, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

    if-nez v1, :cond_8

    goto :goto_1f

    .line 87
    :cond_8
    move-object v1, p1

    check-cast v1, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

    .line 88
    .local v1, "other":Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;
    iget v2, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;->mType:I

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;->type()I

    move-result v3

    if-ne v2, v3, :cond_1e

    iget-wide v2, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;->mId:J

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;->id()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1e

    const/4 v0, 0x1

    :cond_1e
    return v0

    .line 86
    .end local v1    # "other":Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;
    :cond_1f
    :goto_1f
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 93
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;->mType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist id()J
    .registers 3

    .line 81
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;->mId:J

    return-wide v0
.end method

.method public blacklist type()I
    .registers 2

    .line 77
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;->mType:I

    return v0
.end method
