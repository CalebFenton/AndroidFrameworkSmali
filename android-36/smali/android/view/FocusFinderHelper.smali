.class public Landroid/view/FocusFinderHelper;
.super Ljava/lang/Object;
.source "FocusFinderHelper.java"


# instance fields
.field private greylist-max-o mFocusFinder:Landroid/view/FocusFinder;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/view/FocusFinder;)V
    .registers 2
    .param p1, "focusFinder"    # Landroid/view/FocusFinder;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/view/FocusFinderHelper;->mFocusFinder:Landroid/view/FocusFinder;

    .line 34
    return-void
.end method

.method public static greylist-max-o majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 4
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    .line 53
    invoke-static {p0, p1, p2}, Landroid/view/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 4
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    .line 57
    invoke-static {p0, p1, p2}, Landroid/view/FocusFinder;->majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public greylist-max-o beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 6
    .param p1, "direction"    # I
    .param p2, "source"    # Landroid/graphics/Rect;
    .param p3, "rect1"    # Landroid/graphics/Rect;
    .param p4, "rect2"    # Landroid/graphics/Rect;

    .line 41
    iget-object v0, p0, Landroid/view/FocusFinderHelper;->mFocusFinder:Landroid/view/FocusFinder;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/FocusFinder;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 5
    .param p1, "direction"    # I
    .param p2, "rect1"    # Landroid/graphics/Rect;
    .param p3, "rect2"    # Landroid/graphics/Rect;

    .line 49
    iget-object v0, p0, Landroid/view/FocusFinderHelper;->mFocusFinder:Landroid/view/FocusFinder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/FocusFinder;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 6
    .param p1, "direction"    # I
    .param p2, "source"    # Landroid/graphics/Rect;
    .param p3, "rect1"    # Landroid/graphics/Rect;
    .param p4, "rect2"    # Landroid/graphics/Rect;

    .line 37
    iget-object v0, p0, Landroid/view/FocusFinderHelper;->mFocusFinder:Landroid/view/FocusFinder;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/FocusFinder;->isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    .registers 5
    .param p1, "srcRect"    # Landroid/graphics/Rect;
    .param p2, "destRect"    # Landroid/graphics/Rect;
    .param p3, "direction"    # I

    .line 45
    iget-object v0, p0, Landroid/view/FocusFinderHelper;->mFocusFinder:Landroid/view/FocusFinder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/FocusFinder;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v0

    return v0
.end method
