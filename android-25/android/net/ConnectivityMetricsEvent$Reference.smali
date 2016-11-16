.class public final Landroid/net/ConnectivityMetricsEvent$Reference;
.super Ljava/lang/Object;
.source "ConnectivityMetricsEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityMetricsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Reference"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ConnectivityMetricsEvent$Reference$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/ConnectivityMetricsEvent$Reference;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mValue:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 96
    new-instance v0, Landroid/net/ConnectivityMetricsEvent$Reference$1;

    #@2
    invoke-direct {v0}, Landroid/net/ConnectivityMetricsEvent$Reference$1;-><init>()V

    #@5
    .line 95
    sput-object v0, Landroid/net/ConnectivityMetricsEvent$Reference;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 86
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "ref"    # J

    #@0
    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 91
    iput-wide p1, p0, Landroid/net/ConnectivityMetricsEvent$Reference;->mValue:J

    #@5
    .line 90
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 109
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getValue()J
    .locals 2

    #@0
    .prologue
    .line 123
    iget-wide v0, p0, Landroid/net/ConnectivityMetricsEvent$Reference;->mValue:J

    #@2
    return-wide v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Landroid/net/ConnectivityMetricsEvent$Reference;->mValue:J

    #@6
    .line 118
    return-void
.end method

.method public setValue(J)V
    .locals 1
    .param p1, "val"    # J

    #@0
    .prologue
    .line 127
    iput-wide p1, p0, Landroid/net/ConnectivityMetricsEvent$Reference;->mValue:J

    #@2
    .line 126
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 115
    iget-wide v0, p0, Landroid/net/ConnectivityMetricsEvent$Reference;->mValue:J

    #@2
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@5
    .line 114
    return-void
.end method
