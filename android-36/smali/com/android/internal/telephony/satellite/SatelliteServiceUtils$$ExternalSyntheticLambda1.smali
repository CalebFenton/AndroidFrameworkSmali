.class public final synthetic Lcom/android/internal/telephony/satellite/SatelliteServiceUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Landroid/telephony/satellite/SystemSelectionSpecifier;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->$r8$lambda$dLQDCKedVySUu-LiiN3eXocM7Is(Landroid/telephony/satellite/SystemSelectionSpecifier;)Landroid/telephony/satellite/stub/SystemSelectionSpecifier;

    move-result-object p0

    return-object p0
.end method
