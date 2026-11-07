.class public final Landroid/adservices/ondevicepersonalization/CalleeMetadata;
.super Ljava/lang/Object;
.source "CalleeMetadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/CalleeMetadata$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/ondevicepersonalization/CalleeMetadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mCallbackInvokeTimeMillis:J

.field private blacklist mElapsedTimeMillis:J

.field private blacklist mServiceEntryTimeMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 146
    new-instance v0, Landroid/adservices/ondevicepersonalization/CalleeMetadata$1;

    invoke-direct {v0}, Landroid/adservices/ondevicepersonalization/CalleeMetadata$1;-><init>()V

    sput-object v0, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(JJJ)V
    .registers 9
    .param p1, "elapsedTimeMillis"    # J
    .param p3, "serviceEntryTimeMillis"    # J
    .param p5, "callbackInvokeTimeMillis"    # J

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->mElapsedTimeMillis:J

    .line 33
    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->mServiceEntryTimeMillis:J

    .line 34
    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->mCallbackInvokeTimeMillis:J

    .line 56
    iput-wide p1, p0, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->mElapsedTimeMillis:J

    .line 57
    iput-wide p3, p0, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->mServiceEntryTimeMillis:J

    .line 58
    iput-wide p5, p0, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->mCallbackInvokeTimeMillis:J

    .line 61
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->mElapsedTimeMillis:J

    .line 33
    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->mServiceEntryTimeMillis:J

    .line 34
    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->mCallbackInvokeTimeMillis:J

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 135
    .local v0, "elapsedTimeMillis":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 136
    .local v2, "serviceEntryTimeMillis":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 138
    .local v4, "callbackInvokeTimeMillis":J
    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->mElapsedTimeMillis:J

    .line 139
    iput-wide v2, p0, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->mServiceEntryTimeMillis:J

    .line 140
    iput-wide v4, p0, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->mCallbackInvokeTimeMillis:J

    .line 143
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 237
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 88
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 89
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_30

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_30

    .line 91
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/adservices/ondevicepersonalization/CalleeMetadata;

    .line 93
    .local v2, "that":Landroid/adservices/ondevicepersonalization/CalleeMetadata;
    iget-wide v3, p0, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->mElapsedTimeMillis:J

    iget-wide v5, v2, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->mElapsedTimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2e

    iget-wide v3, p0, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->mServiceEntryTimeMillis:J

    iget-wide v5, v2, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->mServiceEntryTimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2e

    iget-wide v3, p0, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->mCallbackInvokeTimeMillis:J

    iget-wide v5, v2, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->mCallbackInvokeTimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v1

    :goto_2f
    return v0

    .line 89
    .end local v2    # "that":Landroid/adservices/ondevicepersonalization/CalleeMetadata;
    :cond_30
    :goto_30
    return v1
.end method

.method public blacklist getCallbackInvokeTimeMillis()J
    .registers 3

    .line 78
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->mCallbackInvokeTimeMillis:J

    return-wide v0
.end method

.method public blacklist getElapsedTimeMillis()J
    .registers 3

    .line 68
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->mElapsedTimeMillis:J

    return-wide v0
.end method

.method public blacklist getServiceEntryTimeMillis()J
    .registers 3

    .line 73
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->mServiceEntryTimeMillis:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 105
    const/4 v0, 0x1

    .line 106
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->mElapsedTimeMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 107
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->mServiceEntryTimeMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 108
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->mCallbackInvokeTimeMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 109
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 118
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->mElapsedTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 119
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->mServiceEntryTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 120
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->mCallbackInvokeTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 121
    return-void
.end method
