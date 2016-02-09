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
.field private ref:Landroid/icu/impl/coll/SharedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/icu/impl/coll/SharedObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 100
    .local p0, "this":Landroid/icu/impl/coll/SharedObject$Reference;, "Landroid/icu/impl/coll/SharedObject$Reference<TT;>;"
    .local p1, "r":Landroid/icu/impl/coll/SharedObject;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 101
    iput-object p1, p0, Landroid/icu/impl/coll/SharedObject$Reference;->ref:Landroid/icu/impl/coll/SharedObject;

    #@5
    .line 102
    if-eqz p1, :cond_0

    #@7
    .line 103
    invoke-virtual {p1}, Landroid/icu/impl/coll/SharedObject;->addRef()V

    #@a
    .line 100
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    #@0
    .prologue
    .local p0, "this":Landroid/icu/impl/coll/SharedObject$Reference;, "Landroid/icu/impl/coll/SharedObject$Reference<TT;>;"
    const/4 v1, 0x0

    #@1
    .line 143
    iget-object v0, p0, Landroid/icu/impl/coll/SharedObject$Reference;->ref:Landroid/icu/impl/coll/SharedObject;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 144
    iget-object v0, p0, Landroid/icu/impl/coll/SharedObject$Reference;->ref:Landroid/icu/impl/coll/SharedObject;

    #@7
    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject;->removeRef()V

    #@a
    .line 145
    iput-object v1, p0, Landroid/icu/impl/coll/SharedObject$Reference;->ref:Landroid/icu/impl/coll/SharedObject;

    #@c
    .line 142
    :cond_0
    return-void
.end method

.method public clone()Landroid/icu/impl/coll/SharedObject$Reference;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/icu/impl/coll/SharedObject$Reference",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 112
    .local p0, "this":Landroid/icu/impl/coll/SharedObject$Reference;, "Landroid/icu/impl/coll/SharedObject$Reference<TT;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/icu/impl/coll/SharedObject$Reference;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 117
    .local v0, "c":Landroid/icu/impl/coll/SharedObject$Reference;, "Lcom/ibm/icu/impl/coll/SharedObject$Reference<TT;>;"
    iget-object v2, p0, Landroid/icu/impl/coll/SharedObject$Reference;->ref:Landroid/icu/impl/coll/SharedObject;

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 118
    iget-object v2, p0, Landroid/icu/impl/coll/SharedObject$Reference;->ref:Landroid/icu/impl/coll/SharedObject;

    #@c
    invoke-virtual {v2}, Landroid/icu/impl/coll/SharedObject;->addRef()V

    #@f
    .line 120
    :cond_0
    return-object v0

    #@10
    .line 113
    .end local v0    # "c":Landroid/icu/impl/coll/SharedObject$Reference;, "Lcom/ibm/icu/impl/coll/SharedObject$Reference<TT;>;"
    :catch_0
    move-exception v1

    #@11
    .line 115
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Landroid/icu/util/ICUCloneNotSupportedException;

    #@13
    invoke-direct {v2, v1}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    #@16
    throw v2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 109
    .local p0, "this":Landroid/icu/impl/coll/SharedObject$Reference;, "Landroid/icu/impl/coll/SharedObject$Reference<TT;>;"
    invoke-virtual {p0}, Landroid/icu/impl/coll/SharedObject$Reference;->clone()Landroid/icu/impl/coll/SharedObject$Reference;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public copyOnWrite()Landroid/icu/impl/coll/SharedObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 132
    .local p0, "this":Landroid/icu/impl/coll/SharedObject$Reference;, "Landroid/icu/impl/coll/SharedObject$Reference<TT;>;"
    iget-object v0, p0, Landroid/icu/impl/coll/SharedObject$Reference;->ref:Landroid/icu/impl/coll/SharedObject;

    #@2
    .line 133
    .local v0, "r":Landroid/icu/impl/coll/SharedObject;, "TT;"
    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject;->getRefCount()I

    #@5
    move-result v2

    #@6
    const/4 v3, 0x1

    #@7
    if-gt v2, v3, :cond_0

    #@9
    return-object v0

    #@a
    .line 135
    :cond_0
    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject;->clone()Landroid/icu/impl/coll/SharedObject;

    #@d
    move-result-object v1

    #@e
    .line 136
    .local v1, "r2":Landroid/icu/impl/coll/SharedObject;, "TT;"
    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject;->removeRef()V

    #@11
    .line 137
    iput-object v1, p0, Landroid/icu/impl/coll/SharedObject$Reference;->ref:Landroid/icu/impl/coll/SharedObject;

    #@13
    .line 138
    invoke-virtual {v1}, Landroid/icu/impl/coll/SharedObject;->addRef()V

    #@16
    .line 139
    return-object v1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 151
    .local p0, "this":Landroid/icu/impl/coll/SharedObject$Reference;, "Landroid/icu/impl/coll/SharedObject$Reference<TT;>;"
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@3
    .line 152
    invoke-virtual {p0}, Landroid/icu/impl/coll/SharedObject$Reference;->clear()V

    #@6
    .line 150
    return-void
.end method

.method public readOnly()Landroid/icu/impl/coll/SharedObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 123
    .local p0, "this":Landroid/icu/impl/coll/SharedObject$Reference;, "Landroid/icu/impl/coll/SharedObject$Reference<TT;>;"
    iget-object v0, p0, Landroid/icu/impl/coll/SharedObject$Reference;->ref:Landroid/icu/impl/coll/SharedObject;

    #@2
    return-object v0
.end method
