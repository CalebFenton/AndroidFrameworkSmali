.class final Landroid/icu/text/Normalizer$NFKD32ModeImpl;
.super Ljava/lang/Object;
.source "Normalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/Normalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NFKD32ModeImpl"
.end annotation


# static fields
.field private static final greylist-max-o INSTANCE:Landroid/icu/text/Normalizer$ModeImpl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Landroid/icu/text/Normalizer$ModeImpl;
    .registers 1

    sget-object v0, Landroid/icu/text/Normalizer$NFKD32ModeImpl;->INSTANCE:Landroid/icu/text/Normalizer$ModeImpl;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 180
    new-instance v0, Landroid/icu/text/Normalizer$ModeImpl;

    new-instance v1, Landroid/icu/text/FilteredNormalizer2;

    .line 181
    invoke-static {}, Landroid/icu/text/Normalizer2;->getNFKDInstance()Landroid/icu/text/Normalizer2;

    move-result-object v2

    invoke-static {}, Landroid/icu/text/Normalizer$Unicode32;->-$$Nest$sfgetINSTANCE()Landroid/icu/text/UnicodeSet;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/icu/text/FilteredNormalizer2;-><init>(Landroid/icu/text/Normalizer2;Landroid/icu/text/UnicodeSet;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/Normalizer$ModeImpl;-><init>(Landroid/icu/text/Normalizer2;Landroid/icu/text/Normalizer-IA;)V

    sput-object v0, Landroid/icu/text/Normalizer$NFKD32ModeImpl;->INSTANCE:Landroid/icu/text/Normalizer$ModeImpl;

    .line 180
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
