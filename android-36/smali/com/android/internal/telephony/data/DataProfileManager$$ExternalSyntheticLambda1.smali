.class public final synthetic Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/DataProfileManager;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataProfileManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/telephony/data/DataProfileManager;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/telephony/data/DataProfileManager;

    check-cast p1, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->$r8$lambda$48Gg-pyrojb-a-w5Qs-cPIivTAI(Lcom/android/internal/telephony/data/DataProfileManager;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    move-result p0

    return p0
.end method
