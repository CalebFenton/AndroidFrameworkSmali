.class public final synthetic Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/data/DataProfile;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/data/DataProfile;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda7;->f$0:Landroid/telephony/data/DataProfile;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda7;->f$0:Landroid/telephony/data/DataProfile;

    check-cast p1, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->$r8$lambda$SUzh3cjg4p6V2NnAli9plZQJEIw(Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;)Z

    move-result p0

    return p0
.end method
