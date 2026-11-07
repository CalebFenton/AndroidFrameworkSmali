.class public interface abstract Lsun/security/util/ConstraintsParameters;
.super Ljava/lang/Object;
.source "ConstraintsParameters.java"


# virtual methods
.method public abstract blacklist anchorIsJdkCA()Z
.end method

.method public abstract blacklist extendedExceptionMsg()Ljava/lang/String;
.end method

.method public abstract blacklist getDate()Ljava/util/Date;
.end method

.method public abstract blacklist getKeys()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/security/Key;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getVariant()Ljava/lang/String;
.end method
