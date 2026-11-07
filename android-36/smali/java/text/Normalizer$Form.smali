.class public final enum Ljava/text/Normalizer$Form;
.super Ljava/lang/Enum;
.source "Normalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/Normalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Form"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/text/Normalizer$Form;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/text/Normalizer$Form;

.field public static final enum whitelist test-api NFC:Ljava/text/Normalizer$Form;

.field public static final enum whitelist test-api NFD:Ljava/text/Normalizer$Form;

.field public static final enum whitelist test-api NFKC:Ljava/text/Normalizer$Form;

.field public static final enum whitelist test-api NFKD:Ljava/text/Normalizer$Form;


# instance fields
.field private final blacklist icuNormalizer:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/icu/text/Normalizer2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic blacklist $values()[Ljava/text/Normalizer$Form;
    .registers 4

    .line 125
    sget-object v0, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    sget-object v1, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    sget-object v2, Ljava/text/Normalizer$Form;->NFKD:Ljava/text/Normalizer$Form;

    sget-object v3, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    filled-new-array {v0, v1, v2, v3}, [Ljava/text/Normalizer$Form;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgeticuNormalizer(Ljava/text/Normalizer$Form;)Ljava/util/function/Supplier;
    .registers 1

    iget-object p0, p0, Ljava/text/Normalizer$Form;->icuNormalizer:Ljava/util/function/Supplier;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 130
    new-instance v0, Ljava/text/Normalizer$Form;

    new-instance v1, Ljava/text/Normalizer$Form$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/text/Normalizer$Form$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "NFD"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Ljava/text/Normalizer$Form;-><init>(Ljava/lang/String;ILjava/util/function/Supplier;)V

    sput-object v0, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    .line 135
    new-instance v0, Ljava/text/Normalizer$Form;

    new-instance v1, Ljava/text/Normalizer$Form$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ljava/text/Normalizer$Form$$ExternalSyntheticLambda1;-><init>()V

    const-string v2, "NFC"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Ljava/text/Normalizer$Form;-><init>(Ljava/lang/String;ILjava/util/function/Supplier;)V

    sput-object v0, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    .line 140
    new-instance v0, Ljava/text/Normalizer$Form;

    new-instance v1, Ljava/text/Normalizer$Form$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Ljava/text/Normalizer$Form$$ExternalSyntheticLambda2;-><init>()V

    const-string v2, "NFKD"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Ljava/text/Normalizer$Form;-><init>(Ljava/lang/String;ILjava/util/function/Supplier;)V

    sput-object v0, Ljava/text/Normalizer$Form;->NFKD:Ljava/text/Normalizer$Form;

    .line 145
    new-instance v0, Ljava/text/Normalizer$Form;

    new-instance v1, Ljava/text/Normalizer$Form$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Ljava/text/Normalizer$Form$$ExternalSyntheticLambda3;-><init>()V

    const-string v2, "NFKC"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Ljava/text/Normalizer$Form;-><init>(Ljava/lang/String;ILjava/util/function/Supplier;)V

    sput-object v0, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    .line 125
    invoke-static {}, Ljava/text/Normalizer$Form;->$values()[Ljava/text/Normalizer$Form;

    move-result-object v0

    sput-object v0, Ljava/text/Normalizer$Form;->$VALUES:[Ljava/text/Normalizer$Form;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/util/function/Supplier;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/icu/text/Normalizer2;",
            ">;)V"
        }
    .end annotation

    .line 149
    .local p3, "icuNormalizer":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/icu/text/Normalizer2;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 150
    iput-object p3, p0, Ljava/text/Normalizer$Form;->icuNormalizer:Ljava/util/function/Supplier;

    .line 151
    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/text/Normalizer$Form;
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

    .line 125
    const-class v0, Ljava/text/Normalizer$Form;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/text/Normalizer$Form;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/text/Normalizer$Form;
    .registers 1

    .line 125
    sget-object v0, Ljava/text/Normalizer$Form;->$VALUES:[Ljava/text/Normalizer$Form;

    invoke-virtual {v0}, [Ljava/text/Normalizer$Form;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/text/Normalizer$Form;

    return-object v0
.end method
