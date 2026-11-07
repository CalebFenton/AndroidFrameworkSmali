.class public Landroid/health/connect/aidl/ActivityDatesResponseParcel;
.super Ljava/lang/Object;
.source "ActivityDatesResponseParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/aidl/ActivityDatesResponseParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mLocalDates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/time/LocalDate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Landroid/health/connect/aidl/ActivityDatesResponseParcel$1;

    invoke-direct {v0}, Landroid/health/connect/aidl/ActivityDatesResponseParcel$1;-><init>()V

    sput-object v0, Landroid/health/connect/aidl/ActivityDatesResponseParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 54
    .local v0, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/health/connect/aidl/ActivityDatesResponseParcel;->mLocalDates:Ljava/util/List;

    .line 55
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_21

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "date":Ljava/lang/String;
    iget-object v3, p0, Landroid/health/connect/aidl/ActivityDatesResponseParcel;->mLocalDates:Ljava/util/List;

    invoke-static {v2}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .end local v2    # "date":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 59
    .end local v1    # "i":I
    :cond_21
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/time/LocalDate;",
            ">;)V"
        }
    .end annotation

    .line 33
    .local p1, "localDates":Ljava/util/List;, "Ljava/util/List<Ljava/time/LocalDate;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iput-object p1, p0, Landroid/health/connect/aidl/ActivityDatesResponseParcel;->mLocalDates:Ljava/util/List;

    .line 36
    return-void
.end method

.method static synthetic blacklist lambda$writeToParcel$0(Landroid/os/Parcel;Ljava/time/LocalDate;)V
    .registers 3
    .param p0, "dest"    # Landroid/os/Parcel;
    .param p1, "localDate"    # Ljava/time/LocalDate;

    .line 83
    sget-object v0, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {p1, v0}, Ljava/time/LocalDate;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/time/LocalDate;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Landroid/health/connect/aidl/ActivityDatesResponseParcel;->mLocalDates:Ljava/util/List;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 80
    iget-object v0, p0, Landroid/health/connect/aidl/ActivityDatesResponseParcel;->mLocalDates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget-object v0, p0, Landroid/health/connect/aidl/ActivityDatesResponseParcel;->mLocalDates:Ljava/util/List;

    new-instance v1, Landroid/health/connect/aidl/ActivityDatesResponseParcel$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/health/connect/aidl/ActivityDatesResponseParcel$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 85
    return-void
.end method
