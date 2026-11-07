.class public final synthetic Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/Integer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda13;->f$0:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda13;->f$0:Ljava/lang/Integer;

    check-cast p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->$r8$lambda$OsDdu4V2CfEwpXM9ysLhTWArF0o(Ljava/lang/Integer;Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z

    move-result p0

    return p0
.end method
