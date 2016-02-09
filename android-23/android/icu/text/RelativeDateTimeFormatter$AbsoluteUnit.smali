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
    .line 154
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@7
    const-string/jumbo v1, "SUNDAY"

    #@a
    invoke-direct {v0, v1, v3}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;-><init>(Ljava/lang/String;I)V

    #@d
    .line 158
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->SUNDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@f
    .line 160
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@11
    const-string/jumbo v1, "MONDAY"

    #@14
    invoke-direct {v0, v1, v4}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;-><init>(Ljava/lang/String;I)V

    #@17
    .line 164
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->MONDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@19
    .line 166
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@1b
    const-string/jumbo v1, "TUESDAY"

    #@1e
    invoke-direct {v0, v1, v5}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;-><init>(Ljava/lang/String;I)V

    #@21
    .line 170
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->TUESDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@23
    .line 172
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@25
    const-string/jumbo v1, "WEDNESDAY"

    #@28
    invoke-direct {v0, v1, v6}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;-><init>(Ljava/lang/String;I)V

    #@2b
    .line 176
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->WEDNESDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@2d
    .line 178
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@2f
    const-string/jumbo v1, "THURSDAY"

    #@32
    invoke-direct {v0, v1, v7}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;-><init>(Ljava/lang/String;I)V

    #@35
    .line 182
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->THURSDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@37
    .line 184
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@39
    const-string/jumbo v1, "FRIDAY"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;-><init>(Ljava/lang/String;I)V

    #@40
    .line 188
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->FRIDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@42
    .line 190
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@44
    const-string/jumbo v1, "SATURDAY"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;-><init>(Ljava/lang/String;I)V

    #@4b
    .line 194
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->SATURDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@4d
    .line 196
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@4f
    const-string/jumbo v1, "DAY"

    #@52
    const/4 v2, 0x7

    #@53
    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;-><init>(Ljava/lang/String;I)V

    #@56
    .line 200
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@58
    .line 202
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@5a
    const-string/jumbo v1, "WEEK"

    #@5d
    const/16 v2, 0x8

    #@5f
    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;-><init>(Ljava/lang/String;I)V

    #@62
    .line 206
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->WEEK:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@64
    .line 208
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@66
    const-string/jumbo v1, "MONTH"

    #@69
    const/16 v2, 0x9

    #@6b
    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;-><init>(Ljava/lang/String;I)V

    #@6e
    .line 212
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->MONTH:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@70
    .line 214
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@72
    const-string/jumbo v1, "YEAR"

    #@75
    const/16 v2, 0xa

    #@77
    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;-><init>(Ljava/lang/String;I)V

    #@7a
    .line 218
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->YEAR:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@7c
    .line 220
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@7e
    const-string/jumbo v1, "NOW"

    #@81
    const/16 v2, 0xb

    #@83
    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;-><init>(Ljava/lang/String;I)V

    #@86
    .line 224
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->NOW:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@88
    .line 152
    const/16 v0, 0xc

    #@8a
    new-array v0, v0, [Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@8c
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->SUNDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@8e
    aput-object v1, v0, v3

    #@90
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->MONDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@92
    aput-object v1, v0, v4

    #@94
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->TUESDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@96
    aput-object v1, v0, v5

    #@98
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->WEDNESDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@9a
    aput-object v1, v0, v6

    #@9c
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->THURSDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@9e
    aput-object v1, v0, v7

    #@a0
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->FRIDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@a2
    const/4 v2, 0x5

    #@a3
    aput-object v1, v0, v2

    #@a5
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->SATURDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@a7
    const/4 v2, 0x6

    #@a8
    aput-object v1, v0, v2

    #@aa
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@ac
    const/4 v2, 0x7

    #@ad
    aput-object v1, v0, v2

    #@af
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->WEEK:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@b1
    const/16 v2, 0x8

    #@b3
    aput-object v1, v0, v2

    #@b5
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->MONTH:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@b7
    const/16 v2, 0x9

    #@b9
    aput-object v1, v0, v2

    #@bb
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->YEAR:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@bd
    const/16 v2, 0xa

    #@bf
    aput-object v1, v0, v2

    #@c1
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->NOW:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@c3
    const/16 v2, 0xb

    #@c5
    aput-object v1, v0, v2

    #@c7
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->$VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@c9
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 152
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
    .line 152
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->$VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@2
    return-object v0
.end method
