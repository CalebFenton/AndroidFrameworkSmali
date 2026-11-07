.class Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;
.super Ljava/lang/Object;
.source "CellBroadcastConfigTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CellBroadcastConfigTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Request"
.end annotation


# instance fields
.field blacklist mCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCbRangesRequest3gpp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/CellBroadcastIdRange;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCbRangesRequest3gpp2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/CellBroadcastIdRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$9iEFhud5RlT9TEkXKyTZPxo4P-w(Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;Landroid/telephony/CellBroadcastIdRange;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;->lambda$new$0(Landroid/telephony/CellBroadcastIdRange;)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/List;Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellBroadcastIdRange;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;->mCbRangesRequest3gpp:Ljava/util/List;

    .line 87
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;->mCbRangesRequest3gpp2:Ljava/util/List;

    .line 92
    new-instance v0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 99
    iput-object p2, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;->mCallback:Ljava/util/function/Consumer;

    return-void
.end method

.method private synthetic blacklist lambda$new$0(Landroid/telephony/CellBroadcastIdRange;)V
    .registers 4

    .line 93
    invoke-virtual {p1}, Landroid/telephony/CellBroadcastIdRange;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 94
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;->mCbRangesRequest3gpp:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 96
    :cond_d
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;->mCbRangesRequest3gpp2:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method blacklist get3gpp2Ranges()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/CellBroadcastIdRange;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;->mCbRangesRequest3gpp2:Ljava/util/List;

    return-object p0
.end method

.method blacklist get3gppRanges()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/CellBroadcastIdRange;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;->mCbRangesRequest3gpp:Ljava/util/List;

    return-object p0
.end method

.method blacklist getCallback()Ljava/util/function/Consumer;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;->mCallback:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request[mCbRangesRequest3gpp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;->mCbRangesRequest3gpp:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCbRangesRequest3gpp2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;->mCbRangesRequest3gpp2:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
