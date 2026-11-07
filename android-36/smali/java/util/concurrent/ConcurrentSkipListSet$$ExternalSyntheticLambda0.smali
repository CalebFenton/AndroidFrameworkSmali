.class public final synthetic Ljava/util/concurrent/ConcurrentSkipListSet$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/security/PrivilegedAction;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Ljava/util/concurrent/ConcurrentSkipListSet;->lambda$setMap$0()Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method
