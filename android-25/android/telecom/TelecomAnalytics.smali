.class public final Landroid/telecom/TelecomAnalytics;
.super Ljava/lang/Object;
.source "TelecomAnalytics.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/TelecomAnalytics$1;,
        Landroid/telecom/TelecomAnalytics$SessionTiming;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/TelecomAnalytics;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallAnalytics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ParcelableCallAnalytics;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionTimings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/TelecomAnalytics$SessionTiming;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 32
    new-instance v0, Landroid/telecom/TelecomAnalytics$1;

    #@2
    invoke-direct {v0}, Landroid/telecom/TelecomAnalytics$1;-><init>()V

    #@5
    .line 31
    sput-object v0, Landroid/telecom/TelecomAnalytics;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 30
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 124
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/telecom/TelecomAnalytics;->mSessionTimings:Ljava/util/List;

    #@a
    .line 125
    iget-object v0, p0, Landroid/telecom/TelecomAnalytics;->mSessionTimings:Ljava/util/List;

    #@c
    sget-object v1, Landroid/telecom/TelecomAnalytics$SessionTiming;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    #@11
    .line 126
    new-instance v0, Ljava/util/ArrayList;

    #@13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@16
    iput-object v0, p0, Landroid/telecom/TelecomAnalytics;->mCallAnalytics:Ljava/util/List;

    #@18
    .line 127
    iget-object v0, p0, Landroid/telecom/TelecomAnalytics;->mCallAnalytics:Ljava/util/List;

    #@1a
    sget-object v1, Landroid/telecom/ParcelableCallAnalytics;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1c
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    #@1f
    .line 123
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telecom/TelecomAnalytics;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/TelecomAnalytics;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/TelecomAnalytics$SessionTiming;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ParcelableCallAnalytics;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 117
    .local p1, "sessionTimings":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/TelecomAnalytics$SessionTiming;>;"
    .local p2, "callAnalytics":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ParcelableCallAnalytics;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 119
    iput-object p1, p0, Landroid/telecom/TelecomAnalytics;->mSessionTimings:Ljava/util/List;

    #@5
    .line 120
    iput-object p2, p0, Landroid/telecom/TelecomAnalytics;->mCallAnalytics:Ljava/util/List;

    #@7
    .line 118
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 140
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getCallAnalytics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ParcelableCallAnalytics;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 135
    iget-object v0, p0, Landroid/telecom/TelecomAnalytics;->mCallAnalytics:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getSessionTimings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/TelecomAnalytics$SessionTiming;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Landroid/telecom/TelecomAnalytics;->mSessionTimings:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 145
    iget-object v0, p0, Landroid/telecom/TelecomAnalytics;->mSessionTimings:Ljava/util/List;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@5
    .line 146
    iget-object v0, p0, Landroid/telecom/TelecomAnalytics;->mCallAnalytics:Ljava/util/List;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@a
    .line 144
    return-void
.end method
