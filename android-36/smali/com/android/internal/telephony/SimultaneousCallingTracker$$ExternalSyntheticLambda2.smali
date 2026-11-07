.class public final synthetic Lcom/android/internal/telephony/SimultaneousCallingTracker$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/SimultaneousCallingTracker;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/SimultaneousCallingTracker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/telephony/SimultaneousCallingTracker;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/telephony/SimultaneousCallingTracker;

    check-cast p1, Ljava/util/Set;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SimultaneousCallingTracker;->$r8$lambda$efWEvrywHCtmn6cdkw3IMUH0Q4s(Lcom/android/internal/telephony/SimultaneousCallingTracker;Ljava/util/Set;)V

    return-void
.end method
