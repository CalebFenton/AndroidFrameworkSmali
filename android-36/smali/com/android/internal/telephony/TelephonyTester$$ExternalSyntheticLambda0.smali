.class public final synthetic Lcom/android/internal/telephony/TelephonyTester$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyTester$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyTester$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/android/internal/telephony/Connection;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/TelephonyTester;->$r8$lambda$KGxDCLQH6kyBChiKk9v35dYE5W4(Ljava/lang/String;Lcom/android/internal/telephony/Connection;)V

    return-void
.end method
