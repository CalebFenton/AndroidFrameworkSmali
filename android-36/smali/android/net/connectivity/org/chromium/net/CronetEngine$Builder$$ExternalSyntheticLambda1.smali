.class public final synthetic Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/net/connectivity/org/chromium/net/ExperimentalOptionsTranslator$JsonPatch;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder$$ExternalSyntheticLambda1;->f$0:Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;

    return-void
.end method


# virtual methods
.method public final blacklist applyTo(Lorg/json/JSONObject;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder$$ExternalSyntheticLambda1;->f$0:Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;

    invoke-static {v0, p1}, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->lambda$setConnectionMigrationOptions$2(Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;Lorg/json/JSONObject;)V

    return-void
.end method
