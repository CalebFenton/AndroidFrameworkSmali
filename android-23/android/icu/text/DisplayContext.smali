.class public final enum Landroid/icu/text/DisplayContext;
.super Ljava/lang/Enum;
.source "DisplayContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/DisplayContext$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/DisplayContext;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/DisplayContext;

.field public static final enum CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

.field public static final enum CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE:Landroid/icu/text/DisplayContext;

.field public static final enum CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

.field public static final enum CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

.field public static final enum CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

.field public static final enum DIALECT_NAMES:Landroid/icu/text/DisplayContext;

.field public static final enum LENGTH_FULL:Landroid/icu/text/DisplayContext;

.field public static final enum LENGTH_SHORT:Landroid/icu/text/DisplayContext;

.field public static final enum STANDARD_NAMES:Landroid/icu/text/DisplayContext;


# instance fields
.field private final type:Landroid/icu/text/DisplayContext$Type;

.field private final value:I


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
    .line 15
    new-instance v0, Landroid/icu/text/DisplayContext;

    #@7
    const-string/jumbo v1, "STANDARD_NAMES"

    #@a
    .line 25
    sget-object v2, Landroid/icu/text/DisplayContext$Type;->DIALECT_HANDLING:Landroid/icu/text/DisplayContext$Type;

    #@c
    .line 15
    invoke-direct {v0, v1, v4, v2, v4}, Landroid/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILandroid/icu/text/DisplayContext$Type;I)V

    #@f
    .line 25
    sput-object v0, Landroid/icu/text/DisplayContext;->STANDARD_NAMES:Landroid/icu/text/DisplayContext;

    #@11
    .line 26
    new-instance v0, Landroid/icu/text/DisplayContext;

    #@13
    const-string/jumbo v1, "DIALECT_NAMES"

    #@16
    .line 32
    sget-object v2, Landroid/icu/text/DisplayContext$Type;->DIALECT_HANDLING:Landroid/icu/text/DisplayContext$Type;

    #@18
    .line 26
    invoke-direct {v0, v1, v5, v2, v5}, Landroid/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILandroid/icu/text/DisplayContext$Type;I)V

    #@1b
    .line 32
    sput-object v0, Landroid/icu/text/DisplayContext;->DIALECT_NAMES:Landroid/icu/text/DisplayContext;

    #@1d
    .line 33
    new-instance v0, Landroid/icu/text/DisplayContext;

    #@1f
    const-string/jumbo v1, "CAPITALIZATION_NONE"

    #@22
    .line 42
    sget-object v2, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    #@24
    .line 33
    invoke-direct {v0, v1, v6, v2, v4}, Landroid/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILandroid/icu/text/DisplayContext$Type;I)V

    #@27
    .line 42
    sput-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    #@29
    .line 43
    new-instance v0, Landroid/icu/text/DisplayContext;

    #@2b
    const-string/jumbo v1, "CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE"

    #@2e
    .line 49
    sget-object v2, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    #@30
    .line 43
    invoke-direct {v0, v1, v7, v2, v5}, Landroid/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILandroid/icu/text/DisplayContext$Type;I)V

    #@33
    .line 49
    sput-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    #@35
    .line 50
    new-instance v0, Landroid/icu/text/DisplayContext;

    #@37
    const-string/jumbo v1, "CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE"

    #@3a
    .line 56
    sget-object v2, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    #@3c
    .line 50
    invoke-direct {v0, v1, v8, v2, v6}, Landroid/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILandroid/icu/text/DisplayContext$Type;I)V

    #@3f
    .line 56
    sput-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    #@41
    .line 57
    new-instance v0, Landroid/icu/text/DisplayContext;

    #@43
    const-string/jumbo v1, "CAPITALIZATION_FOR_UI_LIST_OR_MENU"

    #@46
    .line 63
    sget-object v2, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    #@48
    .line 57
    const/4 v3, 0x5

    #@49
    invoke-direct {v0, v1, v3, v2, v7}, Landroid/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILandroid/icu/text/DisplayContext$Type;I)V

    #@4c
    .line 63
    sput-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    #@4e
    .line 64
    new-instance v0, Landroid/icu/text/DisplayContext;

    #@50
    const-string/jumbo v1, "CAPITALIZATION_FOR_STANDALONE"

    #@53
    .line 71
    sget-object v2, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    #@55
    .line 64
    const/4 v3, 0x6

    #@56
    invoke-direct {v0, v1, v3, v2, v8}, Landroid/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILandroid/icu/text/DisplayContext$Type;I)V

    #@59
    .line 71
    sput-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    #@5b
    .line 72
    new-instance v0, Landroid/icu/text/DisplayContext;

    #@5d
    const-string/jumbo v1, "LENGTH_FULL"

    #@60
    .line 83
    sget-object v2, Landroid/icu/text/DisplayContext$Type;->DISPLAY_LENGTH:Landroid/icu/text/DisplayContext$Type;

    #@62
    .line 72
    const/4 v3, 0x7

    #@63
    invoke-direct {v0, v1, v3, v2, v4}, Landroid/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILandroid/icu/text/DisplayContext$Type;I)V

    #@66
    .line 83
    sput-object v0, Landroid/icu/text/DisplayContext;->LENGTH_FULL:Landroid/icu/text/DisplayContext;

    #@68
    .line 84
    new-instance v0, Landroid/icu/text/DisplayContext;

    #@6a
    const-string/jumbo v1, "LENGTH_SHORT"

    #@6d
    .line 91
    sget-object v2, Landroid/icu/text/DisplayContext$Type;->DISPLAY_LENGTH:Landroid/icu/text/DisplayContext$Type;

    #@6f
    .line 84
    const/16 v3, 0x8

    #@71
    invoke-direct {v0, v1, v3, v2, v5}, Landroid/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILandroid/icu/text/DisplayContext$Type;I)V

    #@74
    .line 91
    sput-object v0, Landroid/icu/text/DisplayContext;->LENGTH_SHORT:Landroid/icu/text/DisplayContext;

    #@76
    .line 14
    const/16 v0, 0x9

    #@78
    new-array v0, v0, [Landroid/icu/text/DisplayContext;

    #@7a
    sget-object v1, Landroid/icu/text/DisplayContext;->STANDARD_NAMES:Landroid/icu/text/DisplayContext;

    #@7c
    aput-object v1, v0, v4

    #@7e
    sget-object v1, Landroid/icu/text/DisplayContext;->DIALECT_NAMES:Landroid/icu/text/DisplayContext;

    #@80
    aput-object v1, v0, v5

    #@82
    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    #@84
    aput-object v1, v0, v6

    #@86
    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    #@88
    aput-object v1, v0, v7

    #@8a
    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    #@8c
    aput-object v1, v0, v8

    #@8e
    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    #@90
    const/4 v2, 0x5

    #@91
    aput-object v1, v0, v2

    #@93
    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    #@95
    const/4 v2, 0x6

    #@96
    aput-object v1, v0, v2

    #@98
    sget-object v1, Landroid/icu/text/DisplayContext;->LENGTH_FULL:Landroid/icu/text/DisplayContext;

    #@9a
    const/4 v2, 0x7

    #@9b
    aput-object v1, v0, v2

    #@9d
    sget-object v1, Landroid/icu/text/DisplayContext;->LENGTH_SHORT:Landroid/icu/text/DisplayContext;

    #@9f
    const/16 v2, 0x8

    #@a1
    aput-object v1, v0, v2

    #@a3
    sput-object v0, Landroid/icu/text/DisplayContext;->$VALUES:[Landroid/icu/text/DisplayContext;

    #@a5
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/icu/text/DisplayContext$Type;I)V
    .locals 0
    .param p3, "type"    # Landroid/icu/text/DisplayContext$Type;
    .param p4, "value"    # I

    #@0
    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 120
    iput-object p3, p0, Landroid/icu/text/DisplayContext;->type:Landroid/icu/text/DisplayContext$Type;

    #@5
    .line 121
    iput p4, p0, Landroid/icu/text/DisplayContext;->value:I

    #@7
    .line 119
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/DisplayContext;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 14
    const-class v0, Landroid/icu/text/DisplayContext;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/DisplayContext;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/text/DisplayContext;
    .locals 1

    #@0
    .prologue
    .line 14
    sget-object v0, Landroid/icu/text/DisplayContext;->$VALUES:[Landroid/icu/text/DisplayContext;

    #@2
    return-object v0
.end method


# virtual methods
.method public type()Landroid/icu/text/DisplayContext$Type;
    .locals 1

    #@0
    .prologue
    .line 129
    iget-object v0, p0, Landroid/icu/text/DisplayContext;->type:Landroid/icu/text/DisplayContext$Type;

    #@2
    return-object v0
.end method

.method public value()I
    .locals 1

    #@0
    .prologue
    .line 137
    iget v0, p0, Landroid/icu/text/DisplayContext;->value:I

    #@2
    return v0
.end method
