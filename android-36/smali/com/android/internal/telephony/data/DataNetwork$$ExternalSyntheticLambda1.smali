.class public final synthetic Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/DataConfigManager;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataConfigManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/telephony/data/DataConfigManager;

    return-void
.end method


# virtual methods
.method public final whitelist test-api applyAsInt(Ljava/lang/Object;)I
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/telephony/data/DataConfigManager;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataConfigManager;->getNetworkCapabilityPriority(I)I

    move-result p0

    return p0
.end method
