.class public final enum Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;
.super Ljava/lang/Enum;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RelativeDateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AbsoluteUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

.field public static final enum DAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

.field public static final enum FRIDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

.field public static final enum MONDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

.field public static final enum MONTH:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

.field public static final enum NOW:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

.field public static final enum QUARTER:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum SATURDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

.field public static final enum SUNDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

.field public static final enum THURSDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

.field public static final enum TUESDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

.field public static final enum WEDNESDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

.field public static final enum WEEK:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

.field public static final enum YEAR:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;


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
    .line 152
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@7
    const-string/jumbo v1, "SUNDAY"

    #@a
    invoke-direct {v0, v1, v3}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;-><init>(Ljava/lang/String;I)V

    #@d
    .line 155
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->SUNDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@f
    .line 157
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@11
    const-string/jumbo v1, "MONDAY"

    #@14
    invoke-direct {v0, v1, v4}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;-><init>(Ljava/lang/String;I)V

    #@17
    .line 160
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->MONDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@19
    .line 162
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@1b
    const-string/jumbo v1, "TUESDAY"

    #@1e
    invoke-direct {v0, v1, v5}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;-><init>(Ljava/lang/String;I)V

    #@21
    .line 165
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->TUESDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@23
    .line 167
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@25
    const-string/jumbo v1, "WEDNESDAY"

    #@28
    invoke-direct {v0, v1, v6}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;-><init>(Ljava/lang/String;I)V

    #@2b
    .line 170
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->WEDNESDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@2d
    .line 172
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@2f
    const-string/jumbo v1, "THURSDAY"

    #@32
    invoke-direct {v0, v1, v7}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;-><init>(Ljava/lang/String;I)V

    #@35
    .line 175
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->THURSDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@37
    .line 177
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@39
    const-string/jumbo v1, "FRIDAY"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;-><init>(Ljava/lang/String;I)V

    #@40
    .line 180
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->FRIDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@42
    .line 182
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@44
    const-string/jumbo v1, "SATURDAY"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;-><init>(Ljava/lang/String;I)V

    #@4b
    .line 185
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->SATURDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@4d
    .line 187
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@4f
    const-string/jumbo v1, "DAY"

    #@52
    const/4 v2, 0x7

    #@53
    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;-><init>(Ljava/lang/String;I)V

    #@56
    .line 190
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@58
    .line 192
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@5a
    const-string/jumbo v1, "WEEK"

    #@5d
    const/16 v2, 0x8

    #@5f
    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;-><init>(Ljava/lang/String;I)V

    #@62
    .line 195
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->WEEK:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@64
    .line 197
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@66
    const-string/jumbo v1, "MONTH"

    #@69
    const/16 v2, 0x9

    #@6b
    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;-><init>(Ljava/lang/String;I)V

    #@6e
    .line 200
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->MONTH:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@70
    .line 202
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@72
    const-string/jumbo v1, "YEAR"

    #@75
    const/16 v2, 0xa

    #@77
    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;-><init>(Ljava/lang/String;I)V

    #@7a
    .line 205
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->YEAR:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@7c
    .line 207
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@7e
    const-string/jumbo v1, "NOW"

    #@81
    const/16 v2, 0xb

    #@83
    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;-><init>(Ljava/lang/String;I)V

    #@86
    .line 210
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->NOW:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@88
    .line 212
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@8a
    const-string/jumbo v1, "QUARTER"

    #@8d
    const/16 v2, 0xc

    #@8f
    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;-><init>(Ljava/lang/String;I)V

    #@92
    .line 218
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->QUARTER:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@94
    .line 150
    const/16 v0, 0xd

    #@96
    new-array v0, v0, [Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@98
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->SUNDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@9a
    aput-object v1, v0, v3

    #@9c
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->MONDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@9e
    aput-object v1, v0, v4

    #@a0
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->TUESDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@a2
    aput-object v1, v0, v5

    #@a4
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->WEDNESDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@a6
    aput-object v1, v0, v6

    #@a8
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->THURSDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@aa
    aput-object v1, v0, v7

    #@ac
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->FRIDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@ae
    const/4 v2, 0x5

    #@af
    aput-object v1, v0, v2

    #@b1
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->SATURDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@b3
    const/4 v2, 0x6

    #@b4
    aput-object v1, v0, v2

    #@b6
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@b8
    const/4 v2, 0x7

    #@b9
    aput-object v1, v0, v2

    #@bb
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->WEEK:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@bd
    const/16 v2, 0x8

    #@bf
    aput-object v1, v0, v2

    #@c1
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->MONTH:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@c3
    const/16 v2, 0x9

    #@c5
    aput-object v1, v0, v2

    #@c7
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->YEAR:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@c9
    const/16 v2, 0xa

    #@cb
    aput-object v1, v0, v2

    #@cd
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->NOW:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@cf
    const/16 v2, 0xb

    #@d1
    aput-object v1, v0, v2

    #@d3
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->QUARTER:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@d5
    const/16 v2, 0xc

    #@d7
    aput-object v1, v0, v2

    #@d9
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->$VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@db
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 150
    const-class v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;
    .locals 1

    #@0
    .prologue
    .line 150
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->$VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@2
    return-object v0
.end method
