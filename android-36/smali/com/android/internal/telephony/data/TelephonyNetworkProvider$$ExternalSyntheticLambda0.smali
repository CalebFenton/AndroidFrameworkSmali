.class public final synthetic Lcom/android/internal/telephony/data/TelephonyNetworkProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/Phone;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/IndentingPrintWriter;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/IndentingPrintWriter;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/Phone;

    iput-object p2, p0, Lcom/android/internal/telephony/data/TelephonyNetworkProvider$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/telephony/IndentingPrintWriter;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/Phone;

    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkProvider$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/telephony/IndentingPrintWriter;

    check-cast p1, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;->$r8$lambda$vgCcHwlxJT6up-FtT2xxYyXUtDc(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/IndentingPrintWriter;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Ljava/lang/Integer;)V

    return-void
.end method
