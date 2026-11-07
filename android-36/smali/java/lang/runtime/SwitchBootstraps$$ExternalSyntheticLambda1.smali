.class public final synthetic Ljava/lang/runtime/SwitchBootstraps$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/Class;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/Class;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/lang/runtime/SwitchBootstraps$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Ljava/lang/runtime/SwitchBootstraps$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/runtime/SwitchBootstraps;->lambda$enumSwitch$1(Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
