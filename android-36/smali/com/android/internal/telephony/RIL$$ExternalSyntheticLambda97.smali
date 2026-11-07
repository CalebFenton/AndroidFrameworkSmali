.class public final synthetic Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda97;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/RIL;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/RadioSimProxy;

.field public final synthetic blacklist f$2:Lcom/android/internal/telephony/RILRequest;

.field public final synthetic blacklist f$3:Landroid/telephony/CarrierRestrictionRules;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Landroid/telephony/CarrierRestrictionRules;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda97;->f$0:Lcom/android/internal/telephony/RIL;

    iput-object p2, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda97;->f$1:Lcom/android/internal/telephony/RadioSimProxy;

    iput-object p3, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda97;->f$2:Lcom/android/internal/telephony/RILRequest;

    iput-object p4, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda97;->f$3:Landroid/telephony/CarrierRestrictionRules;

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda97;->f$0:Lcom/android/internal/telephony/RIL;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda97;->f$1:Lcom/android/internal/telephony/RadioSimProxy;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda97;->f$2:Lcom/android/internal/telephony/RILRequest;

    iget-object p0, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda97;->f$3:Landroid/telephony/CarrierRestrictionRules;

    invoke-static {v0, v1, v2, p0}, Lcom/android/internal/telephony/RIL;->$r8$lambda$cbMnz5xCxfgQHHLj041oOyxu8MQ(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Landroid/telephony/CarrierRestrictionRules;)V

    return-void
.end method
