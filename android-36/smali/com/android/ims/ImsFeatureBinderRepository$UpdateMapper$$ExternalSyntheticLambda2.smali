.class public final synthetic Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/ims/internal/IImsServiceFeatureCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/ims/internal/IImsServiceFeatureCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper$$ExternalSyntheticLambda2;->f$0:Lcom/android/ims/internal/IImsServiceFeatureCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper$$ExternalSyntheticLambda2;->f$0:Lcom/android/ims/internal/IImsServiceFeatureCallback;

    check-cast p1, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;

    invoke-static {v0, p1}, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->lambda$removeListener$2(Lcom/android/ims/internal/IImsServiceFeatureCallback;Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;)Z

    move-result p1

    return p1
.end method
