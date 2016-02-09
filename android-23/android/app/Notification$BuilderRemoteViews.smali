.class Landroid/app/Notification$BuilderRemoteViews;
.super Landroid/widget/RemoteViews;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuilderRemoteViews"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/pm/ApplicationInfo;I)V
    .locals 0
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "layoutId"    # I

    #@0
    .prologue
    .line 5686
    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    #@3
    .line 5685
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 5682
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;)V

    #@3
    .line 5681
    return-void
.end method


# virtual methods
.method public clone()Landroid/app/Notification$BuilderRemoteViews;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 5691
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v1

    #@5
    .line 5692
    .local v1, "p":Landroid/os/Parcel;
    invoke-virtual {p0, v1, v2}, Landroid/app/Notification$BuilderRemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    #@8
    .line 5693
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    #@b
    .line 5694
    new-instance v0, Landroid/app/Notification$BuilderRemoteViews;

    #@d
    invoke-direct {v0, v1}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/os/Parcel;)V

    #@10
    .line 5695
    .local v0, "brv":Landroid/app/Notification$BuilderRemoteViews;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@13
    .line 5696
    return-object v0
.end method

.method public bridge synthetic clone()Landroid/widget/RemoteViews;
    .locals 1

    #@0
    .prologue
    .line 5690
    invoke-virtual {p0}, Landroid/app/Notification$BuilderRemoteViews;->clone()Landroid/app/Notification$BuilderRemoteViews;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
