.class public interface abstract Landroid/util/Dumpable;
.super Ljava/lang/Object;
.source "Dumpable.java"


# virtual methods
.method public abstract whitelist dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public whitelist getDumpableName()Ljava/lang/String;
    .registers 2

    .line 36
    invoke-interface {p0}, Landroid/util/Dumpable;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
