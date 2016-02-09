.class public final enum Landroid/icu/text/UnicodeSet$SpanCondition;
.super Ljava/lang/Enum;
.source "UnicodeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/UnicodeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SpanCondition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/UnicodeSet$SpanCondition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/UnicodeSet$SpanCondition;

.field public static final enum CONDITION_COUNT:Landroid/icu/text/UnicodeSet$SpanCondition;

.field public static final enum CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

.field public static final enum NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

.field public static final enum SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    const/4 v4, 0x2

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    .line 4736
    new-instance v0, Landroid/icu/text/UnicodeSet$SpanCondition;

    #@6
    const-string/jumbo v1, "NOT_CONTAINED"

    #@9
    invoke-direct {v0, v1, v2}, Landroid/icu/text/UnicodeSet$SpanCondition;-><init>(Ljava/lang/String;I)V

    #@c
    .line 4747
    sput-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@e
    .line 4749
    new-instance v0, Landroid/icu/text/UnicodeSet$SpanCondition;

    #@10
    const-string/jumbo v1, "CONTAINED"

    #@13
    invoke-direct {v0, v1, v3}, Landroid/icu/text/UnicodeSet$SpanCondition;-><init>(Ljava/lang/String;I)V

    #@16
    .line 4763
    sput-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@18
    .line 4765
    new-instance v0, Landroid/icu/text/UnicodeSet$SpanCondition;

    #@1a
    const-string/jumbo v1, "SIMPLE"

    #@1d
    invoke-direct {v0, v1, v4}, Landroid/icu/text/UnicodeSet$SpanCondition;-><init>(Ljava/lang/String;I)V

    #@20
    .line 4783
    sput-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@22
    .line 4785
    new-instance v0, Landroid/icu/text/UnicodeSet$SpanCondition;

    #@24
    const-string/jumbo v1, "CONDITION_COUNT"

    #@27
    invoke-direct {v0, v1, v5}, Landroid/icu/text/UnicodeSet$SpanCondition;-><init>(Ljava/lang/String;I)V

    #@2a
    .line 4790
    sput-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->CONDITION_COUNT:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@2c
    .line 4735
    const/4 v0, 0x4

    #@2d
    new-array v0, v0, [Landroid/icu/text/UnicodeSet$SpanCondition;

    #@2f
    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@31
    aput-object v1, v0, v2

    #@33
    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@35
    aput-object v1, v0, v3

    #@37
    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@39
    aput-object v1, v0, v4

    #@3b
    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->CONDITION_COUNT:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@3d
    aput-object v1, v0, v5

    #@3f
    sput-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->$VALUES:[Landroid/icu/text/UnicodeSet$SpanCondition;

    #@41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 4735
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/UnicodeSet$SpanCondition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4735
    const-class v0, Landroid/icu/text/UnicodeSet$SpanCondition;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/UnicodeSet$SpanCondition;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/text/UnicodeSet$SpanCondition;
    .locals 1

    #@0
    .prologue
    .line 4735
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->$VALUES:[Landroid/icu/text/UnicodeSet$SpanCondition;

    #@2
    return-object v0
.end method
