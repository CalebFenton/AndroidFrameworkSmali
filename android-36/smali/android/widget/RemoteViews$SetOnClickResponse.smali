.class Landroid/widget/RemoteViews$SetOnClickResponse;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetOnClickResponse"
.end annotation


# instance fields
.field final blacklist mResponse:Landroid/widget/RemoteViews$RemoteResponse;

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method public static synthetic blacklist $r8$lambda$5d0TjNg2qU3bJibIWO5ZBiK4YAg(Landroid/widget/RemoteViews$SetOnClickResponse;Landroid/widget/RemoteViews$ActionApplyParams;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews$SetOnClickResponse;->lambda$apply$0(Landroid/widget/RemoteViews$ActionApplyParams;Landroid/view/View;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews$RemoteResponse;)V
    .registers 4
    .param p2, "id"    # I
    .param p3, "response"    # Landroid/widget/RemoteViews$RemoteResponse;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1891
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnClickResponse;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 1892
    iput p2, p0, Landroid/widget/RemoteViews$SetOnClickResponse;->mViewId:I

    .line 1893
    iput-object p3, p0, Landroid/widget/RemoteViews$SetOnClickResponse;->mResponse:Landroid/widget/RemoteViews$RemoteResponse;

    .line 1894
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 3
    .param p2, "parcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1896
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnClickResponse;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 1897
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$SetOnClickResponse;->mViewId:I

    .line 1898
    new-instance p1, Landroid/widget/RemoteViews$RemoteResponse;

    invoke-direct {p1}, Landroid/widget/RemoteViews$RemoteResponse;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnClickResponse;->mResponse:Landroid/widget/RemoteViews$RemoteResponse;

    .line 1899
    iget-object p1, p0, Landroid/widget/RemoteViews$SetOnClickResponse;->mResponse:Landroid/widget/RemoteViews$RemoteResponse;

    invoke-static {p1, p2}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$mreadFromParcel(Landroid/widget/RemoteViews$RemoteResponse;Landroid/os/Parcel;)V

    .line 1900
    return-void
.end method

.method private synthetic blacklist lambda$apply$0(Landroid/widget/RemoteViews$ActionApplyParams;Landroid/view/View;)V
    .registers 5
    .param p1, "params"    # Landroid/widget/RemoteViews$ActionApplyParams;
    .param p2, "v"    # Landroid/view/View;

    .line 1953
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnClickResponse;->mResponse:Landroid/widget/RemoteViews$RemoteResponse;

    iget-object v1, p1, Landroid/widget/RemoteViews$ActionApplyParams;->handler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-static {v0, p2, v1}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$mhandleViewInteraction(Landroid/widget/RemoteViews$RemoteResponse;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;)V

    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 10
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "params"    # Landroid/widget/RemoteViews$ActionApplyParams;

    .line 1909
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnClickResponse;->this$0:Landroid/widget/RemoteViews;

    invoke-static {v0}, Landroid/widget/RemoteViews;->-$$Nest$mhasDrawInstructions(Landroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_d

    instance-of v0, p1, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    if-eqz v0, :cond_d

    .line 1910
    return-void

    .line 1912
    :cond_d
    iget v0, p0, Landroid/widget/RemoteViews$SetOnClickResponse;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1913
    .local v0, "target":Landroid/view/View;
    if-nez v0, :cond_16

    return-void

    .line 1915
    :cond_16
    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnClickResponse;->mResponse:Landroid/widget/RemoteViews$RemoteResponse;

    invoke-static {v1}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$fgetmPendingIntent(Landroid/widget/RemoteViews$RemoteResponse;)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v2, "RemoteViews"

    const v3, 0x1020464

    const/4 v4, 0x2

    if-eqz v1, :cond_65

    .line 1919
    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnClickResponse;->this$0:Landroid/widget/RemoteViews;

    invoke-virtual {v1, v4}, Landroid/widget/RemoteViews;->hasFlags(I)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 1920
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot SetOnClickResponse for collection item (id: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/widget/RemoteViews$SetOnClickResponse;->mViewId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1926
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_5b

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x10

    if-lt v2, v4, :cond_5b

    .line 1928
    return-void

    .line 1931
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_5b
    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnClickResponse;->mResponse:Landroid/widget/RemoteViews$RemoteResponse;

    invoke-static {v1}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$fgetmPendingIntent(Landroid/widget/RemoteViews$RemoteResponse;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    goto :goto_86

    .line 1932
    :cond_65
    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnClickResponse;->mResponse:Landroid/widget/RemoteViews$RemoteResponse;

    invoke-static {v1}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$fgetmFillIntent(Landroid/widget/RemoteViews$RemoteResponse;)Landroid/content/Intent;

    move-result-object v1

    const v5, 0x1020308

    if-eqz v1, :cond_8f

    .line 1933
    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnClickResponse;->this$0:Landroid/widget/RemoteViews;

    invoke-virtual {v1, v4}, Landroid/widget/RemoteViews;->hasFlags(I)Z

    move-result v1

    if-nez v1, :cond_7e

    .line 1934
    const-string v1, "The method setOnClickFillInIntent is available only from RemoteViewsFactory (ie. on collection items)."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    return-void

    .line 1938
    :cond_7e
    if-ne v0, p1, :cond_86

    .line 1942
    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnClickResponse;->mResponse:Landroid/widget/RemoteViews$RemoteResponse;

    invoke-virtual {v0, v5, v1}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 1943
    return-void

    .line 1952
    :cond_86
    :goto_86
    new-instance v1, Landroid/widget/RemoteViews$SetOnClickResponse$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p3}, Landroid/widget/RemoteViews$SetOnClickResponse$$ExternalSyntheticLambda0;-><init>(Landroid/widget/RemoteViews$SetOnClickResponse;Landroid/widget/RemoteViews$ActionApplyParams;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1954
    return-void

    .line 1947
    :cond_8f
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1948
    invoke-virtual {v0, v3, v1}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 1949
    invoke-virtual {v0, v5, v1}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 1950
    return-void
.end method

.method public blacklist getActionTag()I
    .registers 2

    .line 1958
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1903
    iget v0, p0, Landroid/widget/RemoteViews$SetOnClickResponse;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1904
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnClickResponse;->mResponse:Landroid/widget/RemoteViews$RemoteResponse;

    invoke-static {v0, p1, p2}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$mwriteToParcel(Landroid/widget/RemoteViews$RemoteResponse;Landroid/os/Parcel;I)V

    .line 1905
    return-void
.end method
