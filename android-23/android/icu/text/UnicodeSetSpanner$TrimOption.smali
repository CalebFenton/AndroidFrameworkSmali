.class public final enum Landroid/icu/text/UnicodeSetSpanner$TrimOption;
.super Ljava/lang/Enum;
.source "UnicodeSetSpanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/UnicodeSetSpanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TrimOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/UnicodeSetSpanner$TrimOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/UnicodeSetSpanner$TrimOption;

.field public static final enum BOTH:Landroid/icu/text/UnicodeSetSpanner$TrimOption;

.field public static final enum LEADING:Landroid/icu/text/UnicodeSetSpanner$TrimOption;

.field public static final enum TRAILING:Landroid/icu/text/UnicodeSetSpanner$TrimOption;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 333
    new-instance v0, Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    #@5
    const-string/jumbo v1, "LEADING"

    #@8
    invoke-direct {v0, v1, v2}, Landroid/icu/text/UnicodeSetSpanner$TrimOption;-><init>(Ljava/lang/String;I)V

    #@b
    .line 339
    sput-object v0, Landroid/icu/text/UnicodeSetSpanner$TrimOption;->LEADING:Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    #@d
    .line 340
    new-instance v0, Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    #@f
    const-string/jumbo v1, "BOTH"

    #@12
    invoke-direct {v0, v1, v3}, Landroid/icu/text/UnicodeSetSpanner$TrimOption;-><init>(Ljava/lang/String;I)V

    #@15
    .line 346
    sput-object v0, Landroid/icu/text/UnicodeSetSpanner$TrimOption;->BOTH:Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    #@17
    .line 347
    new-instance v0, Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    #@19
    const-string/jumbo v1, "TRAILING"

    #@1c
    invoke-direct {v0, v1, v4}, Landroid/icu/text/UnicodeSetSpanner$TrimOption;-><init>(Ljava/lang/String;I)V

    #@1f
    .line 353
    sput-object v0, Landroid/icu/text/UnicodeSetSpanner$TrimOption;->TRAILING:Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    #@21
    .line 332
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    #@24
    sget-object v1, Landroid/icu/text/UnicodeSetSpanner$TrimOption;->LEADING:Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Landroid/icu/text/UnicodeSetSpanner$TrimOption;->BOTH:Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Landroid/icu/text/UnicodeSetSpanner$TrimOption;->TRAILING:Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Landroid/icu/text/UnicodeSetSpanner$TrimOption;->$VALUES:[Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 332
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/UnicodeSetSpanner$TrimOption;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 332
    const-class v0, Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/text/UnicodeSetSpanner$TrimOption;
    .locals 1

    #@0
    .prologue
    .line 332
    sget-object v0, Landroid/icu/text/UnicodeSetSpanner$TrimOption;->$VALUES:[Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    #@2
    return-object v0
.end method
