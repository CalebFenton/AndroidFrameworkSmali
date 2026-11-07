.class Lcom/android/internal/app/ChooserListAdapter$2;
.super Landroid/os/AsyncTask;
.source "ChooserListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserListAdapter;->updateAlphabeticalList()V
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
        "Ljava/util/List<",
        "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserListAdapter;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserListAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserListAdapter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 367
    iput-object p1, p0, Lcom/android/internal/app/ChooserListAdapter$2;->this$0:Lcom/android/internal/app/ChooserListAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 367
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserListAdapter$2;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs blacklist doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .registers 9
    .param p1, "voids"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;"
        }
    .end annotation

    .line 370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v0, "allTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter$2;->this$0:Lcom/android/internal/app/ChooserListAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 372
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter$2;->this$0:Lcom/android/internal/app/ChooserListAdapter;

    invoke-static {v1}, Lcom/android/internal/app/ChooserListAdapter;->-$$Nest$fgetmCallerTargets(Lcom/android/internal/app/ChooserListAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 373
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter$2;->this$0:Lcom/android/internal/app/ChooserListAdapter;

    invoke-static {v1}, Lcom/android/internal/app/ChooserListAdapter;->-$$Nest$fgetmEnableStackedApps(Lcom/android/internal/app/ChooserListAdapter;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 374
    return-object v0

    .line 377
    :cond_1e
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 378
    .local v1, "consolidated":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 379
    .local v3, "info":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    if-nez v4, :cond_57

    .line 380
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ResolveInfo with null UserHandle found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 381
    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 380
    const-string v5, "ChooserListAdapter"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x23

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 384
    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 385
    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 386
    .local v4, "resolvedTarget":Ljava/lang/String;
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 387
    .local v5, "multiDri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    if-nez v5, :cond_98

    .line 388
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ae

    .line 389
    :cond_98
    instance-of v6, v5, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    if-eqz v6, :cond_a3

    .line 390
    move-object v6, v5

    check-cast v6, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    invoke-virtual {v6, v3}, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->addTarget(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    goto :goto_ae

    .line 393
    :cond_a3
    new-instance v6, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    invoke-direct {v6, v4, v5}, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;-><init>(Ljava/lang/String;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 395
    .local v6, "multiDisplayResolveInfo":Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;
    invoke-virtual {v6, v3}, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->addTarget(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 396
    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    .end local v3    # "info":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .end local v4    # "resolvedTarget":Ljava/lang/String;
    .end local v5    # "multiDri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .end local v6    # "multiDisplayResolveInfo":Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;
    :goto_ae
    goto/16 :goto_27

    .line 399
    :cond_b0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 400
    .local v2, "groupedTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 401
    new-instance v3, Lcom/android/internal/app/ChooserActivity$AzInfoComparator;

    iget-object v4, p0, Lcom/android/internal/app/ChooserListAdapter$2;->this$0:Lcom/android/internal/app/ChooserListAdapter;

    iget-object v4, v4, Lcom/android/internal/app/ChooserListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/internal/app/ChooserActivity$AzInfoComparator;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 403
    return-object v2
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

    .line 367
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserListAdapter$2;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected blacklist onPostExecute(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 407
    .local p1, "newList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter$2;->this$0:Lcom/android/internal/app/ChooserListAdapter;

    invoke-static {v0, p1}, Lcom/android/internal/app/ChooserListAdapter;->-$$Nest$fputmSortedList(Lcom/android/internal/app/ChooserListAdapter;Ljava/util/List;)V

    .line 408
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter$2;->this$0:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->notifyDataSetChanged()V

    .line 409
    return-void
.end method
