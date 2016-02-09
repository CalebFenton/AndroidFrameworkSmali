.class public final enum Landroid/icu/text/RelativeDateTimeFormatter$Direction;
.super Ljava/lang/Enum;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RelativeDateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/RelativeDateTimeFormatter$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$Direction;

.field public static final enum LAST:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

.field public static final enum LAST_2:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

.field public static final enum NEXT:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

.field public static final enum NEXT_2:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

.field public static final enum PLAIN:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

.field public static final enum THIS:Landroid/icu/text/RelativeDateTimeFormatter$Direction;


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
    .line 234
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@7
    const-string/jumbo v1, "LAST_2"

    #@a
    invoke-direct {v0, v1, v3}, Landroid/icu/text/RelativeDateTimeFormatter$Direction;-><init>(Ljava/lang/String;I)V

    #@d
    .line 238
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST_2:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@f
    .line 240
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@11
    const-string/jumbo v1, "LAST"

    #@14
    invoke-direct {v0, v1, v4}, Landroid/icu/text/RelativeDateTimeFormatter$Direction;-><init>(Ljava/lang/String;I)V

    #@17
    .line 244
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@19
    .line 246
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@1b
    const-string/jumbo v1, "THIS"

    #@1e
    invoke-direct {v0, v1, v5}, Landroid/icu/text/RelativeDateTimeFormatter$Direction;-><init>(Ljava/lang/String;I)V

    #@21
    .line 250
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->THIS:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@23
    .line 252
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@25
    const-string/jumbo v1, "NEXT"

    #@28
    invoke-direct {v0, v1, v6}, Landroid/icu/text/RelativeDateTimeFormatter$Direction;-><init>(Ljava/lang/String;I)V

    #@2b
    .line 256
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@2d
    .line 258
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@2f
    const-string/jumbo v1, "NEXT_2"

    #@32
    invoke-direct {v0, v1, v7}, Landroid/icu/text/RelativeDateTimeFormatter$Direction;-><init>(Ljava/lang/String;I)V

    #@35
    .line 262
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT_2:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@37
    .line 264
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@39
    const-string/jumbo v1, "PLAIN"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$Direction;-><init>(Ljava/lang/String;I)V

    #@40
    .line 268
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->PLAIN:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@42
    .line 232
    const/4 v0, 0x6

    #@43
    new-array v0, v0, [Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@45
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST_2:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@47
    aput-object v1, v0, v3

    #@49
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@4b
    aput-object v1, v0, v4

    #@4d
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->THIS:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@4f
    aput-object v1, v0, v5

    #@51
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@53
    aput-object v1, v0, v6

    #@55
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT_2:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@57
    aput-object v1, v0, v7

    #@59
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->PLAIN:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@5b
    const/4 v2, 0x5

    #@5c
    aput-object v1, v0, v2

    #@5e
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->$VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@60
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 232
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 232
    const-class v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    .locals 1

    #@0
    .prologue
    .line 232
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->$VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@2
    return-object v0
.end method
