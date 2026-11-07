.class public final synthetic Lcom/android/internal/telephony/NetworkScanRequestTracker$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/Set;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$$ExternalSyntheticLambda3;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$$ExternalSyntheticLambda3;->f$0:Ljava/util/Set;

    check-cast p1, Landroid/telephony/CellInfo;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->$r8$lambda$bza8dcIcjl-awnLxURssYqxSWL0(Ljava/util/Set;Landroid/telephony/CellInfo;)Z

    move-result p0

    return p0
.end method
