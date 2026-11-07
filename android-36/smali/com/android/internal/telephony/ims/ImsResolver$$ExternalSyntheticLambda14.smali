.class public final synthetic Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/ims/ImsResolver;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/ims/ImsResolver;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda14;->f$0:Lcom/android/internal/telephony/ims/ImsResolver;

    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda14;->f$1:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda14;->f$0:Lcom/android/internal/telephony/ims/ImsResolver;

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda14;->f$1:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    check-cast p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->$r8$lambda$BCBu1Z9IlaRgy3oYK96WTyoXe1Y(Lcom/android/internal/telephony/ims/ImsResolver;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z

    move-result p0

    return p0
.end method
