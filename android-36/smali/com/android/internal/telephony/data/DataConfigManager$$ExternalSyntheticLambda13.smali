.class public final synthetic Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/DataConfigManager;

.field public final synthetic blacklist f$1:Z


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataConfigManager;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda13;->f$0:Lcom/android/internal/telephony/data/DataConfigManager;

    iput-boolean p2, p0, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda13;->f$1:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda13;->f$0:Lcom/android/internal/telephony/data/DataConfigManager;

    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda13;->f$1:Z

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/data/DataConfigManager;->$r8$lambda$Pcm3R0WNyhizvq9ApBLffAzVe30(Lcom/android/internal/telephony/data/DataConfigManager;ZLjava/lang/Integer;)Z

    move-result p0

    return p0
.end method
