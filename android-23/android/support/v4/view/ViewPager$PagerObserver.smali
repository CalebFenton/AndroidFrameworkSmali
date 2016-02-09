.class Landroid/support/v4/view/ViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/view/ViewPager;


# direct methods
.method private constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/view/ViewPager;

    #@0
    .prologue
    .line 2904
    iput-object p1, p0, Landroid/support/v4/view/ViewPager$PagerObserver;->this$0:Landroid/support/v4/view/ViewPager;

    #@2
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/ViewPager$PagerObserver;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/view/ViewPager;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager$PagerObserver;-><init>(Landroid/support/v4/view/ViewPager;)V

    #@3
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    #@0
    .prologue
    .line 2907
    iget-object v0, p0, Landroid/support/v4/view/ViewPager$PagerObserver;->this$0:Landroid/support/v4/view/ViewPager;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->dataSetChanged()V

    #@5
    .line 2906
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    #@0
    .prologue
    .line 2911
    iget-object v0, p0, Landroid/support/v4/view/ViewPager$PagerObserver;->this$0:Landroid/support/v4/view/ViewPager;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->dataSetChanged()V

    #@5
    .line 2910
    return-void
.end method
