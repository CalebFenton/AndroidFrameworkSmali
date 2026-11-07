.class public final enum Ljava/lang/StackWalker$Option;
.super Ljava/lang/Enum;
.source "StackWalker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/StackWalker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Option"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/lang/StackWalker$Option;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/lang/StackWalker$Option;

.field public static final enum whitelist test-api RETAIN_CLASS_REFERENCE:Ljava/lang/StackWalker$Option;

.field public static final enum whitelist test-api SHOW_HIDDEN_FRAMES:Ljava/lang/StackWalker$Option;

.field public static final enum whitelist test-api SHOW_REFLECT_FRAMES:Ljava/lang/StackWalker$Option;


# direct methods
.method private static synthetic blacklist $values()[Ljava/lang/StackWalker$Option;
    .registers 3

    .line 241
    sget-object v0, Ljava/lang/StackWalker$Option;->RETAIN_CLASS_REFERENCE:Ljava/lang/StackWalker$Option;

    sget-object v1, Ljava/lang/StackWalker$Option;->SHOW_REFLECT_FRAMES:Ljava/lang/StackWalker$Option;

    sget-object v2, Ljava/lang/StackWalker$Option;->SHOW_HIDDEN_FRAMES:Ljava/lang/StackWalker$Option;

    filled-new-array {v0, v1, v2}, [Ljava/lang/StackWalker$Option;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 250
    new-instance v0, Ljava/lang/StackWalker$Option;

    const-string v1, "RETAIN_CLASS_REFERENCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/StackWalker$Option;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/StackWalker$Option;->RETAIN_CLASS_REFERENCE:Ljava/lang/StackWalker$Option;

    .line 272
    new-instance v0, Ljava/lang/StackWalker$Option;

    const-string v1, "SHOW_REFLECT_FRAMES"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/lang/StackWalker$Option;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/StackWalker$Option;->SHOW_REFLECT_FRAMES:Ljava/lang/StackWalker$Option;

    .line 285
    new-instance v0, Ljava/lang/StackWalker$Option;

    const-string v1, "SHOW_HIDDEN_FRAMES"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/lang/StackWalker$Option;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/StackWalker$Option;->SHOW_HIDDEN_FRAMES:Ljava/lang/StackWalker$Option;

    .line 241
    invoke-static {}, Ljava/lang/StackWalker$Option;->$values()[Ljava/lang/StackWalker$Option;

    move-result-object v0

    sput-object v0, Ljava/lang/StackWalker$Option;->$VALUES:[Ljava/lang/StackWalker$Option;

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

    .line 241
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/lang/StackWalker$Option;
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

    .line 241
    const-class v0, Ljava/lang/StackWalker$Option;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/lang/StackWalker$Option;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/lang/StackWalker$Option;
    .registers 1

    .line 241
    sget-object v0, Ljava/lang/StackWalker$Option;->$VALUES:[Ljava/lang/StackWalker$Option;

    invoke-virtual {v0}, [Ljava/lang/StackWalker$Option;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackWalker$Option;

    return-object v0
.end method
