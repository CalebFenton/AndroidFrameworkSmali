.class public final synthetic Landroid/util/DebugUtils$$ExternalSyntheticLambda0;
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

    iput-object p1, p0, Landroid/util/DebugUtils$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/util/DebugUtils$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Class;

    check-cast p1, Ljava/lang/StackTraceElement;

    invoke-static {v0, p1}, Landroid/util/DebugUtils;->lambda$callersWithin$0(Ljava/lang/Class;Ljava/lang/StackTraceElement;)Z

    move-result p1

    return p1
.end method
