.class public final synthetic Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda9;->f$0:Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda9;->f$0:Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    check-cast p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method
