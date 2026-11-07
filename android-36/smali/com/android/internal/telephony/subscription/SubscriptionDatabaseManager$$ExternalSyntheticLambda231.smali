.class public final synthetic Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda231;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Z

.field public final synthetic blacklist f$3:Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

.field public final synthetic blacklist f$4:Ljava/lang/String;

.field public final synthetic blacklist f$5:Ljava/lang/Object;

.field public final synthetic blacklist f$6:Ljava/util/function/BiFunction;

.field public final synthetic blacklist f$7:Landroid/content/ContentValues;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;IZLcom/android/internal/telephony/subscription/SubscriptionInfoInternal;Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;Landroid/content/ContentValues;)V
    .registers 9

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda231;->f$0:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    iput p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda231;->f$1:I

    iput-boolean p3, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda231;->f$2:Z

    iput-object p4, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda231;->f$3:Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    iput-object p5, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda231;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda231;->f$5:Ljava/lang/Object;

    iput-object p7, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda231;->f$6:Ljava/util/function/BiFunction;

    iput-object p8, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda231;->f$7:Landroid/content/ContentValues;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 13

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda231;->f$0:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda231;->f$1:I

    iget-boolean v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda231;->f$2:Z

    iget-object v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda231;->f$3:Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    iget-object v4, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda231;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda231;->f$5:Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda231;->f$6:Ljava/util/function/BiFunction;

    iget-object v7, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda231;->f$7:Landroid/content/ContentValues;

    move-object v8, p1

    check-cast v8, Ljava/lang/Integer;

    move-object v9, p2

    check-cast v9, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    invoke-static/range {v0 .. v9}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->$r8$lambda$uFmcp_ZwUqTyVq6DkcHXAvJobAM(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;IZLcom/android/internal/telephony/subscription/SubscriptionInfoInternal;Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;Landroid/content/ContentValues;Ljava/lang/Integer;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V

    return-void
.end method
