.class public final synthetic Landroid/app/appsearch/AppSearchSession$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist $r8$classId:I

.field public final synthetic blacklist f$0:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/Consumer;I)V
    .registers 3

    .line 1
    iput p2, p0, Landroid/app/appsearch/AppSearchSession$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroid/app/appsearch/AppSearchSession$$ExternalSyntheticLambda4;->f$0:Ljava/util/function/Consumer;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 1
    iget v0, p0, Landroid/app/appsearch/AppSearchSession$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Landroid/app/appsearch/AppSearchSession$$ExternalSyntheticLambda4;->f$0:Ljava/util/function/Consumer;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_10

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Landroid/app/appsearch/AppSearchSession;->$r8$lambda$54fMVLT_fezkWV4z_BL90xBeLbk(Ljava/util/function/Consumer;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_b
    invoke-static {p0}, Landroid/app/appsearch/AppSearchSession;->$r8$lambda$-BjMD4HT8Po541eH1Pgr2Rro5qc(Ljava/util/function/Consumer;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    nop

    .line 17
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_b
    .end packed-switch
.end method
