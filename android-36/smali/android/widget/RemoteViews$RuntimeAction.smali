.class abstract Landroid/widget/RemoteViews$RuntimeAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "RuntimeAction"
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 779
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/RemoteViews-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/widget/RemoteViews$RuntimeAction;-><init>()V

    return-void
.end method


# virtual methods
.method public final greylist-max-o getActionTag()I
    .registers 2

    .line 782
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 787
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
