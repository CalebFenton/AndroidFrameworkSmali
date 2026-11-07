.class Landroid/view/contentcapture/ContentCaptureCondition$1;
.super Ljava/lang/Object;
.source "ContentCaptureCondition.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/contentcapture/ContentCaptureCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/contentcapture/ContentCaptureCondition;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/view/contentcapture/ContentCaptureCondition;
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 136
    new-instance v0, Landroid/view/contentcapture/ContentCaptureCondition;

    const/4 v1, 0x0

    const-class v2, Landroid/content/LocusId;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/LocusId;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/contentcapture/ContentCaptureCondition;-><init>(Landroid/content/LocusId;I)V

    .line 136
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

    .line 132
    invoke-virtual {p0, p1}, Landroid/view/contentcapture/ContentCaptureCondition$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/contentcapture/ContentCaptureCondition;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/view/contentcapture/ContentCaptureCondition;
    .registers 3
    .param p1, "size"    # I

    .line 142
    new-array v0, p1, [Landroid/view/contentcapture/ContentCaptureCondition;

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

    .line 132
    invoke-virtual {p0, p1}, Landroid/view/contentcapture/ContentCaptureCondition$1;->newArray(I)[Landroid/view/contentcapture/ContentCaptureCondition;

    move-result-object p1

    return-object p1
.end method
