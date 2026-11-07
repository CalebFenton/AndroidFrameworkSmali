.class public interface abstract Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;
.super Ljava/lang/Object;
.source "AccessibilityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AccessibilityPolicy"
.end annotation


# virtual methods
.method public abstract greylist-max-o getEnabledAccessibilityServiceList(ILjava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o getInstalledAccessibilityServiceList(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o getRelevantEventTypes(I)I
.end method

.method public abstract greylist-max-o isEnabled(Z)Z
.end method

.method public abstract greylist-max-o onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;ZI)Landroid/view/accessibility/AccessibilityEvent;
.end method
