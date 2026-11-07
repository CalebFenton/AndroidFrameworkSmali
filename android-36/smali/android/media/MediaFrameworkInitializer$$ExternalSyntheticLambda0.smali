.class public final synthetic Landroid/media/MediaFrameworkInitializer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist createService(Landroid/content/Context;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {p1}, Landroid/media/MediaFrameworkInitializer;->$r8$lambda$SUKfm4D8oWYZt4CmFnu2zwSlu9w(Landroid/content/Context;)Landroid/media/MediaTranscodingManager;

    move-result-object p0

    return-object p0
.end method
