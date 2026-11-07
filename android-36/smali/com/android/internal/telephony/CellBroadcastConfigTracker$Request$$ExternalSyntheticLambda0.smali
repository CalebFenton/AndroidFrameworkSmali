.class public final synthetic Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;

    check-cast p1, Landroid/telephony/CellBroadcastIdRange;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;->$r8$lambda$9iEFhud5RlT9TEkXKyTZPxo4P-w(Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;Landroid/telephony/CellBroadcastIdRange;)V

    return-void
.end method
