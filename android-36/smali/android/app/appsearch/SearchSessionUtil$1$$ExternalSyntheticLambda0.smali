.class public final synthetic Landroid/app/appsearch/SearchSessionUtil$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist $r8$classId:I

.field public final synthetic blacklist f$0:Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;

.field public final synthetic blacklist f$1:Landroid/app/appsearch/BatchResultCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;Landroid/app/appsearch/BatchResultCallback;I)V
    .registers 4

    .line 1
    iput p3, p0, Landroid/app/appsearch/SearchSessionUtil$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroid/app/appsearch/SearchSessionUtil$1$$ExternalSyntheticLambda0;->f$0:Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;

    .line 4
    .line 5
    iput-object p2, p0, Landroid/app/appsearch/SearchSessionUtil$1$$ExternalSyntheticLambda0;->f$1:Landroid/app/appsearch/BatchResultCallback;

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
    iget v0, p0, Landroid/app/appsearch/SearchSessionUtil$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_1a

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/app/appsearch/SearchSessionUtil$1$$ExternalSyntheticLambda0;->f$0:Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;

    .line 7
    .line 8
    check-cast v0, Landroid/app/appsearch/aidl/AppSearchResultParcel;

    .line 9
    .line 10
    iget-object p0, p0, Landroid/app/appsearch/SearchSessionUtil$1$$ExternalSyntheticLambda0;->f$1:Landroid/app/appsearch/BatchResultCallback;

    .line 11
    .line 12
    invoke-static {v0, p0}, Landroid/app/appsearch/SearchSessionUtil$1;->$r8$lambda$JE8V27NZyieJ6HvfVwvaskDH0fU(Landroid/app/appsearch/aidl/AppSearchResultParcel;Landroid/app/appsearch/BatchResultCallback;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_f
    iget-object v0, p0, Landroid/app/appsearch/SearchSessionUtil$1$$ExternalSyntheticLambda0;->f$0:Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;

    .line 17
    .line 18
    check-cast v0, Landroid/app/appsearch/aidl/AppSearchBatchResultParcel;

    .line 19
    .line 20
    iget-object p0, p0, Landroid/app/appsearch/SearchSessionUtil$1$$ExternalSyntheticLambda0;->f$1:Landroid/app/appsearch/BatchResultCallback;

    .line 21
    .line 22
    invoke-static {p0, v0}, Landroid/app/appsearch/SearchSessionUtil$1;->$r8$lambda$CEk3q8sDAQVhU3rQwVueB8FAj_M(Landroid/app/appsearch/BatchResultCallback;Landroid/app/appsearch/aidl/AppSearchBatchResultParcel;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_f
    .end packed-switch
.end method
