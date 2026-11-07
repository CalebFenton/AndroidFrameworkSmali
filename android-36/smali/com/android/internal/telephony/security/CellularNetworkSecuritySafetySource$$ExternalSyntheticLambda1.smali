.class public final synthetic Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;

.field public final synthetic blacklist f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;Landroid/content/Context;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;

    iput-object p2, p0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;

    iget-object p0, p0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->$r8$lambda$9S3b8WeTuhPtXx6fIOVNhtypnh0(Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;Landroid/content/Context;Ljava/util/Map$Entry;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
