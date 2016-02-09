.class Ljava/util/ResourceBundle$MissingBundle;
.super Ljava/util/ResourceBundle;
.source "ResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MissingBundle"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 96
    invoke-direct {p0}, Ljava/util/ResourceBundle;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getKeys()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 99
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 104
    const/4 v0, 0x0

    #@1
    return-object v0
.end method
