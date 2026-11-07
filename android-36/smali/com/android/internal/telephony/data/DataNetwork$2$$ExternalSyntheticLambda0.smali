.class public final synthetic Lcom/android/internal/telephony/data/DataNetwork$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/DataNetwork$2;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/net/Uri;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetwork$2;ILandroid/net/Uri;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/data/DataNetwork$2;

    iput p2, p0, Lcom/android/internal/telephony/data/DataNetwork$2$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/internal/telephony/data/DataNetwork$2$$ExternalSyntheticLambda0;->f$2:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/data/DataNetwork$2;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork$2$$ExternalSyntheticLambda0;->f$1:I

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$2$$ExternalSyntheticLambda0;->f$2:Landroid/net/Uri;

    invoke-static {v0, v1, p0}, Lcom/android/internal/telephony/data/DataNetwork$2;->$r8$lambda$gtuZnWzwJ1zcyYmyh3s5yUkMGsE(Lcom/android/internal/telephony/data/DataNetwork$2;ILandroid/net/Uri;)V

    return-void
.end method
