.class public final synthetic Landroid/telephony/ActivityStatsTechSpecificInfo$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntPredicate;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(I)Z
    .registers 2

    .line 0
    invoke-static {p1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->lambda$isTxPowerEmpty$1(I)Z

    move-result p1

    return p1
.end method
