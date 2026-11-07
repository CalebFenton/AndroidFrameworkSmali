.class public Ljava/lang/annotation/IncompleteAnnotationException;
.super Ljava/lang/RuntimeException;
.source "IncompleteAnnotationException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x75330357ffffeac8L


# instance fields
.field private greylist-max-o annotationType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o elementName:Ljava/lang/String;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 5
    .param p2, "elementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 65
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " missing element "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 66
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 68
    iput-object p1, p0, Ljava/lang/annotation/IncompleteAnnotationException;->annotationType:Ljava/lang/Class;

    .line 69
    iput-object p2, p0, Ljava/lang/annotation/IncompleteAnnotationException;->elementName:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public whitelist test-api annotationType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Ljava/lang/annotation/IncompleteAnnotationException;->annotationType:Ljava/lang/Class;

    return-object v0
.end method

.method public whitelist test-api elementName()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Ljava/lang/annotation/IncompleteAnnotationException;->elementName:Ljava/lang/String;

    return-object v0
.end method
