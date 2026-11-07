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
        "Ljava/lang/Enum<",
        "Llibcore/reflect/AnnotationMember$DefaultValues;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Llibcore/reflect/AnnotationMember$DefaultValues;

.field public static final enum blacklist NO_VALUE:Llibcore/reflect/AnnotationMember$DefaultValues;


# direct methods
.method private static synthetic blacklist $values()[Llibcore/reflect/AnnotationMember$DefaultValues;
    .registers 1

    .line 83
    sget-object v0, Llibcore/reflect/AnnotationMember$DefaultValues;->NO_VALUE:Llibcore/reflect/AnnotationMember$DefaultValues;

    filled-new-array {v0}, [Llibcore/reflect/AnnotationMember$DefaultValues;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 83
    new-instance v0, Llibcore/reflect/AnnotationMember$DefaultValues;

    const-string v1, "NO_VALUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Llibcore/reflect/AnnotationMember$DefaultValues;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llibcore/reflect/AnnotationMember$DefaultValues;->NO_VALUE:Llibcore/reflect/AnnotationMember$DefaultValues;

    invoke-static {}, Llibcore/reflect/AnnotationMember$DefaultValues;->$values()[Llibcore/reflect/AnnotationMember$DefaultValues;

    move-result-object v0

    sput-object v0, Llibcore/reflect/AnnotationMember$DefaultValues;->$VALUES:[Llibcore/reflect/AnnotationMember$DefaultValues;

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

    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Llibcore/reflect/AnnotationMember$DefaultValues;
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

    .line 83
    const-class v0, Llibcore/reflect/AnnotationMember$DefaultValues;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Llibcore/reflect/AnnotationMember$DefaultValues;

    return-object v0
.end method

.method public static blacklist values()[Llibcore/reflect/AnnotationMember$DefaultValues;
    .registers 1

    .line 83
    sget-object v0, Llibcore/reflect/AnnotationMember$DefaultValues;->$VALUES:[Llibcore/reflect/AnnotationMember$DefaultValues;

    invoke-virtual {v0}, [Llibcore/reflect/AnnotationMember$DefaultValues;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llibcore/reflect/AnnotationMember$DefaultValues;

    return-object v0
.end method
