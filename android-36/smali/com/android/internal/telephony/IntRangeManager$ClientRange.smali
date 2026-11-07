.class Lcom/android/internal/telephony/IntRangeManager$ClientRange;
.super Ljava/lang/Object;
.source "IntRangeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IntRangeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientRange"
.end annotation


# instance fields
.field final blacklist mClient:Ljava/lang/String;

.field final blacklist mEndId:I

.field final blacklist mStartId:I


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput p2, p0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    .line 162
    iput p3, p0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    .line 163
    iput-object p4, p0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mClient:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_21

    .line 168
    instance-of v1, p1, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    if-eqz v1, :cond_21

    .line 169
    check-cast p1, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 170
    iget v1, p0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    iget v2, p1, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    if-ne v1, v2, :cond_21

    iget v1, p0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    iget v2, p1, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    if-ne v1, v2, :cond_21

    iget-object p0, p0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mClient:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mClient:Ljava/lang/String;

    .line 172
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    const/4 p0, 0x1

    return p0

    :cond_21
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 180
    iget v0, p0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mClient:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
