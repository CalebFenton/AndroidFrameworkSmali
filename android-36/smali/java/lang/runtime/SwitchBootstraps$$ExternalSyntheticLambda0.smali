.class public final synthetic Ljava/lang/runtime/SwitchBootstraps$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/invoke/MethodHandles$Lookup;

.field public final synthetic blacklist f$1:Ljava/lang/Class;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/Class;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/lang/runtime/SwitchBootstraps$$ExternalSyntheticLambda0;->f$0:Ljava/lang/invoke/MethodHandles$Lookup;

    iput-object p2, p0, Ljava/lang/runtime/SwitchBootstraps$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Ljava/lang/runtime/SwitchBootstraps$$ExternalSyntheticLambda0;->f$0:Ljava/lang/invoke/MethodHandles$Lookup;

    iget-object v1, p0, Ljava/lang/runtime/SwitchBootstraps$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Class;

    invoke-static {v0, v1, p1}, Ljava/lang/runtime/SwitchBootstraps;->lambda$enumSwitch$0(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
