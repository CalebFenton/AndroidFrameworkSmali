.class public final synthetic Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    check-cast p1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->$r8$lambda$nsdgR3B_9SO0WAxj21SHU7mTl1g(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    return-void
.end method
