.class final enum Llibcore/reflect/AnnotationMember$DefaultValues;
.super Ljava/lang/Enum;
.source "AnnotationMember.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/reflect/AnnotationMember;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DefaultValues"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Llibcore/reflect/AnnotationMember$DefaultValues;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Llibcore/reflect/AnnotationMember$DefaultValues;

.field public static final enum NO_VALUE:Llibcore/reflect/AnnotationMember$DefaultValues;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 83
    new-instance v0, Llibcore/reflect/AnnotationMember$DefaultValues;

    #@3
    const-string/jumbo v1, "NO_VALUE"

    #@6
    invoke-direct {v0, v1, v2}, Llibcore/reflect/AnnotationMember$DefaultValues;-><init>(Ljava/lang/String;I)V

    #@9
    sput-object v0, Llibcore/reflect/AnnotationMember$DefaultValues;->NO_VALUE:Llibcore/reflect/AnnotationMember$DefaultValues;

    #@b
    const/4 v0, 0x1

    #@c
    new-array v0, v0, [Llibcore/reflect/AnnotationMember$DefaultValues;

    #@e
    sget-object v1, Llibcore/reflect/AnnotationMember$DefaultValues;->NO_VALUE:Llibcore/reflect/AnnotationMember$DefaultValues;

    #@10
    aput-object v1, v0, v2

    #@12
    sput-object v0, Llibcore/reflect/AnnotationMember$DefaultValues;->$VALUES:[Llibcore/reflect/AnnotationMember$DefaultValues;

    #@14
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Llibcore/reflect/AnnotationMember$DefaultValues;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 83
    const-class v0, Llibcore/reflect/AnnotationMember$DefaultValues;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Llibcore/reflect/AnnotationMember$DefaultValues;

    #@8
    return-object v0
.end method

.method public static values()[Llibcore/reflect/AnnotationMember$DefaultValues;
    .locals 1

    #@0
    .prologue
    .line 83
    sget-object v0, Llibcore/reflect/AnnotationMember$DefaultValues;->$VALUES:[Llibcore/reflect/AnnotationMember$DefaultValues;

    #@2
    return-object v0
.end method
