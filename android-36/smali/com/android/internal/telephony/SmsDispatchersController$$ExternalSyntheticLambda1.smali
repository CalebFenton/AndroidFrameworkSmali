.class public final synthetic Lcom/android/internal/telephony/SmsDispatchersController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/SmsDispatchersController;

.field public final synthetic blacklist f$1:Ljava/lang/String;

.field public final synthetic blacklist f$2:Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;

.field public final synthetic blacklist f$3:Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/SmsDispatchersController;Ljava/lang/String;Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/telephony/SmsDispatchersController;

    iput-object p2, p0, Lcom/android/internal/telephony/SmsDispatchersController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/telephony/SmsDispatchersController$$ExternalSyntheticLambda1;->f$2:Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;

    iput-object p4, p0, Lcom/android/internal/telephony/SmsDispatchersController$$ExternalSyntheticLambda1;->f$3:Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/telephony/SmsDispatchersController;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsDispatchersController$$ExternalSyntheticLambda1;->f$2:Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;

    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController$$ExternalSyntheticLambda1;->f$3:Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->$r8$lambda$9IZlH3lMqlk8Dga9zlxh4j1pmL4(Lcom/android/internal/telephony/SmsDispatchersController;Ljava/lang/String;Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;Ljava/lang/Integer;)V

    return-void
.end method
