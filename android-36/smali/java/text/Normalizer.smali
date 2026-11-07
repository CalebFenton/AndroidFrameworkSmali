.class public final Ljava/text/Normalizer;
.super Ljava/lang/Object;
.source "Normalizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/Normalizer$Form;
    }
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist test-api isNormalized(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Z
    .registers 3
    .param p0, "src"    # Ljava/lang/CharSequence;
    .param p1, "form"    # Ljava/text/Normalizer$Form;

    .line 189
    invoke-static {p1}, Ljava/text/Normalizer$Form;->-$$Nest$fgeticuNormalizer(Ljava/text/Normalizer$Form;)Ljava/util/function/Supplier;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/Normalizer2;

    invoke-virtual {v0, p0}, Landroid/icu/text/Normalizer2;->isNormalized(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;
    .registers 3
    .param p0, "src"    # Ljava/lang/CharSequence;
    .param p1, "form"    # Ljava/text/Normalizer$Form;

    .line 171
    invoke-static {p1}, Ljava/text/Normalizer$Form;->-$$Nest$fgeticuNormalizer(Ljava/text/Normalizer$Form;)Ljava/util/function/Supplier;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/Normalizer2;

    invoke-virtual {v0, p0}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
