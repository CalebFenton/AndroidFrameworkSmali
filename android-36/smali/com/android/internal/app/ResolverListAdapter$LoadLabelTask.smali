.class public Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;
.super Landroid/os/AsyncTask;
.source "ResolverListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LoadLabelTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mDisplayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

.field final synthetic blacklist this$0:Lcom/android/internal/app/ResolverListAdapter;


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
    .registers 3
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

    .line 943
    iput-object p1, p0, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 944
    iput-object p2, p0, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->mDisplayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 945
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

    .line 940
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->doInBackground([Ljava/lang/Void;)[Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method protected varargs blacklist doInBackground([Ljava/lang/Void;)[Ljava/lang/CharSequence;
    .registers 12
    .param p1, "voids"    # [Ljava/lang/Void;

    .line 949
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->mDisplayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 950
    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverListAdapter;->makePresentationGetter(Landroid/content/pm/ResolveInfo;)Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    move-result-object v0

    .line 952
    .local v0, "pg":Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;
    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    invoke-static {v1}, Lcom/android/internal/app/ResolverListAdapter;->-$$Nest$fgetmIsAudioCaptureDevice(Lcom/android/internal/app/ResolverListAdapter;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_4d

    .line 954
    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->mDisplayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 955
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 957
    .local v5, "packageName":Ljava/lang/String;
    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 958
    .local v6, "uid":I
    iget-object v7, p0, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v7, v7, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    .line 959
    const-string v8, "android.permission.RECORD_AUDIO"

    const/4 v9, -0x1

    invoke-static {v7, v8, v9, v6, v5}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v7

    if-nez v7, :cond_34

    move v7, v3

    goto :goto_35

    :cond_34
    move v7, v4

    .line 965
    .local v7, "hasRecordPermission":Z
    :goto_35
    if-nez v7, :cond_4d

    .line 967
    new-array v2, v2, [Ljava/lang/CharSequence;

    .line 968
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->getLabel()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v4

    iget-object v4, p0, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v4, v4, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    .line 969
    const v8, 0x1040a6a

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 967
    return-object v2

    .line 974
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "uid":I
    .end local v7    # "hasRecordPermission":Z
    :cond_4d
    new-array v1, v2, [Ljava/lang/CharSequence;

    .line 975
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->getLabel()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 976
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->getSubLabel()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 974
    return-object v1
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

    .line 940
    check-cast p1, [Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->onPostExecute([Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected blacklist onPostExecute([Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "result"    # [Ljava/lang/CharSequence;

    .line 982
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->mDisplayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->hasDisplayLabel()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 983
    return-void

    .line 985
    :cond_9
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->mDisplayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->setDisplayLabel(Ljava/lang/CharSequence;)V

    .line 986
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->mDisplayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->setExtendedInfo(Ljava/lang/CharSequence;)V

    .line 987
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->notifyDataSetChanged()V

    .line 988
    return-void
.end method
