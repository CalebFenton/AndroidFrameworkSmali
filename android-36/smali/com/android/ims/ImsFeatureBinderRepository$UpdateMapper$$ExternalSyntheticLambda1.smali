.class public final synthetic Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper$$ExternalSyntheticLambda1;->f$0:Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;

    iput p2, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper$$ExternalSyntheticLambda1;->f$0:Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;

    iget v1, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper$$ExternalSyntheticLambda1;->f$1:I

    check-cast p1, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;

    invoke-static {v0, v1, p1}, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->$r8$lambda$EgFz-ETaAqqtwL-hnF7MESUM3BA(Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;ILcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;)V

    return-void
.end method
