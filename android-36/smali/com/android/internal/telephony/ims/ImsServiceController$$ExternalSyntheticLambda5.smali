.class public final synthetic Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:I

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(II)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda5;->f$0:I

    iput p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda5;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda5;->f$0:I

    iget p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda5;->f$1:I

    check-cast p1, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->$r8$lambda$TffSz4GDYLjUWxV_T7ETIfCEBUE(IILcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;)Z

    move-result p0

    return p0
.end method
