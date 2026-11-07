.class public final synthetic Lcom/android/internal/telephony/security/NullCipherNotifier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/security/NullCipherNotifier;

.field public final synthetic blacklist f$1:Landroid/content/Context;

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/security/NullCipherNotifier;Landroid/content/Context;II)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/security/NullCipherNotifier$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/security/NullCipherNotifier;

    iput-object p2, p0, Lcom/android/internal/telephony/security/NullCipherNotifier$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput p3, p0, Lcom/android/internal/telephony/security/NullCipherNotifier$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Lcom/android/internal/telephony/security/NullCipherNotifier$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/security/NullCipherNotifier$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/security/NullCipherNotifier;

    iget-object v1, p0, Lcom/android/internal/telephony/security/NullCipherNotifier$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/telephony/security/NullCipherNotifier$$ExternalSyntheticLambda0;->f$2:I

    iget p0, p0, Lcom/android/internal/telephony/security/NullCipherNotifier$$ExternalSyntheticLambda0;->f$3:I

    invoke-static {v0, v1, v2, p0}, Lcom/android/internal/telephony/security/NullCipherNotifier;->$r8$lambda$7hwagOlxHrMTdSxeMalrMGEZ5xA(Lcom/android/internal/telephony/security/NullCipherNotifier;Landroid/content/Context;II)V

    return-void
.end method
