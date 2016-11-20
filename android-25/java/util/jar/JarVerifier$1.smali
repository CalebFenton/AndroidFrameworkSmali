.class Ljava/util/jar/JarVerifier$1;
.super Ljava/lang/Object;
.source "JarVerifier.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/jar/JarVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/jar/JarVerifier;


# direct methods
.method constructor <init>(Ljava/util/jar/JarVerifier;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/jar/JarVerifier;

    #@0
    .prologue
    .line 789
    iput-object p1, p0, Ljava/util/jar/JarVerifier$1;->this$0:Ljava/util/jar/JarVerifier;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    #@0
    .prologue
    .line 792
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 795
    invoke-virtual {p0}, Ljava/util/jar/JarVerifier$1;->nextElement()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public nextElement()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 796
    new-instance v0, Ljava/util/NoSuchElementException;

    #@2
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@5
    throw v0
.end method
