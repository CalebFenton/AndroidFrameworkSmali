.class public final synthetic Ljava/util/Random$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntSupplier;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/Random;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/Random;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/Random$$ExternalSyntheticLambda1;->f$0:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public final whitelist test-api getAsInt()I
    .registers 2

    .line 0
    iget-object v0, p0, Ljava/util/Random$$ExternalSyntheticLambda1;->f$0:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method
