.class public abstract Ljava/text/CollationKey;
.super Ljava/lang/Object;
.source "CollationKey.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/text/CollationKey;",
        ">;"
    }
.end annotation


# instance fields
.field private final source:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;

    #@0
    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 138
    if-nez p1, :cond_0

    #@5
    .line 139
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v0

    #@b
    .line 141
    :cond_0
    iput-object p1, p0, Ljava/text/CollationKey;->source:Ljava/lang/String;

    #@d
    .line 137
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 111
    check-cast p1, Ljava/text/CollationKey;

    #@2
    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/text/CollationKey;->compareTo(Ljava/text/CollationKey;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public abstract compareTo(Ljava/text/CollationKey;)I
.end method

.method public getSourceString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Ljava/text/CollationKey;->source:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public abstract toByteArray()[B
.end method
