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
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/IDNA$Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/IDNA$Error;

.field public static final enum BIDI:Landroid/icu/text/IDNA$Error;

.field public static final enum CONTEXTJ:Landroid/icu/text/IDNA$Error;

.field public static final enum CONTEXTO_DIGITS:Landroid/icu/text/IDNA$Error;

.field public static final enum CONTEXTO_PUNCTUATION:Landroid/icu/text/IDNA$Error;

.field public static final enum DISALLOWED:Landroid/icu/text/IDNA$Error;

.field public static final enum DOMAIN_NAME_TOO_LONG:Landroid/icu/text/IDNA$Error;

.field public static final enum EMPTY_LABEL:Landroid/icu/text/IDNA$Error;

.field public static final enum HYPHEN_3_4:Landroid/icu/text/IDNA$Error;

.field public static final enum INVALID_ACE_LABEL:Landroid/icu/text/IDNA$Error;

.field public static final enum LABEL_HAS_DOT:Landroid/icu/text/IDNA$Error;

.field public static final enum LABEL_TOO_LONG:Landroid/icu/text/IDNA$Error;

.field public static final enum LEADING_COMBINING_MARK:Landroid/icu/text/IDNA$Error;

.field public static final enum LEADING_HYPHEN:Landroid/icu/text/IDNA$Error;

.field public static final enum PUNYCODE:Landroid/icu/text/IDNA$Error;

.field public static final enum TRAILING_HYPHEN:Landroid/icu/text/IDNA$Error;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 370
    new-instance v0, Landroid/icu/text/IDNA$Error;

    #@7
    const-string/jumbo v1, "EMPTY_LABEL"

    #@a
    invoke-direct {v0, v1, v3}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    #@d
    .line 374
    sput-object v0, Landroid/icu/text/IDNA$Error;->EMPTY_LABEL:Landroid/icu/text/IDNA$Error;

    #@f
    .line 375
    new-instance v0, Landroid/icu/text/IDNA$Error;

    #@11
    const-string/jumbo v1, "LABEL_TOO_LONG"

    #@14
    invoke-direct {v0, v1, v4}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    #@17
    .line 381
    sput-object v0, Landroid/icu/text/IDNA$Error;->LABEL_TOO_LONG:Landroid/icu/text/IDNA$Error;

    #@19
    .line 382
    new-instance v0, Landroid/icu/text/IDNA$Error;

    #@1b
    const-string/jumbo v1, "DOMAIN_NAME_TOO_LONG"

    #@1e
    invoke-direct {v0, v1, v5}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    #@21
    .line 388
    sput-object v0, Landroid/icu/text/IDNA$Error;->DOMAIN_NAME_TOO_LONG:Landroid/icu/text/IDNA$Error;

    #@23
    .line 389
    new-instance v0, Landroid/icu/text/IDNA$Error;

    #@25
    const-string/jumbo v1, "LEADING_HYPHEN"

    #@28
    invoke-direct {v0, v1, v6}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    #@2b
    .line 393
    sput-object v0, Landroid/icu/text/IDNA$Error;->LEADING_HYPHEN:Landroid/icu/text/IDNA$Error;

    #@2d
    .line 394
    new-instance v0, Landroid/icu/text/IDNA$Error;

    #@2f
    const-string/jumbo v1, "TRAILING_HYPHEN"

    #@32
    invoke-direct {v0, v1, v7}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    #@35
    .line 398
    sput-object v0, Landroid/icu/text/IDNA$Error;->TRAILING_HYPHEN:Landroid/icu/text/IDNA$Error;

    #@37
    .line 399
    new-instance v0, Landroid/icu/text/IDNA$Error;

    #@39
    const-string/jumbo v1, "HYPHEN_3_4"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    #@40
    .line 403
    sput-object v0, Landroid/icu/text/IDNA$Error;->HYPHEN_3_4:Landroid/icu/text/IDNA$Error;

    #@42
    .line 404
    new-instance v0, Landroid/icu/text/IDNA$Error;

    #@44
    const-string/jumbo v1, "LEADING_COMBINING_MARK"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    #@4b
    .line 408
    sput-object v0, Landroid/icu/text/IDNA$Error;->LEADING_COMBINING_MARK:Landroid/icu/text/IDNA$Error;

    #@4d
    .line 409
    new-instance v0, Landroid/icu/text/IDNA$Error;

    #@4f
    const-string/jumbo v1, "DISALLOWED"

    #@52
    const/4 v2, 0x7

    #@53
    invoke-direct {v0, v1, v2}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    #@56
    .line 413
    sput-object v0, Landroid/icu/text/IDNA$Error;->DISALLOWED:Landroid/icu/text/IDNA$Error;

    #@58
    .line 414
    new-instance v0, Landroid/icu/text/IDNA$Error;

    #@5a
    const-string/jumbo v1, "PUNYCODE"

    #@5d
    const/16 v2, 0x8

    #@5f
    invoke-direct {v0, v1, v2}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    #@62
    .line 419
    sput-object v0, Landroid/icu/text/IDNA$Error;->PUNYCODE:Landroid/icu/text/IDNA$Error;

    #@64
    .line 420
    new-instance v0, Landroid/icu/text/IDNA$Error;

    #@66
    const-string/jumbo v1, "LABEL_HAS_DOT"

    #@69
    const/16 v2, 0x9

    #@6b
    invoke-direct {v0, v1, v2}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    #@6e
    .line 425
    sput-object v0, Landroid/icu/text/IDNA$Error;->LABEL_HAS_DOT:Landroid/icu/text/IDNA$Error;

    #@70
    .line 426
    new-instance v0, Landroid/icu/text/IDNA$Error;

    #@72
    const-string/jumbo v1, "INVALID_ACE_LABEL"

    #@75
    const/16 v2, 0xa

    #@77
    invoke-direct {v0, v1, v2}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    #@7a
    .line 434
    sput-object v0, Landroid/icu/text/IDNA$Error;->INVALID_ACE_LABEL:Landroid/icu/text/IDNA$Error;

    #@7c
    .line 435
    new-instance v0, Landroid/icu/text/IDNA$Error;

    #@7e
    const-string/jumbo v1, "BIDI"

    #@81
    const/16 v2, 0xb

    #@83
    invoke-direct {v0, v1, v2}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    #@86
    .line 439
    sput-object v0, Landroid/icu/text/IDNA$Error;->BIDI:Landroid/icu/text/IDNA$Error;

    #@88
    .line 440
    new-instance v0, Landroid/icu/text/IDNA$Error;

    #@8a
    const-string/jumbo v1, "CONTEXTJ"

    #@8d
    const/16 v2, 0xc

    #@8f
    invoke-direct {v0, v1, v2}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    #@92
    .line 444
    sput-object v0, Landroid/icu/text/IDNA$Error;->CONTEXTJ:Landroid/icu/text/IDNA$Error;

    #@94
    .line 445
    new-instance v0, Landroid/icu/text/IDNA$Error;

    #@96
    const-string/jumbo v1, "CONTEXTO_PUNCTUATION"

    #@99
    const/16 v2, 0xd

    #@9b
    invoke-direct {v0, v1, v2}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    #@9e
    .line 451
    sput-object v0, Landroid/icu/text/IDNA$Error;->CONTEXTO_PUNCTUATION:Landroid/icu/text/IDNA$Error;

    #@a0
    .line 452
    new-instance v0, Landroid/icu/text/IDNA$Error;

    #@a2
    const-string/jumbo v1, "CONTEXTO_DIGITS"

    #@a5
    const/16 v2, 0xe

    #@a7
    invoke-direct {v0, v1, v2}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    #@aa
    .line 457
    sput-object v0, Landroid/icu/text/IDNA$Error;->CONTEXTO_DIGITS:Landroid/icu/text/IDNA$Error;

    #@ac
    .line 369
    const/16 v0, 0xf

    #@ae
    new-array v0, v0, [Landroid/icu/text/IDNA$Error;

    #@b0
    sget-object v1, Landroid/icu/text/IDNA$Error;->EMPTY_LABEL:Landroid/icu/text/IDNA$Error;

    #@b2
    aput-object v1, v0, v3

    #@b4
    sget-object v1, Landroid/icu/text/IDNA$Error;->LABEL_TOO_LONG:Landroid/icu/text/IDNA$Error;

    #@b6
    aput-object v1, v0, v4

    #@b8
    sget-object v1, Landroid/icu/text/IDNA$Error;->DOMAIN_NAME_TOO_LONG:Landroid/icu/text/IDNA$Error;

    #@ba
    aput-object v1, v0, v5

    #@bc
    sget-object v1, Landroid/icu/text/IDNA$Error;->LEADING_HYPHEN:Landroid/icu/text/IDNA$Error;

    #@be
    aput-object v1, v0, v6

    #@c0
    sget-object v1, Landroid/icu/text/IDNA$Error;->TRAILING_HYPHEN:Landroid/icu/text/IDNA$Error;

    #@c2
    aput-object v1, v0, v7

    #@c4
    sget-object v1, Landroid/icu/text/IDNA$Error;->HYPHEN_3_4:Landroid/icu/text/IDNA$Error;

    #@c6
    const/4 v2, 0x5

    #@c7
    aput-object v1, v0, v2

    #@c9
    sget-object v1, Landroid/icu/text/IDNA$Error;->LEADING_COMBINING_MARK:Landroid/icu/text/IDNA$Error;

    #@cb
    const/4 v2, 0x6

    #@cc
    aput-object v1, v0, v2

    #@ce
    sget-object v1, Landroid/icu/text/IDNA$Error;->DISALLOWED:Landroid/icu/text/IDNA$Error;

    #@d0
    const/4 v2, 0x7

    #@d1
    aput-object v1, v0, v2

    #@d3
    sget-object v1, Landroid/icu/text/IDNA$Error;->PUNYCODE:Landroid/icu/text/IDNA$Error;

    #@d5
    const/16 v2, 0x8

    #@d7
    aput-object v1, v0, v2

    #@d9
    sget-object v1, Landroid/icu/text/IDNA$Error;->LABEL_HAS_DOT:Landroid/icu/text/IDNA$Error;

    #@db
    const/16 v2, 0x9

    #@dd
    aput-object v1, v0, v2

    #@df
    sget-object v1, Landroid/icu/text/IDNA$Error;->INVALID_ACE_LABEL:Landroid/icu/text/IDNA$Error;

    #@e1
    const/16 v2, 0xa

    #@e3
    aput-object v1, v0, v2

    #@e5
    sget-object v1, Landroid/icu/text/IDNA$Error;->BIDI:Landroid/icu/text/IDNA$Error;

    #@e7
    const/16 v2, 0xb

    #@e9
    aput-object v1, v0, v2

    #@eb
    sget-object v1, Landroid/icu/text/IDNA$Error;->CONTEXTJ:Landroid/icu/text/IDNA$Error;

    #@ed
    const/16 v2, 0xc

    #@ef
    aput-object v1, v0, v2

    #@f1
    sget-object v1, Landroid/icu/text/IDNA$Error;->CONTEXTO_PUNCTUATION:Landroid/icu/text/IDNA$Error;

    #@f3
    const/16 v2, 0xd

    #@f5
    aput-object v1, v0, v2

    #@f7
    sget-object v1, Landroid/icu/text/IDNA$Error;->CONTEXTO_DIGITS:Landroid/icu/text/IDNA$Error;

    #@f9
    const/16 v2, 0xe

    #@fb
    aput-object v1, v0, v2

    #@fd
    sput-object v0, Landroid/icu/text/IDNA$Error;->$VALUES:[Landroid/icu/text/IDNA$Error;

    #@ff
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 369
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/IDNA$Error;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 369
    const-class v0, Landroid/icu/text/IDNA$Error;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/IDNA$Error;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/text/IDNA$Error;
    .locals 1

    #@0
    .prologue
    .line 369
    sget-object v0, Landroid/icu/text/IDNA$Error;->$VALUES:[Landroid/icu/text/IDNA$Error;

    #@2
    return-object v0
.end method
