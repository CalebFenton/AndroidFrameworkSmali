.class public final synthetic Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda43;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda43;->f$0:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    iput-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda43;->f$1:Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda43;->f$0:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda43;->f$1:Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    invoke-static {v0, p0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->$r8$lambda$VVXvDmib5td0qdHpZQZEs9_nwi4(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V

    return-void
.end method
