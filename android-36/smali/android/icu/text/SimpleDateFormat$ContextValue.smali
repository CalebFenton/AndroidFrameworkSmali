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
        "Ljava/lang/Enum<",
        "Landroid/icu/text/SimpleDateFormat$ContextValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/SimpleDateFormat$ContextValue;

.field public static final enum greylist-max-o CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/SimpleDateFormat$ContextValue;

.field public static final enum greylist-max-o CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE:Landroid/icu/text/SimpleDateFormat$ContextValue;

.field public static final enum greylist-max-o CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/SimpleDateFormat$ContextValue;

.field public static final enum greylist-max-o CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/SimpleDateFormat$ContextValue;

.field public static final enum greylist-max-o UNKNOWN:Landroid/icu/text/SimpleDateFormat$ContextValue;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/SimpleDateFormat$ContextValue;
    .registers 5

    .line 630
    sget-object v0, Landroid/icu/text/SimpleDateFormat$ContextValue;->UNKNOWN:Landroid/icu/text/SimpleDateFormat$ContextValue;

    sget-object v1, Landroid/icu/text/SimpleDateFormat$ContextValue;->CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE:Landroid/icu/text/SimpleDateFormat$ContextValue;

    sget-object v2, Landroid/icu/text/SimpleDateFormat$ContextValue;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/SimpleDateFormat$ContextValue;

    sget-object v3, Landroid/icu/text/SimpleDateFormat$ContextValue;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/SimpleDateFormat$ContextValue;

    sget-object v4, Landroid/icu/text/SimpleDateFormat$ContextValue;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/SimpleDateFormat$ContextValue;

    filled-new-array {v0, v1, v2, v3, v4}, [Landroid/icu/text/SimpleDateFormat$ContextValue;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 632
    new-instance v0, Landroid/icu/text/SimpleDateFormat$ContextValue;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/SimpleDateFormat$ContextValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/SimpleDateFormat$ContextValue;->UNKNOWN:Landroid/icu/text/SimpleDateFormat$ContextValue;

    .line 633
    new-instance v0, Landroid/icu/text/SimpleDateFormat$ContextValue;

    const-string v1, "CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/SimpleDateFormat$ContextValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/SimpleDateFormat$ContextValue;->CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE:Landroid/icu/text/SimpleDateFormat$ContextValue;

    .line 634
    new-instance v0, Landroid/icu/text/SimpleDateFormat$ContextValue;

    const-string v1, "CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/text/SimpleDateFormat$ContextValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/SimpleDateFormat$ContextValue;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/SimpleDateFormat$ContextValue;

    .line 635
    new-instance v0, Landroid/icu/text/SimpleDateFormat$ContextValue;

    const-string v1, "CAPITALIZATION_FOR_UI_LIST_OR_MENU"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/text/SimpleDateFormat$ContextValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/SimpleDateFormat$ContextValue;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/SimpleDateFormat$ContextValue;

    .line 636
    new-instance v0, Landroid/icu/text/SimpleDateFormat$ContextValue;

    const-string v1, "CAPITALIZATION_FOR_STANDALONE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/icu/text/SimpleDateFormat$ContextValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/SimpleDateFormat$ContextValue;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/SimpleDateFormat$ContextValue;

    .line 630
    invoke-static {}, Landroid/icu/text/SimpleDateFormat$ContextValue;->$values()[Landroid/icu/text/SimpleDateFormat$ContextValue;

    move-result-object v0

    sput-object v0, Landroid/icu/text/SimpleDateFormat$ContextValue;->$VALUES:[Landroid/icu/text/SimpleDateFormat$ContextValue;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 631
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Landroid/icu/text/SimpleDateFormat$ContextValue;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 630
    const-class v0, Landroid/icu/text/SimpleDateFormat$ContextValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/SimpleDateFormat$ContextValue;

    return-object v0
.end method

.method public static greylist-max-o values()[Landroid/icu/text/SimpleDateFormat$ContextValue;
    .registers 1

    .line 630
    sget-object v0, Landroid/icu/text/SimpleDateFormat$ContextValue;->$VALUES:[Landroid/icu/text/SimpleDateFormat$ContextValue;

    invoke-virtual {v0}, [Landroid/icu/text/SimpleDateFormat$ContextValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/SimpleDateFormat$ContextValue;

    return-object v0
.end method
