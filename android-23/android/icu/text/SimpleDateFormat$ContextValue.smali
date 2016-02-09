.class final enum Landroid/icu/text/SimpleDateFormat$ContextValue;
.super Ljava/lang/Enum;
.source "SimpleDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SimpleDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ContextValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/SimpleDateFormat$ContextValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/SimpleDateFormat$ContextValue;

.field public static final enum CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/SimpleDateFormat$ContextValue;

.field public static final enum CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE:Landroid/icu/text/SimpleDateFormat$ContextValue;

.field public static final enum CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/SimpleDateFormat$ContextValue;

.field public static final enum CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/SimpleDateFormat$ContextValue;

.field public static final enum UNKNOWN:Landroid/icu/text/SimpleDateFormat$ContextValue;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x4

    #@1
    const/4 v5, 0x3

    #@2
    const/4 v4, 0x2

    #@3
    const/4 v3, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    .line 945
    new-instance v0, Landroid/icu/text/SimpleDateFormat$ContextValue;

    #@7
    const-string/jumbo v1, "UNKNOWN"

    #@a
    invoke-direct {v0, v1, v2}, Landroid/icu/text/SimpleDateFormat$ContextValue;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Landroid/icu/text/SimpleDateFormat$ContextValue;->UNKNOWN:Landroid/icu/text/SimpleDateFormat$ContextValue;

    #@f
    .line 946
    new-instance v0, Landroid/icu/text/SimpleDateFormat$ContextValue;

    #@11
    const-string/jumbo v1, "CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE"

    #@14
    invoke-direct {v0, v1, v3}, Landroid/icu/text/SimpleDateFormat$ContextValue;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Landroid/icu/text/SimpleDateFormat$ContextValue;->CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE:Landroid/icu/text/SimpleDateFormat$ContextValue;

    #@19
    .line 947
    new-instance v0, Landroid/icu/text/SimpleDateFormat$ContextValue;

    #@1b
    const-string/jumbo v1, "CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE"

    #@1e
    invoke-direct {v0, v1, v4}, Landroid/icu/text/SimpleDateFormat$ContextValue;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Landroid/icu/text/SimpleDateFormat$ContextValue;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/SimpleDateFormat$ContextValue;

    #@23
    .line 948
    new-instance v0, Landroid/icu/text/SimpleDateFormat$ContextValue;

    #@25
    const-string/jumbo v1, "CAPITALIZATION_FOR_UI_LIST_OR_MENU"

    #@28
    invoke-direct {v0, v1, v5}, Landroid/icu/text/SimpleDateFormat$ContextValue;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Landroid/icu/text/SimpleDateFormat$ContextValue;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/SimpleDateFormat$ContextValue;

    #@2d
    .line 949
    new-instance v0, Landroid/icu/text/SimpleDateFormat$ContextValue;

    #@2f
    const-string/jumbo v1, "CAPITALIZATION_FOR_STANDALONE"

    #@32
    invoke-direct {v0, v1, v6}, Landroid/icu/text/SimpleDateFormat$ContextValue;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Landroid/icu/text/SimpleDateFormat$ContextValue;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/SimpleDateFormat$ContextValue;

    #@37
    .line 944
    const/4 v0, 0x5

    #@38
    new-array v0, v0, [Landroid/icu/text/SimpleDateFormat$ContextValue;

    #@3a
    sget-object v1, Landroid/icu/text/SimpleDateFormat$ContextValue;->UNKNOWN:Landroid/icu/text/SimpleDateFormat$ContextValue;

    #@3c
    aput-object v1, v0, v2

    #@3e
    sget-object v1, Landroid/icu/text/SimpleDateFormat$ContextValue;->CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE:Landroid/icu/text/SimpleDateFormat$ContextValue;

    #@40
    aput-object v1, v0, v3

    #@42
    sget-object v1, Landroid/icu/text/SimpleDateFormat$ContextValue;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/SimpleDateFormat$ContextValue;

    #@44
    aput-object v1, v0, v4

    #@46
    sget-object v1, Landroid/icu/text/SimpleDateFormat$ContextValue;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/SimpleDateFormat$ContextValue;

    #@48
    aput-object v1, v0, v5

    #@4a
    sget-object v1, Landroid/icu/text/SimpleDateFormat$ContextValue;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/SimpleDateFormat$ContextValue;

    #@4c
    aput-object v1, v0, v6

    #@4e
    sput-object v0, Landroid/icu/text/SimpleDateFormat$ContextValue;->$VALUES:[Landroid/icu/text/SimpleDateFormat$ContextValue;

    #@50
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 944
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/SimpleDateFormat$ContextValue;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 944
    const-class v0, Landroid/icu/text/SimpleDateFormat$ContextValue;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/SimpleDateFormat$ContextValue;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/text/SimpleDateFormat$ContextValue;
    .locals 1

    #@0
    .prologue
    .line 944
    sget-object v0, Landroid/icu/text/SimpleDateFormat$ContextValue;->$VALUES:[Landroid/icu/text/SimpleDateFormat$ContextValue;

    #@2
    return-object v0
.end method
