.class final enum Lorg/json/JSONStringer$Scope;
.super Ljava/lang/Enum;
.source "JSONStringer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/json/JSONStringer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Scope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/json/JSONStringer$Scope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/json/JSONStringer$Scope;

.field public static final enum DANGLING_KEY:Lorg/json/JSONStringer$Scope;

.field public static final enum EMPTY_ARRAY:Lorg/json/JSONStringer$Scope;

.field public static final enum EMPTY_OBJECT:Lorg/json/JSONStringer$Scope;

.field public static final enum NONEMPTY_ARRAY:Lorg/json/JSONStringer$Scope;

.field public static final enum NONEMPTY_OBJECT:Lorg/json/JSONStringer$Scope;

.field public static final enum NULL:Lorg/json/JSONStringer$Scope;


# direct methods
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
    .line 73
    new-instance v0, Lorg/json/JSONStringer$Scope;

    #@7
    const-string/jumbo v1, "EMPTY_ARRAY"

    #@a
    invoke-direct {v0, v1, v3}, Lorg/json/JSONStringer$Scope;-><init>(Ljava/lang/String;I)V

    #@d
    .line 77
    sput-object v0, Lorg/json/JSONStringer$Scope;->EMPTY_ARRAY:Lorg/json/JSONStringer$Scope;

    #@f
    .line 79
    new-instance v0, Lorg/json/JSONStringer$Scope;

    #@11
    const-string/jumbo v1, "NONEMPTY_ARRAY"

    #@14
    invoke-direct {v0, v1, v4}, Lorg/json/JSONStringer$Scope;-><init>(Ljava/lang/String;I)V

    #@17
    .line 83
    sput-object v0, Lorg/json/JSONStringer$Scope;->NONEMPTY_ARRAY:Lorg/json/JSONStringer$Scope;

    #@19
    .line 85
    new-instance v0, Lorg/json/JSONStringer$Scope;

    #@1b
    const-string/jumbo v1, "EMPTY_OBJECT"

    #@1e
    invoke-direct {v0, v1, v5}, Lorg/json/JSONStringer$Scope;-><init>(Ljava/lang/String;I)V

    #@21
    .line 89
    sput-object v0, Lorg/json/JSONStringer$Scope;->EMPTY_OBJECT:Lorg/json/JSONStringer$Scope;

    #@23
    .line 91
    new-instance v0, Lorg/json/JSONStringer$Scope;

    #@25
    const-string/jumbo v1, "DANGLING_KEY"

    #@28
    invoke-direct {v0, v1, v6}, Lorg/json/JSONStringer$Scope;-><init>(Ljava/lang/String;I)V

    #@2b
    .line 95
    sput-object v0, Lorg/json/JSONStringer$Scope;->DANGLING_KEY:Lorg/json/JSONStringer$Scope;

    #@2d
    .line 97
    new-instance v0, Lorg/json/JSONStringer$Scope;

    #@2f
    const-string/jumbo v1, "NONEMPTY_OBJECT"

    #@32
    invoke-direct {v0, v1, v7}, Lorg/json/JSONStringer$Scope;-><init>(Ljava/lang/String;I)V

    #@35
    .line 101
    sput-object v0, Lorg/json/JSONStringer$Scope;->NONEMPTY_OBJECT:Lorg/json/JSONStringer$Scope;

    #@37
    .line 103
    new-instance v0, Lorg/json/JSONStringer$Scope;

    #@39
    const-string/jumbo v1, "NULL"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Lorg/json/JSONStringer$Scope;-><init>(Ljava/lang/String;I)V

    #@40
    .line 107
    sput-object v0, Lorg/json/JSONStringer$Scope;->NULL:Lorg/json/JSONStringer$Scope;

    #@42
    .line 71
    const/4 v0, 0x6

    #@43
    new-array v0, v0, [Lorg/json/JSONStringer$Scope;

    #@45
    sget-object v1, Lorg/json/JSONStringer$Scope;->EMPTY_ARRAY:Lorg/json/JSONStringer$Scope;

    #@47
    aput-object v1, v0, v3

    #@49
    sget-object v1, Lorg/json/JSONStringer$Scope;->NONEMPTY_ARRAY:Lorg/json/JSONStringer$Scope;

    #@4b
    aput-object v1, v0, v4

    #@4d
    sget-object v1, Lorg/json/JSONStringer$Scope;->EMPTY_OBJECT:Lorg/json/JSONStringer$Scope;

    #@4f
    aput-object v1, v0, v5

    #@51
    sget-object v1, Lorg/json/JSONStringer$Scope;->DANGLING_KEY:Lorg/json/JSONStringer$Scope;

    #@53
    aput-object v1, v0, v6

    #@55
    sget-object v1, Lorg/json/JSONStringer$Scope;->NONEMPTY_OBJECT:Lorg/json/JSONStringer$Scope;

    #@57
    aput-object v1, v0, v7

    #@59
    sget-object v1, Lorg/json/JSONStringer$Scope;->NULL:Lorg/json/JSONStringer$Scope;

    #@5b
    const/4 v2, 0x5

    #@5c
    aput-object v1, v0, v2

    #@5e
    sput-object v0, Lorg/json/JSONStringer$Scope;->$VALUES:[Lorg/json/JSONStringer$Scope;

    #@60
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/json/JSONStringer$Scope;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 71
    const-class v0, Lorg/json/JSONStringer$Scope;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lorg/json/JSONStringer$Scope;

    #@8
    return-object v0
.end method

.method public static values()[Lorg/json/JSONStringer$Scope;
    .locals 1

    #@0
    .prologue
    .line 71
    sget-object v0, Lorg/json/JSONStringer$Scope;->$VALUES:[Lorg/json/JSONStringer$Scope;

    #@2
    return-object v0
.end method
