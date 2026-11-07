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
.method private constructor greylist-max-o <init>(I)V
    .registers 2
    .param p1, "value"    # I

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/icu/text/Normalizer-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/icu/text/Normalizer$QuickCheckResult;-><init>(I)V

    return-void
.end method
