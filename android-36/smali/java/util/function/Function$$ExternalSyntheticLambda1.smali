.class public final synthetic Ljava/util/function/Function$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/Function;

.field public final synthetic blacklist f$1:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/Function;Ljava/util/function/Function;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/Function$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/Function;

    iput-object p2, p0, Ljava/util/function/Function$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Ljava/util/function/Function$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/Function;

    iget-object v1, p0, Ljava/util/function/Function$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/Function;

    invoke-static {v0, v1, p1}, Ljava/util/function/Function;->$r8$lambda$6uxaPoUTuGzP8UjzBnaOMmZaOoU(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
