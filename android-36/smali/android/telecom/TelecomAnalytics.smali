.class public final Landroid/telecom/TelecomAnalytics;
.super Ljava/lang/Object;
.source "TelecomAnalytics.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/TelecomAnalytics$SessionTiming;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/TelecomAnalytics;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mCallAnalytics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/ParcelableCallAnalytics;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSessionTimings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/TelecomAnalytics$SessionTiming;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Landroid/telecom/TelecomAnalytics$1;

    invoke-direct {v0}, Landroid/telecom/TelecomAnalytics$1;-><init>()V

    sput-object v0, Landroid/telecom/TelecomAnalytics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/TelecomAnalytics;->mSessionTimings:Ljava/util/List;

    .line 125
    iget-object v0, p0, Landroid/telecom/TelecomAnalytics;->mSessionTimings:Ljava/util/List;

    sget-object v1, Landroid/telecom/TelecomAnalytics$SessionTiming;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/TelecomAnalytics;->mCallAnalytics:Ljava/util/List;

    .line 127
    iget-object v0, p0, Landroid/telecom/TelecomAnalytics;->mCallAnalytics:Ljava/util/List;

    sget-object v1, Landroid/telecom/ParcelableCallAnalytics;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 128
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telecom/TelecomAnalytics-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telecom/TelecomAnalytics;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/TelecomAnalytics$SessionTiming;",
            ">;",
            "Ljava/util/List<",
            "Landroid/telecom/ParcelableCallAnalytics;",
            ">;)V"
        }
    .end annotation

    .line 118
    .local p1, "sessionTimings":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/TelecomAnalytics$SessionTiming;>;"
    .local p2, "callAnalytics":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ParcelableCallAnalytics;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Landroid/telecom/TelecomAnalytics;->mSessionTimings:Ljava/util/List;

    .line 120
    iput-object p2, p0, Landroid/telecom/TelecomAnalytics;->mCallAnalytics:Ljava/util/List;

    .line 121
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCallAnalytics()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/ParcelableCallAnalytics;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Landroid/telecom/TelecomAnalytics;->mCallAnalytics:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getSessionTimings()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/TelecomAnalytics$SessionTiming;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Landroid/telecom/TelecomAnalytics;->mSessionTimings:Ljava/util/List;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 145
    iget-object v0, p0, Landroid/telecom/TelecomAnalytics;->mSessionTimings:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 146
    iget-object v0, p0, Landroid/telecom/TelecomAnalytics;->mCallAnalytics:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 147
    return-void
.end method
