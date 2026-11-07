.class final enum Ljava/lang/StackWalker$ExtendedOption;
.super Ljava/lang/Enum;
.source "StackWalker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/StackWalker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ExtendedOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/lang/StackWalker$ExtendedOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/lang/StackWalker$ExtendedOption;

.field public static final enum blacklist LOCALS_AND_OPERANDS:Ljava/lang/StackWalker$ExtendedOption;


# direct methods
.method private static synthetic blacklist $values()[Ljava/lang/StackWalker$ExtendedOption;
    .registers 1

    .line 288
    sget-object v0, Ljava/lang/StackWalker$ExtendedOption;->LOCALS_AND_OPERANDS:Ljava/lang/StackWalker$ExtendedOption;

    filled-new-array {v0}, [Ljava/lang/StackWalker$ExtendedOption;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 292
    new-instance v0, Ljava/lang/StackWalker$ExtendedOption;

    const-string v1, "LOCALS_AND_OPERANDS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/StackWalker$ExtendedOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/StackWalker$ExtendedOption;->LOCALS_AND_OPERANDS:Ljava/lang/StackWalker$ExtendedOption;

    .line 288
    invoke-static {}, Ljava/lang/StackWalker$ExtendedOption;->$values()[Ljava/lang/StackWalker$ExtendedOption;

    move-result-object v0

    sput-object v0, Ljava/lang/StackWalker$ExtendedOption;->$VALUES:[Ljava/lang/StackWalker$ExtendedOption;

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

    .line 288
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Ljava/lang/StackWalker$ExtendedOption;
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

    .line 288
    const-class v0, Ljava/lang/StackWalker$ExtendedOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/lang/StackWalker$ExtendedOption;

    return-object v0
.end method

.method public static blacklist values()[Ljava/lang/StackWalker$ExtendedOption;
    .registers 1

    .line 288
    sget-object v0, Ljava/lang/StackWalker$ExtendedOption;->$VALUES:[Ljava/lang/StackWalker$ExtendedOption;

    invoke-virtual {v0}, [Ljava/lang/StackWalker$ExtendedOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackWalker$ExtendedOption;

    return-object v0
.end method
