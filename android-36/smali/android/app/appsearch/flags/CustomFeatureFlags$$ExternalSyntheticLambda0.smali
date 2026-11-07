.class public final synthetic Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist $r8$classId:I


# direct methods
.method public synthetic constructor blacklist <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    iget p0, p0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    check-cast p1, Landroid/app/appsearch/flags/FeatureFlags;

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_c

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    return p0

    .line 10
    :pswitch_9
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    nop

    .line 13
    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method
