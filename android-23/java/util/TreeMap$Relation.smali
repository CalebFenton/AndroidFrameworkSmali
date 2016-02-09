.class final enum Ljava/util/TreeMap$Relation;
.super Ljava/lang/Enum;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Relation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/util/TreeMap$Relation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/util/TreeMap$Relation;

.field private static synthetic -java_util_TreeMap$RelationSwitchesValues:[I

.field public static final enum CEILING:Ljava/util/TreeMap$Relation;

.field public static final enum CREATE:Ljava/util/TreeMap$Relation;

.field public static final enum EQUAL:Ljava/util/TreeMap$Relation;

.field public static final enum FLOOR:Ljava/util/TreeMap$Relation;

.field public static final enum HIGHER:Ljava/util/TreeMap$Relation;

.field public static final enum LOWER:Ljava/util/TreeMap$Relation;


# direct methods
.method private static synthetic -getjava_util_TreeMap$RelationSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Ljava/util/TreeMap$Relation;->-java_util_TreeMap$RelationSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Ljava/util/TreeMap$Relation;->-java_util_TreeMap$RelationSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Ljava/util/TreeMap$Relation;->values()[Ljava/util/TreeMap$Relation;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Ljava/util/TreeMap$Relation;->CEILING:Ljava/util/TreeMap$Relation;

    #@10
    invoke-virtual {v1}, Ljava/util/TreeMap$Relation;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Ljava/util/TreeMap$Relation;->CREATE:Ljava/util/TreeMap$Relation;

    #@19
    invoke-virtual {v1}, Ljava/util/TreeMap$Relation;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x6

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Ljava/util/TreeMap$Relation;->EQUAL:Ljava/util/TreeMap$Relation;

    #@22
    invoke-virtual {v1}, Ljava/util/TreeMap$Relation;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x2

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Ljava/util/TreeMap$Relation;->FLOOR:Ljava/util/TreeMap$Relation;

    #@2b
    invoke-virtual {v1}, Ljava/util/TreeMap$Relation;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x3

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Ljava/util/TreeMap$Relation;->HIGHER:Ljava/util/TreeMap$Relation;

    #@34
    invoke-virtual {v1}, Ljava/util/TreeMap$Relation;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x4

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Ljava/util/TreeMap$Relation;->LOWER:Ljava/util/TreeMap$Relation;

    #@3d
    invoke-virtual {v1}, Ljava/util/TreeMap$Relation;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x5

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    #@44
    :goto_5
    sput-object v0, Ljava/util/TreeMap$Relation;->-java_util_TreeMap$RelationSwitchesValues:[I

    #@46
    return-object v0

    #@47
    :catch_0
    move-exception v1

    #@48
    goto :goto_5

    #@49
    :catch_1
    move-exception v1

    #@4a
    goto :goto_4

    #@4b
    :catch_2
    move-exception v1

    #@4c
    goto :goto_3

    #@4d
    :catch_3
    move-exception v1

    #@4e
    goto :goto_2

    #@4f
    :catch_4
    move-exception v1

    #@50
    goto :goto_1

    #@51
    :catch_5
    move-exception v1

    #@52
    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 205
    new-instance v0, Ljava/util/TreeMap$Relation;

    #@7
    const-string/jumbo v1, "LOWER"

    #@a
    invoke-direct {v0, v1, v3}, Ljava/util/TreeMap$Relation;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Ljava/util/TreeMap$Relation;->LOWER:Ljava/util/TreeMap$Relation;

    #@f
    .line 206
    new-instance v0, Ljava/util/TreeMap$Relation;

    #@11
    const-string/jumbo v1, "FLOOR"

    #@14
    invoke-direct {v0, v1, v4}, Ljava/util/TreeMap$Relation;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Ljava/util/TreeMap$Relation;->FLOOR:Ljava/util/TreeMap$Relation;

    #@19
    .line 207
    new-instance v0, Ljava/util/TreeMap$Relation;

    #@1b
    const-string/jumbo v1, "EQUAL"

    #@1e
    invoke-direct {v0, v1, v5}, Ljava/util/TreeMap$Relation;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Ljava/util/TreeMap$Relation;->EQUAL:Ljava/util/TreeMap$Relation;

    #@23
    .line 208
    new-instance v0, Ljava/util/TreeMap$Relation;

    #@25
    const-string/jumbo v1, "CREATE"

    #@28
    invoke-direct {v0, v1, v6}, Ljava/util/TreeMap$Relation;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Ljava/util/TreeMap$Relation;->CREATE:Ljava/util/TreeMap$Relation;

    #@2d
    .line 209
    new-instance v0, Ljava/util/TreeMap$Relation;

    #@2f
    const-string/jumbo v1, "CEILING"

    #@32
    invoke-direct {v0, v1, v7}, Ljava/util/TreeMap$Relation;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Ljava/util/TreeMap$Relation;->CEILING:Ljava/util/TreeMap$Relation;

    #@37
    .line 210
    new-instance v0, Ljava/util/TreeMap$Relation;

    #@39
    const-string/jumbo v1, "HIGHER"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Ljava/util/TreeMap$Relation;-><init>(Ljava/lang/String;I)V

    #@40
    sput-object v0, Ljava/util/TreeMap$Relation;->HIGHER:Ljava/util/TreeMap$Relation;

    #@42
    .line 204
    const/4 v0, 0x6

    #@43
    new-array v0, v0, [Ljava/util/TreeMap$Relation;

    #@45
    sget-object v1, Ljava/util/TreeMap$Relation;->LOWER:Ljava/util/TreeMap$Relation;

    #@47
    aput-object v1, v0, v3

    #@49
    sget-object v1, Ljava/util/TreeMap$Relation;->FLOOR:Ljava/util/TreeMap$Relation;

    #@4b
    aput-object v1, v0, v4

    #@4d
    sget-object v1, Ljava/util/TreeMap$Relation;->EQUAL:Ljava/util/TreeMap$Relation;

    #@4f
    aput-object v1, v0, v5

    #@51
    sget-object v1, Ljava/util/TreeMap$Relation;->CREATE:Ljava/util/TreeMap$Relation;

    #@53
    aput-object v1, v0, v6

    #@55
    sget-object v1, Ljava/util/TreeMap$Relation;->CEILING:Ljava/util/TreeMap$Relation;

    #@57
    aput-object v1, v0, v7

    #@59
    sget-object v1, Ljava/util/TreeMap$Relation;->HIGHER:Ljava/util/TreeMap$Relation;

    #@5b
    const/4 v2, 0x5

    #@5c
    aput-object v1, v0, v2

    #@5e
    sput-object v0, Ljava/util/TreeMap$Relation;->$VALUES:[Ljava/util/TreeMap$Relation;

    #@60
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 204
    .local p0, "this":Ljava/util/TreeMap$Relation;, "Ljava/util/TreeMap<TK;TV;>.Relation;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/util/TreeMap$Relation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 204
    const-class v0, Ljava/util/TreeMap$Relation;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/TreeMap$Relation;

    #@8
    return-object v0
.end method

.method public static values()[Ljava/util/TreeMap$Relation;
    .locals 1

    #@0
    .prologue
    .line 204
    sget-object v0, Ljava/util/TreeMap$Relation;->$VALUES:[Ljava/util/TreeMap$Relation;

    #@2
    return-object v0
.end method


# virtual methods
.method forOrder(Z)Ljava/util/TreeMap$Relation;
    .locals 2
    .param p1, "ascending"    # Z

    #@0
    .prologue
    .line 218
    .local p0, "this":Ljava/util/TreeMap$Relation;, "Ljava/util/TreeMap<TK;TV;>.Relation;"
    if-eqz p1, :cond_0

    #@2
    .line 219
    return-object p0

    #@3
    .line 222
    :cond_0
    invoke-static {}, Ljava/util/TreeMap$Relation;->-getjava_util_TreeMap$RelationSwitchesValues()[I

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p0}, Ljava/util/TreeMap$Relation;->ordinal()I

    #@a
    move-result v1

    #@b
    aget v0, v0, v1

    #@d
    packed-switch v0, :pswitch_data_0

    #@10
    .line 234
    new-instance v0, Ljava/lang/IllegalStateException;

    #@12
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@15
    throw v0

    #@16
    .line 224
    :pswitch_0
    sget-object v0, Ljava/util/TreeMap$Relation;->HIGHER:Ljava/util/TreeMap$Relation;

    #@18
    return-object v0

    #@19
    .line 226
    :pswitch_1
    sget-object v0, Ljava/util/TreeMap$Relation;->CEILING:Ljava/util/TreeMap$Relation;

    #@1b
    return-object v0

    #@1c
    .line 228
    :pswitch_2
    sget-object v0, Ljava/util/TreeMap$Relation;->EQUAL:Ljava/util/TreeMap$Relation;

    #@1e
    return-object v0

    #@1f
    .line 230
    :pswitch_3
    sget-object v0, Ljava/util/TreeMap$Relation;->FLOOR:Ljava/util/TreeMap$Relation;

    #@21
    return-object v0

    #@22
    .line 232
    :pswitch_4
    sget-object v0, Ljava/util/TreeMap$Relation;->LOWER:Ljava/util/TreeMap$Relation;

    #@24
    return-object v0

    #@25
    .line 222
    nop

    #@26
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method
