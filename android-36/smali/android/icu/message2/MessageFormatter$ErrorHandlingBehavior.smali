.class public final enum Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;
.super Ljava/lang/Enum;
.source "MessageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/message2/MessageFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorHandlingBehavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;

.field public static final enum blacklist BEST_EFFORT:Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum blacklist STRICT:Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;
    .registers 2

    .line 306
    sget-object v0, Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;->BEST_EFFORT:Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;

    sget-object v1, Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;->STRICT:Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;

    filled-new-array {v0, v1}, [Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 314
    new-instance v0, Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;

    const-string v1, "BEST_EFFORT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;->BEST_EFFORT:Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;

    .line 322
    new-instance v0, Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;

    const-string v1, "STRICT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;->STRICT:Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;

    .line 306
    invoke-static {}, Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;->$values()[Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;

    move-result-object v0

    sput-object v0, Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;->$VALUES:[Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;

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

    .line 307
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;
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

    .line 306
    const-class v0, Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;
    .registers 1

    .line 306
    sget-object v0, Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;->$VALUES:[Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;

    invoke-virtual {v0}, [Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;

    return-object v0
.end method
