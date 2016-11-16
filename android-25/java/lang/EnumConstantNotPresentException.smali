.class public Ljava/lang/EnumConstantNotPresentException;
.super Ljava/lang/RuntimeException;
.source "EnumConstantNotPresentException.java"


# static fields
.field private static final serialVersionUID:J = -0x53eb411e0ac4dd94L


# instance fields
.field private constantName:Ljava/lang/String;

.field private enumType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Enum;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p2, "constantName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Enum;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 61
    .local p1, "enumType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Enum;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, "."

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1f
    .line 62
    iput-object p1, p0, Ljava/lang/EnumConstantNotPresentException;->enumType:Ljava/lang/Class;

    #@21
    .line 63
    iput-object p2, p0, Ljava/lang/EnumConstantNotPresentException;->constantName:Ljava/lang/String;

    #@23
    .line 60
    return-void
.end method


# virtual methods
.method public constantName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Ljava/lang/EnumConstantNotPresentException;->constantName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public enumType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Enum;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Ljava/lang/EnumConstantNotPresentException;->enumType:Ljava/lang/Class;

    #@2
    return-object v0
.end method
