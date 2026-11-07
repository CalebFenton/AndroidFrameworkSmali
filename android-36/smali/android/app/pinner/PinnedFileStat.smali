.class public final Landroid/app/pinner/PinnedFileStat;
.super Ljava/lang/Object;
.source "PinnedFileStat.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/pinner/PinnedFileStat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist bytesPinned:J

.field private blacklist filename:Ljava/lang/String;

.field private blacklist groupName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 112
    new-instance v0, Landroid/app/pinner/PinnedFileStat$1;

    invoke-direct {v0}, Landroid/app/pinner/PinnedFileStat$1;-><init>()V

    sput-object v0, Landroid/app/pinner/PinnedFileStat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-direct {p0, p1}, Landroid/app/pinner/PinnedFileStat;->readFromParcel(Landroid/os/Parcel;)V

    .line 77
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/pinner/PinnedFileStat-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/pinner/PinnedFileStat;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;JLjava/lang/String;)V
    .registers 5
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "bytesPinned"    # J
    .param p4, "groupName"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Landroid/app/pinner/PinnedFileStat;->filename:Ljava/lang/String;

    .line 71
    iput-wide p2, p0, Landroid/app/pinner/PinnedFileStat;->bytesPinned:J

    .line 72
    iput-object p4, p0, Landroid/app/pinner/PinnedFileStat;->groupName:Ljava/lang/String;

    .line 73
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/pinner/PinnedFileStat;->filename:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/pinner/PinnedFileStat;->bytesPinned:J

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/pinner/PinnedFileStat;->groupName:Ljava/lang/String;

    .line 95
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBytesPinned()J
    .registers 3

    .line 43
    iget-wide v0, p0, Landroid/app/pinner/PinnedFileStat;->bytesPinned:J

    return-wide v0
.end method

.method public blacklist getFilename()Ljava/lang/String;
    .registers 2

    .line 52
    iget-object v0, p0, Landroid/app/pinner/PinnedFileStat;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getGroupName()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Landroid/app/pinner/PinnedFileStat;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 86
    iget-object v0, p0, Landroid/app/pinner/PinnedFileStat;->filename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 87
    iget-wide v0, p0, Landroid/app/pinner/PinnedFileStat;->bytesPinned:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 88
    iget-object v0, p0, Landroid/app/pinner/PinnedFileStat;->groupName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 89
    return-void
.end method
