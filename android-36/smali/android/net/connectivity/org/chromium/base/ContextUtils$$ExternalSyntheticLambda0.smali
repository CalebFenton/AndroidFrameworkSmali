.class public final synthetic Landroid/net/connectivity/org/chromium/base/ContextUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/content/Context;

.field public final synthetic blacklist f$1:Landroid/content/SharedPreferences;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/ContextUtils$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Landroid/net/connectivity/org/chromium/base/ContextUtils$$ExternalSyntheticLambda0;->f$1:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/ContextUtils$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/ContextUtils$$ExternalSyntheticLambda0;->f$1:Landroid/content/SharedPreferences;

    invoke-static {v0, v1}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->lambda$initApplicationContextForTests$0(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    return-void
.end method
