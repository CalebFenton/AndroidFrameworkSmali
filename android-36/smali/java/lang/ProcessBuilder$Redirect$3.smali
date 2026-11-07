.class Ljava/lang/ProcessBuilder$Redirect$3;
.super Ljava/lang/ProcessBuilder$Redirect;
.source "ProcessBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/lang/ProcessBuilder$Redirect;->from(Ljava/io/File;)Ljava/lang/ProcessBuilder$Redirect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$file:Ljava/io/File;


# direct methods
.method constructor blacklist <init>(Ljava/io/File;)V
    .registers 2

    .line 563
    iput-object p1, p0, Ljava/lang/ProcessBuilder$Redirect$3;->val$file:Ljava/io/File;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljava/lang/ProcessBuilder$Redirect;-><init>(Ljava/lang/ProcessBuilder-IA;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api file()Ljava/io/File;
    .registers 2

    .line 565
    iget-object v0, p0, Ljava/lang/ProcessBuilder$Redirect$3;->val$file:Ljava/io/File;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "redirect to read from file \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/lang/ProcessBuilder$Redirect$3;->val$file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api type()Ljava/lang/ProcessBuilder$Redirect$Type;
    .registers 2

    .line 564
    sget-object v0, Ljava/lang/ProcessBuilder$Redirect$Type;->READ:Ljava/lang/ProcessBuilder$Redirect$Type;

    return-object v0
.end method
