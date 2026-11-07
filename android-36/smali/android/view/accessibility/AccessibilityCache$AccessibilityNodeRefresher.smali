.class public Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;
.super Ljava/lang/Object;
.source "AccessibilityCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessibilityNodeRefresher"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 930
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o refreshNode(Landroid/view/accessibility/AccessibilityNodeInfo;Z)Z
    .registers 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "bypassCache"    # Z

    .line 933
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->refresh(Landroid/os/Bundle;Z)Z

    move-result v0

    return v0
.end method

.method public blacklist refreshWindow(Landroid/view/accessibility/AccessibilityWindowInfo;)Z
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 938
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->refresh()Z

    move-result v0

    return v0
.end method
