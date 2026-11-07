.class public final Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;
.super Ljava/lang/Object;
.source "AccessibilityServiceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/AccessibilityServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CapabilityInfo"
.end annotation


# instance fields
.field public final greylist-max-o capability:I

.field public final greylist-max-o descResId:I

.field public final greylist-max-o titleResId:I


# direct methods
.method public constructor greylist-max-o <init>(III)V
    .registers 4
    .param p1, "capability"    # I
    .param p2, "titleResId"    # I
    .param p3, "descResId"    # I

    .line 1774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1775
    iput p1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;->capability:I

    .line 1776
    iput p2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;->titleResId:I

    .line 1777
    iput p3, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;->descResId:I

    .line 1778
    return-void
.end method
