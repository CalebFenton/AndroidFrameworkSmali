.class public final Landroid/health/connect/exportimport/ScheduledExportSettings;
.super Ljava/lang/Object;
.source "ScheduledExportSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/exportimport/ScheduledExportSettings$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/exportimport/ScheduledExportSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mPeriodInDays:I

.field private final blacklist mUri:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Landroid/health/connect/exportimport/ScheduledExportSettings$1;

    invoke-direct {v0}, Landroid/health/connect/exportimport/ScheduledExportSettings$1;-><init>()V

    sput-object v0, Landroid/health/connect/exportimport/ScheduledExportSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/Uri;I)V
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "periodInDays"    # I

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Landroid/health/connect/exportimport/ScheduledExportSettings;->mUri:Landroid/net/Uri;

    .line 74
    iput p2, p0, Landroid/health/connect/exportimport/ScheduledExportSettings;->mPeriodInDays:I

    .line 75
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/Uri;ILandroid/health/connect/exportimport/ScheduledExportSettings-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/health/connect/exportimport/ScheduledExportSettings;-><init>(Landroid/net/Uri;I)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 67
    .local v0, "hasUri":Z
    if-eqz v0, :cond_12

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    iput-object v1, p0, Landroid/health/connect/exportimport/ScheduledExportSettings;->mUri:Landroid/net/Uri;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/health/connect/exportimport/ScheduledExportSettings;->mPeriodInDays:I

    .line 70
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/health/connect/exportimport/ScheduledExportSettings-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/health/connect/exportimport/ScheduledExportSettings;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 55
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 56
    :cond_4
    instance-of v1, p1, Landroid/health/connect/exportimport/ScheduledExportSettings;

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    move-object v1, p1

    check-cast v1, Landroid/health/connect/exportimport/ScheduledExportSettings;

    .line 57
    .local v1, "that":Landroid/health/connect/exportimport/ScheduledExportSettings;
    iget v3, p0, Landroid/health/connect/exportimport/ScheduledExportSettings;->mPeriodInDays:I

    iget v4, v1, Landroid/health/connect/exportimport/ScheduledExportSettings;->mPeriodInDays:I

    if-ne v3, v4, :cond_1d

    iget-object v3, p0, Landroid/health/connect/exportimport/ScheduledExportSettings;->mUri:Landroid/net/Uri;

    iget-object v4, v1, Landroid/health/connect/exportimport/ScheduledExportSettings;->mUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    return v0

    .line 56
    .end local v1    # "that":Landroid/health/connect/exportimport/ScheduledExportSettings;
    :cond_1f
    return v2
.end method

.method public blacklist getPeriodInDays()I
    .registers 2

    .line 88
    iget v0, p0, Landroid/health/connect/exportimport/ScheduledExportSettings;->mPeriodInDays:I

    return v0
.end method

.method public blacklist getUri()Landroid/net/Uri;
    .registers 2

    .line 80
    iget-object v0, p0, Landroid/health/connect/exportimport/ScheduledExportSettings;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 62
    iget-object v0, p0, Landroid/health/connect/exportimport/ScheduledExportSettings;->mUri:Landroid/net/Uri;

    iget v1, p0, Landroid/health/connect/exportimport/ScheduledExportSettings;->mPeriodInDays:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 98
    iget-object v0, p0, Landroid/health/connect/exportimport/ScheduledExportSettings;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 99
    iget-object v0, p0, Landroid/health/connect/exportimport/ScheduledExportSettings;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_17

    .line 100
    iget-object v0, p0, Landroid/health/connect/exportimport/ScheduledExportSettings;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    :cond_17
    iget v0, p0, Landroid/health/connect/exportimport/ScheduledExportSettings;->mPeriodInDays:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    return-void
.end method
