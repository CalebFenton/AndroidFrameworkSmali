.class Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$1;
.super Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;
.source "ChooserMultiProfilePagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->setupListAdapter(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$chooserGridAdapter:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

.field final synthetic blacklist val$glm:Lcom/android/internal/widget/GridLayoutManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/widget/GridLayoutManager;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 133
    iput-object p2, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$1;->val$chooserGridAdapter:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iput-object p3, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$1;->val$glm:Lcom/android/internal/widget/GridLayoutManager;

    invoke-direct {p0}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getSpanSize(I)I
    .registers 3
    .param p1, "position"    # I

    .line 136
    iget-object v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$1;->val$chooserGridAdapter:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->shouldCellSpan(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 137
    const/4 v0, 0x1

    goto :goto_10

    .line 138
    :cond_a
    iget-object v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$1;->val$glm:Lcom/android/internal/widget/GridLayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    .line 136
    :goto_10
    return v0
.end method
