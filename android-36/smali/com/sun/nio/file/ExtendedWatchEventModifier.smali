.class public final enum Lcom/sun/nio/file/ExtendedWatchEventModifier;
.super Ljava/lang/Enum;
.source "ExtendedWatchEventModifier.java"

# interfaces
.implements Ljava/nio/file/WatchEvent$Modifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sun/nio/file/ExtendedWatchEventModifier;",
        ">;",
        "Ljava/nio/file/WatchEvent$Modifier;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/sun/nio/file/ExtendedWatchEventModifier;

.field public static final enum greylist FILE_TREE:Lcom/sun/nio/file/ExtendedWatchEventModifier;


# direct methods
.method private static synthetic blacklist $values()[Lcom/sun/nio/file/ExtendedWatchEventModifier;
    .registers 1

    .line 37
    sget-object v0, Lcom/sun/nio/file/ExtendedWatchEventModifier;->FILE_TREE:Lcom/sun/nio/file/ExtendedWatchEventModifier;

    filled-new-array {v0}, [Lcom/sun/nio/file/ExtendedWatchEventModifier;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 42
    new-instance v0, Lcom/sun/nio/file/ExtendedWatchEventModifier;

    const-string v1, "FILE_TREE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sun/nio/file/ExtendedWatchEventModifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/nio/file/ExtendedWatchEventModifier;->FILE_TREE:Lcom/sun/nio/file/ExtendedWatchEventModifier;

    .line 37
    invoke-static {}, Lcom/sun/nio/file/ExtendedWatchEventModifier;->$values()[Lcom/sun/nio/file/ExtendedWatchEventModifier;

    move-result-object v0

    sput-object v0, Lcom/sun/nio/file/ExtendedWatchEventModifier;->$VALUES:[Lcom/sun/nio/file/ExtendedWatchEventModifier;

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

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/sun/nio/file/ExtendedWatchEventModifier;
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

    .line 37
    const-class v0, Lcom/sun/nio/file/ExtendedWatchEventModifier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sun/nio/file/ExtendedWatchEventModifier;

    return-object v0
.end method

.method public static blacklist values()[Lcom/sun/nio/file/ExtendedWatchEventModifier;
    .registers 1

    .line 37
    sget-object v0, Lcom/sun/nio/file/ExtendedWatchEventModifier;->$VALUES:[Lcom/sun/nio/file/ExtendedWatchEventModifier;

    invoke-virtual {v0}, [Lcom/sun/nio/file/ExtendedWatchEventModifier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/nio/file/ExtendedWatchEventModifier;

    return-object v0
.end method
