.class public Ljava/lang/annotation/AnnotationTypeMismatchException;
.super Ljava/lang/RuntimeException;
.source "AnnotationTypeMismatchException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x70c5160eddbf1a8fL


# instance fields
.field private final transient greylist-max-o element:Ljava/lang/reflect/Method;

.field private final greylist-max-o foundType:Ljava/lang/String;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/reflect/Method;Ljava/lang/String;)V
    .registers 5
    .param p1, "element"    # Ljava/lang/reflect/Method;
    .param p2, "foundType"    # Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incorrectly typed data found for annotation element "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (Found data of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 71
    iput-object p1, p0, Ljava/lang/annotation/AnnotationTypeMismatchException;->element:Ljava/lang/reflect/Method;

    .line 72
    iput-object p2, p0, Ljava/lang/annotation/AnnotationTypeMismatchException;->foundType:Ljava/lang/String;

    .line 73
    return-void
.end method


# virtual methods
.method public whitelist test-api element()Ljava/lang/reflect/Method;
    .registers 2

    .line 84
    iget-object v0, p0, Ljava/lang/annotation/AnnotationTypeMismatchException;->element:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public whitelist test-api foundType()Ljava/lang/String;
    .registers 2

    .line 96
    iget-object v0, p0, Ljava/lang/annotation/AnnotationTypeMismatchException;->foundType:Ljava/lang/String;

    return-object v0
.end method
