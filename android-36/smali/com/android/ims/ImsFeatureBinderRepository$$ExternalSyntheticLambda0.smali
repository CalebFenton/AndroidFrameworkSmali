.class public final synthetic Lcom/android/ims/ImsFeatureBinderRepository$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:I

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(II)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/ims/ImsFeatureBinderRepository$$ExternalSyntheticLambda0;->f$0:I

    iput p2, p0, Lcom/android/ims/ImsFeatureBinderRepository$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    iget v0, p0, Lcom/android/ims/ImsFeatureBinderRepository$$ExternalSyntheticLambda0;->f$0:I

    iget v1, p0, Lcom/android/ims/ImsFeatureBinderRepository$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;

    invoke-static {v0, v1, p1}, Lcom/android/ims/ImsFeatureBinderRepository;->lambda$getUpdateMapper$0(IILcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;)Z

    move-result p1

    return p1
.end method
