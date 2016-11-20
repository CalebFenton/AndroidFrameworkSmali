.class public final Landroid/net/ConnectivityMetricsEvent;
.super Ljava/lang/Object;
.source "ConnectivityMetricsEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ConnectivityMetricsEvent$1;,
        Landroid/net/ConnectivityMetricsEvent$Reference;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/ConnectivityMetricsEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final componentTag:I

.field public final data:Landroid/os/Parcelable;

.field public final eventTag:I

.field public final timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 49
    new-instance v0, Landroid/net/ConnectivityMetricsEvent$1;

    #@2
    invoke-direct {v0}, Landroid/net/ConnectivityMetricsEvent$1;-><init>()V

    #@5
    .line 48
    sput-object v0, Landroid/net/ConnectivityMetricsEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 25
    return-void
.end method

.method public constructor <init>(JIILandroid/os/Parcelable;)V
    .locals 1
    .param p1, "timestamp"    # J
    .param p3, "componentTag"    # I
    .param p4, "eventTag"    # I
    .param p5, "data"    # Landroid/os/Parcelable;

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    iput-wide p1, p0, Landroid/net/ConnectivityMetricsEvent;->timestamp:J

    #@5
    .line 42
    iput p3, p0, Landroid/net/ConnectivityMetricsEvent;->componentTag:I

    #@7
    .line 43
    iput p4, p0, Landroid/net/ConnectivityMetricsEvent;->eventTag:I

    #@9
    .line 44
    iput-object p5, p0, Landroid/net/ConnectivityMetricsEvent;->data:Landroid/os/Parcelable;

    #@b
    .line 40
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 67
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 80
    const-string/jumbo v0, "ConnectivityMetricsEvent(%tT.%tL, %d, %d): %s"

    #@3
    const/4 v1, 0x5

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    .line 81
    iget-wide v2, p0, Landroid/net/ConnectivityMetricsEvent;->timestamp:J

    #@8
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@b
    move-result-object v2

    #@c
    const/4 v3, 0x0

    #@d
    aput-object v2, v1, v3

    #@f
    iget-wide v2, p0, Landroid/net/ConnectivityMetricsEvent;->timestamp:J

    #@11
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@14
    move-result-object v2

    #@15
    const/4 v3, 0x1

    #@16
    aput-object v2, v1, v3

    #@18
    iget v2, p0, Landroid/net/ConnectivityMetricsEvent;->componentTag:I

    #@1a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d
    move-result-object v2

    #@1e
    const/4 v3, 0x2

    #@1f
    aput-object v2, v1, v3

    #@21
    iget v2, p0, Landroid/net/ConnectivityMetricsEvent;->eventTag:I

    #@23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@26
    move-result-object v2

    #@27
    const/4 v3, 0x3

    #@28
    aput-object v2, v1, v3

    #@2a
    iget-object v2, p0, Landroid/net/ConnectivityMetricsEvent;->data:Landroid/os/Parcelable;

    #@2c
    const/4 v3, 0x4

    #@2d
    aput-object v2, v1, v3

    #@2f
    .line 80
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 73
    iget-wide v0, p0, Landroid/net/ConnectivityMetricsEvent;->timestamp:J

    #@2
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@5
    .line 74
    iget v0, p0, Landroid/net/ConnectivityMetricsEvent;->componentTag:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 75
    iget v0, p0, Landroid/net/ConnectivityMetricsEvent;->eventTag:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 76
    iget-object v0, p0, Landroid/net/ConnectivityMetricsEvent;->data:Landroid/os/Parcelable;

    #@11
    const/4 v1, 0x0

    #@12
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@15
    .line 72
    return-void
.end method
