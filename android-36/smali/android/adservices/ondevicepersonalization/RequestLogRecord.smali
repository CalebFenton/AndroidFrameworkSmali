.class public final Landroid/adservices/ondevicepersonalization/RequestLogRecord;
.super Ljava/lang/Object;
.source "RequestLogRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/RequestLogRecord$Builder;,
        Landroid/adservices/ondevicepersonalization/RequestLogRecord$BaseBuilder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/ondevicepersonalization/RequestLogRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mRequestId:J

.field blacklist mRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTimeMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 198
    new-instance v0, Landroid/adservices/ondevicepersonalization/RequestLogRecord$1;

    invoke-direct {v0}, Landroid/adservices/ondevicepersonalization/RequestLogRecord$1;-><init>()V

    sput-object v0, Landroid/adservices/ondevicepersonalization/RequestLogRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    nop

    .line 45
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord;->mRows:Ljava/util/List;

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord;->mRequestId:J

    .line 57
    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord;->mTimeMillis:J

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v0, "rows":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const-class v1, Landroid/content/ContentValues;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 186
    .local v1, "requestId":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 188
    .local v3, "timeMillis":J
    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord;->mRows:Ljava/util/List;

    .line 189
    const-class v5, Landroid/annotation/NonNull;

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord;->mRows:Ljava/util/List;

    invoke-static {v5, v6, v7}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 191
    iput-wide v1, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord;->mRequestId:J

    .line 192
    iput-wide v3, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord;->mTimeMillis:J

    .line 195
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/List;JJ)V
    .registers 9
    .param p2, "requestId"    # J
    .param p4, "timeMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;JJ)V"
        }
    .end annotation

    .line 92
    .local p1, "rows":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    nop

    .line 45
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord;->mRows:Ljava/util/List;

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord;->mRequestId:J

    .line 57
    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord;->mTimeMillis:J

    .line 93
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord;->mRows:Ljava/util/List;

    .line 94
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord;->mRows:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 96
    iput-wide p2, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord;->mRequestId:J

    .line 97
    iput-wide p4, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord;->mTimeMillis:J

    .line 100
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 308
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 137
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 138
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_32

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_32

    .line 140
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    .line 142
    .local v2, "that":Landroid/adservices/ondevicepersonalization/RequestLogRecord;
    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord;->mRows:Ljava/util/List;

    iget-object v4, v2, Landroid/adservices/ondevicepersonalization/RequestLogRecord;->mRows:Ljava/util/List;

    .line 143
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-wide v3, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord;->mRequestId:J

    iget-wide v5, v2, Landroid/adservices/ondevicepersonalization/RequestLogRecord;->mRequestId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_30

    iget-wide v3, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord;->mTimeMillis:J

    iget-wide v5, v2, Landroid/adservices/ondevicepersonalization/RequestLogRecord;->mTimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_30

    goto :goto_31

    :cond_30
    move v0, v1

    .line 142
    :goto_31
    return v0

    .line 138
    .end local v2    # "that":Landroid/adservices/ondevicepersonalization/RequestLogRecord;
    :cond_32
    :goto_32
    return v1
.end method

.method public blacklist getRequestId()J
    .registers 3

    .line 117
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord;->mRequestId:J

    return-wide v0
.end method

.method public whitelist getRows()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord;->mRows:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getTime()Ljava/time/Instant;
    .registers 3

    .line 63
    invoke-virtual {p0}, Landroid/adservices/ondevicepersonalization/RequestLogRecord;->getTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTimeMillis()J
    .registers 3

    .line 127
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord;->mTimeMillis:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 154
    const/4 v0, 0x1

    .line 155
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord;->mRows:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 156
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord;->mRequestId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 157
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord;->mTimeMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 158
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 167
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord;->mRows:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 168
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord;->mRequestId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 169
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord;->mTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 170
    return-void
.end method
