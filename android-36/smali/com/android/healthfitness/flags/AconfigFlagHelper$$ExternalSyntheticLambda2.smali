.class public final synthetic Lcom/android/healthfitness/flags/AconfigFlagHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api getAsBoolean()Z
    .registers 2

    .line 0
    invoke-static {}, Lcom/android/healthfitness/flags/Flags;->ecosystemMetricsDbChanges()Z

    move-result v0

    return v0
.end method
