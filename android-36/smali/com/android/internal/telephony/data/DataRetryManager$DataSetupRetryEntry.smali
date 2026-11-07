.class public Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;
.super Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;
.source "DataRetryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/DataRetryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataSetupRetryEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;
    }
.end annotation


# static fields
.field public static final blacklist RETRY_TYPE_DATA_PROFILE:I = 0x1

.field public static final blacklist RETRY_TYPE_NETWORK_REQUESTS:I = 0x2

.field public static final blacklist RETRY_TYPE_UNKNOWN:I


# instance fields
.field public final blacklist dataProfile:Landroid/telephony/data/DataProfile;

.field public final blacklist networkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

.field public final blacklist setupRetryType:I

.field public final blacklist transport:I


# direct methods
.method private constructor blacklist <init>(ILcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryRule;J)V
    .registers 8

    .line 762
    invoke-direct {p0, p5, p6, p7}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;-><init>(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;J)V

    .line 763
    iput p1, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->setupRetryType:I

    .line 764
    iput-object p2, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->networkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    .line 765
    iput-object p3, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->dataProfile:Landroid/telephony/data/DataProfile;

    .line 766
    iput p4, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->transport:I

    return-void
.end method

.method synthetic constructor blacklist <init>(ILcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryRule;JLcom/android/internal/telephony/data/DataRetryManager-IA;)V
    .registers 9

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;-><init>(ILcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryRule;J)V

    return-void
.end method

.method private static blacklist retryTypeToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_25

    const/4 v0, 0x1

    if-eq p0, v0, :cond_22

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1f

    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 778
    :cond_1f
    const-string p0, "BY_NETWORK_REQUESTS"

    return-object p0

    .line 777
    :cond_22
    const-string p0, "BY_PROFILE"

    return-object p0

    .line 779
    :cond_25
    const-string p0, "UNKNOWN"

    return-object p0
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DataSetupRetryEntry: delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->retryDelayMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms, retry time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->retryElapsedTime:J

    .line 787
    invoke-static {v1, v2}, Lcom/android/internal/telephony/data/DataUtils;->elapsedTimeToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->dataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->transport:I

    .line 788
    invoke-static {v1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", retry type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->setupRetryType:I

    .line 789
    invoke-static {v1}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->retryTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", retry requests="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->networkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", applied rule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->appliedDataRetryRule:Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->mRetryState:I

    .line 791
    invoke-static {v1}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->retryStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->mRetryStateTimestamp:J

    .line 792
    invoke-static {v1, v2}, Lcom/android/internal/telephony/data/DataUtils;->elapsedTimeToString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
