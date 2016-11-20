.class final Ljava/lang/ProcessBuilder$Redirect$5;
.super Ljava/lang/ProcessBuilder$Redirect;
.source "ProcessBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/lang/ProcessBuilder$Redirect;->appendTo(Ljava/io/File;)Ljava/lang/ProcessBuilder$Redirect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "val$file"    # Ljava/io/File;

    #@0
    .prologue
    .line 555
    iput-object p1, p0, Ljava/lang/ProcessBuilder$Redirect$5;->val$file:Ljava/io/File;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, v0}, Ljava/lang/ProcessBuilder$Redirect;-><init>(Ljava/lang/ProcessBuilder$Redirect;)V

    #@6
    return-void
.end method


# virtual methods
.method append()Z
    .locals 1

    #@0
    .prologue
    .line 561
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public file()Ljava/io/File;
    .locals 1

    #@0
    .prologue
    .line 557
    iget-object v0, p0, Ljava/lang/ProcessBuilder$Redirect$5;->val$file:Ljava/io/File;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "redirect to append to file \""

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Ljava/lang/ProcessBuilder$Redirect$5;->val$file:Ljava/io/File;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "\""

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method

.method public type()Ljava/lang/ProcessBuilder$Redirect$Type;
    .locals 1

    #@0
    .prologue
    .line 556
    sget-object v0, Ljava/lang/ProcessBuilder$Redirect$Type;->APPEND:Ljava/lang/ProcessBuilder$Redirect$Type;

    #@2
    return-object v0
.end method
