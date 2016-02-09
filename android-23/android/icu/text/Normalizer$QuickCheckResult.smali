.class public final Landroid/icu/text/Normalizer$QuickCheckResult;
.super Ljava/lang/Object;
.source "Normalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/Normalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QuickCheckResult"
.end annotation


# direct methods
.method private constructor <init>(I)V
    .locals 0
    .param p1, "value"    # I

    #@0
    .prologue
    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(ILandroid/icu/text/Normalizer$QuickCheckResult;)V
    .locals 0
    .param p1, "value"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/icu/text/Normalizer$QuickCheckResult;-><init>(I)V

    #@3
    return-void
.end method
