.class public final synthetic Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/DataProfileManager;

.field public final synthetic blacklist f$1:Landroid/telephony/data/DataProfile;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataProfileManager;Landroid/telephony/data/DataProfile;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda11;->f$0:Lcom/android/internal/telephony/data/DataProfileManager;

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda11;->f$1:Landroid/telephony/data/DataProfile;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda11;->f$0:Lcom/android/internal/telephony/data/DataProfileManager;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda11;->f$1:Landroid/telephony/data/DataProfile;

    check-cast p1, Landroid/telephony/data/DataProfile;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->$r8$lambda$OK0ez1EknBy8R8ahHJY0y4ksHKk(Lcom/android/internal/telephony/data/DataProfileManager;Landroid/telephony/data/DataProfile;Landroid/telephony/data/DataProfile;)Z

    move-result p0

    return p0
.end method
