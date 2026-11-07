.class public final Landroid/os/CombinedVibration$Sequential;
.super Landroid/os/CombinedVibration;
.source "CombinedVibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CombinedVibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sequential"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/CombinedVibration$Sequential;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MAX_HAPTIC_FEEDBACK_SEQUENCE_SIZE:J = 0x3L


# instance fields
.field private final blacklist mDelays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/CombinedVibration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 991
    new-instance v0, Landroid/os/CombinedVibration$Sequential$1;

    invoke-direct {v0}, Landroid/os/CombinedVibration$Sequential$1;-><init>()V

    sput-object v0, Landroid/os/CombinedVibration$Sequential;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 777
    invoke-direct {p0}, Landroid/os/CombinedVibration;-><init>()V

    .line 778
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 779
    .local v0, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    .line 780
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/os/CombinedVibration$Sequential;->mDelays:Ljava/util/List;

    .line 781
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    if-ge v1, v0, :cond_35

    .line 782
    iget-object v2, p0, Landroid/os/CombinedVibration$Sequential;->mDelays:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 783
    iget-object v2, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    sget-object v3, Landroid/os/CombinedVibration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/CombinedVibration;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 781
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 785
    .end local v1    # "i":I
    :cond_35
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/CombinedVibration;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 788
    .local p1, "effects":Ljava/util/List;, "Ljava/util/List<Landroid/os/CombinedVibration;>;"
    .local p2, "delays":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Landroid/os/CombinedVibration;-><init>()V

    .line 789
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    .line 790
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/os/CombinedVibration$Sequential;->mDelays:Ljava/util/List;

    .line 791
    return-void
.end method

.method private blacklist getDuration(Ljava/util/function/Function;)J
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Landroid/os/CombinedVibration;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 817
    .local p1, "durationFn":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/CombinedVibration;Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .line 818
    .local v0, "hasUnknownStep":Z
    const-wide/16 v1, 0x0

    .line 819
    .local v1, "durations":J
    iget-object v3, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 820
    .local v3, "effectCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_a
    if-ge v4, v3, :cond_36

    .line 821
    iget-object v5, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/CombinedVibration;

    invoke-interface {p1, v5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 822
    .local v5, "duration":J
    const-wide v7, 0x7fffffffffffffffL

    cmp-long v7, v5, v7

    if-nez v7, :cond_28

    .line 824
    return-wide v5

    .line 826
    :cond_28
    add-long/2addr v1, v5

    .line 830
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-gez v7, :cond_31

    const/4 v7, 0x1

    goto :goto_32

    :cond_31
    const/4 v7, 0x0

    :goto_32
    or-int/2addr v0, v7

    .line 820
    .end local v5    # "duration":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 832
    .end local v4    # "i":I
    :cond_36
    if-eqz v0, :cond_3b

    .line 834
    const-wide/16 v4, -0x1

    return-wide v4

    .line 836
    :cond_3b
    const-wide/16 v4, 0x0

    .line 837
    .local v4, "delays":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3e
    if-ge v6, v3, :cond_51

    .line 838
    iget-object v7, p0, Landroid/os/CombinedVibration$Sequential;->mDelays:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v4, v7

    .line 837
    add-int/lit8 v6, v6, 0x1

    goto :goto_3e

    .line 840
    .end local v6    # "i":I
    :cond_51
    add-long v6, v1, v4

    return-wide v6
.end method

.method static synthetic blacklist lambda$getDuration$0(Landroid/util/SparseArray;Landroid/os/CombinedVibration;)Ljava/lang/Long;
    .registers 4
    .param p0, "vibratorInfos"    # Landroid/util/SparseArray;
    .param p1, "effect"    # Landroid/os/CombinedVibration;

    .line 813
    invoke-virtual {p1, p0}, Landroid/os/CombinedVibration;->getDuration(Landroid/util/SparseArray;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist adapt(Landroid/os/CombinedVibration$VibratorAdapter;)Landroid/os/CombinedVibration;
    .registers 8
    .param p1, "adapter"    # Landroid/os/CombinedVibration$VibratorAdapter;

    .line 904
    invoke-static {}, Landroid/os/CombinedVibration;->startSequential()Landroid/os/CombinedVibration$SequentialCombination;

    move-result-object v0

    .line 905
    .local v0, "combination":Landroid/os/CombinedVibration$SequentialCombination;
    const/4 v1, 0x1

    .line 906
    .local v1, "hasSameEffects":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    iget-object v3, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_31

    .line 907
    iget-object v3, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/CombinedVibration;

    .line 908
    .local v3, "vibration":Landroid/os/CombinedVibration;
    invoke-virtual {v3, p1}, Landroid/os/CombinedVibration;->adapt(Landroid/os/CombinedVibration$VibratorAdapter;)Landroid/os/CombinedVibration;

    move-result-object v4

    .line 909
    .local v4, "newVibration":Landroid/os/CombinedVibration;
    iget-object v5, p0, Landroid/os/CombinedVibration$Sequential;->mDelays:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/CombinedVibration$SequentialCombination;->addNext(Landroid/os/CombinedVibration;I)Landroid/os/CombinedVibration$SequentialCombination;

    .line 910
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 906
    .end local v3    # "vibration":Landroid/os/CombinedVibration;
    .end local v4    # "newVibration":Landroid/os/CombinedVibration;
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 912
    .end local v2    # "i":I
    :cond_31
    if-eqz v1, :cond_34

    .line 913
    return-object p0

    .line 916
    :cond_34
    invoke-virtual {v0}, Landroid/os/CombinedVibration$SequentialCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object v2

    return-object v2
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 977
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 944
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 945
    return v0

    .line 947
    :cond_4
    instance-of v1, p1, Landroid/os/CombinedVibration$Sequential;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 948
    return v2

    .line 950
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/os/CombinedVibration$Sequential;

    .line 951
    .local v1, "other":Landroid/os/CombinedVibration$Sequential;
    iget-object v3, p0, Landroid/os/CombinedVibration$Sequential;->mDelays:Ljava/util/List;

    iget-object v4, v1, Landroid/os/CombinedVibration$Sequential;->mDelays:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    iget-object v4, v1, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    :goto_23
    return v0
.end method

.method public blacklist getDelays()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 802
    iget-object v0, p0, Landroid/os/CombinedVibration$Sequential;->mDelays:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getDuration()J
    .registers 3

    .line 807
    new-instance v0, Landroid/os/CombinedVibration$Sequential$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/os/CombinedVibration$Sequential$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, v0}, Landroid/os/CombinedVibration$Sequential;->getDuration(Ljava/util/function/Function;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getDuration(Landroid/util/SparseArray;)J
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/VibratorInfo;",
            ">;)J"
        }
    .end annotation

    .line 813
    .local p1, "vibratorInfos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/VibratorInfo;>;"
    new-instance v0, Landroid/os/CombinedVibration$Sequential$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Landroid/os/CombinedVibration$Sequential$$ExternalSyntheticLambda1;-><init>(Landroid/util/SparseArray;)V

    invoke-direct {p0, v0}, Landroid/os/CombinedVibration$Sequential;->getDuration(Ljava/util/function/Function;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getEffects()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/CombinedVibration;",
            ">;"
        }
    .end annotation

    .line 796
    iget-object v0, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    return-object v0
.end method

.method public blacklist hasVendorEffects()Z
    .registers 3

    .line 934
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 935
    iget-object v1, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/CombinedVibration;

    invoke-virtual {v1}, Landroid/os/CombinedVibration;->hasVendorEffects()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 936
    const/4 v1, 0x1

    return v1

    .line 934
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 939
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasVibrator(I)Z
    .registers 5
    .param p1, "vibratorId"    # I

    .line 922
    iget-object v0, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 923
    .local v0, "effectCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1c

    .line 924
    iget-object v2, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/CombinedVibration;

    invoke-virtual {v2, p1}, Landroid/os/CombinedVibration;->hasVibrator(I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 925
    const/4 v2, 0x1

    return v2

    .line 923
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 928
    .end local v1    # "i":I
    :cond_1c
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 956
    iget-object v0, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    iget-object v1, p0, Landroid/os/CombinedVibration$Sequential;->mDelays:Ljava/util/List;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isHapticFeedbackCandidate()Z
    .registers 6

    .line 846
    iget-object v0, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 847
    .local v0, "effectCount":I
    int-to-long v1, v0

    const-wide/16 v3, 0x3

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-lez v1, :cond_f

    .line 848
    return v2

    .line 850
    :cond_f
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v0, :cond_24

    .line 851
    iget-object v3, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/CombinedVibration;

    invoke-virtual {v3}, Landroid/os/CombinedVibration;->isHapticFeedbackCandidate()Z

    move-result v3

    if-nez v3, :cond_21

    .line 852
    return v2

    .line 850
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 855
    .end local v1    # "i":I
    :cond_24
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist toDebugString()Ljava/lang/String;
    .registers 6

    .line 967
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "Sequential{"

    const-string/jumbo v2, "}"

    const-string v3, ","

    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 968
    .local v0, "sj":Ljava/util/StringJoiner;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    iget-object v2, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 969
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v3, p0, Landroid/os/CombinedVibration$Sequential;->mDelays:Ljava/util/List;

    .line 970
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/CombinedVibration;

    invoke-virtual {v4}, Landroid/os/CombinedVibration;->toDebugString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 969
    const-string v4, "delayMs=%d, effect=%s"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 968
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 972
    .end local v1    # "i":I
    :cond_39
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sequential{mEffects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDelays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/CombinedVibration$Sequential;->mDelays:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist transform(Landroid/os/VibrationEffect$Transformation;Ljava/lang/Object;)Landroid/os/CombinedVibration;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ParamT:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/VibrationEffect$Transformation<",
            "TParamT;>;TParamT;)",
            "Landroid/os/CombinedVibration;"
        }
    .end annotation

    .line 886
    .local p1, "transformation":Landroid/os/VibrationEffect$Transformation;, "Landroid/os/VibrationEffect$Transformation<TParamT;>;"
    .local p2, "param":Ljava/lang/Object;, "TParamT;"
    invoke-static {}, Landroid/os/CombinedVibration;->startSequential()Landroid/os/CombinedVibration$SequentialCombination;

    move-result-object v0

    .line 887
    .local v0, "combination":Landroid/os/CombinedVibration$SequentialCombination;
    const/4 v1, 0x1

    .line 888
    .local v1, "hasSameEffects":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    iget-object v3, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_31

    .line 889
    iget-object v3, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/CombinedVibration;

    .line 890
    .local v3, "vibration":Landroid/os/CombinedVibration;
    invoke-virtual {v3, p1, p2}, Landroid/os/CombinedVibration;->transform(Landroid/os/VibrationEffect$Transformation;Ljava/lang/Object;)Landroid/os/CombinedVibration;

    move-result-object v4

    .line 891
    .local v4, "newVibration":Landroid/os/CombinedVibration;
    iget-object v5, p0, Landroid/os/CombinedVibration$Sequential;->mDelays:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/CombinedVibration$SequentialCombination;->addNext(Landroid/os/CombinedVibration;I)Landroid/os/CombinedVibration$SequentialCombination;

    .line 892
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 888
    .end local v3    # "vibration":Landroid/os/CombinedVibration;
    .end local v4    # "newVibration":Landroid/os/CombinedVibration;
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 894
    .end local v2    # "i":I
    :cond_31
    if-eqz v1, :cond_34

    .line 895
    return-object p0

    .line 898
    :cond_34
    invoke-virtual {v0}, Landroid/os/CombinedVibration$SequentialCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object v2

    return-object v2
.end method

.method public blacklist validate()V
    .registers 6

    .line 861
    iget-object v0, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v1

    :goto_d
    const-string v3, "There should be at least one effect set for a combined effect"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 863
    iget-object v0, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p0, Landroid/os/CombinedVibration$Sequential;->mDelays:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_21

    move v1, v2

    :cond_21
    const-string v0, "Effect and delays should have equal length"

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 865
    iget-object v0, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 866
    .local v0, "effectCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2d
    if-ge v1, v0, :cond_61

    .line 867
    iget-object v2, p0, Landroid/os/CombinedVibration$Sequential;->mDelays:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_40

    .line 866
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 868
    :cond_40
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delays must all be >= 0 (delays="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/os/CombinedVibration$Sequential;->mDelays:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 872
    .end local v1    # "i":I
    :cond_61
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_62
    if-ge v1, v0, :cond_7e

    .line 873
    iget-object v2, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/CombinedVibration;

    .line 874
    .local v2, "effect":Landroid/os/CombinedVibration;
    instance-of v3, v2, Landroid/os/CombinedVibration$Sequential;

    if-nez v3, :cond_76

    .line 878
    invoke-virtual {v2}, Landroid/os/CombinedVibration;->validate()V

    .line 872
    .end local v2    # "effect":Landroid/os/CombinedVibration;
    add-int/lit8 v1, v1, 0x1

    goto :goto_62

    .line 875
    .restart local v2    # "effect":Landroid/os/CombinedVibration;
    :cond_76
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "There should be no nested sequential effects in a combined effect"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 880
    .end local v1    # "i":I
    .end local v2    # "effect":Landroid/os/CombinedVibration;
    :cond_7e
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 982
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 983
    iget-object v0, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 984
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    iget-object v1, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 985
    iget-object v1, p0, Landroid/os/CombinedVibration$Sequential;->mDelays:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 986
    iget-object v1, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/CombinedVibration;

    invoke-virtual {v1, p1, p2}, Landroid/os/CombinedVibration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 984
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 988
    .end local v0    # "i":I
    :cond_33
    return-void
.end method
