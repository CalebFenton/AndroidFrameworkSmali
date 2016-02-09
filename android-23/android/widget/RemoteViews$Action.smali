.class abstract Landroid/widget/RemoteViews$Action;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Action"
.end annotation


# static fields
.field public static final MERGE_APPEND:I = 0x1

.field public static final MERGE_IGNORE:I = 0x2

.field public static final MERGE_REPLACE:I


# instance fields
.field viewId:I


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/RemoteViews$Action;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/widget/RemoteViews$Action;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public abstract apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 248
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public abstract getActionName()Ljava/lang/String;
.end method

.method public getUniqueKey()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Landroid/widget/RemoteViews$Action;->getActionName()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    iget v1, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public mergeBehavior()I
    .locals 1

    #@0
    .prologue
    .line 264
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V
    .locals 0
    .param p1, "bitmapCache"    # Landroid/widget/RemoteViews$BitmapCache;

    #@0
    .prologue
    .line 259
    return-void
.end method

.method public updateMemoryUsageEstimate(Landroid/widget/RemoteViews$MemoryUsageCounter;)V
    .locals 0
    .param p1, "counter"    # Landroid/widget/RemoteViews$MemoryUsageCounter;

    #@0
    .prologue
    .line 254
    return-void
.end method
