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
.field final synthetic blacklist this$0:Lcom/android/internal/widget/ViewPager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/ViewPager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/widget/ViewPager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 225
    iput-object p1, p0, Lcom/android/internal/widget/ViewPager$3;->this$0:Lcom/android/internal/widget/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 227
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager$3;->this$0:Lcom/android/internal/widget/ViewPager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/widget/ViewPager;->-$$Nest$msetScrollState(Lcom/android/internal/widget/ViewPager;I)V

    .line 228
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager$3;->this$0:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->populate()V

    .line 229
    return-void
.end method
