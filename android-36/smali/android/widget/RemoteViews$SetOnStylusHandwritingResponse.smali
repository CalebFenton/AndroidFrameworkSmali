.class Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetOnStylusHandwritingResponse"
.end annotation


# instance fields
.field final blacklist mPendingIntent:Landroid/app/PendingIntent;

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V
    .registers 4
    .param p2, "id"    # I
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;
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

    .line 1966
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 1967
    iput p2, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;->mViewId:I

    .line 1968
    iput-object p3, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;->mPendingIntent:Landroid/app/PendingIntent;

    .line 1969
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

    .line 1971
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 1972
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;->mViewId:I

    .line 1973
    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;->mPendingIntent:Landroid/app/PendingIntent;

    .line 1974
    return-void
.end method

.method static synthetic blacklist lambda$apply$0(Landroid/widget/RemoteViews$RemoteResponse;Landroid/view/View;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 4
    .param p0, "response"    # Landroid/widget/RemoteViews$RemoteResponse;
    .param p1, "target"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/RemoteViews$ActionApplyParams;

    .line 1995
    iget-object v0, p2, Landroid/widget/RemoteViews$ActionApplyParams;->handler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-static {p0, p1, v0}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$mhandleViewInteraction(Landroid/widget/RemoteViews$RemoteResponse;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;)V

    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 7
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "params"    # Landroid/widget/RemoteViews$ActionApplyParams;

    .line 1983
    iget v0, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1984
    .local v0, "target":Landroid/view/View;
    if-nez v0, :cond_9

    return-void

    .line 1986
    :cond_9
    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;->this$0:Landroid/widget/RemoteViews;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/RemoteViews;->hasFlags(I)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1987
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot use setOnStylusHandwritingPendingIntent for collection item (id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;->mViewId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteViews"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    return-void

    .line 1992
    :cond_33
    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_4f

    .line 1993
    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-static {v1}, Landroid/widget/RemoteViews$RemoteResponse;->fromPendingIntent(Landroid/app/PendingIntent;)Landroid/widget/RemoteViews$RemoteResponse;

    move-result-object v1

    .line 1994
    .local v1, "response":Landroid/widget/RemoteViews$RemoteResponse;
    new-instance v2, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, v0, p3}, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse$$ExternalSyntheticLambda0;-><init>(Landroid/widget/RemoteViews$RemoteResponse;Landroid/view/View;Landroid/widget/RemoteViews$ActionApplyParams;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setHandwritingDelegatorCallback(Ljava/lang/Runnable;)V

    .line 1996
    iget-object v2, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setAllowedHandwritingDelegatePackage(Ljava/lang/String;)V

    .line 1997
    .end local v1    # "response":Landroid/widget/RemoteViews$RemoteResponse;
    goto :goto_56

    .line 1998
    :cond_4f
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHandwritingDelegatorCallback(Ljava/lang/Runnable;)V

    .line 1999
    invoke-virtual {v0, v1}, Landroid/view/View;->setAllowedHandwritingDelegatePackage(Ljava/lang/String;)V

    .line 2001
    :goto_56
    return-void
.end method

.method public blacklist getActionTag()I
    .registers 2

    .line 2005
    const/16 v0, 0x22

    return v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1977
    iget v0, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1978
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-static {v0, p1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    .line 1979
    return-void
.end method
