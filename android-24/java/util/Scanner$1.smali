.class Ljava/util/Scanner$1;
.super Lsun/misc/LRUCache;
.source "Scanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Scanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/misc/LRUCache",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/regex/Pattern;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/Scanner;


# direct methods
.method constructor <init>(Ljava/util/Scanner;I)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/Scanner;
    .param p2, "$anonymous0"    # I

    #@0
    .prologue
    .line 408
    iput-object p1, p0, Ljava/util/Scanner$1;->this$0:Ljava/util/Scanner;

    #@2
    invoke-direct {p0, p2}, Lsun/misc/LRUCache;-><init>(I)V

    #@5
    return-void
.end method


# virtual methods
.method protected bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "s"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 409
    check-cast p1, Ljava/lang/String;

    #@2
    .end local p1    # "s":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/Scanner$1;->create(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected create(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 410
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected bridge synthetic hasName(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "p"    # Ljava/lang/Object;
    .param p2, "s"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 412
    check-cast p1, Ljava/util/regex/Pattern;

    #@2
    .end local p1    # "p":Ljava/lang/Object;
    check-cast p2, Ljava/lang/String;

    #@4
    .end local p2    # "s":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ljava/util/Scanner$1;->hasName(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method protected hasName(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    .locals 1
    .param p1, "p"    # Ljava/util/regex/Pattern;
    .param p2, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 413
    invoke-virtual {p1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method
