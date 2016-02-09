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
.field private final normalizer2:Landroid/icu/text/Normalizer2;


# direct methods
.method static synthetic -get0(Landroid/icu/text/Normalizer$ModeImpl;)Landroid/icu/text/Normalizer2;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/text/Normalizer$ModeImpl;->normalizer2:Landroid/icu/text/Normalizer2;

    #@2
    return-object v0
.end method

.method private constructor <init>(Landroid/icu/text/Normalizer2;)V
    .locals 0
    .param p1, "n2"    # Landroid/icu/text/Normalizer2;

    #@0
    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 147
    iput-object p1, p0, Landroid/icu/text/Normalizer$ModeImpl;->normalizer2:Landroid/icu/text/Normalizer2;

    #@5
    .line 146
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/Normalizer2;Landroid/icu/text/Normalizer$ModeImpl;)V
    .locals 0
    .param p1, "n2"    # Landroid/icu/text/Normalizer2;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/icu/text/Normalizer$ModeImpl;-><init>(Landroid/icu/text/Normalizer2;)V

    #@3
    return-void
.end method
