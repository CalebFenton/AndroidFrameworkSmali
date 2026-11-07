.class public final synthetic Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda65;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/TelephonyNetworkRequest;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda65;->f$0:Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(I)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda65;->f$0:Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasTransport(I)Z

    move-result p0

    return p0
.end method
