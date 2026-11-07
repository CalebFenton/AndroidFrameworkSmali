.class public final synthetic Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda12;
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

    iput p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda12;->f$0:I

    iput p2, p0, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda12;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget v0, p0, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda12;->f$0:I

    iget p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda12;->f$1:I

    check-cast p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->$r8$lambda$3zbiVi_2CDXiaJzrhLgziqeCN-4(IILandroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z

    move-result p0

    return p0
.end method
