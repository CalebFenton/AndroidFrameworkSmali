.class Ljava/util/Collections$3;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final blacklist i:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist val$c:Ljava/util/Collection;


# direct methods
.method constructor blacklist <init>(Ljava/util/Collection;)V
    .registers 2

    .line 5760
    iput-object p1, p0, Ljava/util/Collections$3;->val$c:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5761
    iget-object p1, p0, Ljava/util/Collections$3;->val$c:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Ljava/util/Collections$3;->i:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public whitelist test-api hasMoreElements()Z
    .registers 2

    .line 5764
    iget-object v0, p0, Ljava/util/Collections$3;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api nextElement()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 5768
    iget-object v0, p0, Ljava/util/Collections$3;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
