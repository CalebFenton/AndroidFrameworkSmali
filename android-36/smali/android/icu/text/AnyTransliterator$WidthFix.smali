.class Landroid/icu/text/AnyTransliterator$WidthFix;
.super Ljava/lang/Object;
.source "AnyTransliterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/AnyTransliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WidthFix"
.end annotation


# static fields
.field private static final blacklist ID:Ljava/lang/String; = "[[:dt=Nar:][:dt=Wide:]] nfkd"

.field static final blacklist INSTANCE:Landroid/icu/text/Transliterator;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 76
    const-string v0, "[[:dt=Nar:][:dt=Wide:]] nfkd"

    invoke-static {v0}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object v0

    sput-object v0, Landroid/icu/text/AnyTransliterator$WidthFix;->INSTANCE:Landroid/icu/text/Transliterator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
