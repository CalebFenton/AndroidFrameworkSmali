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
.field public final capability:I

.field public final descResId:I

.field public final titleResId:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "capability"    # I
    .param p2, "titleResId"    # I
    .param p3, "descResId"    # I

    #@0
    .prologue
    .line 954
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 955
    iput p1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;->capability:I

    #@5
    .line 956
    iput p2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;->titleResId:I

    #@7
    .line 957
    iput p3, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;->descResId:I

    #@9
    .line 954
    return-void
.end method
