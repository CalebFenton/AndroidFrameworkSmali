.class public final synthetic Lcom/android/internal/telephony/CellBroadcastConfigTracker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/List;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    check-cast p1, Landroid/telephony/CellBroadcastIdRange;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->$r8$lambda$kUUshudH8818dlh5hrjs-8GC8ZA(Ljava/util/List;Landroid/telephony/CellBroadcastIdRange;)V

    return-void
.end method
