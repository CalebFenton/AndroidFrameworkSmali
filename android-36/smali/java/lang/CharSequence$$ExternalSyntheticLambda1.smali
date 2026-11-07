.class public final synthetic Ljava/lang/CharSequence$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/CharSequence;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/lang/CharSequence$$ExternalSyntheticLambda1;->f$0:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Ljava/lang/CharSequence$$ExternalSyntheticLambda1;->f$0:Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/lang/CharSequence;->$r8$lambda$wQi8e-h4w6VOR116gpXnxiYyDp8(Ljava/lang/CharSequence;)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method
