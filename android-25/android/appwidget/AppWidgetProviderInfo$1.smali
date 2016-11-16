.class final Landroid/appwidget/AppWidgetProviderInfo$1;
.super Ljava/lang/Object;
.source "AppWidgetProviderInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/appwidget/AppWidgetProviderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/appwidget/AppWidgetProviderInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 389
    new-instance v0, Landroid/appwidget/AppWidgetProviderInfo;

    #@2
    invoke-direct {v0, p1}, Landroid/appwidget/AppWidgetProviderInfo;-><init>(Landroid/os/Parcel;)V

    #@5
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 387
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetProviderInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/appwidget/AppWidgetProviderInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/appwidget/AppWidgetProviderInfo;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 394
    new-array v0, p1, [Landroid/appwidget/AppWidgetProviderInfo;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 392
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetProviderInfo$1;->newArray(I)[Landroid/appwidget/AppWidgetProviderInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
