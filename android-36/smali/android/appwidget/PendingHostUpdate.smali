.class public Landroid/appwidget/PendingHostUpdate;
.super Ljava/lang/Object;
.source "PendingHostUpdate.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/appwidget/PendingHostUpdate;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist TYPE_APP_WIDGET_REMOVED:I = 0x3

.field static final greylist-max-o TYPE_PROVIDER_CHANGED:I = 0x1

.field static final greylist-max-o TYPE_VIEWS_UPDATE:I = 0x0

.field static final greylist-max-o TYPE_VIEW_DATA_CHANGED:I = 0x2


# instance fields
.field final greylist-max-o appWidgetId:I

.field final greylist-max-o type:I

.field greylist-max-o viewId:I

.field greylist-max-o views:Landroid/widget/RemoteViews;

.field greylist-max-o widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 123
    new-instance v0, Landroid/appwidget/PendingHostUpdate$1;

    invoke-direct {v0}, Landroid/appwidget/PendingHostUpdate$1;-><init>()V

    sput-object v0, Landroid/appwidget/PendingHostUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(II)V
    .registers 3
    .param p1, "appWidgetId"    # I
    .param p2, "type"    # I

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    .line 66
    iput p2, p0, Landroid/appwidget/PendingHostUpdate;->type:I

    .line 67
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/appwidget/PendingHostUpdate;->type:I

    .line 73
    iget v0, p0, Landroid/appwidget/PendingHostUpdate;->type:I

    packed-switch v0, :pswitch_data_38

    goto :goto_37

    .line 85
    :pswitch_15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/appwidget/PendingHostUpdate;->viewId:I

    goto :goto_37

    .line 80
    :pswitch_1c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_37

    .line 81
    new-instance v0, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v0, p1}, Landroid/appwidget/AppWidgetProviderInfo;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/appwidget/PendingHostUpdate;->widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    goto :goto_37

    .line 75
    :pswitch_2a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_37

    .line 76
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-direct {v0, p1}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/appwidget/PendingHostUpdate;->views:Landroid/widget/RemoteViews;

    .line 87
    :cond_37
    :goto_37
    return-void

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_1c
        :pswitch_15
    .end packed-switch
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/appwidget/PendingHostUpdate-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/appwidget/PendingHostUpdate;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist appWidgetRemoved(I)Landroid/appwidget/PendingHostUpdate;
    .registers 3
    .param p0, "appWidgetId"    # I

    .line 61
    new-instance v0, Landroid/appwidget/PendingHostUpdate;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroid/appwidget/PendingHostUpdate;-><init>(II)V

    return-object v0
.end method

.method public static greylist-max-o providerChanged(ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/PendingHostUpdate;
    .registers 4
    .param p0, "appWidgetId"    # I
    .param p1, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    .line 46
    new-instance v0, Landroid/appwidget/PendingHostUpdate;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/appwidget/PendingHostUpdate;-><init>(II)V

    .line 47
    .local v0, "update":Landroid/appwidget/PendingHostUpdate;
    iput-object p1, v0, Landroid/appwidget/PendingHostUpdate;->widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 48
    return-object v0
.end method

.method public static greylist-max-o updateAppWidget(ILandroid/widget/RemoteViews;)Landroid/appwidget/PendingHostUpdate;
    .registers 4
    .param p0, "appWidgetId"    # I
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .line 40
    new-instance v0, Landroid/appwidget/PendingHostUpdate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/appwidget/PendingHostUpdate;-><init>(II)V

    .line 41
    .local v0, "update":Landroid/appwidget/PendingHostUpdate;
    iput-object p1, v0, Landroid/appwidget/PendingHostUpdate;->views:Landroid/widget/RemoteViews;

    .line 42
    return-object v0
.end method

.method public static greylist-max-o viewDataChanged(II)Landroid/appwidget/PendingHostUpdate;
    .registers 4
    .param p0, "appWidgetId"    # I
    .param p1, "viewId"    # I

    .line 52
    new-instance v0, Landroid/appwidget/PendingHostUpdate;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroid/appwidget/PendingHostUpdate;-><init>(II)V

    .line 53
    .local v0, "update":Landroid/appwidget/PendingHostUpdate;
    iput p1, v0, Landroid/appwidget/PendingHostUpdate;->viewId:I

    .line 54
    return-object v0
.end method

.method private greylist-max-o writeNullParcelable(Landroid/os/Parcelable;Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "p"    # Landroid/os/Parcelable;
    .param p2, "dest"    # Landroid/os/Parcel;
    .param p3, "flags"    # I

    .line 112
    if-eqz p1, :cond_a

    .line 113
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    invoke-interface {p1, p2, p3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_e

    .line 116
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    :goto_e
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 96
    iget v0, p0, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget v0, p0, Landroid/appwidget/PendingHostUpdate;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget v0, p0, Landroid/appwidget/PendingHostUpdate;->type:I

    packed-switch v0, :pswitch_data_24

    goto :goto_22

    .line 106
    :pswitch_10
    iget v0, p0, Landroid/appwidget/PendingHostUpdate;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_22

    .line 103
    :pswitch_16
    iget-object v0, p0, Landroid/appwidget/PendingHostUpdate;->widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {p0, v0, p1, p2}, Landroid/appwidget/PendingHostUpdate;->writeNullParcelable(Landroid/os/Parcelable;Landroid/os/Parcel;I)V

    .line 104
    goto :goto_22

    .line 100
    :pswitch_1c
    iget-object v0, p0, Landroid/appwidget/PendingHostUpdate;->views:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0, p1, p2}, Landroid/appwidget/PendingHostUpdate;->writeNullParcelable(Landroid/os/Parcelable;Landroid/os/Parcel;I)V

    .line 101
    nop

    .line 109
    :goto_22
    return-void

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_16
        :pswitch_10
    .end packed-switch
.end method
