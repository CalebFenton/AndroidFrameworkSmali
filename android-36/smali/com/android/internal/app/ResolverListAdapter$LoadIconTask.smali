.class Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;
.super Landroid/os/AsyncTask;
.source "ResolverListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadIconTask"
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
.field protected final blacklist mDisplayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

.field private final blacklist mResolveInfo:Landroid/content/pm/ResolveInfo;

.field final synthetic blacklist this$0:Lcom/android/internal/app/ResolverListAdapter;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverListAdapter;
    .param p2, "dri"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 995
    iput-object p1, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 996
    iput-object p2, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->mDisplayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 997
    invoke-virtual {p2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 998
    return-void
.end method


# virtual methods
.method protected varargs blacklist doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "params"    # [Ljava/lang/Void;

    .line 1002
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->mResolveInfo:Landroid/content/pm/ResolveInfo;

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

    .line 991
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 1007
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->mDisplayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-ne v0, v1, :cond_12

    .line 1008
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v0}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->updateProfileViewButton()V

    goto :goto_26

    .line 1009
    :cond_12
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->mDisplayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->hasDisplayIcon()Z

    move-result v0

    if-nez v0, :cond_26

    .line 1010
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->mDisplayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->setDisplayIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1011
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->mDisplayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverListAdapter;->onIconLoaded(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 1013
    :cond_26
    :goto_26
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

    .line 991
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
