.class final enum Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;
.super Ljava/lang/Enum;
.source "LetterboxScrollProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/LetterboxScrollProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LetterboxScrollState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

.field public static final enum blacklist AWAITING_GESTURE_START:Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

.field public static final enum blacklist GESTURE_STARTED_IN_APP:Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

.field public static final enum blacklist GESTURE_STARTED_OUTSIDE_APP:Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

.field public static final enum blacklist SCROLLING_STARTED_OUTSIDE_APP:Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;


# direct methods
.method private static synthetic blacklist $values()[Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;
    .registers 4

    .line 45
    sget-object v0, Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;->AWAITING_GESTURE_START:Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    sget-object v1, Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;->GESTURE_STARTED_IN_APP:Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    sget-object v2, Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;->GESTURE_STARTED_OUTSIDE_APP:Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    sget-object v3, Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;->SCROLLING_STARTED_OUTSIDE_APP:Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    filled-new-array {v0, v1, v2, v3}, [Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 46
    new-instance v0, Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    const-string v1, "AWAITING_GESTURE_START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;->AWAITING_GESTURE_START:Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    .line 47
    new-instance v0, Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    const-string v1, "GESTURE_STARTED_IN_APP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;->GESTURE_STARTED_IN_APP:Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    .line 48
    new-instance v0, Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    const-string v1, "GESTURE_STARTED_OUTSIDE_APP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;->GESTURE_STARTED_OUTSIDE_APP:Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    .line 49
    new-instance v0, Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    const-string v1, "SCROLLING_STARTED_OUTSIDE_APP"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;->SCROLLING_STARTED_OUTSIDE_APP:Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    .line 45
    invoke-static {}, Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;->$values()[Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    move-result-object v0

    sput-object v0, Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;->$VALUES:[Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

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

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;
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

    .line 45
    const-class v0, Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    return-object v0
.end method

.method public static blacklist values()[Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;
    .registers 1

    .line 45
    sget-object v0, Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;->$VALUES:[Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    invoke-virtual {v0}, [Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    return-object v0
.end method
