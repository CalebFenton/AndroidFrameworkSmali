.class public final synthetic Landroid/net/connectivity/org/chromium/base/FeatureList$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/FeatureList$$ExternalSyntheticLambda1;->f$0:Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/FeatureList$$ExternalSyntheticLambda1;->f$0:Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/FeatureList;->lambda$setTestValues$1(Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;)V

    return-void
.end method
