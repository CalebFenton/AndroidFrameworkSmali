.class public final synthetic Lcom/android/internal/telephony/security/NullCipherNotifier$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/security/NullCipherNotifier;

.field public final synthetic blacklist f$1:Z

.field public final synthetic blacklist f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/security/NullCipherNotifier;ZLandroid/content/Context;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/security/NullCipherNotifier$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/telephony/security/NullCipherNotifier;

    iput-boolean p2, p0, Lcom/android/internal/telephony/security/NullCipherNotifier$$ExternalSyntheticLambda2;->f$1:Z

    iput-object p3, p0, Lcom/android/internal/telephony/security/NullCipherNotifier$$ExternalSyntheticLambda2;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/security/NullCipherNotifier$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/telephony/security/NullCipherNotifier;

    iget-boolean v1, p0, Lcom/android/internal/telephony/security/NullCipherNotifier$$ExternalSyntheticLambda2;->f$1:Z

    iget-object p0, p0, Lcom/android/internal/telephony/security/NullCipherNotifier$$ExternalSyntheticLambda2;->f$2:Landroid/content/Context;

    invoke-static {v0, v1, p0}, Lcom/android/internal/telephony/security/NullCipherNotifier;->$r8$lambda$4B32554C5Dd59TcPXhufJFri7Jw(Lcom/android/internal/telephony/security/NullCipherNotifier;ZLandroid/content/Context;)V

    return-void
.end method
