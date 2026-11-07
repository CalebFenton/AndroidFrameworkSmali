.class public final synthetic Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;

.field public final synthetic blacklist f$1:J


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;J)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer$$ExternalSyntheticLambda3;->f$0:Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;

    iput-wide p2, p0, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer$$ExternalSyntheticLambda3;->f$1:J

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer$$ExternalSyntheticLambda3;->f$0:Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;

    iget-wide v1, p0, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer$$ExternalSyntheticLambda3;->f$1:J

    invoke-static {v0, v1, v2}, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;->$r8$lambda$eK4vA-RbGQTJ1gQLNAw3yQrMoDM(Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;J)V

    return-void
.end method
