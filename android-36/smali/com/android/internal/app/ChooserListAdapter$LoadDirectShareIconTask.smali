.class public Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;
.super Landroid/os/AsyncTask;
.source "ChooserListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadDirectShareIconTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mTargetInfo:Lcom/android/internal/app/chooser/SelectableTargetInfo;

.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserListAdapter;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/app/ChooserListAdapter;Lcom/android/internal/app/chooser/SelectableTargetInfo;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserListAdapter;
    .param p2, "targetInfo"    # Lcom/android/internal/app/chooser/SelectableTargetInfo;
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

    .line 811
    iput-object p1, p0, Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;->this$0:Lcom/android/internal/app/ChooserListAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 812
    iput-object p2, p0, Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;->mTargetInfo:Lcom/android/internal/app/chooser/SelectableTargetInfo;

    .line 813
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/app/ChooserListAdapter;Lcom/android/internal/app/chooser/SelectableTargetInfo;Lcom/android/internal/app/ChooserListAdapter-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;-><init>(Lcom/android/internal/app/ChooserListAdapter;Lcom/android/internal/app/chooser/SelectableTargetInfo;)V

    return-void
.end method


# virtual methods
.method protected varargs blacklist doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 3
    .param p1, "voids"    # [Ljava/lang/Void;

    .line 817
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;->mTargetInfo:Lcom/android/internal/app/chooser/SelectableTargetInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->loadIcon()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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

    .line 807
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public blacklist loadIcon()V
    .registers 2

    .line 831
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 832
    return-void
.end method

.method protected blacklist onPostExecute(Ljava/lang/Boolean;)V
    .registers 3
    .param p1, "isLoaded"    # Ljava/lang/Boolean;

    .line 822
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 823
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;->this$0:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->notifyDataSetChanged()V

    .line 825
    :cond_b
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

    .line 807
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
