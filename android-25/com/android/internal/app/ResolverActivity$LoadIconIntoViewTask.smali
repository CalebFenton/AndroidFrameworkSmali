.class Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;
.super Lcom/android/internal/app/ResolverActivity$LoadIconTask;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadIconIntoViewTask"
.end annotation


# instance fields
.field private final mTargetView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverActivity;
    .param p2, "dri"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .param p3, "target"    # Landroid/widget/ImageView;

    #@0
    .prologue
    .line 1867
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@2
    .line 1868
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ResolverActivity$LoadIconTask;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    #@5
    .line 1869
    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->mTargetView:Landroid/widget/ImageView;

    #@7
    .line 1867
    return-void
.end method


# virtual methods
.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 1874
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverActivity$LoadIconTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    #@3
    .line 1875
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->mTargetView:Landroid/widget/ImageView;

    #@5
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@8
    .line 1873
    return-void
.end method
