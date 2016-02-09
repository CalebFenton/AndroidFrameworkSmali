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
    .line 28
    new-instance v0, Ljava/lang/annotation/ElementType;

    #@7
    const-string/jumbo v1, "TYPE"

    #@a
    invoke-direct {v0, v1, v3}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    #@d
    .line 31
    sput-object v0, Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;

    #@f
    .line 32
    new-instance v0, Ljava/lang/annotation/ElementType;

    #@11
    const-string/jumbo v1, "FIELD"

    #@14
    invoke-direct {v0, v1, v4}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    #@17
    .line 35
    sput-object v0, Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;

    #@19
    .line 36
    new-instance v0, Ljava/lang/annotation/ElementType;

    #@1b
    const-string/jumbo v1, "METHOD"

    #@1e
    invoke-direct {v0, v1, v5}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    #@21
    .line 39
    sput-object v0, Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;

    #@23
    .line 40
    new-instance v0, Ljava/lang/annotation/ElementType;

    #@25
    const-string/jumbo v1, "PARAMETER"

    #@28
    invoke-direct {v0, v1, v6}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    #@2b
    .line 43
    sput-object v0, Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;

    #@2d
    .line 44
    new-instance v0, Ljava/lang/annotation/ElementType;

    #@2f
    const-string/jumbo v1, "CONSTRUCTOR"

    #@32
    invoke-direct {v0, v1, v7}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    #@35
    .line 47
    sput-object v0, Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;

    #@37
    .line 48
    new-instance v0, Ljava/lang/annotation/ElementType;

    #@39
    const-string/jumbo v1, "LOCAL_VARIABLE"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    #@40
    .line 51
    sput-object v0, Ljava/lang/annotation/ElementType;->LOCAL_VARIABLE:Ljava/lang/annotation/ElementType;

    #@42
    .line 52
    new-instance v0, Ljava/lang/annotation/ElementType;

    #@44
    const-string/jumbo v1, "ANNOTATION_TYPE"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    #@4b
    .line 55
    sput-object v0, Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;

    #@4d
    .line 56
    new-instance v0, Ljava/lang/annotation/ElementType;

    #@4f
    const-string/jumbo v1, "PACKAGE"

    #@52
    const/4 v2, 0x7

    #@53
    invoke-direct {v0, v1, v2}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    #@56
    .line 59
    sput-object v0, Ljava/lang/annotation/ElementType;->PACKAGE:Ljava/lang/annotation/ElementType;

    #@58
    .line 27
    const/16 v0, 0x8

    #@5a
    new-array v0, v0, [Ljava/lang/annotation/ElementType;

    #@5c
    sget-object v1, Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;

    #@5e
    aput-object v1, v0, v3

    #@60
    sget-object v1, Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;

    #@62
    aput-object v1, v0, v4

    #@64
    sget-object v1, Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;

    #@66
    aput-object v1, v0, v5

    #@68
    sget-object v1, Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;

    #@6a
    aput-object v1, v0, v6

    #@6c
    sget-object v1, Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;

    #@6e
    aput-object v1, v0, v7

    #@70
    sget-object v1, Ljava/lang/annotation/ElementType;->LOCAL_VARIABLE:Ljava/lang/annotation/ElementType;

    #@72
    const/4 v2, 0x5

    #@73
    aput-object v1, v0, v2

    #@75
    sget-object v1, Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;

    #@77
    const/4 v2, 0x6

    #@78
    aput-object v1, v0, v2

    #@7a
    sget-object v1, Ljava/lang/annotation/ElementType;->PACKAGE:Ljava/lang/annotation/ElementType;

    #@7c
    const/4 v2, 0x7

    #@7d
    aput-object v1, v0, v2

    #@7f
    sput-object v0, Ljava/lang/annotation/ElementType;->$VALUES:[Ljava/lang/annotation/ElementType;

    #@81
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/annotation/ElementType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 27
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
    .line 27
    sget-object v0, Ljava/lang/annotation/ElementType;->$VALUES:[Ljava/lang/annotation/ElementType;

    #@2
    return-object v0
.end method
