.class public final synthetic Lcom/android/internal/telephony/data/PhoneSwitcher$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneSwitcherCallback;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneSwitcherCallback;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$$ExternalSyntheticLambda6;->f$0:Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneSwitcherCallback;

    iput p2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$$ExternalSyntheticLambda6;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$$ExternalSyntheticLambda6;->f$0:Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneSwitcherCallback;

    iget p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$$ExternalSyntheticLambda6;->f$1:I

    invoke-static {v0, p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->$r8$lambda$sXdIfhOBEPi5HsBeztaOjxCxW6U(Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneSwitcherCallback;I)V

    return-void
.end method
