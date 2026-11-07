.class public final synthetic Lcom/android/internal/telephony/subscription/SubscriptionManagerService$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:I


# direct methods
.method public synthetic constructor blacklist <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$4$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$4$$ExternalSyntheticLambda0;->f$0:I

    check-cast p1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$4;->$r8$lambda$Xc_i5bR5U5dr146DO8TT7jEx4h8(ILcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;)V

    return-void
.end method
