.class Lcom/android/internal/telephony/IntRangeManager$IntRange;
.super Ljava/lang/Object;
.source "IntRangeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IntRangeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntRange"
.end annotation


# instance fields
.field final blacklist mClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/IntRangeManager$ClientRange;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mEndId:I

.field blacklist mStartId:I


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V
    .registers 7
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

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p2, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    .line 72
    iput p3, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    .line 74
    new-instance p0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/IntRangeManager;Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iget p1, p2, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    iput p1, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    .line 83
    iget p1, p2, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    iput p1, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 84
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    .line 85
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/IntRangeManager;Lcom/android/internal/telephony/IntRangeManager$IntRange;I)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iget p1, p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    iput p1, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    .line 100
    iget p1, p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    iput p1, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 101
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    const/4 p1, 0x0

    :goto_19
    if-ge p1, p3, :cond_2b

    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_19

    :cond_2b
    return-void
.end method


# virtual methods
.method blacklist insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V
    .registers 9

    .line 117
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, v1

    :goto_9
    if-ge v2, v0, :cond_39

    .line 120
    iget-object v4, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 121
    iget v5, p1, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    iget v6, v4, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    if-gt v5, v6, :cond_36

    .line 123
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    .line 125
    iget v3, p1, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    iget v5, v4, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    if-ne v3, v5, :cond_30

    iget v3, p1, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    iget v4, v4, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    if-le v3, v4, :cond_30

    add-int/lit8 v3, v2, 0x1

    if-ge v3, v0, :cond_39

    goto :goto_36

    .line 135
    :cond_30
    iget-object p0, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_35
    return-void

    :cond_36
    :goto_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_39
    if-eq v3, v1, :cond_43

    if-ge v3, v0, :cond_43

    .line 141
    iget-object p0, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {p0, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void

    .line 144
    :cond_43
    iget-object p0, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
