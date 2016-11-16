.class Landroid/widget/RemoteViews$SetRemoteInputsAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetRemoteInputsAction"
.end annotation


# static fields
.field public static final TAG:I = 0x12


# instance fields
.field final remoteInputs:[Landroid/os/Parcelable;

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;I[Landroid/app/RemoteInput;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "viewId"    # I
    .param p3, "remoteInputs"    # [Landroid/app/RemoteInput;

    #@0
    .prologue
    .line 2011
    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->this$0:Landroid/widget/RemoteViews;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    #@6
    .line 2012
    iput p2, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->viewId:I

    #@8
    .line 2013
    iput-object p3, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->remoteInputs:[Landroid/os/Parcelable;

    #@a
    .line 2011
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 2016
    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->this$0:Landroid/widget/RemoteViews;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    #@6
    .line 2017
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->viewId:I

    #@c
    .line 2018
    sget-object v0, Landroid/app/RemoteInput;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, [Landroid/os/Parcelable;

    #@14
    iput-object v0, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->remoteInputs:[Landroid/os/Parcelable;

    #@16
    .line 2016
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 3
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    #@0
    .prologue
    .line 2029
    iget v1, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->viewId:I

    #@2
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/widget/TextView;

    #@8
    .line 2030
    .local v0, "target":Landroid/widget/TextView;
    if-nez v0, :cond_0

    #@a
    return-void

    #@b
    .line 2032
    :cond_0
    iget-object v1, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->remoteInputs:[Landroid/os/Parcelable;

    #@d
    const v2, 0x102005c

    #@10
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTagInternal(ILjava/lang/Object;)V

    #@13
    .line 2028
    return-void
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2036
    const-string/jumbo v0, "SetRemoteInputsAction"

    #@3
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 2022
    const/16 v0, 0x12

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 2023
    iget v0, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->viewId:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 2024
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->remoteInputs:[Landroid/os/Parcelable;

    #@c
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@f
    .line 2021
    return-void
.end method
