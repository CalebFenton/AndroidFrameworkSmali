.class public final synthetic Landroid/app/appsearch/AppSearchSession$4$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist $r8$classId:I

.field public final synthetic blacklist f$0:Landroid/app/appsearch/BatchResultCallback;

.field public final synthetic blacklist f$1:Landroid/app/appsearch/aidl/AppSearchBatchResultParcel;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/appsearch/BatchResultCallback;Landroid/app/appsearch/aidl/AppSearchBatchResultParcel;I)V
    .registers 4

    .line 1
    iput p3, p0, Landroid/app/appsearch/AppSearchSession$4$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroid/app/appsearch/AppSearchSession$4$$ExternalSyntheticLambda1;->f$0:Landroid/app/appsearch/BatchResultCallback;

    .line 4
    .line 5
    iput-object p2, p0, Landroid/app/appsearch/AppSearchSession$4$$ExternalSyntheticLambda1;->f$1:Landroid/app/appsearch/aidl/AppSearchBatchResultParcel;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 1
    iget v0, p0, Landroid/app/appsearch/AppSearchSession$4$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_16

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/app/appsearch/AppSearchSession$4$$ExternalSyntheticLambda1;->f$0:Landroid/app/appsearch/BatchResultCallback;

    .line 7
    .line 8
    iget-object p0, p0, Landroid/app/appsearch/AppSearchSession$4$$ExternalSyntheticLambda1;->f$1:Landroid/app/appsearch/aidl/AppSearchBatchResultParcel;

    .line 9
    .line 10
    invoke-static {v0, p0}, Landroid/app/appsearch/AppSearchSession$12;->$r8$lambda$BeZpKDQNwochAkbBnoQeQaHDKK0(Landroid/app/appsearch/BatchResultCallback;Landroid/app/appsearch/aidl/AppSearchBatchResultParcel;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_d
    iget-object v0, p0, Landroid/app/appsearch/AppSearchSession$4$$ExternalSyntheticLambda1;->f$0:Landroid/app/appsearch/BatchResultCallback;

    .line 15
    .line 16
    iget-object p0, p0, Landroid/app/appsearch/AppSearchSession$4$$ExternalSyntheticLambda1;->f$1:Landroid/app/appsearch/aidl/AppSearchBatchResultParcel;

    .line 17
    .line 18
    invoke-static {v0, p0}, Landroid/app/appsearch/AppSearchSession$4;->$r8$lambda$IqQVes_jKx-JTNiY0lvo6362Afw(Landroid/app/appsearch/BatchResultCallback;Landroid/app/appsearch/aidl/AppSearchBatchResultParcel;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method
