.class public final Landroid/os/TimestampedValue;
.super Ljava/lang/Object;
.source "TimestampedValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/TimestampedValue<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mReferenceTimeMillis:J

.field private final blacklist mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 98
    new-instance v0, Landroid/os/TimestampedValue$1;

    invoke-direct {v0}, Landroid/os/TimestampedValue$1;-><init>()V

    sput-object v0, Landroid/os/TimestampedValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JLjava/lang/Object;)V
    .registers 4
    .param p1, "referenceTimeMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;)V"
        }
    .end annotation

    .line 44
    .local p0, "this":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<TT;>;"
    .local p3, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide p1, p0, Landroid/os/TimestampedValue;->mReferenceTimeMillis:J

    .line 46
    iput-object p3, p0, Landroid/os/TimestampedValue;->mValue:Ljava/lang/Object;

    .line 47
    return-void
.end method

.method public static blacklist referenceTimeDifference(Landroid/os/TimestampedValue;Landroid/os/TimestampedValue;)J
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/TimestampedValue<",
            "*>;",
            "Landroid/os/TimestampedValue<",
            "*>;)J"
        }
    .end annotation

    .line 94
    .local p0, "one":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<*>;"
    .local p1, "two":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<*>;"
    iget-wide v0, p0, Landroid/os/TimestampedValue;->mReferenceTimeMillis:J

    iget-wide v2, p1, Landroid/os/TimestampedValue;->mReferenceTimeMillis:J

    sub-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 122
    .local p0, "this":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 65
    .local p0, "this":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<TT;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 66
    return v0

    .line 68
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2a

    .line 71
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/os/TimestampedValue;

    .line 72
    .local v2, "that":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<*>;"
    iget-wide v3, p0, Landroid/os/TimestampedValue;->mReferenceTimeMillis:J

    iget-wide v5, v2, Landroid/os/TimestampedValue;->mReferenceTimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_28

    iget-object v3, p0, Landroid/os/TimestampedValue;->mValue:Ljava/lang/Object;

    iget-object v4, v2, Landroid/os/TimestampedValue;->mValue:Ljava/lang/Object;

    .line 73
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    goto :goto_29

    :cond_28
    move v0, v1

    .line 72
    :goto_29
    return v0

    .line 69
    .end local v2    # "that":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<*>;"
    :cond_2a
    :goto_2a
    return v1
.end method

.method public blacklist getReferenceTimeMillis()J
    .registers 3

    .line 51
    .local p0, "this":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<TT;>;"
    iget-wide v0, p0, Landroid/os/TimestampedValue;->mReferenceTimeMillis:J

    return-wide v0
.end method

.method public blacklist getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 60
    .local p0, "this":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<TT;>;"
    iget-object v0, p0, Landroid/os/TimestampedValue;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 78
    .local p0, "this":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<TT;>;"
    iget-wide v0, p0, Landroid/os/TimestampedValue;->mReferenceTimeMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Landroid/os/TimestampedValue;->mValue:Ljava/lang/Object;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 83
    .local p0, "this":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimestampedValue{mReferenceTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/TimestampedValue;->mReferenceTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/TimestampedValue;->mValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 127
    .local p0, "this":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<TT;>;"
    iget-wide v0, p0, Landroid/os/TimestampedValue;->mReferenceTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 128
    iget-object v0, p0, Landroid/os/TimestampedValue;->mValue:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 129
    return-void
.end method
