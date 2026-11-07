.class public Ljava/lang/EnumConstantNotPresentException;
.super Ljava/lang/RuntimeException;
.source "EnumConstantNotPresentException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x53eb411e0ac4dd94L


# instance fields
.field private greylist-max-o constantName:Ljava/lang/String;

.field private greylist-max-o enumType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Enum;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 5
    .param p2, "constantName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Enum;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 63
    .local p1, "enumType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Enum;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Ljava/lang/EnumConstantNotPresentException;->enumType:Ljava/lang/Class;

    .line 65
    iput-object p2, p0, Ljava/lang/EnumConstantNotPresentException;->constantName:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method public whitelist test-api constantName()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Ljava/lang/EnumConstantNotPresentException;->constantName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api enumType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Enum;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Ljava/lang/EnumConstantNotPresentException;->enumType:Ljava/lang/Class;

    return-object v0
.end method
