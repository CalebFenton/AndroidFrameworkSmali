.class public final synthetic Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda2;
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
    check-cast p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->$r8$lambda$hUjzyDx8iCYJkdywAqsv5mfEYm8(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
