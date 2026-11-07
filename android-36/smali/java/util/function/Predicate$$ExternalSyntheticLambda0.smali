.class public final synthetic Ljava/util/function/Predicate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/Predicate;

.field public final synthetic blacklist f$1:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/Predicate$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Predicate;

    iput-object p2, p0, Ljava/util/function/Predicate$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    iget-object v0, p0, Ljava/util/function/Predicate$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Predicate;

    iget-object v1, p0, Ljava/util/function/Predicate$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Predicate;

    invoke-static {v0, v1, p1}, Ljava/util/function/Predicate;->$r8$lambda$5t44llxMa89E83y7-wwPDlGiDQo(Ljava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
