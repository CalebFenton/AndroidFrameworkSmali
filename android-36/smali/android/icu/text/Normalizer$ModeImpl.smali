.class final Landroid/icu/text/Normalizer$ModeImpl;
.super Ljava/lang/Object;
.source "Normalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/Normalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ModeImpl"
.end annotation


# instance fields
.field private final greylist-max-o normalizer2:Landroid/icu/text/Normalizer2;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetnormalizer2(Landroid/icu/text/Normalizer$ModeImpl;)Landroid/icu/text/Normalizer2;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/Normalizer$ModeImpl;->normalizer2:Landroid/icu/text/Normalizer2;

    return-object p0
.end method

.method private constructor greylist-max-o <init>(Landroid/icu/text/Normalizer2;)V
    .registers 2
    .param p1, "n2"    # Landroid/icu/text/Normalizer2;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Landroid/icu/text/Normalizer$ModeImpl;->normalizer2:Landroid/icu/text/Normalizer2;

    .line 152
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/text/Normalizer2;Landroid/icu/text/Normalizer-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/icu/text/Normalizer$ModeImpl;-><init>(Landroid/icu/text/Normalizer2;)V

    return-void
.end method
