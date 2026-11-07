.class public final Landroid/app/blob/BlobInfo;
.super Ljava/lang/Object;
.source "BlobInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/blob/BlobInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mExpiryTimeMs:J

.field private final blacklist mId:J

.field private final blacklist mLabel:Ljava/lang/CharSequence;

.field private final blacklist mLeaseInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/blob/LeaseInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSizeBytes:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 115
    new-instance v0, Landroid/app/blob/BlobInfo$1;

    invoke-direct {v0}, Landroid/app/blob/BlobInfo$1;-><init>()V

    sput-object v0, Landroid/app/blob/BlobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JJLjava/lang/CharSequence;JLjava/util/List;)V
    .registers 9
    .param p1, "id"    # J
    .param p3, "expiryTimeMs"    # J
    .param p5, "label"    # Ljava/lang/CharSequence;
    .param p6, "sizeBytes"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/CharSequence;",
            "J",
            "Ljava/util/List<",
            "Landroid/app/blob/LeaseInfo;",
            ">;)V"
        }
    .end annotation

    .line 43
    .local p8, "leaseInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/blob/LeaseInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide p1, p0, Landroid/app/blob/BlobInfo;->mId:J

    .line 45
    iput-wide p3, p0, Landroid/app/blob/BlobInfo;->mExpiryTimeMs:J

    .line 46
    iput-object p5, p0, Landroid/app/blob/BlobInfo;->mLabel:Ljava/lang/CharSequence;

    .line 47
    iput-wide p6, p0, Landroid/app/blob/BlobInfo;->mSizeBytes:J

    .line 48
    iput-object p8, p0, Landroid/app/blob/BlobInfo;->mLeaseInfos:Ljava/util/List;

    .line 49
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/blob/BlobInfo;->mId:J

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/blob/BlobInfo;->mExpiryTimeMs:J

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/blob/BlobInfo;->mLabel:Ljava/lang/CharSequence;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/blob/BlobInfo;->mSizeBytes:J

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/blob/BlobInfo;->mLeaseInfos:Ljava/util/List;

    .line 58
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/blob/BlobInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/blob/BlobInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist formatBlobSize(J)Ljava/lang/String;
    .registers 4
    .param p0, "sizeBytes"    # J

    .line 105
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, p0, p1, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist toShortString()Ljava/lang/String;
    .registers 4

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BlobInfo {id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/app/blob/BlobInfo;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",expiryMs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/app/blob/BlobInfo;->mExpiryTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",label: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/blob/BlobInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/app/blob/BlobInfo;->mSizeBytes:J

    .line 99
    invoke-static {v1, v2}, Landroid/app/blob/BlobInfo;->formatBlobSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",leases: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/blob/BlobInfo;->mLeaseInfos:Ljava/util/List;

    .line 100
    invoke-static {v1}, Landroid/app/blob/LeaseInfo;->toShortString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getExpiryTimeMs()J
    .registers 3

    .line 65
    iget-wide v0, p0, Landroid/app/blob/BlobInfo;->mExpiryTimeMs:J

    return-wide v0
.end method

.method public blacklist getId()J
    .registers 3

    .line 61
    iget-wide v0, p0, Landroid/app/blob/BlobInfo;->mId:J

    return-wide v0
.end method

.method public blacklist getLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 69
    iget-object v0, p0, Landroid/app/blob/BlobInfo;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getLeases()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/blob/LeaseInfo;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Landroid/app/blob/BlobInfo;->mLeaseInfos:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSizeBytes()J
    .registers 3

    .line 73
    iget-wide v0, p0, Landroid/app/blob/BlobInfo;->mSizeBytes:J

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 91
    invoke-direct {p0}, Landroid/app/blob/BlobInfo;->toShortString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 82
    iget-wide v0, p0, Landroid/app/blob/BlobInfo;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 83
    iget-wide v0, p0, Landroid/app/blob/BlobInfo;->mExpiryTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 84
    iget-object v0, p0, Landroid/app/blob/BlobInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 85
    iget-wide v0, p0, Landroid/app/blob/BlobInfo;->mSizeBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 86
    iget-object v0, p0, Landroid/app/blob/BlobInfo;->mLeaseInfos:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 87
    return-void
.end method
