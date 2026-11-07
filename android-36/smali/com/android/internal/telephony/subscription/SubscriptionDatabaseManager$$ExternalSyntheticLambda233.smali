.class public final synthetic Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda233;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda233;->f$0:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    iput p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda233;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda233;->f$0:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda233;->f$1:I

    invoke-static {v0, p0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->$r8$lambda$9xjbwcqkE8t6EZ4Q_Vh2d8IXZLI(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;I)V

    return-void
.end method
