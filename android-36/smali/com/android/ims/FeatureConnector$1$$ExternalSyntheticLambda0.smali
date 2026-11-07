.class public final synthetic Lcom/android/ims/FeatureConnector$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/ims/FeatureConnector$1;

.field public final synthetic blacklist f$1:Z

.field public final synthetic blacklist f$2:Lcom/android/ims/FeatureUpdates;

.field public final synthetic blacklist f$3:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/ims/FeatureConnector$1;ZLcom/android/ims/FeatureUpdates;I)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/FeatureConnector$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/ims/FeatureConnector$1;

    iput-boolean p2, p0, Lcom/android/ims/FeatureConnector$1$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lcom/android/ims/FeatureConnector$1$$ExternalSyntheticLambda0;->f$2:Lcom/android/ims/FeatureUpdates;

    iput p4, p0, Lcom/android/ims/FeatureConnector$1$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/ims/FeatureConnector$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/ims/FeatureConnector$1;

    iget-boolean v1, p0, Lcom/android/ims/FeatureConnector$1$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v2, p0, Lcom/android/ims/FeatureConnector$1$$ExternalSyntheticLambda0;->f$2:Lcom/android/ims/FeatureUpdates;

    iget v3, p0, Lcom/android/ims/FeatureConnector$1$$ExternalSyntheticLambda0;->f$3:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/ims/FeatureConnector$1;->$r8$lambda$p0EOPbPqDT84Dn4uBMLlTHV-hiY(Lcom/android/ims/FeatureConnector$1;ZLcom/android/ims/FeatureUpdates;I)V

    return-void
.end method
