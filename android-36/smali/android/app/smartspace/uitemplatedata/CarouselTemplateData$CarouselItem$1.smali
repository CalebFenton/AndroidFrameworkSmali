.class Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem$1;
.super Ljava/lang/Object;
.source "CarouselTemplateData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 258
    new-instance v0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;

    invoke-direct {v0, p1}, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 255
    invoke-virtual {p0, p1}, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;
    .registers 3
    .param p1, "size"    # I

    .line 263
    new-array v0, p1, [Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 255
    invoke-virtual {p0, p1}, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem$1;->newArray(I)[Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;

    move-result-object p1

    return-object p1
.end method
