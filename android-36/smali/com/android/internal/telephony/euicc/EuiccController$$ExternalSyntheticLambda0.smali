.class public final synthetic Lcom/android/internal/telephony/euicc/EuiccController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/euicc/EuiccController;

.field public final synthetic blacklist f$1:Z

.field public final synthetic blacklist f$2:Ljava/lang/String;

.field public final synthetic blacklist f$3:I

.field public final synthetic blacklist f$4:Ljava/util/Set;

.field public final synthetic blacklist f$5:Landroid/app/PendingIntent;

.field public final synthetic blacklist f$6:I

.field public final synthetic blacklist f$7:Landroid/content/Intent;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/euicc/EuiccController;ZLjava/lang/String;ILjava/util/Set;Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    .registers 9

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccController$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iput-boolean p2, p0, Lcom/android/internal/telephony/euicc/EuiccController$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lcom/android/internal/telephony/euicc/EuiccController$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/internal/telephony/euicc/EuiccController$$ExternalSyntheticLambda0;->f$3:I

    iput-object p5, p0, Lcom/android/internal/telephony/euicc/EuiccController$$ExternalSyntheticLambda0;->f$4:Ljava/util/Set;

    iput-object p6, p0, Lcom/android/internal/telephony/euicc/EuiccController$$ExternalSyntheticLambda0;->f$5:Landroid/app/PendingIntent;

    iput p7, p0, Lcom/android/internal/telephony/euicc/EuiccController$$ExternalSyntheticLambda0;->f$6:I

    iput-object p8, p0, Lcom/android/internal/telephony/euicc/EuiccController$$ExternalSyntheticLambda0;->f$7:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 9

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-boolean v1, p0, Lcom/android/internal/telephony/euicc/EuiccController$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/telephony/euicc/EuiccController$$ExternalSyntheticLambda0;->f$3:I

    iget-object v4, p0, Lcom/android/internal/telephony/euicc/EuiccController$$ExternalSyntheticLambda0;->f$4:Ljava/util/Set;

    iget-object v5, p0, Lcom/android/internal/telephony/euicc/EuiccController$$ExternalSyntheticLambda0;->f$5:Landroid/app/PendingIntent;

    iget v6, p0, Lcom/android/internal/telephony/euicc/EuiccController$$ExternalSyntheticLambda0;->f$6:I

    iget-object v7, p0, Lcom/android/internal/telephony/euicc/EuiccController$$ExternalSyntheticLambda0;->f$7:Landroid/content/Intent;

    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccController;->$r8$lambda$wD78xg3eBWQ4X-Tx-24iyfh0Ars(Lcom/android/internal/telephony/euicc/EuiccController;ZLjava/lang/String;ILjava/util/Set;Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void
.end method
