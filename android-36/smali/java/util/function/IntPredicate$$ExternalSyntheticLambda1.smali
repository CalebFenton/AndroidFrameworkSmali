.class public final synthetic Ljava/util/function/IntPredicate$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/IntPredicate;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/IntPredicate;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/IntPredicate$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/IntPredicate;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(I)Z
    .registers 3

    .line 0
    iget-object v0, p0, Ljava/util/function/IntPredicate$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/IntPredicate;

    invoke-static {v0, p1}, Ljava/util/function/IntPredicate;->$r8$lambda$yd-2pCPt1jbVp9VarWyLmCm3t68(Ljava/util/function/IntPredicate;I)Z

    move-result p1

    return p1
.end method
