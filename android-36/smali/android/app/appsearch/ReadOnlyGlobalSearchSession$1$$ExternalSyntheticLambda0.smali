.class public final synthetic Landroid/app/appsearch/ReadOnlyGlobalSearchSession$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist $r8$classId:I

.field public final synthetic blacklist f$0:Landroid/app/appsearch/AppSearchResult;

.field public final synthetic blacklist f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/appsearch/AppSearchResult;Ljava/util/function/Consumer;)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession$1$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession$1$$ExternalSyntheticLambda0;->f$0:Landroid/app/appsearch/AppSearchResult;

    iput-object p2, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession$1$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    return-void
.end method

.method public synthetic constructor blacklist <init>(Ljava/util/function/Consumer;Landroid/app/appsearch/AppSearchResult;I)V
    .registers 4

    .line 2
    iput p3, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession$1$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    iput-object p2, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession$1$$ExternalSyntheticLambda0;->f$0:Landroid/app/appsearch/AppSearchResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 1
    iget v0, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_1e

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession$1$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    .line 7
    .line 8
    iget-object p0, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession$1$$ExternalSyntheticLambda0;->f$0:Landroid/app/appsearch/AppSearchResult;

    .line 9
    .line 10
    invoke-static {p0, v0}, Landroid/app/appsearch/ReadOnlyGlobalSearchSession$3;->$r8$lambda$4a4Y4MS6xeh5JvjLBhrH1KZ94kA(Landroid/app/appsearch/AppSearchResult;Ljava/util/function/Consumer;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_d
    iget-object v0, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession$1$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    .line 15
    .line 16
    iget-object p0, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession$1$$ExternalSyntheticLambda0;->f$0:Landroid/app/appsearch/AppSearchResult;

    .line 17
    .line 18
    invoke-static {p0, v0}, Landroid/app/appsearch/ReadOnlyGlobalSearchSession$2;->$r8$lambda$2_lM8ypshulUEdT_mmjHdxY7tsg(Landroid/app/appsearch/AppSearchResult;Ljava/util/function/Consumer;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_15
    iget-object v0, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession$1$$ExternalSyntheticLambda0;->f$0:Landroid/app/appsearch/AppSearchResult;

    .line 23
    .line 24
    iget-object p0, p0, Landroid/app/appsearch/ReadOnlyGlobalSearchSession$1$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    .line 25
    .line 26
    invoke-static {v0, p0}, Landroid/app/appsearch/ReadOnlyGlobalSearchSession$1;->$r8$lambda$evKo_E5jAumBb_6B0acGsjJR8t4(Landroid/app/appsearch/AppSearchResult;Ljava/util/function/Consumer;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_15
        :pswitch_d
    .end packed-switch
.end method
