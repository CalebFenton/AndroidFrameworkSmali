.class public final Landroid/service/contentcapture/FlushMetrics;
.super Ljava/lang/Object;
.source "FlushMetrics.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/contentcapture/FlushMetrics;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist sessionFinished:I

.field public blacklist sessionStarted:I

.field public blacklist viewAppearedCount:I

.field public blacklist viewDisappearedCount:I

.field public blacklist viewTextChangedCount:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 61
    new-instance v0, Landroid/service/contentcapture/FlushMetrics$1;

    invoke-direct {v0}, Landroid/service/contentcapture/FlushMetrics$1;-><init>()V

    sput-object v0, Landroid/service/contentcapture/FlushMetrics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist reset()V
    .registers 2

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/contentcapture/FlushMetrics;->viewAppearedCount:I

    .line 40
    iput v0, p0, Landroid/service/contentcapture/FlushMetrics;->viewDisappearedCount:I

    .line 41
    iput v0, p0, Landroid/service/contentcapture/FlushMetrics;->viewTextChangedCount:I

    .line 42
    iput v0, p0, Landroid/service/contentcapture/FlushMetrics;->sessionStarted:I

    .line 43
    iput v0, p0, Landroid/service/contentcapture/FlushMetrics;->sessionFinished:I

    .line 44
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 53
    iget v0, p0, Landroid/service/contentcapture/FlushMetrics;->sessionStarted:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget v0, p0, Landroid/service/contentcapture/FlushMetrics;->sessionFinished:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget v0, p0, Landroid/service/contentcapture/FlushMetrics;->viewAppearedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget v0, p0, Landroid/service/contentcapture/FlushMetrics;->viewDisappearedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget v0, p0, Landroid/service/contentcapture/FlushMetrics;->viewTextChangedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    return-void
.end method
