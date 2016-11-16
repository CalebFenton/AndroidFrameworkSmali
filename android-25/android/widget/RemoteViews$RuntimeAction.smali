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
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 328
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    #@4
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/RemoteViews$RuntimeAction;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/widget/RemoteViews$RuntimeAction;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public final getActionName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 331
    const-string/jumbo v0, "RuntimeAction"

    #@3
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 336
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method
