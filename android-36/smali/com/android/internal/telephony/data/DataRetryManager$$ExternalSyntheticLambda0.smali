.class public final synthetic Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/data/DataProfile;

.field public final synthetic blacklist f$1:J

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/data/DataProfile;JI)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/data/DataProfile;

    iput-wide p2, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda0;->f$1:J

    iput p4, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/data/DataProfile;

    iget-wide v1, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda0;->f$1:J

    iget p0, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda0;->f$2:I

    check-cast p1, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->$r8$lambda$slM8ajPNRoBoKO_Qors9g58BiKQ(Landroid/telephony/data/DataProfile;JILcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;)Z

    move-result p0

    return p0
.end method
