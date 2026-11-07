.class public final synthetic Ljava/util/Comparator$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/Comparator;

.field public final synthetic blacklist f$1:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/Comparator;Ljava/util/function/Function;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/Comparator$$ExternalSyntheticLambda5;->f$0:Ljava/util/Comparator;

    iput-object p2, p0, Ljava/util/Comparator$$ExternalSyntheticLambda5;->f$1:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    .line 0
    iget-object v0, p0, Ljava/util/Comparator$$ExternalSyntheticLambda5;->f$0:Ljava/util/Comparator;

    iget-object v1, p0, Ljava/util/Comparator$$ExternalSyntheticLambda5;->f$1:Ljava/util/function/Function;

    invoke-static {v0, v1, p1, p2}, Ljava/util/Comparator;->lambda$comparing$ea9a8b3a$1(Ljava/util/Comparator;Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
