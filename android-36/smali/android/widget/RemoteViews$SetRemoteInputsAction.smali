.class Landroid/widget/RemoteViews$SetRemoteInputsAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetRemoteInputsAction"
.end annotation


# instance fields
.field final blacklist mRemoteInputs:[Landroid/os/Parcelable;


# direct methods
.method public constructor blacklist <init>(I[Landroid/app/RemoteInput;)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "remoteInputs"    # [Landroid/app/RemoteInput;

    .line 5390
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 5391
    iput p1, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->mViewId:I

    .line 5392
    iput-object p2, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->mRemoteInputs:[Landroid/os/Parcelable;

    .line 5393
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 5395
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 5396
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->mViewId:I

    .line 5397
    sget-object v0, Landroid/app/RemoteInput;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->mRemoteInputs:[Landroid/os/Parcelable;

    .line 5398
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 7
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "params"    # Landroid/widget/RemoteViews$ActionApplyParams;

    .line 5407
    iget v0, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5408
    .local v0, "target":Landroid/view/View;
    if-nez v0, :cond_9

    return-void

    .line 5410
    :cond_9
    const v1, 0x10204b0

    iget-object v2, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->mRemoteInputs:[Landroid/os/Parcelable;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 5411
    return-void
.end method

.method public greylist-max-o getActionTag()I
    .registers 2

    .line 5415
    const/16 v0, 0x12

    return v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 5401
    iget v0, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5402
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->mRemoteInputs:[Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 5403
    return-void
.end method
