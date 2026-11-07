.class public abstract Ljava/text/CollationKey;
.super Ljava/lang/Object;
.source "CollationKey.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ljava/text/CollationKey;",
        ">;"
    }
.end annotation


# instance fields
.field private final greylist-max-o source:Ljava/lang/String;


# direct methods
.method protected constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "source"    # Ljava/lang/String;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    if-eqz p1, :cond_8

    .line 146
    iput-object p1, p0, Ljava/text/CollationKey;->source:Ljava/lang/String;

    .line 147
    return-void

    .line 144
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 101
    check-cast p1, Ljava/text/CollationKey;

    invoke-virtual {p0, p1}, Ljava/text/CollationKey;->compareTo(Ljava/text/CollationKey;)I

    move-result p1

    return p1
.end method

.method public abstract whitelist test-api compareTo(Ljava/text/CollationKey;)I
.end method

.method public whitelist test-api getSourceString()Ljava/lang/String;
    .registers 2

    .line 120
    iget-object v0, p0, Ljava/text/CollationKey;->source:Ljava/lang/String;

    return-object v0
.end method

.method public abstract whitelist test-api toByteArray()[B
.end method
