.class public final Landroid/icu/text/CaseMap$Upper;
.super Landroid/icu/text/CaseMap;
.source "CaseMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CaseMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Upper"
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT:Landroid/icu/text/CaseMap$Upper;

.field private static final greylist-max-o OMIT_UNCHANGED:Landroid/icu/text/CaseMap$Upper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetDEFAULT()Landroid/icu/text/CaseMap$Upper;
    .registers 1

    sget-object v0, Landroid/icu/text/CaseMap$Upper;->DEFAULT:Landroid/icu/text/CaseMap$Upper;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 124
    new-instance v0, Landroid/icu/text/CaseMap$Upper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/text/CaseMap$Upper;-><init>(I)V

    sput-object v0, Landroid/icu/text/CaseMap$Upper;->DEFAULT:Landroid/icu/text/CaseMap$Upper;

    .line 125
    new-instance v0, Landroid/icu/text/CaseMap$Upper;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Landroid/icu/text/CaseMap$Upper;-><init>(I)V

    sput-object v0, Landroid/icu/text/CaseMap$Upper;->OMIT_UNCHANGED:Landroid/icu/text/CaseMap$Upper;

    return-void
.end method

.method private constructor greylist-max-o <init>(I)V
    .registers 3
    .param p1, "opt"    # I

    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/text/CaseMap;-><init>(ILandroid/icu/text/CaseMap-IA;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api apply(Ljava/util/Locale;Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;
    .registers 7
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "src"    # Ljava/lang/CharSequence;
    .param p4, "edits"    # Landroid/icu/text/Edits;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(",
            "Ljava/util/Locale;",
            "Ljava/lang/CharSequence;",
            "TA;",
            "Landroid/icu/text/Edits;",
            ")TA;"
        }
    .end annotation

    .line 170
    .local p3, "dest":Ljava/lang/Appendable;, "TA;"
    invoke-static {p1}, Landroid/icu/text/CaseMap;->-$$Nest$smgetCaseLocale(Ljava/util/Locale;)I

    move-result v0

    iget v1, p0, Landroid/icu/text/CaseMap$Upper;->internalOptions:I

    invoke-static {v0, v1, p2, p3, p4}, Landroid/icu/impl/CaseMapImpl;->toUpper(IILjava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api apply(Ljava/util/Locale;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 5
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "src"    # Ljava/lang/CharSequence;

    .line 149
    invoke-static {p1}, Landroid/icu/text/CaseMap;->-$$Nest$smgetCaseLocale(Ljava/util/Locale;)I

    move-result v0

    iget v1, p0, Landroid/icu/text/CaseMap$Upper;->internalOptions:I

    invoke-static {v0, v1, p2}, Landroid/icu/impl/CaseMapImpl;->toUpper(IILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api omitUnchangedText()Landroid/icu/text/CaseMap$Upper;
    .registers 2

    .line 133
    sget-object v0, Landroid/icu/text/CaseMap$Upper;->OMIT_UNCHANGED:Landroid/icu/text/CaseMap$Upper;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api omitUnchangedText()Landroid/icu/text/CaseMap;
    .registers 2

    .line 123
    invoke-virtual {p0}, Landroid/icu/text/CaseMap$Upper;->omitUnchangedText()Landroid/icu/text/CaseMap$Upper;

    move-result-object v0

    return-object v0
.end method
