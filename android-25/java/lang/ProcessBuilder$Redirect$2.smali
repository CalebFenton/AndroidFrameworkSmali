.class final Ljava/lang/ProcessBuilder$Redirect$2;
.super Ljava/lang/ProcessBuilder$Redirect;
.source "ProcessBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ProcessBuilder$Redirect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 463
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Ljava/lang/ProcessBuilder$Redirect;-><init>(Ljava/lang/ProcessBuilder$Redirect;)V

    #@4
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 465
    invoke-virtual {p0}, Ljava/lang/ProcessBuilder$Redirect$2;->type()Ljava/lang/ProcessBuilder$Redirect$Type;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public type()Ljava/lang/ProcessBuilder$Redirect$Type;
    .locals 1

    #@0
    .prologue
    .line 464
    sget-object v0, Ljava/lang/ProcessBuilder$Redirect$Type;->INHERIT:Ljava/lang/ProcessBuilder$Redirect$Type;

    #@2
    return-object v0
.end method
