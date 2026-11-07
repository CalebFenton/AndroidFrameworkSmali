.class public final enum Landroid/hardware/input/KeyboardLayout$LayoutType;
.super Ljava/lang/Enum;
.source "KeyboardLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/KeyboardLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LayoutType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/hardware/input/KeyboardLayout$LayoutType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/hardware/input/KeyboardLayout$LayoutType;

.field public static final enum blacklist AZERTY:Landroid/hardware/input/KeyboardLayout$LayoutType;

.field public static final enum blacklist COLEMAK:Landroid/hardware/input/KeyboardLayout$LayoutType;

.field public static final enum blacklist DVORAK:Landroid/hardware/input/KeyboardLayout$LayoutType;

.field public static final enum blacklist EXTENDED:Landroid/hardware/input/KeyboardLayout$LayoutType;

.field private static final blacklist NAME_TO_ENUM_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/input/KeyboardLayout$LayoutType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum blacklist QWERTY:Landroid/hardware/input/KeyboardLayout$LayoutType;

.field public static final enum blacklist QWERTZ:Landroid/hardware/input/KeyboardLayout$LayoutType;

.field public static final enum blacklist TURKISH_F:Landroid/hardware/input/KeyboardLayout$LayoutType;

.field public static final enum blacklist TURKISH_Q:Landroid/hardware/input/KeyboardLayout$LayoutType;

.field public static final enum blacklist UNDEFINED:Landroid/hardware/input/KeyboardLayout$LayoutType;

.field private static final blacklist VALUE_TO_ENUM_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/input/KeyboardLayout$LayoutType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum blacklist WORKMAN:Landroid/hardware/input/KeyboardLayout$LayoutType;


# instance fields
.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mValue:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/hardware/input/KeyboardLayout$LayoutType;
    .registers 10

    .line 77
    sget-object v0, Landroid/hardware/input/KeyboardLayout$LayoutType;->UNDEFINED:Landroid/hardware/input/KeyboardLayout$LayoutType;

    sget-object v1, Landroid/hardware/input/KeyboardLayout$LayoutType;->QWERTY:Landroid/hardware/input/KeyboardLayout$LayoutType;

    sget-object v2, Landroid/hardware/input/KeyboardLayout$LayoutType;->QWERTZ:Landroid/hardware/input/KeyboardLayout$LayoutType;

    sget-object v3, Landroid/hardware/input/KeyboardLayout$LayoutType;->AZERTY:Landroid/hardware/input/KeyboardLayout$LayoutType;

    sget-object v4, Landroid/hardware/input/KeyboardLayout$LayoutType;->DVORAK:Landroid/hardware/input/KeyboardLayout$LayoutType;

    sget-object v5, Landroid/hardware/input/KeyboardLayout$LayoutType;->COLEMAK:Landroid/hardware/input/KeyboardLayout$LayoutType;

    sget-object v6, Landroid/hardware/input/KeyboardLayout$LayoutType;->WORKMAN:Landroid/hardware/input/KeyboardLayout$LayoutType;

    sget-object v7, Landroid/hardware/input/KeyboardLayout$LayoutType;->TURKISH_Q:Landroid/hardware/input/KeyboardLayout$LayoutType;

    sget-object v8, Landroid/hardware/input/KeyboardLayout$LayoutType;->TURKISH_F:Landroid/hardware/input/KeyboardLayout$LayoutType;

    sget-object v9, Landroid/hardware/input/KeyboardLayout$LayoutType;->EXTENDED:Landroid/hardware/input/KeyboardLayout$LayoutType;

    filled-new-array/range {v0 .. v9}, [Landroid/hardware/input/KeyboardLayout$LayoutType;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmValue(Landroid/hardware/input/KeyboardLayout$LayoutType;)I
    .registers 1

    iget p0, p0, Landroid/hardware/input/KeyboardLayout$LayoutType;->mValue:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetName(Landroid/hardware/input/KeyboardLayout$LayoutType;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/input/KeyboardLayout$LayoutType;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetValue(Landroid/hardware/input/KeyboardLayout$LayoutType;)I
    .registers 1

    invoke-direct {p0}, Landroid/hardware/input/KeyboardLayout$LayoutType;->getValue()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smof(I)Landroid/hardware/input/KeyboardLayout$LayoutType;
    .registers 1

    invoke-static {p0}, Landroid/hardware/input/KeyboardLayout$LayoutType;->of(I)Landroid/hardware/input/KeyboardLayout$LayoutType;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 6

    .line 78
    new-instance v0, Landroid/hardware/input/KeyboardLayout$LayoutType;

    const-string v1, "undefined"

    const-string v2, "UNDEFINED"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3, v1}, Landroid/hardware/input/KeyboardLayout$LayoutType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Landroid/hardware/input/KeyboardLayout$LayoutType;->UNDEFINED:Landroid/hardware/input/KeyboardLayout$LayoutType;

    .line 79
    new-instance v0, Landroid/hardware/input/KeyboardLayout$LayoutType;

    const/4 v1, 0x1

    const-string v2, "qwerty"

    const-string v4, "QWERTY"

    invoke-direct {v0, v4, v1, v1, v2}, Landroid/hardware/input/KeyboardLayout$LayoutType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Landroid/hardware/input/KeyboardLayout$LayoutType;->QWERTY:Landroid/hardware/input/KeyboardLayout$LayoutType;

    .line 80
    new-instance v0, Landroid/hardware/input/KeyboardLayout$LayoutType;

    const/4 v1, 0x2

    const-string v2, "qwertz"

    const-string v4, "QWERTZ"

    invoke-direct {v0, v4, v1, v1, v2}, Landroid/hardware/input/KeyboardLayout$LayoutType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Landroid/hardware/input/KeyboardLayout$LayoutType;->QWERTZ:Landroid/hardware/input/KeyboardLayout$LayoutType;

    .line 81
    new-instance v0, Landroid/hardware/input/KeyboardLayout$LayoutType;

    const/4 v1, 0x3

    const-string v2, "azerty"

    const-string v4, "AZERTY"

    invoke-direct {v0, v4, v1, v1, v2}, Landroid/hardware/input/KeyboardLayout$LayoutType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Landroid/hardware/input/KeyboardLayout$LayoutType;->AZERTY:Landroid/hardware/input/KeyboardLayout$LayoutType;

    .line 82
    new-instance v0, Landroid/hardware/input/KeyboardLayout$LayoutType;

    const/4 v1, 0x4

    const-string v2, "dvorak"

    const-string v4, "DVORAK"

    invoke-direct {v0, v4, v1, v1, v2}, Landroid/hardware/input/KeyboardLayout$LayoutType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Landroid/hardware/input/KeyboardLayout$LayoutType;->DVORAK:Landroid/hardware/input/KeyboardLayout$LayoutType;

    .line 83
    new-instance v0, Landroid/hardware/input/KeyboardLayout$LayoutType;

    const/4 v1, 0x5

    const-string v2, "colemak"

    const-string v4, "COLEMAK"

    invoke-direct {v0, v4, v1, v1, v2}, Landroid/hardware/input/KeyboardLayout$LayoutType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Landroid/hardware/input/KeyboardLayout$LayoutType;->COLEMAK:Landroid/hardware/input/KeyboardLayout$LayoutType;

    .line 84
    new-instance v0, Landroid/hardware/input/KeyboardLayout$LayoutType;

    const/4 v1, 0x6

    const-string v2, "workman"

    const-string v4, "WORKMAN"

    invoke-direct {v0, v4, v1, v1, v2}, Landroid/hardware/input/KeyboardLayout$LayoutType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Landroid/hardware/input/KeyboardLayout$LayoutType;->WORKMAN:Landroid/hardware/input/KeyboardLayout$LayoutType;

    .line 85
    new-instance v0, Landroid/hardware/input/KeyboardLayout$LayoutType;

    const/4 v1, 0x7

    const-string v2, "turkish_q"

    const-string v4, "TURKISH_Q"

    invoke-direct {v0, v4, v1, v1, v2}, Landroid/hardware/input/KeyboardLayout$LayoutType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Landroid/hardware/input/KeyboardLayout$LayoutType;->TURKISH_Q:Landroid/hardware/input/KeyboardLayout$LayoutType;

    .line 86
    new-instance v0, Landroid/hardware/input/KeyboardLayout$LayoutType;

    const/16 v1, 0x8

    const-string v2, "turkish_f"

    const-string v4, "TURKISH_F"

    invoke-direct {v0, v4, v1, v1, v2}, Landroid/hardware/input/KeyboardLayout$LayoutType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Landroid/hardware/input/KeyboardLayout$LayoutType;->TURKISH_F:Landroid/hardware/input/KeyboardLayout$LayoutType;

    .line 87
    new-instance v0, Landroid/hardware/input/KeyboardLayout$LayoutType;

    const/16 v1, 0x9

    const-string v2, "extended"

    const-string v4, "EXTENDED"

    invoke-direct {v0, v4, v1, v1, v2}, Landroid/hardware/input/KeyboardLayout$LayoutType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Landroid/hardware/input/KeyboardLayout$LayoutType;->EXTENDED:Landroid/hardware/input/KeyboardLayout$LayoutType;

    .line 77
    invoke-static {}, Landroid/hardware/input/KeyboardLayout$LayoutType;->$values()[Landroid/hardware/input/KeyboardLayout$LayoutType;

    move-result-object v0

    sput-object v0, Landroid/hardware/input/KeyboardLayout$LayoutType;->$VALUES:[Landroid/hardware/input/KeyboardLayout$LayoutType;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/hardware/input/KeyboardLayout$LayoutType;->VALUE_TO_ENUM_MAP:Ljava/util/Map;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/hardware/input/KeyboardLayout$LayoutType;->NAME_TO_ENUM_MAP:Ljava/util/Map;

    .line 94
    invoke-static {}, Landroid/hardware/input/KeyboardLayout$LayoutType;->values()[Landroid/hardware/input/KeyboardLayout$LayoutType;

    move-result-object v0

    array-length v1, v0

    :goto_93
    if-ge v3, v1, :cond_ac

    aget-object v2, v0, v3

    .line 95
    .local v2, "type":Landroid/hardware/input/KeyboardLayout$LayoutType;
    sget-object v4, Landroid/hardware/input/KeyboardLayout$LayoutType;->VALUE_TO_ENUM_MAP:Ljava/util/Map;

    iget v5, v2, Landroid/hardware/input/KeyboardLayout$LayoutType;->mValue:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v4, Landroid/hardware/input/KeyboardLayout$LayoutType;->NAME_TO_ENUM_MAP:Ljava/util/Map;

    iget-object v5, v2, Landroid/hardware/input/KeyboardLayout$LayoutType;->mName:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .end local v2    # "type":Landroid/hardware/input/KeyboardLayout$LayoutType;
    add-int/lit8 v3, v3, 0x1

    goto :goto_93

    .line 98
    :cond_ac
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5
    .param p3, "value"    # I
    .param p4, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 105
    iput p3, p0, Landroid/hardware/input/KeyboardLayout$LayoutType;->mValue:I

    .line 106
    iput-object p4, p0, Landroid/hardware/input/KeyboardLayout$LayoutType;->mName:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public static blacklist getLayoutNameFromValue(I)Ljava/lang/String;
    .registers 4
    .param p0, "enumValue"    # I

    .line 133
    sget-object v0, Landroid/hardware/input/KeyboardLayout$LayoutType;->VALUE_TO_ENUM_MAP:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroid/hardware/input/KeyboardLayout$LayoutType;->UNDEFINED:Landroid/hardware/input/KeyboardLayout$LayoutType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/KeyboardLayout$LayoutType;

    invoke-direct {v0}, Landroid/hardware/input/KeyboardLayout$LayoutType;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getLayoutTypeEnumValue(Ljava/lang/String;)I
    .registers 3
    .param p0, "layoutName"    # Ljava/lang/String;

    .line 124
    sget-object v0, Landroid/hardware/input/KeyboardLayout$LayoutType;->NAME_TO_ENUM_MAP:Ljava/util/Map;

    sget-object v1, Landroid/hardware/input/KeyboardLayout$LayoutType;->UNDEFINED:Landroid/hardware/input/KeyboardLayout$LayoutType;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/KeyboardLayout$LayoutType;

    invoke-direct {v0}, Landroid/hardware/input/KeyboardLayout$LayoutType;->getValue()I

    move-result v0

    return v0
.end method

.method private blacklist getName()Ljava/lang/String;
    .registers 2

    .line 114
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout$LayoutType;->mName:Ljava/lang/String;

    return-object v0
.end method

.method private blacklist getValue()I
    .registers 2

    .line 110
    iget v0, p0, Landroid/hardware/input/KeyboardLayout$LayoutType;->mValue:I

    return v0
.end method

.method private static blacklist of(I)Landroid/hardware/input/KeyboardLayout$LayoutType;
    .registers 4
    .param p0, "value"    # I

    .line 101
    sget-object v0, Landroid/hardware/input/KeyboardLayout$LayoutType;->VALUE_TO_ENUM_MAP:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroid/hardware/input/KeyboardLayout$LayoutType;->UNDEFINED:Landroid/hardware/input/KeyboardLayout$LayoutType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/KeyboardLayout$LayoutType;

    return-object v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout$LayoutType;
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

    .line 77
    const-class v0, Landroid/hardware/input/KeyboardLayout$LayoutType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/KeyboardLayout$LayoutType;

    return-object v0
.end method

.method public static blacklist values()[Landroid/hardware/input/KeyboardLayout$LayoutType;
    .registers 1

    .line 77
    sget-object v0, Landroid/hardware/input/KeyboardLayout$LayoutType;->$VALUES:[Landroid/hardware/input/KeyboardLayout$LayoutType;

    invoke-virtual {v0}, [Landroid/hardware/input/KeyboardLayout$LayoutType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/input/KeyboardLayout$LayoutType;

    return-object v0
.end method
