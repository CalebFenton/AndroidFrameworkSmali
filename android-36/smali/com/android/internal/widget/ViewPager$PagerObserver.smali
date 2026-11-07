.class Lcom/android/internal/widget/ViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/ViewPager;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/widget/ViewPager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2805
    iput-object p1, p0, Lcom/android/internal/widget/ViewPager$PagerObserver;->this$0:Lcom/android/internal/widget/ViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/widget/ViewPager;Lcom/android/internal/widget/ViewPager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ViewPager$PagerObserver;-><init>(Lcom/android/internal/widget/ViewPager;)V

    return-void
.end method


# virtual methods
.method public whitelist onChanged()V
    .registers 2

    .line 2808
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager$PagerObserver;->this$0:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->dataSetChanged()V

    .line 2809
    return-void
.end method

.method public whitelist onInvalidated()V
    .registers 2

    .line 2812
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager$PagerObserver;->this$0:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->dataSetChanged()V

    .line 2813
    return-void
.end method
