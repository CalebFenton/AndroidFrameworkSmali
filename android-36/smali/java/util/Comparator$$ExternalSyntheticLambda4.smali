.class public final synthetic Ljava/util/Comparator$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/ToLongFunction;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/ToLongFunction;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/Comparator$$ExternalSyntheticLambda4;->f$0:Ljava/util/function/ToLongFunction;

    return-void
.end method


# virtual methods
.method public final whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 0
    iget-object v0, p0, Ljava/util/Comparator$$ExternalSyntheticLambda4;->f$0:Ljava/util/function/ToLongFunction;

    invoke-static {v0, p1, p2}, Ljava/util/Comparator;->lambda$comparingLong$6043328a$1(Ljava/util/function/ToLongFunction;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
