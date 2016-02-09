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
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    #@0
    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 85
    iput-object p1, p0, Ljava/text/CollationKey;->source:Ljava/lang/String;

    #@5
    .line 84
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 95
    check-cast p1, Ljava/text/CollationKey;

    #@2
    .end local p1    # "value":Ljava/lang/Object;
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
    .line 103
    iget-object v0, p0, Ljava/text/CollationKey;->source:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public abstract toByteArray()[B
.end method
