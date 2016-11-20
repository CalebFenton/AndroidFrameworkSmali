.class public final enum Lcom/android/internal/telephony/cat/TextColor;
.super Ljava/lang/Enum;
.source "TextColor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/cat/TextColor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum BLACK:Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum BRIGHT_BLUE:Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum BRIGHT_CYAN:Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum BRIGHT_GREEN:Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum BRIGHT_MAGENTA:Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum BRIGHT_RED:Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum BRIGHT_YELLOW:Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum DARK_BLUE:Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum DARK_CYAN:Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum DARK_GRAY:Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum DARK_GREEN:Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum DARK_MAGENTA:Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum DARK_RED:Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum DARK_YELLOW:Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum GRAY:Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum WHITE:Lcom/android/internal/telephony/cat/TextColor;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x4

    #@1
    const/4 v7, 0x3

    #@2
    const/4 v6, 0x2

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v4, 0x0

    #@5
    .line 26
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    #@7
    const-string/jumbo v1, "BLACK"

    #@a
    invoke-direct {v0, v1, v4, v4}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    #@d
    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->BLACK:Lcom/android/internal/telephony/cat/TextColor;

    #@f
    .line 27
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    #@11
    const-string/jumbo v1, "DARK_GRAY"

    #@14
    invoke-direct {v0, v1, v5, v5}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    #@17
    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->DARK_GRAY:Lcom/android/internal/telephony/cat/TextColor;

    #@19
    .line 28
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    #@1b
    const-string/jumbo v1, "DARK_RED"

    #@1e
    invoke-direct {v0, v1, v6, v6}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    #@21
    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->DARK_RED:Lcom/android/internal/telephony/cat/TextColor;

    #@23
    .line 29
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    #@25
    const-string/jumbo v1, "DARK_YELLOW"

    #@28
    invoke-direct {v0, v1, v7, v7}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    #@2b
    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->DARK_YELLOW:Lcom/android/internal/telephony/cat/TextColor;

    #@2d
    .line 30
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    #@2f
    const-string/jumbo v1, "DARK_GREEN"

    #@32
    invoke-direct {v0, v1, v8, v8}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    #@35
    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->DARK_GREEN:Lcom/android/internal/telephony/cat/TextColor;

    #@37
    .line 31
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    #@39
    const-string/jumbo v1, "DARK_CYAN"

    #@3c
    const/4 v2, 0x5

    #@3d
    const/4 v3, 0x5

    #@3e
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    #@41
    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->DARK_CYAN:Lcom/android/internal/telephony/cat/TextColor;

    #@43
    .line 32
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    #@45
    const-string/jumbo v1, "DARK_BLUE"

    #@48
    const/4 v2, 0x6

    #@49
    const/4 v3, 0x6

    #@4a
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    #@4d
    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->DARK_BLUE:Lcom/android/internal/telephony/cat/TextColor;

    #@4f
    .line 33
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    #@51
    const-string/jumbo v1, "DARK_MAGENTA"

    #@54
    const/4 v2, 0x7

    #@55
    const/4 v3, 0x7

    #@56
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    #@59
    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->DARK_MAGENTA:Lcom/android/internal/telephony/cat/TextColor;

    #@5b
    .line 34
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    #@5d
    const-string/jumbo v1, "GRAY"

    #@60
    const/16 v2, 0x8

    #@62
    const/16 v3, 0x8

    #@64
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    #@67
    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->GRAY:Lcom/android/internal/telephony/cat/TextColor;

    #@69
    .line 35
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    #@6b
    const-string/jumbo v1, "WHITE"

    #@6e
    const/16 v2, 0x9

    #@70
    const/16 v3, 0x9

    #@72
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    #@75
    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->WHITE:Lcom/android/internal/telephony/cat/TextColor;

    #@77
    .line 36
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    #@79
    const-string/jumbo v1, "BRIGHT_RED"

    #@7c
    const/16 v2, 0xa

    #@7e
    const/16 v3, 0xa

    #@80
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    #@83
    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->BRIGHT_RED:Lcom/android/internal/telephony/cat/TextColor;

    #@85
    .line 37
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    #@87
    const-string/jumbo v1, "BRIGHT_YELLOW"

    #@8a
    const/16 v2, 0xb

    #@8c
    const/16 v3, 0xb

    #@8e
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    #@91
    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->BRIGHT_YELLOW:Lcom/android/internal/telephony/cat/TextColor;

    #@93
    .line 38
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    #@95
    const-string/jumbo v1, "BRIGHT_GREEN"

    #@98
    const/16 v2, 0xc

    #@9a
    const/16 v3, 0xc

    #@9c
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    #@9f
    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->BRIGHT_GREEN:Lcom/android/internal/telephony/cat/TextColor;

    #@a1
    .line 39
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    #@a3
    const-string/jumbo v1, "BRIGHT_CYAN"

    #@a6
    const/16 v2, 0xd

    #@a8
    const/16 v3, 0xd

    #@aa
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    #@ad
    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->BRIGHT_CYAN:Lcom/android/internal/telephony/cat/TextColor;

    #@af
    .line 40
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    #@b1
    const-string/jumbo v1, "BRIGHT_BLUE"

    #@b4
    const/16 v2, 0xe

    #@b6
    const/16 v3, 0xe

    #@b8
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    #@bb
    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->BRIGHT_BLUE:Lcom/android/internal/telephony/cat/TextColor;

    #@bd
    .line 41
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    #@bf
    const-string/jumbo v1, "BRIGHT_MAGENTA"

    #@c2
    const/16 v2, 0xf

    #@c4
    const/16 v3, 0xf

    #@c6
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    #@c9
    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->BRIGHT_MAGENTA:Lcom/android/internal/telephony/cat/TextColor;

    #@cb
    .line 25
    const/16 v0, 0x10

    #@cd
    new-array v0, v0, [Lcom/android/internal/telephony/cat/TextColor;

    #@cf
    sget-object v1, Lcom/android/internal/telephony/cat/TextColor;->BLACK:Lcom/android/internal/telephony/cat/TextColor;

    #@d1
    aput-object v1, v0, v4

    #@d3
    sget-object v1, Lcom/android/internal/telephony/cat/TextColor;->DARK_GRAY:Lcom/android/internal/telephony/cat/TextColor;

    #@d5
    aput-object v1, v0, v5

    #@d7
    sget-object v1, Lcom/android/internal/telephony/cat/TextColor;->DARK_RED:Lcom/android/internal/telephony/cat/TextColor;

    #@d9
    aput-object v1, v0, v6

    #@db
    sget-object v1, Lcom/android/internal/telephony/cat/TextColor;->DARK_YELLOW:Lcom/android/internal/telephony/cat/TextColor;

    #@dd
    aput-object v1, v0, v7

    #@df
    sget-object v1, Lcom/android/internal/telephony/cat/TextColor;->DARK_GREEN:Lcom/android/internal/telephony/cat/TextColor;

    #@e1
    aput-object v1, v0, v8

    #@e3
    sget-object v1, Lcom/android/internal/telephony/cat/TextColor;->DARK_CYAN:Lcom/android/internal/telephony/cat/TextColor;

    #@e5
    const/4 v2, 0x5

    #@e6
    aput-object v1, v0, v2

    #@e8
    sget-object v1, Lcom/android/internal/telephony/cat/TextColor;->DARK_BLUE:Lcom/android/internal/telephony/cat/TextColor;

    #@ea
    const/4 v2, 0x6

    #@eb
    aput-object v1, v0, v2

    #@ed
    sget-object v1, Lcom/android/internal/telephony/cat/TextColor;->DARK_MAGENTA:Lcom/android/internal/telephony/cat/TextColor;

    #@ef
    const/4 v2, 0x7

    #@f0
    aput-object v1, v0, v2

    #@f2
    sget-object v1, Lcom/android/internal/telephony/cat/TextColor;->GRAY:Lcom/android/internal/telephony/cat/TextColor;

    #@f4
    const/16 v2, 0x8

    #@f6
    aput-object v1, v0, v2

    #@f8
    sget-object v1, Lcom/android/internal/telephony/cat/TextColor;->WHITE:Lcom/android/internal/telephony/cat/TextColor;

    #@fa
    const/16 v2, 0x9

    #@fc
    aput-object v1, v0, v2

    #@fe
    sget-object v1, Lcom/android/internal/telephony/cat/TextColor;->BRIGHT_RED:Lcom/android/internal/telephony/cat/TextColor;

    #@100
    const/16 v2, 0xa

    #@102
    aput-object v1, v0, v2

    #@104
    sget-object v1, Lcom/android/internal/telephony/cat/TextColor;->BRIGHT_YELLOW:Lcom/android/internal/telephony/cat/TextColor;

    #@106
    const/16 v2, 0xb

    #@108
    aput-object v1, v0, v2

    #@10a
    sget-object v1, Lcom/android/internal/telephony/cat/TextColor;->BRIGHT_GREEN:Lcom/android/internal/telephony/cat/TextColor;

    #@10c
    const/16 v2, 0xc

    #@10e
    aput-object v1, v0, v2

    #@110
    sget-object v1, Lcom/android/internal/telephony/cat/TextColor;->BRIGHT_CYAN:Lcom/android/internal/telephony/cat/TextColor;

    #@112
    const/16 v2, 0xd

    #@114
    aput-object v1, v0, v2

    #@116
    sget-object v1, Lcom/android/internal/telephony/cat/TextColor;->BRIGHT_BLUE:Lcom/android/internal/telephony/cat/TextColor;

    #@118
    const/16 v2, 0xe

    #@11a
    aput-object v1, v0, v2

    #@11c
    sget-object v1, Lcom/android/internal/telephony/cat/TextColor;->BRIGHT_MAGENTA:Lcom/android/internal/telephony/cat/TextColor;

    #@11e
    const/16 v2, 0xf

    #@120
    aput-object v1, v0, v2

    #@122
    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->$VALUES:[Lcom/android/internal/telephony/cat/TextColor;

    #@124
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I

    #@0
    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 46
    iput p3, p0, Lcom/android/internal/telephony/cat/TextColor;->mValue:I

    #@5
    .line 45
    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/cat/TextColor;
    .locals 5
    .param p0, "value"    # I

    #@0
    .prologue
    .line 56
    invoke-static {}, Lcom/android/internal/telephony/cat/TextColor;->values()[Lcom/android/internal/telephony/cat/TextColor;

    #@3
    move-result-object v2

    #@4
    const/4 v1, 0x0

    #@5
    array-length v3, v2

    #@6
    :goto_0
    if-ge v1, v3, :cond_1

    #@8
    aget-object v0, v2, v1

    #@a
    .line 57
    .local v0, "e":Lcom/android/internal/telephony/cat/TextColor;
    iget v4, v0, Lcom/android/internal/telephony/cat/TextColor;->mValue:I

    #@c
    if-ne v4, p0, :cond_0

    #@e
    .line 58
    return-object v0

    #@f
    .line 56
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_0

    #@12
    .line 61
    .end local v0    # "e":Lcom/android/internal/telephony/cat/TextColor;
    :cond_1
    const/4 v1, 0x0

    #@13
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/TextColor;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 25
    const-class v0, Lcom/android/internal/telephony/cat/TextColor;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/cat/TextColor;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/cat/TextColor;
    .locals 1

    #@0
    .prologue
    .line 25
    sget-object v0, Lcom/android/internal/telephony/cat/TextColor;->$VALUES:[Lcom/android/internal/telephony/cat/TextColor;

    #@2
    return-object v0
.end method
