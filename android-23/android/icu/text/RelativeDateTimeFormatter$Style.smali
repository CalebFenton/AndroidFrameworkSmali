.class public final enum Landroid/icu/text/RelativeDateTimeFormatter$Style;
.super Ljava/lang/Enum;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RelativeDateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$Style;

.field public static final enum LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

.field public static final enum NARROW:Landroid/icu/text/RelativeDateTimeFormatter$Style;

.field public static final enum SHORT:Landroid/icu/text/RelativeDateTimeFormatter$Style;


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
    .line 76
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@5
    const-string/jumbo v1, "LONG"

    #@8
    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$Style;-><init>(Ljava/lang/String;I)V

    #@b
    .line 81
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@d
    .line 83
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@f
    const-string/jumbo v1, "SHORT"

    #@12
    invoke-direct {v0, v1, v3}, Landroid/icu/text/RelativeDateTimeFormatter$Style;-><init>(Ljava/lang/String;I)V

    #@15
    .line 88
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->SHORT:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@17
    .line 90
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@19
    const-string/jumbo v1, "NARROW"

    #@1c
    invoke-direct {v0, v1, v4}, Landroid/icu/text/RelativeDateTimeFormatter$Style;-><init>(Ljava/lang/String;I)V

    #@1f
    .line 95
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->NARROW:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@21
    .line 74
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@24
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Style;->SHORT:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Style;->NARROW:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->$VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 74
    const-class v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .locals 1

    #@0
    .prologue
    .line 74
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->$VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@2
    return-object v0
.end method
