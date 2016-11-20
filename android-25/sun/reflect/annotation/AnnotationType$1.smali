.class Lsun/reflect/annotation/AnnotationType$1;
.super Ljava/lang/Object;
.source "AnnotationType.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/reflect/annotation/AnnotationType;-><init>(Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<[",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/reflect/annotation/AnnotationType;

.field final synthetic val$annotationClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lsun/reflect/annotation/AnnotationType;Ljava/lang/Class;)V
    .locals 0
    .param p1, "this$0"    # Lsun/reflect/annotation/AnnotationType;

    #@0
    .prologue
    .line 100
    .local p2, "val$annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iput-object p1, p0, Lsun/reflect/annotation/AnnotationType$1;->this$0:Lsun/reflect/annotation/AnnotationType;

    #@2
    iput-object p2, p0, Lsun/reflect/annotation/AnnotationType$1;->val$annotationClass:Ljava/lang/Class;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 101
    invoke-virtual {p0}, Lsun/reflect/annotation/AnnotationType$1;->run()[Ljava/lang/reflect/Method;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()[Ljava/lang/reflect/Method;
    .locals 1

    #@0
    .prologue
    .line 103
    iget-object v0, p0, Lsun/reflect/annotation/AnnotationType$1;->val$annotationClass:Ljava/lang/Class;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
