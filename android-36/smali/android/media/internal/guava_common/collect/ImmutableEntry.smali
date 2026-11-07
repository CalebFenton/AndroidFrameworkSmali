.class Landroid/media/internal/guava_common/collect/ImmutableEntry;
.super Landroid/media/internal/guava_common/collect/AbstractMapEntry;
.source "ImmutableEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/media/internal/guava_common/collect/AbstractMapEntry<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J


# instance fields
.field final blacklist key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final blacklist value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/AbstractMapEntry;-><init>()V

    .line 36
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/ImmutableEntry;->key:Ljava/lang/Object;

    .line 37
    iput-object p2, p0, Landroid/media/internal/guava_common/collect/ImmutableEntry;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final whitelist test-api getKey()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 43
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/ImmutableEntry;->key:Ljava/lang/Object;

    return-object p0
.end method

.method public final whitelist test-api getValue()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 49
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/ImmutableEntry;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public final whitelist test-api setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 55
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
