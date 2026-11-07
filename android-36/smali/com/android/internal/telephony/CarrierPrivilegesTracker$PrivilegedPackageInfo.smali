.class final Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;
.super Ljava/lang/Object;
.source "CarrierPrivilegesTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierPrivilegesTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrivilegedPackageInfo"
.end annotation


# instance fields
.field final blacklist mCarrierService:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mPackageNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mUids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$nRNiVoSI2bx3Rm3PQErhqbDS05s(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 256
    invoke-static {}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method constructor blacklist <init>()V
    .registers 4

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;->mPackageNames:Ljava/util/Set;

    .line 242
    iput-object v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;->mUids:Ljava/util/Set;

    .line 243
    new-instance v0, Landroid/util/Pair;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;->mCarrierService:Landroid/util/Pair;

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/Set;Ljava/util/Set;Landroid/util/Pair;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;->mPackageNames:Ljava/util/Set;

    .line 249
    iput-object p2, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;->mUids:Ljava/util/Set;

    .line 250
    iput-object p3, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;->mCarrierService:Landroid/util/Pair;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 271
    :cond_4
    instance-of v1, p1, Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 274
    :cond_a
    check-cast p1, Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;

    .line 275
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;->mPackageNames:Ljava/util/Set;

    iget-object v3, p1, Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;->mPackageNames:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;->mUids:Ljava/util/Set;

    iget-object v3, p1, Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;->mUids:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;->mCarrierService:Landroid/util/Pair;

    iget-object p1, p1, Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;->mCarrierService:Landroid/util/Pair;

    .line 276
    invoke-virtual {p0, p1}, Landroid/util/Pair;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b

    return v0

    :cond_2b
    return v2
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 281
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;->mPackageNames:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;->mUids:Ljava/util/Set;

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;->mCarrierService:Landroid/util/Pair;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{packageNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;->mPackageNames:Ljava/util/Set;

    new-instance v2, Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo$$ExternalSyntheticLambda0;-><init>()V

    .line 256
    invoke-static {v1, v2}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->-$$Nest$smgetObfuscatedPackages(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;->mUids:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", carrierServicePackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;->mCarrierService:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 260
    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", carrierServiceUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;->mCarrierService:Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
