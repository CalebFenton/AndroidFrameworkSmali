.class public final Landroid/adservices/ondevicepersonalization/CallerMetadata;
.super Ljava/lang/Object;
.source "CallerMetadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/CallerMetadata$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/ondevicepersonalization/CallerMetadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mStartTimeMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 120
    new-instance v0, Landroid/adservices/ondevicepersonalization/CallerMetadata$1;

    invoke-direct {v0}, Landroid/adservices/ondevicepersonalization/CallerMetadata$1;-><init>()V

    sput-object v0, Landroid/adservices/ondevicepersonalization/CallerMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(J)V
    .registers 5
    .param p1, "startTimeMillis"    # J

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/CallerMetadata;->mStartTimeMillis:J

    .line 52
    iput-wide p1, p0, Landroid/adservices/ondevicepersonalization/CallerMetadata;->mStartTimeMillis:J

    .line 55
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/CallerMetadata;->mStartTimeMillis:J

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 114
    .local v0, "startTimeMillis":J
    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/CallerMetadata;->mStartTimeMillis:J

    .line 117
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 185
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 72
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 73
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_20

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_20

    .line 75
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/adservices/ondevicepersonalization/CallerMetadata;

    .line 77
    .local v2, "that":Landroid/adservices/ondevicepersonalization/CallerMetadata;
    iget-wide v3, p0, Landroid/adservices/ondevicepersonalization/CallerMetadata;->mStartTimeMillis:J

    iget-wide v5, v2, Landroid/adservices/ondevicepersonalization/CallerMetadata;->mStartTimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v0, v1

    :goto_1f
    return v0

    .line 73
    .end local v2    # "that":Landroid/adservices/ondevicepersonalization/CallerMetadata;
    :cond_20
    :goto_20
    return v1
.end method

.method public blacklist getStartTimeMillis()J
    .registers 3

    .line 62
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/CallerMetadata;->mStartTimeMillis:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 87
    const/4 v0, 0x1

    .line 88
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/adservices/ondevicepersonalization/CallerMetadata;->mStartTimeMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 89
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 98
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/CallerMetadata;->mStartTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 99
    return-void
.end method
