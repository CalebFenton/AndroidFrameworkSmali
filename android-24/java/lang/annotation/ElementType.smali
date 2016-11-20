.class public final enum Ljava/lang/annotation/ElementType;
.super Ljava/lang/Enum;
.source "ElementType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/lang/annotation/ElementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/lang/annotation/ElementType;

.field public static final enum ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;

.field public static final enum CONSTRUCTOR:Ljava/lang/annotation/ElementType;

.field public static final enum FIELD:Ljava/lang/annotation/ElementType;

.field public static final enum LOCAL_VARIABLE:Ljava/lang/annotation/ElementType;

.field public static final enum METHOD:Ljava/lang/annotation/ElementType;

.field public static final enum PACKAGE:Ljava/lang/annotation/ElementType;

.field public static final enum PARAMETER:Ljava/lang/annotation/ElementType;

.field public static final enum TYPE:Ljava/lang/annotation/ElementType;

.field public static final enum TYPE_PARAMETER:Ljava/lang/annotation/ElementType;

.field public static final enum TYPE_USE:Ljava/lang/annotation/ElementType;


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
    .line 40
    new-instance v0, Ljava/lang/annotation/ElementType;

    #@7
    const-string/jumbo v1, "TYPE"

    #@a
    invoke-direct {v0, v1, v3}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    #@d
    .line 41
    sput-object v0, Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;

    #@f
    .line 43
    new-instance v0, Ljava/lang/annotation/ElementType;

    #@11
    const-string/jumbo v1, "FIELD"

    #@14
    invoke-direct {v0, v1, v4}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    #@17
    .line 44
    sput-object v0, Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;

    #@19
    .line 46
    new-instance v0, Ljava/lang/annotation/ElementType;

    #@1b
    const-string/jumbo v1, "METHOD"

    #@1e
    invoke-direct {v0, v1, v5}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    #@21
    .line 47
    sput-object v0, Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;

    #@23
    .line 49
    new-instance v0, Ljava/lang/annotation/ElementType;

    #@25
    const-string/jumbo v1, "PARAMETER"

    #@28
    invoke-direct {v0, v1, v6}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    #@2b
    .line 50
    sput-object v0, Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;

    #@2d
    .line 52
    new-instance v0, Ljava/lang/annotation/ElementType;

    #@2f
    const-string/jumbo v1, "CONSTRUCTOR"

    #@32
    invoke-direct {v0, v1, v7}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    #@35
    .line 53
    sput-object v0, Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;

    #@37
    .line 55
    new-instance v0, Ljava/lang/annotation/ElementType;

    #@39
    const-string/jumbo v1, "LOCAL_VARIABLE"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    #@40
    .line 56
    sput-object v0, Ljava/lang/annotation/ElementType;->LOCAL_VARIABLE:Ljava/lang/annotation/ElementType;

    #@42
    .line 58
    new-instance v0, Ljava/lang/annotation/ElementType;

    #@44
    const-string/jumbo v1, "ANNOTATION_TYPE"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    #@4b
    .line 59
    sput-object v0, Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;

    #@4d
    .line 61
    new-instance v0, Ljava/lang/annotation/ElementType;

    #@4f
    const-string/jumbo v1, "PACKAGE"

    #@52
    const/4 v2, 0x7

    #@53
    invoke-direct {v0, v1, v2}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    #@56
    .line 62
    sput-object v0, Ljava/lang/annotation/ElementType;->PACKAGE:Ljava/lang/annotation/ElementType;

    #@58
    .line 64
    new-instance v0, Ljava/lang/annotation/ElementType;

    #@5a
    const-string/jumbo v1, "TYPE_PARAMETER"

    #@5d
    const/16 v2, 0x8

    #@5f
    invoke-direct {v0, v1, v2}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    #@62
    .line 70
    sput-object v0, Ljava/lang/annotation/ElementType;->TYPE_PARAMETER:Ljava/lang/annotation/ElementType;

    #@64
    .line 72
    new-instance v0, Ljava/lang/annotation/ElementType;

    #@66
    const-string/jumbo v1, "TYPE_USE"

    #@69
    const/16 v2, 0x9

    #@6b
    invoke-direct {v0, v1, v2}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    #@6e
    .line 78
    sput-object v0, Ljava/lang/annotation/ElementType;->TYPE_USE:Ljava/lang/annotation/ElementType;

    #@70
    .line 39
    const/16 v0, 0xa

    #@72
    new-array v0, v0, [Ljava/lang/annotation/ElementType;

    #@74
    sget-object v1, Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;

    #@76
    aput-object v1, v0, v3

    #@78
    sget-object v1, Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;

    #@7a
    aput-object v1, v0, v4

    #@7c
    sget-object v1, Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;

    #@7e
    aput-object v1, v0, v5

    #@80
    sget-object v1, Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;

    #@82
    aput-object v1, v0, v6

    #@84
    sget-object v1, Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;

    #@86
    aput-object v1, v0, v7

    #@88
    sget-object v1, Ljava/lang/annotation/ElementType;->LOCAL_VARIABLE:Ljava/lang/annotation/ElementType;

    #@8a
    const/4 v2, 0x5

    #@8b
    aput-object v1, v0, v2

    #@8d
    sget-object v1, Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;

    #@8f
    const/4 v2, 0x6

    #@90
    aput-object v1, v0, v2

    #@92
    sget-object v1, Ljava/lang/annotation/ElementType;->PACKAGE:Ljava/lang/annotation/ElementType;

    #@94
    const/4 v2, 0x7

    #@95
    aput-object v1, v0, v2

    #@97
    sget-object v1, Ljava/lang/annotation/ElementType;->TYPE_PARAMETER:Ljava/lang/annotation/ElementType;

    #@99
    const/16 v2, 0x8

    #@9b
    aput-object v1, v0, v2

    #@9d
    sget-object v1, Ljava/lang/annotation/ElementType;->TYPE_USE:Ljava/lang/annotation/ElementType;

    #@9f
    const/16 v2, 0x9

    #@a1
    aput-object v1, v0, v2

    #@a3
    sput-object v0, Ljava/lang/annotation/ElementType;->$VALUES:[Ljava/lang/annotation/ElementType;

    #@a5
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/annotation/ElementType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 39
    const-class v0, Ljava/lang/annotation/ElementType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/annotation/ElementType;

    #@8
    return-object v0
.end method

.method public static values()[Ljava/lang/annotation/ElementType;
    .locals 1

    #@0
    .prologue
    .line 39
    sget-object v0, Ljava/lang/annotation/ElementType;->$VALUES:[Ljava/lang/annotation/ElementType;

    #@2
    return-object v0
.end method
