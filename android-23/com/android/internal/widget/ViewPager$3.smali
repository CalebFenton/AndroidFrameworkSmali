.class Lcom/android/internal/widget/ViewPager$3;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ViewPager;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ViewPager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/ViewPager;

    #@0
    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/internal/widget/ViewPager$3;->this$0:Lcom/android/internal/widget/ViewPager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager$3;->this$0:Lcom/android/internal/widget/ViewPager;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, v1}, Lcom/android/internal/widget/ViewPager;->-wrap0(Lcom/android/internal/widget/ViewPager;I)V

    #@6
    .line 251
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager$3;->this$0:Lcom/android/internal/widget/ViewPager;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->populate()V

    #@b
    .line 249
    return-void
.end method
