.class Lcom/android/internal/widget/ViewPager$ItemInfo;
.super Ljava/lang/Object;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ItemInfo"
.end annotation


# instance fields
.field blacklist object:Ljava/lang/Object;

.field blacklist offset:F

.field blacklist position:I

.field blacklist scrolling:Z

.field blacklist widthFactor:F


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
