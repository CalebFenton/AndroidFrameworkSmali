.class public final enum Landroid/icu/text/IDNA$Error;
.super Ljava/lang/Enum;
.source "IDNA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/IDNA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/IDNA$Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/IDNA$Error;

.field public static final enum whitelist test-api BIDI:Landroid/icu/text/IDNA$Error;

.field public static final enum whitelist test-api CONTEXTJ:Landroid/icu/text/IDNA$Error;

.field public static final enum whitelist test-api CONTEXTO_DIGITS:Landroid/icu/text/IDNA$Error;

.field public static final enum whitelist test-api CONTEXTO_PUNCTUATION:Landroid/icu/text/IDNA$Error;

.field public static final enum whitelist test-api DISALLOWED:Landroid/icu/text/IDNA$Error;

.field public static final enum whitelist test-api DOMAIN_NAME_TOO_LONG:Landroid/icu/text/IDNA$Error;

.field public static final enum whitelist test-api EMPTY_LABEL:Landroid/icu/text/IDNA$Error;

.field public static final enum whitelist test-api HYPHEN_3_4:Landroid/icu/text/IDNA$Error;

.field public static final enum whitelist test-api INVALID_ACE_LABEL:Landroid/icu/text/IDNA$Error;

.field public static final enum whitelist test-api LABEL_HAS_DOT:Landroid/icu/text/IDNA$Error;

.field public static final enum whitelist test-api LABEL_TOO_LONG:Landroid/icu/text/IDNA$Error;

.field public static final enum whitelist test-api LEADING_COMBINING_MARK:Landroid/icu/text/IDNA$Error;

.field public static final enum whitelist test-api LEADING_HYPHEN:Landroid/icu/text/IDNA$Error;

.field public static final enum whitelist test-api PUNYCODE:Landroid/icu/text/IDNA$Error;

.field public static final enum whitelist test-api TRAILING_HYPHEN:Landroid/icu/text/IDNA$Error;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/IDNA$Error;
    .registers 15

    .line 375
    sget-object v0, Landroid/icu/text/IDNA$Error;->EMPTY_LABEL:Landroid/icu/text/IDNA$Error;

    sget-object v1, Landroid/icu/text/IDNA$Error;->LABEL_TOO_LONG:Landroid/icu/text/IDNA$Error;

    sget-object v2, Landroid/icu/text/IDNA$Error;->DOMAIN_NAME_TOO_LONG:Landroid/icu/text/IDNA$Error;

    sget-object v3, Landroid/icu/text/IDNA$Error;->LEADING_HYPHEN:Landroid/icu/text/IDNA$Error;

    sget-object v4, Landroid/icu/text/IDNA$Error;->TRAILING_HYPHEN:Landroid/icu/text/IDNA$Error;

    sget-object v5, Landroid/icu/text/IDNA$Error;->HYPHEN_3_4:Landroid/icu/text/IDNA$Error;

    sget-object v6, Landroid/icu/text/IDNA$Error;->LEADING_COMBINING_MARK:Landroid/icu/text/IDNA$Error;

    sget-object v7, Landroid/icu/text/IDNA$Error;->DISALLOWED:Landroid/icu/text/IDNA$Error;

    sget-object v8, Landroid/icu/text/IDNA$Error;->PUNYCODE:Landroid/icu/text/IDNA$Error;

    sget-object v9, Landroid/icu/text/IDNA$Error;->LABEL_HAS_DOT:Landroid/icu/text/IDNA$Error;

    sget-object v10, Landroid/icu/text/IDNA$Error;->INVALID_ACE_LABEL:Landroid/icu/text/IDNA$Error;

    sget-object v11, Landroid/icu/text/IDNA$Error;->BIDI:Landroid/icu/text/IDNA$Error;

    sget-object v12, Landroid/icu/text/IDNA$Error;->CONTEXTJ:Landroid/icu/text/IDNA$Error;

    sget-object v13, Landroid/icu/text/IDNA$Error;->CONTEXTO_PUNCTUATION:Landroid/icu/text/IDNA$Error;

    sget-object v14, Landroid/icu/text/IDNA$Error;->CONTEXTO_DIGITS:Landroid/icu/text/IDNA$Error;

    filled-new-array/range {v0 .. v14}, [Landroid/icu/text/IDNA$Error;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 379
    new-instance v0, Landroid/icu/text/IDNA$Error;

    const-string v1, "EMPTY_LABEL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/IDNA$Error;->EMPTY_LABEL:Landroid/icu/text/IDNA$Error;

    .line 385
    new-instance v0, Landroid/icu/text/IDNA$Error;

    const-string v1, "LABEL_TOO_LONG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/IDNA$Error;->LABEL_TOO_LONG:Landroid/icu/text/IDNA$Error;

    .line 391
    new-instance v0, Landroid/icu/text/IDNA$Error;

    const-string v1, "DOMAIN_NAME_TOO_LONG"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/IDNA$Error;->DOMAIN_NAME_TOO_LONG:Landroid/icu/text/IDNA$Error;

    .line 395
    new-instance v0, Landroid/icu/text/IDNA$Error;

    const-string v1, "LEADING_HYPHEN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/IDNA$Error;->LEADING_HYPHEN:Landroid/icu/text/IDNA$Error;

    .line 399
    new-instance v0, Landroid/icu/text/IDNA$Error;

    const-string v1, "TRAILING_HYPHEN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/IDNA$Error;->TRAILING_HYPHEN:Landroid/icu/text/IDNA$Error;

    .line 403
    new-instance v0, Landroid/icu/text/IDNA$Error;

    const-string v1, "HYPHEN_3_4"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/IDNA$Error;->HYPHEN_3_4:Landroid/icu/text/IDNA$Error;

    .line 407
    new-instance v0, Landroid/icu/text/IDNA$Error;

    const-string v1, "LEADING_COMBINING_MARK"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/IDNA$Error;->LEADING_COMBINING_MARK:Landroid/icu/text/IDNA$Error;

    .line 411
    new-instance v0, Landroid/icu/text/IDNA$Error;

    const-string v1, "DISALLOWED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/IDNA$Error;->DISALLOWED:Landroid/icu/text/IDNA$Error;

    .line 416
    new-instance v0, Landroid/icu/text/IDNA$Error;

    const-string v1, "PUNYCODE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/IDNA$Error;->PUNYCODE:Landroid/icu/text/IDNA$Error;

    .line 421
    new-instance v0, Landroid/icu/text/IDNA$Error;

    const-string v1, "LABEL_HAS_DOT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/IDNA$Error;->LABEL_HAS_DOT:Landroid/icu/text/IDNA$Error;

    .line 429
    new-instance v0, Landroid/icu/text/IDNA$Error;

    const-string v1, "INVALID_ACE_LABEL"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/IDNA$Error;->INVALID_ACE_LABEL:Landroid/icu/text/IDNA$Error;

    .line 433
    new-instance v0, Landroid/icu/text/IDNA$Error;

    const-string v1, "BIDI"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/IDNA$Error;->BIDI:Landroid/icu/text/IDNA$Error;

    .line 437
    new-instance v0, Landroid/icu/text/IDNA$Error;

    const-string v1, "CONTEXTJ"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/IDNA$Error;->CONTEXTJ:Landroid/icu/text/IDNA$Error;

    .line 443
    new-instance v0, Landroid/icu/text/IDNA$Error;

    const-string v1, "CONTEXTO_PUNCTUATION"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/IDNA$Error;->CONTEXTO_PUNCTUATION:Landroid/icu/text/IDNA$Error;

    .line 448
    new-instance v0, Landroid/icu/text/IDNA$Error;

    const-string v1, "CONTEXTO_DIGITS"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/IDNA$Error;->CONTEXTO_DIGITS:Landroid/icu/text/IDNA$Error;

    .line 375
    invoke-static {}, Landroid/icu/text/IDNA$Error;->$values()[Landroid/icu/text/IDNA$Error;

    move-result-object v0

    sput-object v0, Landroid/icu/text/IDNA$Error;->$VALUES:[Landroid/icu/text/IDNA$Error;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 375
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/text/IDNA$Error;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 375
    const-class v0, Landroid/icu/text/IDNA$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/IDNA$Error;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/text/IDNA$Error;
    .registers 1

    .line 375
    sget-object v0, Landroid/icu/text/IDNA$Error;->$VALUES:[Landroid/icu/text/IDNA$Error;

    invoke-virtual {v0}, [Landroid/icu/text/IDNA$Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/IDNA$Error;

    return-object v0
.end method
