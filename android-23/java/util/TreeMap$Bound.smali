.class abstract enum Ljava/util/TreeMap$Bound;
.super Ljava/lang/Enum;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "Bound"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/TreeMap$Bound$1;,
        Ljava/util/TreeMap$Bound$2;,
        Ljava/util/TreeMap$Bound$3;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/util/TreeMap$Bound;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/util/TreeMap$Bound;

.field public static final enum EXCLUSIVE:Ljava/util/TreeMap$Bound;

.field public static final enum INCLUSIVE:Ljava/util/TreeMap$Bound;

.field public static final enum NO_BOUND:Ljava/util/TreeMap$Bound;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 1064
    new-instance v0, Ljava/util/TreeMap$Bound$1;

    #@5
    const-string/jumbo v1, "INCLUSIVE"

    #@8
    invoke-direct {v0, v1, v2}, Ljava/util/TreeMap$Bound$1;-><init>(Ljava/lang/String;I)V

    #@b
    sput-object v0, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    #@d
    .line 1072
    new-instance v0, Ljava/util/TreeMap$Bound$2;

    #@f
    const-string/jumbo v1, "EXCLUSIVE"

    #@12
    invoke-direct {v0, v1, v3}, Ljava/util/TreeMap$Bound$2;-><init>(Ljava/lang/String;I)V

    #@15
    sput-object v0, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    #@17
    .line 1080
    new-instance v0, Ljava/util/TreeMap$Bound$3;

    #@19
    const-string/jumbo v1, "NO_BOUND"

    #@1c
    invoke-direct {v0, v1, v4}, Ljava/util/TreeMap$Bound$3;-><init>(Ljava/lang/String;I)V

    #@1f
    sput-object v0, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    #@21
    .line 1063
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Ljava/util/TreeMap$Bound;

    #@24
    sget-object v1, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Ljava/util/TreeMap$Bound;->$VALUES:[Ljava/util/TreeMap$Bound;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 1063
    .local p0, "this":Ljava/util/TreeMap$Bound;, "Ljava/util/TreeMap<TK;TV;>.Bound;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/util/TreeMap$Bound;)V
    .locals 0

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$Bound;, "Ljava/util/TreeMap<TK;TV;>.Bound;"
    invoke-direct {p0, p1, p2}, Ljava/util/TreeMap$Bound;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/util/TreeMap$Bound;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1063
    const-class v0, Ljava/util/TreeMap$Bound;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/TreeMap$Bound;

    #@8
    return-object v0
.end method

.method public static values()[Ljava/util/TreeMap$Bound;
    .locals 1

    #@0
    .prologue
    .line 1063
    sget-object v0, Ljava/util/TreeMap$Bound;->$VALUES:[Ljava/util/TreeMap$Bound;

    #@2
    return-object v0
.end method


# virtual methods
.method public abstract leftCap(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract rightCap(Ljava/lang/Object;)Ljava/lang/String;
.end method
