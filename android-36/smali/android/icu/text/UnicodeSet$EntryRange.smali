.class public Landroid/icu/text/UnicodeSet$EntryRange;
.super Ljava/lang/Object;
.source "UnicodeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/UnicodeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntryRange"
.end annotation


# instance fields
.field public whitelist test-api codepoint:I

.field public whitelist test-api codepointEnd:I


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 4392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4393
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 4400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4402
    .local v0, "b":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/icu/text/UnicodeSet$EntryRange;->codepoint:I

    iget v2, p0, Landroid/icu/text/UnicodeSet$EntryRange;->codepointEnd:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_15

    iget v1, p0, Landroid/icu/text/UnicodeSet$EntryRange;->codepoint:I

    invoke-static {v0, v1, v3}, Landroid/icu/text/UnicodeSet;->-$$Nest$sm_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    goto :goto_2b

    .line 4403
    :cond_15
    iget v1, p0, Landroid/icu/text/UnicodeSet$EntryRange;->codepoint:I

    invoke-static {v0, v1, v3}, Landroid/icu/text/UnicodeSet;->-$$Nest$sm_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/icu/text/UnicodeSet$EntryRange;->codepointEnd:I

    invoke-static {v1, v2, v3}, Landroid/icu/text/UnicodeSet;->-$$Nest$sm_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    .line 4404
    :goto_2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4401
    return-object v1
.end method
