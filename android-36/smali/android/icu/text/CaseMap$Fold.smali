.class public final Landroid/icu/text/CaseMap$Fold;
.super Landroid/icu/text/CaseMap;
.source "CaseMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CaseMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Fold"
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT:Landroid/icu/text/CaseMap$Fold;

.field private static final greylist-max-o OMIT_UNCHANGED:Landroid/icu/text/CaseMap$Fold;

.field private static final greylist-max-o TURKIC:Landroid/icu/text/CaseMap$Fold;

.field private static final greylist-max-o TURKIC_OMIT_UNCHANGED:Landroid/icu/text/CaseMap$Fold;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetDEFAULT()Landroid/icu/text/CaseMap$Fold;
    .registers 1

    sget-object v0, Landroid/icu/text/CaseMap$Fold;->DEFAULT:Landroid/icu/text/CaseMap$Fold;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 359
    new-instance v0, Landroid/icu/text/CaseMap$Fold;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/text/CaseMap$Fold;-><init>(I)V

    sput-object v0, Landroid/icu/text/CaseMap$Fold;->DEFAULT:Landroid/icu/text/CaseMap$Fold;

    .line 360
    new-instance v0, Landroid/icu/text/CaseMap$Fold;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/icu/text/CaseMap$Fold;-><init>(I)V

    sput-object v0, Landroid/icu/text/CaseMap$Fold;->TURKIC:Landroid/icu/text/CaseMap$Fold;

    .line 361
    new-instance v0, Landroid/icu/text/CaseMap$Fold;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Landroid/icu/text/CaseMap$Fold;-><init>(I)V

    sput-object v0, Landroid/icu/text/CaseMap$Fold;->OMIT_UNCHANGED:Landroid/icu/text/CaseMap$Fold;

    .line 362
    new-instance v0, Landroid/icu/text/CaseMap$Fold;

    const/16 v1, 0x4001

    invoke-direct {v0, v1}, Landroid/icu/text/CaseMap$Fold;-><init>(I)V

    sput-object v0, Landroid/icu/text/CaseMap$Fold;->TURKIC_OMIT_UNCHANGED:Landroid/icu/text/CaseMap$Fold;

    return-void
.end method

.method private constructor greylist-max-o <init>(I)V
    .registers 3
    .param p1, "opt"    # I

    .line 364
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/text/CaseMap;-><init>(ILandroid/icu/text/CaseMap-IA;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api apply(Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;
    .registers 5
    .param p1, "src"    # Ljava/lang/CharSequence;
    .param p3, "edits"    # Landroid/icu/text/Edits;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(",
            "Ljava/lang/CharSequence;",
            "TA;",
            "Landroid/icu/text/Edits;",
            ")TA;"
        }
    .end annotation

    .line 426
    .local p2, "dest":Ljava/lang/Appendable;, "TA;"
    iget v0, p0, Landroid/icu/text/CaseMap$Fold;->internalOptions:I

    invoke-static {v0, p1, p2, p3}, Landroid/icu/impl/CaseMapImpl;->fold(ILjava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api apply(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3
    .param p1, "src"    # Ljava/lang/CharSequence;

    .line 405
    iget v0, p0, Landroid/icu/text/CaseMap$Fold;->internalOptions:I

    invoke-static {v0, p1}, Landroid/icu/impl/CaseMapImpl;->fold(ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api omitUnchangedText()Landroid/icu/text/CaseMap$Fold;
    .registers 2

    .line 371
    iget v0, p0, Landroid/icu/text/CaseMap$Fold;->internalOptions:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_9

    .line 372
    sget-object v0, Landroid/icu/text/CaseMap$Fold;->OMIT_UNCHANGED:Landroid/icu/text/CaseMap$Fold;

    goto :goto_b

    :cond_9
    sget-object v0, Landroid/icu/text/CaseMap$Fold;->TURKIC_OMIT_UNCHANGED:Landroid/icu/text/CaseMap$Fold;

    .line 371
    :goto_b
    return-object v0
.end method

.method public bridge synthetic whitelist test-api omitUnchangedText()Landroid/icu/text/CaseMap;
    .registers 2

    .line 358
    invoke-virtual {p0}, Landroid/icu/text/CaseMap$Fold;->omitUnchangedText()Landroid/icu/text/CaseMap$Fold;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api turkic()Landroid/icu/text/CaseMap$Fold;
    .registers 2

    .line 387
    iget v0, p0, Landroid/icu/text/CaseMap$Fold;->internalOptions:I

    and-int/lit16 v0, v0, 0x4000

    if-nez v0, :cond_9

    .line 388
    sget-object v0, Landroid/icu/text/CaseMap$Fold;->TURKIC:Landroid/icu/text/CaseMap$Fold;

    goto :goto_b

    :cond_9
    sget-object v0, Landroid/icu/text/CaseMap$Fold;->TURKIC_OMIT_UNCHANGED:Landroid/icu/text/CaseMap$Fold;

    .line 387
    :goto_b
    return-object v0
.end method
