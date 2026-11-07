.class final enum Landroid/icu/message2/MFDataModel$Markup$Kind;
.super Ljava/lang/Enum;
.source "MFDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/message2/MFDataModel$Markup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/message2/MFDataModel$Markup$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/message2/MFDataModel$Markup$Kind;

.field public static final enum blacklist CLOSE:Landroid/icu/message2/MFDataModel$Markup$Kind;

.field public static final enum blacklist OPEN:Landroid/icu/message2/MFDataModel$Markup$Kind;

.field public static final enum blacklist STANDALONE:Landroid/icu/message2/MFDataModel$Markup$Kind;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/message2/MFDataModel$Markup$Kind;
    .registers 3

    .line 436
    sget-object v0, Landroid/icu/message2/MFDataModel$Markup$Kind;->OPEN:Landroid/icu/message2/MFDataModel$Markup$Kind;

    sget-object v1, Landroid/icu/message2/MFDataModel$Markup$Kind;->CLOSE:Landroid/icu/message2/MFDataModel$Markup$Kind;

    sget-object v2, Landroid/icu/message2/MFDataModel$Markup$Kind;->STANDALONE:Landroid/icu/message2/MFDataModel$Markup$Kind;

    filled-new-array {v0, v1, v2}, [Landroid/icu/message2/MFDataModel$Markup$Kind;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 437
    new-instance v0, Landroid/icu/message2/MFDataModel$Markup$Kind;

    const-string v1, "OPEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/message2/MFDataModel$Markup$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/message2/MFDataModel$Markup$Kind;->OPEN:Landroid/icu/message2/MFDataModel$Markup$Kind;

    .line 438
    new-instance v0, Landroid/icu/message2/MFDataModel$Markup$Kind;

    const-string v1, "CLOSE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/message2/MFDataModel$Markup$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/message2/MFDataModel$Markup$Kind;->CLOSE:Landroid/icu/message2/MFDataModel$Markup$Kind;

    .line 439
    new-instance v0, Landroid/icu/message2/MFDataModel$Markup$Kind;

    const-string v1, "STANDALONE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/message2/MFDataModel$Markup$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/message2/MFDataModel$Markup$Kind;->STANDALONE:Landroid/icu/message2/MFDataModel$Markup$Kind;

    .line 436
    invoke-static {}, Landroid/icu/message2/MFDataModel$Markup$Kind;->$values()[Landroid/icu/message2/MFDataModel$Markup$Kind;

    move-result-object v0

    sput-object v0, Landroid/icu/message2/MFDataModel$Markup$Kind;->$VALUES:[Landroid/icu/message2/MFDataModel$Markup$Kind;

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

    .line 436
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/message2/MFDataModel$Markup$Kind;
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

    .line 436
    const-class v0, Landroid/icu/message2/MFDataModel$Markup$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/message2/MFDataModel$Markup$Kind;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/message2/MFDataModel$Markup$Kind;
    .registers 1

    .line 436
    sget-object v0, Landroid/icu/message2/MFDataModel$Markup$Kind;->$VALUES:[Landroid/icu/message2/MFDataModel$Markup$Kind;

    invoke-virtual {v0}, [Landroid/icu/message2/MFDataModel$Markup$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/message2/MFDataModel$Markup$Kind;

    return-object v0
.end method
