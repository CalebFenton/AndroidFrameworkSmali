.class public final synthetic Landroid/app/AppOpsManager$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/AppOpsManager$OnOpActiveChangedListener;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:Ljava/lang/String;

.field public final synthetic blacklist f$4:I

.field public final synthetic blacklist f$5:Z

.field public final synthetic blacklist f$6:Ljava/lang/String;

.field public final synthetic blacklist f$7:I

.field public final synthetic blacklist f$8:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/AppOpsManager$OnOpActiveChangedListener;IILjava/lang/String;IZLjava/lang/String;II)V
    .registers 10

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/AppOpsManager$4$$ExternalSyntheticLambda0;->f$0:Landroid/app/AppOpsManager$OnOpActiveChangedListener;

    iput p2, p0, Landroid/app/AppOpsManager$4$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Landroid/app/AppOpsManager$4$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Landroid/app/AppOpsManager$4$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iput p5, p0, Landroid/app/AppOpsManager$4$$ExternalSyntheticLambda0;->f$4:I

    iput-boolean p6, p0, Landroid/app/AppOpsManager$4$$ExternalSyntheticLambda0;->f$5:Z

    iput-object p7, p0, Landroid/app/AppOpsManager$4$$ExternalSyntheticLambda0;->f$6:Ljava/lang/String;

    iput p8, p0, Landroid/app/AppOpsManager$4$$ExternalSyntheticLambda0;->f$7:I

    iput p9, p0, Landroid/app/AppOpsManager$4$$ExternalSyntheticLambda0;->f$8:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 10

    .line 0
    iget-object v0, p0, Landroid/app/AppOpsManager$4$$ExternalSyntheticLambda0;->f$0:Landroid/app/AppOpsManager$OnOpActiveChangedListener;

    iget v1, p0, Landroid/app/AppOpsManager$4$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Landroid/app/AppOpsManager$4$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Landroid/app/AppOpsManager$4$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iget v4, p0, Landroid/app/AppOpsManager$4$$ExternalSyntheticLambda0;->f$4:I

    iget-boolean v5, p0, Landroid/app/AppOpsManager$4$$ExternalSyntheticLambda0;->f$5:Z

    iget-object v6, p0, Landroid/app/AppOpsManager$4$$ExternalSyntheticLambda0;->f$6:Ljava/lang/String;

    iget v7, p0, Landroid/app/AppOpsManager$4$$ExternalSyntheticLambda0;->f$7:I

    iget v8, p0, Landroid/app/AppOpsManager$4$$ExternalSyntheticLambda0;->f$8:I

    invoke-static/range {v0 .. v8}, Landroid/app/AppOpsManager$4;->lambda$opActiveChanged$0(Landroid/app/AppOpsManager$OnOpActiveChangedListener;IILjava/lang/String;IZLjava/lang/String;II)V

    return-void
.end method
