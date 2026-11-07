.class public final synthetic Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda44;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda44;->f$0:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda44;->f$0:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->$r8$lambda$6SMw0FrEsILe8qSLbi1l_fv99kw(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;Ljava/lang/Integer;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V

    return-void
.end method
