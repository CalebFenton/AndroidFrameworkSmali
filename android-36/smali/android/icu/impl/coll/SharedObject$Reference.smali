.class public final Landroid/icu/impl/coll/SharedObject$Reference;
.super Ljava/lang/Object;
.source "SharedObject.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/coll/SharedObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Reference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/icu/impl/coll/SharedObject;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private blacklist ref:Landroid/icu/impl/coll/SharedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/icu/impl/coll/SharedObject;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 105
    .local p0, "this":Landroid/icu/impl/coll/SharedObject$Reference;, "Landroid/icu/impl/coll/SharedObject$Reference<TT;>;"
    .local p1, "r":Landroid/icu/impl/coll/SharedObject;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Landroid/icu/impl/coll/SharedObject$Reference;->ref:Landroid/icu/impl/coll/SharedObject;

    .line 107
    if-eqz p1, :cond_a

    .line 108
    invoke-virtual {p1}, Landroid/icu/impl/coll/SharedObject;->addRef()V

    .line 110
    :cond_a
    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .registers 2

    .line 148
    .local p0, "this":Landroid/icu/impl/coll/SharedObject$Reference;, "Landroid/icu/impl/coll/SharedObject$Reference<TT;>;"
    iget-object v0, p0, Landroid/icu/impl/coll/SharedObject$Reference;->ref:Landroid/icu/impl/coll/SharedObject;

    if-eqz v0, :cond_c

    .line 149
    iget-object v0, p0, Landroid/icu/impl/coll/SharedObject$Reference;->ref:Landroid/icu/impl/coll/SharedObject;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject;->removeRef()V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/coll/SharedObject$Reference;->ref:Landroid/icu/impl/coll/SharedObject;

    .line 152
    :cond_c
    return-void
.end method

.method public blacklist clone()Landroid/icu/impl/coll/SharedObject$Reference;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/icu/impl/coll/SharedObject$Reference<",
            "TT;>;"
        }
    .end annotation

    .line 117
    .local p0, "this":Landroid/icu/impl/coll/SharedObject$Reference;, "Landroid/icu/impl/coll/SharedObject$Reference<TT;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/SharedObject$Reference;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_11

    .line 121
    .local v0, "c":Landroid/icu/impl/coll/SharedObject$Reference;, "Landroid/icu/impl/coll/SharedObject$Reference<TT;>;"
    nop

    .line 122
    iget-object v1, p0, Landroid/icu/impl/coll/SharedObject$Reference;->ref:Landroid/icu/impl/coll/SharedObject;

    if-eqz v1, :cond_10

    .line 123
    iget-object v1, p0, Landroid/icu/impl/coll/SharedObject$Reference;->ref:Landroid/icu/impl/coll/SharedObject;

    invoke-virtual {v1}, Landroid/icu/impl/coll/SharedObject;->addRef()V

    .line 125
    :cond_10
    return-object v0

    .line 118
    .end local v0    # "c":Landroid/icu/impl/coll/SharedObject$Reference;, "Landroid/icu/impl/coll/SharedObject$Reference<TT;>;"
    :catch_11
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 102
    .local p0, "this":Landroid/icu/impl/coll/SharedObject$Reference;, "Landroid/icu/impl/coll/SharedObject$Reference<TT;>;"
    invoke-virtual {p0}, Landroid/icu/impl/coll/SharedObject$Reference;->clone()Landroid/icu/impl/coll/SharedObject$Reference;

    move-result-object v0

    return-object v0
.end method

.method public blacklist copyOnWrite()Landroid/icu/impl/coll/SharedObject;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 137
    .local p0, "this":Landroid/icu/impl/coll/SharedObject$Reference;, "Landroid/icu/impl/coll/SharedObject$Reference<TT;>;"
    iget-object v0, p0, Landroid/icu/impl/coll/SharedObject$Reference;->ref:Landroid/icu/impl/coll/SharedObject;

    .line 138
    .local v0, "r":Landroid/icu/impl/coll/SharedObject;, "TT;"
    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject;->getRefCount()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_a

    return-object v0

    .line 140
    :cond_a
    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject;->clone()Landroid/icu/impl/coll/SharedObject;

    move-result-object v1

    .line 141
    .local v1, "r2":Landroid/icu/impl/coll/SharedObject;, "TT;"
    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject;->removeRef()V

    .line 142
    iput-object v1, p0, Landroid/icu/impl/coll/SharedObject$Reference;->ref:Landroid/icu/impl/coll/SharedObject;

    .line 143
    invoke-virtual {v1}, Landroid/icu/impl/coll/SharedObject;->addRef()V

    .line 144
    return-object v1
.end method

.method protected whitelist test-api finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 156
    .local p0, "this":Landroid/icu/impl/coll/SharedObject$Reference;, "Landroid/icu/impl/coll/SharedObject$Reference<TT;>;"
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 157
    invoke-virtual {p0}, Landroid/icu/impl/coll/SharedObject$Reference;->clear()V

    .line 158
    return-void
.end method

.method public blacklist readOnly()Landroid/icu/impl/coll/SharedObject;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 128
    .local p0, "this":Landroid/icu/impl/coll/SharedObject$Reference;, "Landroid/icu/impl/coll/SharedObject$Reference<TT;>;"
    iget-object v0, p0, Landroid/icu/impl/coll/SharedObject$Reference;->ref:Landroid/icu/impl/coll/SharedObject;

    return-object v0
.end method
