.class final enum Ljava/text/NumberFormat$Style;
.super Ljava/lang/Enum;
.source "NumberFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/NumberFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/text/NumberFormat$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/text/NumberFormat$Style;


# direct methods
.method private static synthetic blacklist $values()[Ljava/text/NumberFormat$Style;
    .registers 1

    .line 1399
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/text/NumberFormat$Style;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1399
    invoke-static {}, Ljava/text/NumberFormat$Style;->$values()[Ljava/text/NumberFormat$Style;

    move-result-object v0

    sput-object v0, Ljava/text/NumberFormat$Style;->$VALUES:[Ljava/text/NumberFormat$Style;

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

    .line 1399
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Ljava/text/NumberFormat$Style;
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

    .line 1399
    const-class v0, Ljava/text/NumberFormat$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/text/NumberFormat$Style;

    return-object v0
.end method

.method public static blacklist values()[Ljava/text/NumberFormat$Style;
    .registers 1

    .line 1399
    sget-object v0, Ljava/text/NumberFormat$Style;->$VALUES:[Ljava/text/NumberFormat$Style;

    invoke-virtual {v0}, [Ljava/text/NumberFormat$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/text/NumberFormat$Style;

    return-object v0
.end method
