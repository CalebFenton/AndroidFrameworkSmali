.class public interface abstract Landroid/flags/Flag;
.super Ljava/lang/Object;
.source "Flag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract blacklist defineMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/flags/Flag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/flags/Flag<",
            "TT;>;"
        }
    .end annotation
.end method

.method public blacklist getCategoryName()Ljava/lang/String;
    .registers 2

    .line 80
    .local p0, "this":Landroid/flags/Flag;, "Landroid/flags/Flag<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract blacklist getDefault()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public blacklist getDescription()Ljava/lang/String;
    .registers 2

    .line 71
    .local p0, "this":Landroid/flags/Flag;, "Landroid/flags/Flag<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLabel()Ljava/lang/String;
    .registers 2

    .line 62
    .local p0, "this":Landroid/flags/Flag;, "Landroid/flags/Flag<TT;>;"
    invoke-interface {p0}, Landroid/flags/Flag;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract blacklist getName()Ljava/lang/String;
.end method

.method public abstract blacklist getNamespace()Ljava/lang/String;
.end method

.method public blacklist isDynamic()Z
    .registers 2

    .line 43
    .local p0, "this":Landroid/flags/Flag;, "Landroid/flags/Flag<TT;>;"
    const/4 v0, 0x0

    return v0
.end method
