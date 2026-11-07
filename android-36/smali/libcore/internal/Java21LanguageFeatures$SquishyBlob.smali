.class public final enum Llibcore/internal/Java21LanguageFeatures$SquishyBlob;
.super Ljava/lang/Enum;
.source "Java21LanguageFeatures.java"

# interfaces
.implements Llibcore/internal/Java21LanguageFeatures$Blob;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/internal/Java21LanguageFeatures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SquishyBlob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Llibcore/internal/Java21LanguageFeatures$SquishyBlob;",
        ">;",
        "Llibcore/internal/Java21LanguageFeatures$Blob;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Llibcore/internal/Java21LanguageFeatures$SquishyBlob;

.field public static final enum blacklist LARGE:Llibcore/internal/Java21LanguageFeatures$SquishyBlob;

.field public static final enum blacklist MEDIUM:Llibcore/internal/Java21LanguageFeatures$SquishyBlob;

.field public static final enum blacklist SMALL:Llibcore/internal/Java21LanguageFeatures$SquishyBlob;


# direct methods
.method private static synthetic blacklist $values()[Llibcore/internal/Java21LanguageFeatures$SquishyBlob;
    .registers 3

    .line 173
    sget-object v0, Llibcore/internal/Java21LanguageFeatures$SquishyBlob;->SMALL:Llibcore/internal/Java21LanguageFeatures$SquishyBlob;

    sget-object v1, Llibcore/internal/Java21LanguageFeatures$SquishyBlob;->MEDIUM:Llibcore/internal/Java21LanguageFeatures$SquishyBlob;

    sget-object v2, Llibcore/internal/Java21LanguageFeatures$SquishyBlob;->LARGE:Llibcore/internal/Java21LanguageFeatures$SquishyBlob;

    filled-new-array {v0, v1, v2}, [Llibcore/internal/Java21LanguageFeatures$SquishyBlob;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 173
    new-instance v0, Llibcore/internal/Java21LanguageFeatures$SquishyBlob;

    const-string v1, "SMALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Llibcore/internal/Java21LanguageFeatures$SquishyBlob;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llibcore/internal/Java21LanguageFeatures$SquishyBlob;->SMALL:Llibcore/internal/Java21LanguageFeatures$SquishyBlob;

    new-instance v0, Llibcore/internal/Java21LanguageFeatures$SquishyBlob;

    const-string v1, "MEDIUM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Llibcore/internal/Java21LanguageFeatures$SquishyBlob;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llibcore/internal/Java21LanguageFeatures$SquishyBlob;->MEDIUM:Llibcore/internal/Java21LanguageFeatures$SquishyBlob;

    new-instance v0, Llibcore/internal/Java21LanguageFeatures$SquishyBlob;

    const-string v1, "LARGE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Llibcore/internal/Java21LanguageFeatures$SquishyBlob;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llibcore/internal/Java21LanguageFeatures$SquishyBlob;->LARGE:Llibcore/internal/Java21LanguageFeatures$SquishyBlob;

    invoke-static {}, Llibcore/internal/Java21LanguageFeatures$SquishyBlob;->$values()[Llibcore/internal/Java21LanguageFeatures$SquishyBlob;

    move-result-object v0

    sput-object v0, Llibcore/internal/Java21LanguageFeatures$SquishyBlob;->$VALUES:[Llibcore/internal/Java21LanguageFeatures$SquishyBlob;

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

    .line 173
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Llibcore/internal/Java21LanguageFeatures$SquishyBlob;
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

    .line 173
    const-class v0, Llibcore/internal/Java21LanguageFeatures$SquishyBlob;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Llibcore/internal/Java21LanguageFeatures$SquishyBlob;

    return-object v0
.end method

.method public static blacklist values()[Llibcore/internal/Java21LanguageFeatures$SquishyBlob;
    .registers 1

    .line 173
    sget-object v0, Llibcore/internal/Java21LanguageFeatures$SquishyBlob;->$VALUES:[Llibcore/internal/Java21LanguageFeatures$SquishyBlob;

    invoke-virtual {v0}, [Llibcore/internal/Java21LanguageFeatures$SquishyBlob;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llibcore/internal/Java21LanguageFeatures$SquishyBlob;

    return-object v0
.end method
