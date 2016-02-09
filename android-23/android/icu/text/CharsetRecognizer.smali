.class abstract Landroid/icu/text/CharsetRecognizer;
.super Ljava/lang/Object;
.source "CharsetRecognizer.java"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 36
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method abstract getName()Ljava/lang/String;
.end method

.method abstract match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;
.end method
