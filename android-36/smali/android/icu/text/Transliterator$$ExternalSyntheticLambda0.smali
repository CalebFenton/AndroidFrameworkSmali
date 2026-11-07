.class public final synthetic Landroid/icu/text/Transliterator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:I


# direct methods
.method public synthetic constructor blacklist <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/icu/text/Transliterator$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget v0, p0, Landroid/icu/text/Transliterator$$ExternalSyntheticLambda0;->f$0:I

    invoke-static {v0}, Landroid/icu/text/Transliterator;->lambda$static$0(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
