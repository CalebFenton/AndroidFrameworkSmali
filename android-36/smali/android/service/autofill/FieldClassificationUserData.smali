.class public interface abstract Landroid/service/autofill/FieldClassificationUserData;
.super Ljava/lang/Object;
.source "FieldClassificationUserData.java"


# virtual methods
.method public abstract blacklist getCategoryIds()[Ljava/lang/String;
.end method

.method public abstract blacklist getDefaultFieldClassificationArgs()Landroid/os/Bundle;
.end method

.method public abstract blacklist getFieldClassificationAlgorithm()Ljava/lang/String;
.end method

.method public abstract blacklist getFieldClassificationAlgorithmForCategory(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract blacklist getFieldClassificationAlgorithms()Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getFieldClassificationArgs()Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getValues()[Ljava/lang/String;
.end method
