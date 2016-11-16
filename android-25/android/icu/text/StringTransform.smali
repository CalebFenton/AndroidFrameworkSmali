.class public interface abstract Landroid/icu/text/StringTransform;
.super Ljava/lang/Object;
.source "StringTransform.java"

# interfaces
.implements Landroid/icu/text/Transform;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/icu/text/Transform",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# virtual methods
.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 23
    check-cast p1, Ljava/lang/String;

    #@2
    .end local p1    # "source":Ljava/lang/Object;
    invoke-interface {p0, p1}, Landroid/icu/text/StringTransform;->transform(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public abstract transform(Ljava/lang/String;)Ljava/lang/String;
.end method
