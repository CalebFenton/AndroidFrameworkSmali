.class public interface abstract Ljava/util/Enumeration;
.super Ljava/lang/Object;
.source "Enumeration.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public whitelist test-api asIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 120
    .local p0, "this":Ljava/util/Enumeration;, "Ljava/util/Enumeration<TE;>;"
    new-instance v0, Ljava/util/Enumeration$1;

    invoke-direct {v0, p0}, Ljava/util/Enumeration$1;-><init>(Ljava/util/Enumeration;)V

    return-object v0
.end method

.method public abstract whitelist test-api hasMoreElements()Z
.end method

.method public abstract whitelist test-api nextElement()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method
