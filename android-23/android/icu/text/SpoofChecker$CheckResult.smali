.class public Landroid/icu/text/SpoofChecker$CheckResult;
.super Ljava/lang/Object;
.source "SpoofChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SpoofChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckResult"
.end annotation


# instance fields
.field public checks:I

.field public numerics:Landroid/icu/text/UnicodeSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public position:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public restrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 1549
    iput v0, p0, Landroid/icu/text/SpoofChecker$CheckResult;->checks:I

    #@6
    .line 1550
    iput v0, p0, Landroid/icu/text/SpoofChecker$CheckResult;->position:I

    #@8
    .line 1548
    return-void
.end method
