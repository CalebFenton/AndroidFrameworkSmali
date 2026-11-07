.class Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;
.super Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;
.source "ChooserMultiProfilePagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChooserProfileDescriptor"
.end annotation


# instance fields
.field private blacklist chooserGridAdapter:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

.field private blacklist recyclerView:Lcom/android/internal/widget/RecyclerView;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetchooserGridAdapter(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->chooserGridAdapter:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetrecyclerView(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/widget/RecyclerView;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->recyclerView:Lcom/android/internal/widget/RecyclerView;

    return-object p0
.end method

.method constructor blacklist <init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;Landroid/view/ViewGroup;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;
    .param p2, "rootView"    # Landroid/view/ViewGroup;
    .param p3, "adapter"    # Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 207
    invoke-direct {p0, p2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;-><init>(Landroid/view/ViewGroup;)V

    .line 208
    iput-object p3, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->chooserGridAdapter:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    .line 209
    const v0, 0x10204c2

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->recyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 210
    return-void
.end method
