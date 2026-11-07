.class public final synthetic Landroid/app/AppOpsManager$6$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:I

.field public final synthetic blacklist f$1:Landroid/app/AppOpsManager$OnOpNotedListener;

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:Ljava/lang/String;

.field public final synthetic blacklist f$4:Ljava/lang/String;

.field public final synthetic blacklist f$5:I

.field public final synthetic blacklist f$6:I

.field public final synthetic blacklist f$7:I


# direct methods
.method public synthetic constructor blacklist <init>(ILandroid/app/AppOpsManager$OnOpNotedListener;ILjava/lang/String;Ljava/lang/String;III)V
    .registers 9

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/AppOpsManager$6$$ExternalSyntheticLambda0;->f$0:I

    iput-object p2, p0, Landroid/app/AppOpsManager$6$$ExternalSyntheticLambda0;->f$1:Landroid/app/AppOpsManager$OnOpNotedListener;

    iput p3, p0, Landroid/app/AppOpsManager$6$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Landroid/app/AppOpsManager$6$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iput-object p5, p0, Landroid/app/AppOpsManager$6$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    iput p6, p0, Landroid/app/AppOpsManager$6$$ExternalSyntheticLambda0;->f$5:I

    iput p7, p0, Landroid/app/AppOpsManager$6$$ExternalSyntheticLambda0;->f$6:I

    iput p8, p0, Landroid/app/AppOpsManager$6$$ExternalSyntheticLambda0;->f$7:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 9

    .line 0
    iget v0, p0, Landroid/app/AppOpsManager$6$$ExternalSyntheticLambda0;->f$0:I

    iget-object v1, p0, Landroid/app/AppOpsManager$6$$ExternalSyntheticLambda0;->f$1:Landroid/app/AppOpsManager$OnOpNotedListener;

    iget v2, p0, Landroid/app/AppOpsManager$6$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Landroid/app/AppOpsManager$6$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/AppOpsManager$6$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    iget v5, p0, Landroid/app/AppOpsManager$6$$ExternalSyntheticLambda0;->f$5:I

    iget v6, p0, Landroid/app/AppOpsManager$6$$ExternalSyntheticLambda0;->f$6:I

    iget v7, p0, Landroid/app/AppOpsManager$6$$ExternalSyntheticLambda0;->f$7:I

    invoke-static/range {v0 .. v7}, Landroid/app/AppOpsManager$6;->lambda$opNoted$0(ILandroid/app/AppOpsManager$OnOpNotedListener;ILjava/lang/String;Ljava/lang/String;III)V

    return-void
.end method
