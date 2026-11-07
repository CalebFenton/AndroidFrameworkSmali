.class public final enum Landroid/text/method/TextKeyListener$Capitalize;
.super Ljava/lang/Enum;
.source "TextKeyListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/TextKeyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Capitalize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/text/method/TextKeyListener$Capitalize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/text/method/TextKeyListener$Capitalize;

.field public static final enum whitelist CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

.field public static final enum whitelist NONE:Landroid/text/method/TextKeyListener$Capitalize;

.field public static final enum whitelist SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

.field public static final enum whitelist WORDS:Landroid/text/method/TextKeyListener$Capitalize;


# direct methods
.method private static synthetic blacklist $values()[Landroid/text/method/TextKeyListener$Capitalize;
    .registers 4

    .line 213
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    sget-object v2, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    sget-object v3, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    filled-new-array {v0, v1, v2, v3}, [Landroid/text/method/TextKeyListener$Capitalize;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 214
    new-instance v0, Landroid/text/method/TextKeyListener$Capitalize;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/text/method/TextKeyListener$Capitalize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    new-instance v0, Landroid/text/method/TextKeyListener$Capitalize;

    const-string v1, "SENTENCES"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/text/method/TextKeyListener$Capitalize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    new-instance v0, Landroid/text/method/TextKeyListener$Capitalize;

    const-string v1, "WORDS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/text/method/TextKeyListener$Capitalize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    new-instance v0, Landroid/text/method/TextKeyListener$Capitalize;

    const-string v1, "CHARACTERS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/text/method/TextKeyListener$Capitalize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    .line 213
    invoke-static {}, Landroid/text/method/TextKeyListener$Capitalize;->$values()[Landroid/text/method/TextKeyListener$Capitalize;

    move-result-object v0

    sput-object v0, Landroid/text/method/TextKeyListener$Capitalize;->$VALUES:[Landroid/text/method/TextKeyListener$Capitalize;

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

    .line 213
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/text/method/TextKeyListener$Capitalize;
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

    .line 213
    const-class v0, Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/text/method/TextKeyListener$Capitalize;

    return-object v0
.end method

.method public static whitelist values()[Landroid/text/method/TextKeyListener$Capitalize;
    .registers 1

    .line 213
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->$VALUES:[Landroid/text/method/TextKeyListener$Capitalize;

    invoke-virtual {v0}, [Landroid/text/method/TextKeyListener$Capitalize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/TextKeyListener$Capitalize;

    return-object v0
.end method
