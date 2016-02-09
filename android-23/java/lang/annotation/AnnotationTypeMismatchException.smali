.class public Ljava/lang/annotation/AnnotationTypeMismatchException;
.super Ljava/lang/RuntimeException;
.source "AnnotationTypeMismatchException.java"


# static fields
.field private static final serialVersionUID:J = 0x70c5160eddbf1a8fL


# instance fields
.field private element:Ljava/lang/reflect/Method;

.field private foundType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/String;)V
    .locals 2
    .param p1, "element"    # Ljava/lang/reflect/Method;
    .param p2, "foundType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "The annotation element "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, " doesn\'t match the type "

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@22
    .line 48
    iput-object p1, p0, Ljava/lang/annotation/AnnotationTypeMismatchException;->element:Ljava/lang/reflect/Method;

    #@24
    .line 49
    iput-object p2, p0, Ljava/lang/annotation/AnnotationTypeMismatchException;->foundType:Ljava/lang/String;

    #@26
    .line 46
    return-void
.end method


# virtual methods
.method public element()Ljava/lang/reflect/Method;
    .locals 1

    #@0
    .prologue
    .line 58
    iget-object v0, p0, Ljava/lang/annotation/AnnotationTypeMismatchException;->element:Ljava/lang/reflect/Method;

    #@2
    return-object v0
.end method

.method public foundType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Ljava/lang/annotation/AnnotationTypeMismatchException;->foundType:Ljava/lang/String;

    #@2
    return-object v0
.end method
