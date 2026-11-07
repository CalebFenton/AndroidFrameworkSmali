.class public final synthetic Lcom/android/ims/FeatureConnection$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/ims/FeatureConnection;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/ims/FeatureConnection;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/FeatureConnection$$ExternalSyntheticLambda1;->f$0:Lcom/android/ims/FeatureConnection;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/ims/FeatureConnection$$ExternalSyntheticLambda1;->f$0:Lcom/android/ims/FeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/FeatureConnection;->onRemovedOrDied()V

    return-void
.end method
