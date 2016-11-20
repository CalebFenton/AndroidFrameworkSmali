.class public final enum Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
.super Ljava/lang/Enum;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RelativeDateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RelativeUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

.field public static final enum DAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

.field public static final enum HOURS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

.field public static final enum MINUTES:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

.field public static final enum MONTHS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

.field public static final enum QUARTERS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum SECONDS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

.field public static final enum WEEKS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

.field public static final enum YEARS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;


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
    .line 103
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@7
    const-string/jumbo v1, "SECONDS"

    #@a
    invoke-direct {v0, v1, v3}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;-><init>(Ljava/lang/String;I)V

    #@d
    .line 106
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->SECONDS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@f
    .line 108
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@11
    const-string/jumbo v1, "MINUTES"

    #@14
    invoke-direct {v0, v1, v4}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;-><init>(Ljava/lang/String;I)V

    #@17
    .line 111
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->MINUTES:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@19
    .line 113
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@1b
    const-string/jumbo v1, "HOURS"

    #@1e
    invoke-direct {v0, v1, v5}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;-><init>(Ljava/lang/String;I)V

    #@21
    .line 116
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->HOURS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@23
    .line 118
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@25
    const-string/jumbo v1, "DAYS"

    #@28
    invoke-direct {v0, v1, v6}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;-><init>(Ljava/lang/String;I)V

    #@2b
    .line 121
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->DAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@2d
    .line 123
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@2f
    const-string/jumbo v1, "WEEKS"

    #@32
    invoke-direct {v0, v1, v7}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;-><init>(Ljava/lang/String;I)V

    #@35
    .line 126
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->WEEKS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@37
    .line 128
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@39
    const-string/jumbo v1, "MONTHS"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;-><init>(Ljava/lang/String;I)V

    #@40
    .line 131
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->MONTHS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@42
    .line 133
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@44
    const-string/jumbo v1, "YEARS"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;-><init>(Ljava/lang/String;I)V

    #@4b
    .line 136
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->YEARS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@4d
    .line 138
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@4f
    const-string/jumbo v1, "QUARTERS"

    #@52
    const/4 v2, 0x7

    #@53
    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;-><init>(Ljava/lang/String;I)V

    #@56
    .line 144
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->QUARTERS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@58
    .line 101
    const/16 v0, 0x8

    #@5a
    new-array v0, v0, [Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@5c
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->SECONDS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@5e
    aput-object v1, v0, v3

    #@60
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->MINUTES:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@62
    aput-object v1, v0, v4

    #@64
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->HOURS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@66
    aput-object v1, v0, v5

    #@68
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->DAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@6a
    aput-object v1, v0, v6

    #@6c
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->WEEKS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@6e
    aput-object v1, v0, v7

    #@70
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->MONTHS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@72
    const/4 v2, 0x5

    #@73
    aput-object v1, v0, v2

    #@75
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->YEARS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@77
    const/4 v2, 0x6

    #@78
    aput-object v1, v0, v2

    #@7a
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->QUARTERS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@7c
    const/4 v2, 0x7

    #@7d
    aput-object v1, v0, v2

    #@7f
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->$VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@81
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 101
    const-class v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .locals 1

    #@0
    .prologue
    .line 101
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->$VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@2
    return-object v0
.end method
