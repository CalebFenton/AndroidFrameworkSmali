.class public final enum Ljava/util/Locale$Category;
.super Ljava/lang/Enum;
.source "Locale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Locale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/util/Locale$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/util/Locale$Category;

.field public static final enum whitelist test-api DISPLAY:Ljava/util/Locale$Category;

.field public static final enum whitelist test-api FORMAT:Ljava/util/Locale$Category;


# instance fields
.field final greylist-max-o countryKey:Ljava/lang/String;

.field final blacklist extensionsKey:Ljava/lang/String;

.field final greylist-max-o languageKey:Ljava/lang/String;

.field final greylist-max-o scriptKey:Ljava/lang/String;

.field final greylist-max-o variantKey:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Ljava/util/Locale$Category;
    .registers 2

    .line 3113
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    sget-object v1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    filled-new-array {v0, v1}, [Ljava/util/Locale$Category;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 9

    .line 3119
    new-instance v0, Ljava/util/Locale$Category;

    const-string v6, "user.variant.display"

    const-string v7, "user.extensions.display"

    const-string v1, "DISPLAY"

    const/4 v2, 0x0

    const-string v3, "user.language.display"

    const-string v4, "user.script.display"

    const-string v5, "user.country.display"

    invoke-direct/range {v0 .. v7}, Ljava/util/Locale$Category;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    .line 3129
    new-instance v1, Ljava/util/Locale$Category;

    const-string v7, "user.variant.format"

    const-string v8, "user.extensions.format"

    const-string v2, "FORMAT"

    const/4 v3, 0x1

    const-string v4, "user.language.format"

    const-string v5, "user.script.format"

    const-string v6, "user.country.format"

    invoke-direct/range {v1 .. v8}, Ljava/util/Locale$Category;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    .line 3113
    invoke-static {}, Ljava/util/Locale$Category;->$values()[Ljava/util/Locale$Category;

    move-result-object v0

    sput-object v0, Ljava/util/Locale$Category;->$VALUES:[Ljava/util/Locale$Category;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p3, "languageKey"    # Ljava/lang/String;
    .param p4, "scriptKey"    # Ljava/lang/String;
    .param p5, "countryKey"    # Ljava/lang/String;
    .param p6, "variantKey"    # Ljava/lang/String;
    .param p7, "extensionsKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3136
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3137
    iput-object p3, p0, Ljava/util/Locale$Category;->languageKey:Ljava/lang/String;

    .line 3138
    iput-object p4, p0, Ljava/util/Locale$Category;->scriptKey:Ljava/lang/String;

    .line 3139
    iput-object p5, p0, Ljava/util/Locale$Category;->countryKey:Ljava/lang/String;

    .line 3140
    iput-object p6, p0, Ljava/util/Locale$Category;->variantKey:Ljava/lang/String;

    .line 3141
    iput-object p7, p0, Ljava/util/Locale$Category;->extensionsKey:Ljava/lang/String;

    .line 3142
    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/util/Locale$Category;
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

    .line 3113
    const-class v0, Ljava/util/Locale$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/util/Locale$Category;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/util/Locale$Category;
    .registers 1

    .line 3113
    sget-object v0, Ljava/util/Locale$Category;->$VALUES:[Ljava/util/Locale$Category;

    invoke-virtual {v0}, [Ljava/util/Locale$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Locale$Category;

    return-object v0
.end method
