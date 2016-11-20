.class public Landroid/appwidget/PendingHostUpdate;
.super Ljava/lang/Object;
.source "PendingHostUpdate.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/appwidget/PendingHostUpdate$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/appwidget/PendingHostUpdate;",
            ">;"
        }
    .end annotation
.end field

.field static final TYPE_PROVIDER_CHANGED:I = 0x1

.field static final TYPE_VIEWS_UPDATE:I = 0x0

.field static final TYPE_VIEW_DATA_CHANGED:I = 0x2


# instance fields
.field final appWidgetId:I

.field final type:I

.field viewId:I

.field views:Landroid/widget/RemoteViews;

.field widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 116
    new-instance v0, Landroid/appwidget/PendingHostUpdate$1;

    #@2
    invoke-direct {v0}, Landroid/appwidget/PendingHostUpdate$1;-><init>()V

    #@5
    .line 115
    sput-object v0, Landroid/appwidget/PendingHostUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 26
    return-void
.end method

.method private constructor <init>(II)V
    .locals 0
    .param p1, "appWidgetId"    # I
    .param p2, "type"    # I

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    iput p1, p0, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    #@5
    .line 58
    iput p2, p0, Landroid/appwidget/PendingHostUpdate;->type:I

    #@7
    .line 56
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    #@9
    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/appwidget/PendingHostUpdate;->type:I

    #@f
    .line 65
    iget v0, p0, Landroid/appwidget/PendingHostUpdate;->type:I

    #@11
    packed-switch v0, :pswitch_data_0

    #@14
    .line 61
    :cond_0
    :goto_0
    return-void

    #@15
    .line 67
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_0

    #@1b
    .line 68
    new-instance v0, Landroid/widget/RemoteViews;

    #@1d
    invoke-direct {v0, p1}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;)V

    #@20
    iput-object v0, p0, Landroid/appwidget/PendingHostUpdate;->views:Landroid/widget/RemoteViews;

    #@22
    goto :goto_0

    #@23
    .line 72
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_0

    #@29
    .line 73
    new-instance v0, Landroid/appwidget/AppWidgetProviderInfo;

    #@2b
    invoke-direct {v0, p1}, Landroid/appwidget/AppWidgetProviderInfo;-><init>(Landroid/os/Parcel;)V

    #@2e
    iput-object v0, p0, Landroid/appwidget/PendingHostUpdate;->widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    #@30
    goto :goto_0

    #@31
    .line 77
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@34
    move-result v0

    #@35
    iput v0, p0, Landroid/appwidget/PendingHostUpdate;->viewId:I

    #@37
    goto :goto_0

    #@38
    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/appwidget/PendingHostUpdate;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/appwidget/PendingHostUpdate;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public static providerChanged(ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/PendingHostUpdate;
    .locals 2
    .param p0, "appWidgetId"    # I
    .param p1, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    #@0
    .prologue
    .line 45
    new-instance v0, Landroid/appwidget/PendingHostUpdate;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, p0, v1}, Landroid/appwidget/PendingHostUpdate;-><init>(II)V

    #@6
    .line 46
    .local v0, "update":Landroid/appwidget/PendingHostUpdate;
    iput-object p1, v0, Landroid/appwidget/PendingHostUpdate;->widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    #@8
    .line 47
    return-object v0
.end method

.method public static updateAppWidget(ILandroid/widget/RemoteViews;)Landroid/appwidget/PendingHostUpdate;
    .locals 2
    .param p0, "appWidgetId"    # I
    .param p1, "views"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 39
    new-instance v0, Landroid/appwidget/PendingHostUpdate;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Landroid/appwidget/PendingHostUpdate;-><init>(II)V

    #@6
    .line 40
    .local v0, "update":Landroid/appwidget/PendingHostUpdate;
    iput-object p1, v0, Landroid/appwidget/PendingHostUpdate;->views:Landroid/widget/RemoteViews;

    #@8
    .line 41
    return-object v0
.end method

.method public static viewDataChanged(II)Landroid/appwidget/PendingHostUpdate;
    .locals 2
    .param p0, "appWidgetId"    # I
    .param p1, "viewId"    # I

    #@0
    .prologue
    .line 51
    new-instance v0, Landroid/appwidget/PendingHostUpdate;

    #@2
    const/4 v1, 0x2

    #@3
    invoke-direct {v0, p0, v1}, Landroid/appwidget/PendingHostUpdate;-><init>(II)V

    #@6
    .line 52
    .local v0, "update":Landroid/appwidget/PendingHostUpdate;
    iput p1, v0, Landroid/appwidget/PendingHostUpdate;->viewId:I

    #@8
    .line 53
    return-object v0
.end method

.method private writeNullParcelable(Landroid/os/Parcelable;Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcelable;
    .param p2, "dest"    # Landroid/os/Parcel;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 104
    if-eqz p1, :cond_0

    #@2
    .line 105
    const/4 v0, 0x1

    #@3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 106
    invoke-interface {p1, p2, p3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    #@9
    .line 103
    :goto_0
    return-void

    #@a
    .line 108
    :cond_0
    const/4 v0, 0x0

    #@b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 83
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 88
    iget v0, p0, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 89
    iget v0, p0, Landroid/appwidget/PendingHostUpdate;->type:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 90
    iget v0, p0, Landroid/appwidget/PendingHostUpdate;->type:I

    #@c
    packed-switch v0, :pswitch_data_0

    #@f
    .line 87
    :goto_0
    return-void

    #@10
    .line 92
    :pswitch_0
    iget-object v0, p0, Landroid/appwidget/PendingHostUpdate;->views:Landroid/widget/RemoteViews;

    #@12
    invoke-direct {p0, v0, p1, p2}, Landroid/appwidget/PendingHostUpdate;->writeNullParcelable(Landroid/os/Parcelable;Landroid/os/Parcel;I)V

    #@15
    goto :goto_0

    #@16
    .line 95
    :pswitch_1
    iget-object v0, p0, Landroid/appwidget/PendingHostUpdate;->widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    #@18
    invoke-direct {p0, v0, p1, p2}, Landroid/appwidget/PendingHostUpdate;->writeNullParcelable(Landroid/os/Parcelable;Landroid/os/Parcel;I)V

    #@1b
    goto :goto_0

    #@1c
    .line 98
    :pswitch_2
    iget v0, p0, Landroid/appwidget/PendingHostUpdate;->viewId:I

    #@1e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    goto :goto_0

    #@22
    .line 90
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
