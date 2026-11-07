.class public final synthetic Lcom/android/internal/telephony/SmsDispatchersController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    check-cast p1, Landroid/telephony/emergency/EmergencyNumber;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->$r8$lambda$rgEYpP7iDWqwKeOuykQAvVPrVwg(Ljava/lang/String;Landroid/telephony/emergency/EmergencyNumber;)Z

    move-result p0

    return p0
.end method
