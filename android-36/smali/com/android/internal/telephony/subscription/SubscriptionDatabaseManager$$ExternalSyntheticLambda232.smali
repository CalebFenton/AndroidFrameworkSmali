.class public final synthetic Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda232;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/content/ContentValues;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;ILandroid/content/ContentValues;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda232;->f$0:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    iput p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda232;->f$1:I

    iput-object p3, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda232;->f$2:Landroid/content/ContentValues;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda232;->f$0:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda232;->f$1:I

    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda232;->f$2:Landroid/content/ContentValues;

    invoke-static {v0, v1, p0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->$r8$lambda$KgSES8pz5Y6qvSemNC6VsN6y4Ug(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;ILandroid/content/ContentValues;)V

    return-void
.end method
