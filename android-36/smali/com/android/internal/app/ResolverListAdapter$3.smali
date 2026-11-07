.class Lcom/android/internal/app/ResolverListAdapter$3;
.super Landroid/os/AsyncTask;
.source "ResolverListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverListAdapter;->loadFilteredItemIconTaskAsync(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ResolverListAdapter;

.field final synthetic blacklist val$iconInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

.field final synthetic blacklist val$iconView:Landroid/widget/ImageView;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/widget/ImageView;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverListAdapter;
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

    .line 760
    iput-object p1, p0, Lcom/android/internal/app/ResolverListAdapter$3;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    iput-object p2, p0, Lcom/android/internal/app/ResolverListAdapter$3;->val$iconInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    iput-object p3, p0, Lcom/android/internal/app/ResolverListAdapter$3;->val$iconView:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs blacklist doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "params"    # [Ljava/lang/Void;

    .line 763
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$3;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$3;->val$iconInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverListAdapter;->loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 760
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter$3;->doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 768
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$3;->val$iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 769
    return-void
.end method

.method protected bridge synthetic whitelist onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 760
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter$3;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
