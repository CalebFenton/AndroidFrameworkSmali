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
.field final mClient:Ljava/lang/String;

.field final mEndId:I

.field final mStartId:I

.field final synthetic this$0:Lcom/android/internal/telephony/IntRangeManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/IntRangeManager;
    .param p2, "startId"    # I
    .param p3, "endId"    # I
    .param p4, "client"    # Ljava/lang/String;

    #@0
    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->this$0:Lcom/android/internal/telephony/IntRangeManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 153
    iput p2, p0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    #@7
    .line 154
    iput p3, p0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    #@9
    .line 155
    iput-object p4, p0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mClient:Ljava/lang/String;

    #@b
    .line 152
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 160
    if-eqz p1, :cond_1

    #@3
    instance-of v2, p1, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    #@5
    if-eqz v2, :cond_1

    #@7
    move-object v0, p1

    #@8
    .line 161
    check-cast v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    #@a
    .line 162
    .local v0, "other":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    iget v2, p0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    #@c
    iget v3, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    #@e
    if-ne v2, v3, :cond_0

    #@10
    .line 163
    iget v2, p0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    #@12
    iget v3, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    #@14
    if-ne v2, v3, :cond_0

    #@16
    .line 164
    iget-object v1, p0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mClient:Ljava/lang/String;

    #@18
    iget-object v2, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mClient:Ljava/lang/String;

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v1

    #@1e
    .line 162
    :cond_0
    return v1

    #@1f
    .line 166
    .end local v0    # "other":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 172
    iget v0, p0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    #@2
    mul-int/lit8 v0, v0, 0x1f

    #@4
    iget v1, p0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    #@6
    add-int/2addr v0, v1

    #@7
    mul-int/lit8 v0, v0, 0x1f

    #@9
    iget-object v1, p0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mClient:Ljava/lang/String;

    #@b
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@e
    move-result v1

    #@f
    add-int/2addr v0, v1

    #@10
    return v0
.end method
