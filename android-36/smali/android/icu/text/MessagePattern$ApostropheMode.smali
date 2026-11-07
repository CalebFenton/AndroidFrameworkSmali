.class public final enum Landroid/icu/text/MessagePattern$ApostropheMode;
.super Ljava/lang/Enum;
.source "MessagePattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MessagePattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApostropheMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/MessagePattern$ApostropheMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/MessagePattern$ApostropheMode;

.field public static final enum whitelist test-api DOUBLE_OPTIONAL:Landroid/icu/text/MessagePattern$ApostropheMode;

.field public static final enum whitelist test-api DOUBLE_REQUIRED:Landroid/icu/text/MessagePattern$ApostropheMode;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/MessagePattern$ApostropheMode;
    .registers 2

    .line 117
    sget-object v0, Landroid/icu/text/MessagePattern$ApostropheMode;->DOUBLE_OPTIONAL:Landroid/icu/text/MessagePattern$ApostropheMode;

    sget-object v1, Landroid/icu/text/MessagePattern$ApostropheMode;->DOUBLE_REQUIRED:Landroid/icu/text/MessagePattern$ApostropheMode;

    filled-new-array {v0, v1}, [Landroid/icu/text/MessagePattern$ApostropheMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 128
    new-instance v0, Landroid/icu/text/MessagePattern$ApostropheMode;

    const-string v1, "DOUBLE_OPTIONAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern$ApostropheMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$ApostropheMode;->DOUBLE_OPTIONAL:Landroid/icu/text/MessagePattern$ApostropheMode;

    .line 136
    new-instance v0, Landroid/icu/text/MessagePattern$ApostropheMode;

    const-string v1, "DOUBLE_REQUIRED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern$ApostropheMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$ApostropheMode;->DOUBLE_REQUIRED:Landroid/icu/text/MessagePattern$ApostropheMode;

    .line 117
    invoke-static {}, Landroid/icu/text/MessagePattern$ApostropheMode;->$values()[Landroid/icu/text/MessagePattern$ApostropheMode;

    move-result-object v0

    sput-object v0, Landroid/icu/text/MessagePattern$ApostropheMode;->$VALUES:[Landroid/icu/text/MessagePattern$ApostropheMode;

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

    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/text/MessagePattern$ApostropheMode;
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

    .line 117
    const-class v0, Landroid/icu/text/MessagePattern$ApostropheMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/MessagePattern$ApostropheMode;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/text/MessagePattern$ApostropheMode;
    .registers 1

    .line 117
    sget-object v0, Landroid/icu/text/MessagePattern$ApostropheMode;->$VALUES:[Landroid/icu/text/MessagePattern$ApostropheMode;

    invoke-virtual {v0}, [Landroid/icu/text/MessagePattern$ApostropheMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/MessagePattern$ApostropheMode;

    return-object v0
.end method
