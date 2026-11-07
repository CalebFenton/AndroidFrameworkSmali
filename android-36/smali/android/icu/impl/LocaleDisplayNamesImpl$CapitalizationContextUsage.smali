.class final enum Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;
.super Ljava/lang/Enum;
.source "LocaleDisplayNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/LocaleDisplayNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CapitalizationContextUsage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

.field public static final enum blacklist KEY:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

.field public static final enum blacklist KEYVALUE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

.field public static final enum blacklist LANGUAGE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

.field public static final enum blacklist SCRIPT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

.field public static final enum blacklist TERRITORY:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

.field public static final enum blacklist VARIANT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;
    .registers 6

    .line 63
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->LANGUAGE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->SCRIPT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    sget-object v2, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->TERRITORY:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    sget-object v3, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->VARIANT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    sget-object v4, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->KEY:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    sget-object v5, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->KEYVALUE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    filled-new-array/range {v0 .. v5}, [Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 64
    new-instance v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    const-string v1, "LANGUAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->LANGUAGE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    .line 65
    new-instance v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    const-string v1, "SCRIPT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->SCRIPT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    .line 66
    new-instance v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    const-string v1, "TERRITORY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->TERRITORY:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    .line 67
    new-instance v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    const-string v1, "VARIANT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->VARIANT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    .line 68
    new-instance v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    const-string v1, "KEY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->KEY:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    .line 69
    new-instance v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    const-string v1, "KEYVALUE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->KEYVALUE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    .line 63
    invoke-static {}, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->$values()[Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->$VALUES:[Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

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

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;
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

    .line 63
    const-class v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;
    .registers 1

    .line 63
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->$VALUES:[Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-virtual {v0}, [Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    return-object v0
.end method
