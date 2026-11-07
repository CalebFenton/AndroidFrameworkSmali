.class public final synthetic Ljava/util/function/Predicate$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/Predicate;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/Predicate$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Ljava/util/function/Predicate$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/Predicate;

    invoke-static {v0, p1}, Ljava/util/function/Predicate;->$r8$lambda$Co9d014x49fK3ObcE_cQWYd-iOc(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
