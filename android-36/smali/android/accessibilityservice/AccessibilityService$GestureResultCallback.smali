.class public abstract Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;
.super Ljava/lang/Object;
.source "AccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/AccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "GestureResultCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 3212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCancelled(Landroid/accessibilityservice/GestureDescription;)V
    .registers 2
    .param p1, "gestureDescription"    # Landroid/accessibilityservice/GestureDescription;

    .line 3225
    return-void
.end method

.method public whitelist onCompleted(Landroid/accessibilityservice/GestureDescription;)V
    .registers 2
    .param p1, "gestureDescription"    # Landroid/accessibilityservice/GestureDescription;

    .line 3218
    return-void
.end method
