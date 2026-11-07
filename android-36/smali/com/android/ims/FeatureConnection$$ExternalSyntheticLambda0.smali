.class public final synthetic Lcom/android/ims/FeatureConnection$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/ims/FeatureConnection;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/ims/FeatureConnection;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/FeatureConnection$$ExternalSyntheticLambda0;->f$0:Lcom/android/ims/FeatureConnection;

    return-void
.end method


# virtual methods
.method public final whitelist binderDied()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/ims/FeatureConnection$$ExternalSyntheticLambda0;->f$0:Lcom/android/ims/FeatureConnection;

    invoke-static {v0}, Lcom/android/ims/FeatureConnection;->$r8$lambda$30G9N4_zGFoaxWOvgjvOjPeZt2E(Lcom/android/ims/FeatureConnection;)V

    return-void
.end method
